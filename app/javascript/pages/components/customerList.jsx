import React from 'react';

class CustomerList extends React.Component {
  

  getDate = (subscriptionDate, currentDate) => {
    const subDate = new Date(subscriptionDate)
    return this.dateDiff(subDate, currentDate)
  }

  dateDiff = (date1, date2) => {
    return Math.round((date2-date1)/(1000*60*60*24));
  }

  render(){
    const { customers } = this.props
    const todaysDate = new Date();

    let customerList = customers.map((customer,index) =>
      <tr className="table-contents">
        <td className="user-email table-left-group">
          {customer.email}
        </td>
        <td className="user-product table-left-group">
          {customer.platform.product}
        </td>
        <td className="user-subscription table-right-group">
          {this.getDate(customer.subscribed_at, todaysDate)} days ago
        </td>
      </tr>
    )
    return(
      <React.Fragment>
        {customerList}
      </React.Fragment>
    )
  }
}

export default CustomerList