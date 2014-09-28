<?php
class Pagination {
	public $total = 0;
	public $page = 1;
	public $limit = 20;
	public $num_links = 10;
	public $url = '';
	public $text = 'Showing {start} to {end} of {total} ({pages} Pages)';
	public $text_first = '<img src="/catalog/view/theme/zarit/img/arrow2_l.png" alt="arrow2_l">';
	public $text_last = '<img src="/catalog/view/theme/zarit/img/arrow2.png" alt="arrow2">';
	public $text_next = '<img src="/catalog/view/theme/zarit/img/arrow.png" alt="arrow">';
	public $text_prev = '<img src="/catalog/view/theme/zarit/img/arrow_l.png" alt="arrow_l">';
	public $style_links = 'links_nav';
	public $style_results = 'results';
	 
	public function render() {
		$total = $this->total;
		
		if ($this->page < 1) {
			$page = 1;
		} else {
			$page = $this->page;
		}
		
		if (!(int)$this->limit) {
			$limit = 10;
		} else {
			$limit = $this->limit;
		}
		
		$num_links = $this->num_links;
		$num_pages = ceil($total / $limit);
		
		$output = '';
		
		if ($page > 1) {
			$tmp_url = str_replace('&amp;', '&', $this->url);
			$output .= ' <a href="' . str_replace('&', '&amp;', rtrim( str_replace('page={page}', '', $tmp_url), '?&')) . '">' . $this->text_first . '</a>';
			if ($page == 2){
				$output .= '<a href="' . str_replace('&', '&amp;', rtrim( str_replace('page={page}', '', $tmp_url), '?&')) . '">' . $this->text_prev . '</a> ';
			}else{
				$output .= '<a href="' . str_replace('{page}', $page - 1, $this->url) . '">' . $this->text_prev . '</a> ';
			}
		}

		if ($num_pages > 1) {
			if ($num_pages <= $num_links) {
				$start = 1;
				$end = $num_pages;
			} else {
				$start = $page - floor($num_links / 2);
				$end = $page + floor($num_links / 2);
			
				if ($start < 1) {
					$end += abs($start) + 1;
					$start = 1;
				}
						
				if ($end > $num_pages) {
					$start -= ($end - $num_pages);
					$end = $num_pages;
				}
			}

			if ($start > 1) {
				$output .= ' .... ';
			}

			for ($i = $start; $i <= $end; $i++) {
				if ($page == $i) {
					$output .= ' <b>' . $i . '</b> ';
				} elseif($i == 1) {
					$output .= ' <a href="' . str_replace('&', '&amp;', rtrim( str_replace('page={page}', '', $tmp_url), '?&')) . '">' . $i . '</a> ';
				} else {
					$output .= ' <a href="' . str_replace('{page}', $i, $this->url) . '">' . $i . '</a> ';
				}
			}
							
			if ($end < $num_pages) {
				$output .= ' .... ';
			}
		}
		
   		if ($page < $num_pages) {
			$output .= ' <a href="' . str_replace('{page}', $page + 1, $this->url) . '">' . $this->text_next . '</a> <a href="' . str_replace('{page}', $num_pages, $this->url) . '">' . $this->text_last . '</a> ';
		}
		
		$find = array(
			'{start}',
			'{end}',
			'{total}',
			'{pages}'
		);
		
		$replace = array(
			($total) ? (($page - 1) * $limit) + 1 : 0,
			((($page - 1) * $limit) > ($total - $limit)) ? $total : ((($page - 1) * $limit) + $limit),
			$total, 
			$num_pages
		);
		
		return ($output ? '<div class="' . $this->style_links . '">' . $output . '</div>' : '') . '<div class="' . $this->style_results . '">' . str_replace($find, $replace, $this->text) . '</div>';
	}
}
?>