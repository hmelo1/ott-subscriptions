import React from 'react';
import CustomerList from './customerList'


class CustomerTable extends React.Component {
  render(){
    const { customers } = this.props
    return(
      <table id="customers">
        <tbody id="table-wrapper">
          <tr>
            <th id="col customer" className="table-headers">Customer</th>
            <th id="col product" className="table-headers">Product</th>
            <th id="col pagination" className="table-headers">Pagination</th>
          </tr>
          <CustomerList customers={customers} />
        </tbody>
      </table>
    )
  }
}

export default CustomerTable