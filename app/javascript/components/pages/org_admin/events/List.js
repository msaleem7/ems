import React from 'react'
import { Button } from 'antd';

const ListEvents = ({ events=[] }) => {
  return (
    <div>ListEvents {events}
    <Button href="org_admin/events/new" type="link" block underline="none">
      New
    </Button>
    </div>
  )
}

export default ListEvents
