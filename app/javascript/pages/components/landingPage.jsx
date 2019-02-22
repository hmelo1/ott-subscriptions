import React from 'react';
import CustomerTable from './customerTable'
import CustomerHeader from './customerHeader'

class LandingPage extends React.Component{
  constructor() {
    super();
    this.state = {
      customers: [],
      search: '',
    }
  }

  handleChange = (event) => {
    this.setState({
      search: event.target.value
    })
  }

  handleSubmit = (event) => {
    event.preventDefault()
    this.searchSubscriptions()
    console.log()
  }

  searchSubscriptions = () => {
    fetch(`/api/v1/search?phrase=`+this.state.search)
      .then(results => {
        return results.json()
      }).then(data => {
        this.setState({customers: data})
      })
  }

  componentDidMount() {
    fetch('/api/v1/customers')
      .then(results => {
        return results.json()
      }).then(data => {
        this.setState({customers: data})
      })
  }

  render(){
    return(
      <div>
        <CustomerHeader />
        <div className="searchbar-container">
          <form onSubmit={this.handleSubmit} className="searchbar">
            <input onChange={this.handleChange} placeholder="Search by email, product, or subscription type" class="searchbar-input"/>
          </form>
        </div>
        <CustomerTable customers={this.state.customers} />
      </div>
    )
  }
}

export default LandingPage