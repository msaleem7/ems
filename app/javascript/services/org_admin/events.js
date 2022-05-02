import api from '../../utils/api'
import axios from "axios"

const makeRequest = axios
export const listEvents = async (params) => {
  return api.get(`/api/org_admin/events`, { params })
}

export const showEvent = async (event_id, params) => {
  return api.get(`/org_admin/events/${event_id}`, { params })
}

export const createEvent = async (data) =>
  makeRequest({
    method: 'post',
    url: '/api/org_admin/events',
    data: data
  })

export const updateEvent = async (event_id, params) => {
  return api.post(`/api/org_admin/events/${event_id}`, { params })
}

export const deleteEvent = async (event_id, params) => {
  return api.delete(`/api/org_admin/events/${event_id}`, { params })
}
