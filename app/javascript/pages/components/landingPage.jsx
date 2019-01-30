import React from 'react';
import CustomerList from './customerList'

class LandingPage extends React.Component{
  constructor() {
    super();
    this.state = {
      customers: [],
    }
  }

  componentDidMount() {
    fetch('http://0.0.0.0:3000/api/v1/customers')
      .then(results => {
        return results.json()
      }).then(data => {
        this.setState({customers: data})
      })
  }

  render(){
    return(
      <div>
        <CustomerList customers={this.state.customers} />
      </div>
    )
  }
}

export default LandingPage