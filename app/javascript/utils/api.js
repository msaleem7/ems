import axios from 'axios';
import qs from 'qs'
import { camelizeKeys, decamelizeKeys } from 'humps';

const api = axios.create();

api.interceptors.response.use((response) => {
  if (
    response.data
  ) {
    response.data = camelizeKeys(response.data);
  }
  return response;
});

api.interceptors.request.use(request => {
  request.paramsSerializer = params => {
    return qs.stringify(params, {
      arrayFormat: "brackets",
      encode: false
    });
  };

  return request;
});

export default api;
