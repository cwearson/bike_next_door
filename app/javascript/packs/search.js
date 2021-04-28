import axios from 'axios';

const axiosConfig = {
  headers: {
    accept: 'application/json',
  },
  data: {},
};

const ORDER_BY = {
  DEFAULT: 'Default',
  NAME: 'Name',
  PRICE: 'Price',
};

const getSearchBikeHtml = (bike) => (`
  <a href="/bikes/${bike.id}" target="_blank" class="card card--search">
    <div class="image" style='background-image: url("/assets/${bike.image_name}")'>
    </div>
    <div>
      <div class="font-bold capitalize mb-1">${bike.name}</div>
      <div class="mb-2">${bike.description}</div>
      <div class="italic">$${Number(bike.price_per_day).toFixed(2)} per day</div>
    </div>
  </a>
`);

const getBikes = (el, orderBy) => {
  axios
    .get('/search', axiosConfig)
    .then(({ data: bikes }) => {
      let searchBikesHtml = '';
      // TODO Implement orderBy functionality, support default, name & price
      bikes.forEach((bike) => {
        searchBikesHtml = searchBikesHtml.concat(getSearchBikeHtml(bike));
      });
      el.innerHTML = searchBikesHtml;
    })
    .catch((error) => console.log(error));
};

window.onload = () => {
  const searchBikesEl = document.querySelector('[data-search-bikes]');
  if (!!searchBikesEl) {
    getBikes(searchBikesEl, ORDER_BY.DEFAULT);

    const searchOrderByEl = document.querySelector('[data-search-order-by]');
    // TODO Re-render search results if orderBy changes
  }
};
