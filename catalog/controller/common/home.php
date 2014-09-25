<?php  
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->load->model('catalog/product');
		$this->load->model('tool/image'); 
		$this->language->load('information/information');      
      	$this->load->model('catalog/information');
		$this->load->model('catalog/category');	



		$this->data['heading_title'] = $this->config->get('config_title');


		$this->data['products'] = array();
			// $parts = explode('_', (string)$this->request->get['path']);
		// print_r(explode('_', (string)$this->request->get['path']));
		
		$this->catProducts(60);
		$this->catProducts(65);
		$this->catProducts(86);
		usort($this->data['products'], "cmp");

		$this->data['information_info'] = $this->model_catalog_information->getInformation(10);
		// print_r($information_info);
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/home.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/home.tpl';
		} else {
			$this->template = 'default/template/common/home.tpl';
		}
		
		$this->children = array(
			'common/footer',
			'common/header'
		);

		//10
										
		$this->response->setOutput($this->render());
	}

	public function catProducts($id) {
		$data = array(
			'filter_category_id' => $id,
		);
				
		$results = $this->model_catalog_product->getProducts($data);
		//Вызов метода getFoundProducts должен проводится сразу же после getProducts
		//только тогда он выдает правильное значения количества товаров
		// $product_total = $this->model_catalog_product->getFoundProducts();
		$catInfo = $this->getHeadLinks($id);
		$this->data['products'][$id]['url'] = $catInfo['url'];
		$this->data['products'][$id]['title'] = $catInfo['title'];
		$this->data['products'][$id]['sort'] = $catInfo['sort'];
		
		foreach ($results as $result) {
			if ($result['image']) {
				$image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
			} else {
				$image = $this->model_tool_image->resize('no_image.jpg', $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
			}
			
			if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
				$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$price = false;
			}
			
			if ((float)$result['special']) {
				$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$special = false;
			}	
			
			if ($this->config->get('config_tax')) {
				$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
			} else {
				$tax = false;
			}				
			
			if ($this->config->get('config_review_status')) {
				$rating = (int)$result['rating'];
			} else {
				$rating = false;
			}

			$url = '';
							
			$this->data['products'][$id][] = array(
				'product_id'  => $result['product_id'],
				'thumb'       => $image,
				'name'        => $result['name'],
				'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, 300) . '..',
				'price'       => $price,
				'special'     => $special,
				'tax'         => $tax,
				'rating'      => $result['rating'],
				'reviews'     => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
				'href'        => $this->url->link('product/product', 'path=' . $id . '&product_id=' . $result['product_id'] . $url)
			);
		}
	}

	public function getHeadLinks($id) {
		$cat_info = $this->model_catalog_category->getCategory($id);
		$url = $this->url->link('product/category', 'path=' . $id);
		return array('url'=>$url, 'title'=> $cat_info['name'], 'sort' => $cat_info['sort_order']);
	}

	



}

function cmp($a, $b) {
    if ($a['sort'] == $b['sort']) {
        return 0;
    }
    return ($a['sort'] < $b['sort']) ? -1 : 1;
}
?>