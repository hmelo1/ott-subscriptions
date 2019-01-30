import React from 'react';

class CustomerList extends React.Component {
  render(){
    const { customers } = this.props
    let customerList = customers.map((customer,index) =>
      <div>
        {customer.email}
        {customer.product_name}
      </div>
    )
    return(
      <div>
        {customerList}
      </div>
    )
  }
}

export default CustomerList