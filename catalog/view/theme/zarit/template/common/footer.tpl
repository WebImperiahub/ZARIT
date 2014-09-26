<div class="menu menu_bot">
   <?php echo $menu; ?>
  </div><!-- menu -->
  <div id="footer">
    <div class="wrap">
      <?php echo $footer_info; ?>      
    </div><!-- wrap -->
  </div><!-- footer -->
  <div class="popup_fon"></div>
  <div class="popup_cart">
    <a href="#" class="close"></a>
    <h2>Корзина</h2>
    <div class="cart_table">
      <div class="table_title">
        <div class="col1">Фото</div>
        <div class="col2">Наименование</div>
        <div class="col3">Количество</div>
        <div class="col4">Цена за шт.</div>
        <div class="col5">Скидка</div>
        <div class="col6">Цена со скидкой</div>
      </div>
      <div class="table_row">
        <div class="col1"><div class="img"><img src="img/cart1.png" alt="cart1" class="magnify" style="width:100px; height:100px;" data-magnifyby="7" /></div></div>
        <div class="col2"><a href="#">Поворотная купольная IP-видеокамера TSi-SDW211Z22</a></div>
        <div class="col3"><div class="number_of"><a href="#">&ndash;</a><input type="text" /><a href="#">+</a></div></div>
        <div class="col4">59000 руб</div>
        <div class="col5">Нет</div>
        <div class="col6">59000 руб</div>
        <div><img src="img/cross.png" alt="cross" title="Удалить" class="remove" /></div>
      </div>
      <div class="table_row">
        <div class="col1"><div class="img"><img src="img/cart2.png" alt="cart1" class="magnify" style="width:100px; height:100px;" data-magnifyby="7" /></div></div>
        <div class="col2"><a href="#">Антивандальная купольная IP-видеокамера TSi-DVm212F (3.6)</a></div>
        <div class="col3"><div class="number_of"><a href="#">&ndash;</a><input type="text" /><a href="#">+</a></div></div>
        <div class="col4">9900 руб</div>
        <div class="col5">Нет</div>
        <div class="col6">9900 руб</div>
        <div><img src="img/cross.png" alt="cross" title="Удалить" class="remove" /></div>
      </div>
      <div class="table_foot">
        <div class="total">итого: <span>68900 pуб</span></div>
      </div>
    </div><!-- cart_table -->
    <div class="without_clearance">
      <h4>Заказать без оформления</h4>
      <p class="clearance">Можно не заполнять никаких форм, а оставить номер телефона и наш консультант решит все вопросы по оформлению заказа.</p>
      <form>
        <div>
          <input type="text" placeholder="+7 (XXX) XXX-XX-XX" />
          <span>например: +7 (095) 414-51-23</span>
        </div>
        <input type="button" value="Жду звонка" class="waiting_call" />
      </form>
    </div>
    <form class="universal">
      <div>
        <p>ФИО<span class="mandatory"></span></p>
        <input type="text" />
      </div>
      <div>
        <p>E-mail</p>
        <input type="text" />
        <span class="explanation">для отслеживания состояния заказа</span>
      </div>
      <div>
        <p>Телефон<span class="mandatory"></span></p>
        <input type="text" />
      </div>
      <div>
        <p>Адрес<span class="mandatory"></span></p>
        <input type="text" />
      </div>
      <div>
        <p>Выбор способа доставки:</p>
        <select>
          <option value="">Вариант1</option>
          <option value="">Вариант2</option>
          <option value="">Вариант3</option>
        </select>
      </div>
      <div>
        <p>Выбор способа оплаты:</p>
        <select>
          <option value="">Вариант1</option>
          <option value="">Вариант2</option>
          <option value="">Вариант3</option>
        </select>
      </div>
      <div>
        <p>Коментарий к заказу</p>
        <textarea rows="2"></textarea>
      </div>
      <div class="buttons">
        <input class="continue_shopping" type="button" value="продолжить покупки" />
        <input class="checkout" type="button" value="оформить заказ" />
      </div>
    </form>
  </div>
</body><!-- -->
</html><!-- -->
