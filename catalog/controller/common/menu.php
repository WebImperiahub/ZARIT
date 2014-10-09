<?php   
class ControllerCommonMenu extends Controller {
	protected function index() {
		
		
		// Menu
		if (isset($this->request->get['path'])) {
			$parts = explode('_', (string)$this->request->get['path']);
		} else {
			$parts = array();
		}

		$this->load->model('catalog/category');
		
		$this->load->model('catalog/product');
		
		$this->data['categories'] = array();
					
		$categories = $this->model_catalog_category->getCategories(0);
		
		foreach ($categories as $category) {
			if ($category['top']) {
				// Level 2
				$children_data = array();
				
				$children = $this->model_catalog_category->getCategories($category['category_id']);
				
				foreach ($children as $child) {
					$grandchildren_data = array();

					$grandchildren = $this->model_catalog_category->getCategories($child['category_id']);

					//Будем вычислять кол-во товаров в категориях только если это кол-во надо показывать
					if ($this->config->get('config_product_count')) {
						$data = array(
							'filter_category_id'  => $child['category_id'],
							'filter_sub_category' => true
						);
						
						$product_total = $this->model_catalog_product->getTotalProducts($data);
					}
					// print_r($child); exit();
					foreach ($grandchildren as $grandchild) {
						$grandchildren_data[] = array(
							'name'  => $grandchild['name'],
							'href'  => $this->url->link('product/category', 'path=' . $category['category_id'] . '_'. $child['category_id'] . '_' . $grandchild['category_id'])	
						);
					}

									
					$children_data[] = array(
						'name'  => $child['name'],
						'href'  => $this->url->link('product/category', 'path=' .$child['category_id']),
						'child' => $grandchildren_data
					);						
				}
				
				// Level 1
				$this->data['categories'][] = array(
					'name'     => $category['name'],
					'children' => $children_data,
					'active'   => in_array($category['category_id'], $parts),
					'column'   => $category['column'] ? $category['column'] : 1,
					'href'     => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
			}
		}
		
		

				
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/menu.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/menu.tpl';
		} else {
			$this->template = 'default/template/common/menu.tpl';
		}
		
    	$this->render();
	}

	// public function getHeadLinks($id) {
 //      	$information_info = $this->model_catalog_information->getInformation($id);
	// 	$url = $this->url->link('information/information', 'information_id=' . $id);
	// 	return array('url'=>$url, 'title'=> $information_info['title']);
	// }
}


?>
