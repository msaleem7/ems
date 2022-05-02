import React, { useState } from 'react'
import { Form, Input, InputNumber, Button, DatePicker, notification } from 'antd';
import { createEvent } from '../../../../services/org_admin/events'
import './styles.scss'

const NewEvent = () => {
  const [name, setName] = useState('')
  const [description, setDescription] = useState('')
  const [capacity, setCapacity] = useState(0)
  const [startsAt, setStartsAt] = useState(new Date())
  const [endsAt, setEndsAt] = useState(new Date())
  const onFinish= async() => {
    let params = {
      event:{
        name,
        description,
        capacity,
        startsAt,
        endsAt
      }
    }
    try {
      let response = await createEvent(params)
      if (response?.data?.success){
        // window.location.href = 'org_admin/events'
      }
    } catch (err) {
      notification.error({
        message: err?.response?.data?.message
      });
    }
    
  }
  const styles = {
    dataInput: {
      width: 175,
      height: 45,
    },
    inputHeight: {
      height: 45,
    },
    button: {
      width: '100%',
      height: 48,
      backgroundColor: '#E96E75'
    }
  };

  const layout = {
    labelCol: {
      span: 8,
    },
    wrapperCol: {
      span: 16,
    },
  };

  const validateMessages = {
    required: '${label} is required!',
    types: {
      email: '${label} is not a valid email!',
      number: '${label} is not a valid number!',
    },
    number: {
      range: '${label} must be between ${min} and ${max}',
    },
  };

  return (
    <Form {...layout} name="nest-messages" onFinish={onFinish} validateMessages={validateMessages}>
      <Form.Item
        name='name'
        label="Name"
        rules={[
          {
            required: true,
          },
        ]}
      >
        <Input onChange={e=>setName(e.target.value)}/>
      </Form.Item>
      <Form.Item 
        name='description'
        label="Description"
        rules={[
          {
            required: true,
          },
        ]}
      >
        <Input.TextArea onChange={e=>setDescription(e.target.value)}/>
      </Form.Item>
      <Form.Item
        name='capacity'
        label="Capacity"
        rules={[
          {
            type: 'number',
            min: 0,
            max: 99,
          },
        ]}
      >
        <InputNumber onChange={value => setCapacity(value)}/>
      </Form.Item>
      <Form.Item
        name='starts_at'
        label="Starts At"
        rules={[
          {
            required: true,
          },
        ]}
      >
        <DatePicker showTime format="YYYY-MM-DD HH:mm:ss" onChange={(_, dateString)=>setStartsAt(dateString)}/>
      </Form.Item>
      <Form.Item name='ends_at' label="Ends At">
        <DatePicker showTime format="YYYY-MM-DD HH:mm:ss" onChange={(_, dateString)=>setEndsAt(dateString)}/>
      </Form.Item>
      <Form.Item wrapperCol={{ ...layout.wrapperCol, offset: 8 }}>
        <Button type="primary" htmlType="submit">
          Submit
        </Button>
      </Form.Item>
    </Form>
  )
}

export default NewEvent