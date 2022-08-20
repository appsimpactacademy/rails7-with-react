import * as React from 'react'
import * as ReactDOM from 'react-dom'

class QuestionDetail extends React.Component {

  constructor(props) {
    super(props)
    this.state = { 
      likeCount: this.props.question.likes_count,
      dislikeCount: this.props.question.dislikes_count
    }

    this.updateLikeCounter = this.updateLikeCounter.bind(this)
    this.updateDislikeCounter = this.updateDislikeCounter.bind(this)  
  }

  updateLikeCounter = () => {
    this.setState((state) => {
      return {
        likeCount: state.likeCount + 1
      }
    })
    this.updateQuestionCounter({count_for: 'like'})
  }

  updateDislikeCounter = () => {
    this.setState((state) => {
      return {
        dislikeCount: state.dislikeCount + 1
      }
    })
    this.updateQuestionCounter({count_for: 'dislike'})
  }

  updateQuestionCounter = (data) => {
    fetch(`/api/v1/questions/${this.props.question.id}/update_counter`, {
      method: 'PUT',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(data)
    })
      .then((response) => response.json())
      .then((data) => {
        console.log(data)
      })
      .catch((error) => {
        console.log(error)
      })
  }

  render() {
    return(
      <div className="card rounded-0 mt-3 mb-5 shadow">
        <div className="card-body">
          <h3 className="card-title">{this.props.question.title}</h3>
          <p className="lead">
            <span className="badge bg-primary">{this.props.question.tag}</span>
          </p>
          <button type="button" className="btn btn-primary position-relative" onClick={this.updateLikeCounter} style={{marginRight: 1 + 'em'}}>
            Like
            { this.state.likeCount > 0 ?
              <span className="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">{this.state.likeCount}</span> : ''
            }
          </button>

          <button type="button" className="btn btn-primary position-relative" onClick={this.updateDislikeCounter}>
            Dislike
            { this.state.dislikeCount > 0 ?
              <span className="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">{this.state.dislikeCount}</span> : ''
            }
          </button>
        </div>
      </div>
    )
  }
}

export default QuestionDetail
