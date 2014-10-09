<?php if ($categories) { ?>
    <ul>
    <?php $counter = 0; $st = '';?>
     <?php foreach ($categories as $category) { ?>
      <li>
      <?php /*$counter++; // ok, let it will be as in layuot
        switch ($counter) {
          case 2:
            $st = ' style="left: -238px;" ';
            break;
          case 3:
            $st = ' style="left: -670px;" ';
            break;
          case 4:
            $st = ' style="right: -1px;left: initial;" ';
            break;            
          
          default:
            $st = '';
            break;
        } */?>
        <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
        <div class="drop_down">
        <?php if (isset($category['children'])) { ?>
         <?php for ($i = 0; $i < count($category['children']); $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <?php $subCat = $category['children'][$i]; ?>
          <div>
            <h5><a href="<?php echo $subCat['href']; ?>"><?php echo $subCat['name']; ?></a></h5>
            <ul>
              <?php foreach($subCat['child'] as $grandchild) { ?>
                <li><a href="<?php echo $grandchild['href']; ?>"><?php echo $grandchild['name']; ?></a></li>
              <?php } ?>
            </ul>
          </div>         
          <?php } ?>
         <?php } ?>           
         
         
        <?php } ?>
        </div><!-- cctv -->
      </li>
      
      <?php } ?>
    </ul>
  <?php } ?>