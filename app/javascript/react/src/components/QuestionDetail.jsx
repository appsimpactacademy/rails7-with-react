import * as React from 'react';
import * as ReactDOM from 'react-dom';
import Answer from './Answer';
import AccordionAnswer from './AccordionAnswer';

class QuestionDetail extends React.Component {

  constructor(props) {
    super(props)
    this.state = { 
      likeCount: this.props.question.likes_count,
      dislikeCount: this.props.question.dislikes_count,
      answer: this.props.question.answer
    }

    this.updateLikeCounter = this.updateLikeCounter.bind(this)
    this.updateDislikeCounter = this.updateDislikeCounter.bind(this)
    this.provideAnAnswer = this.provideAnAnswer.bind(this)
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

  provideAnAnswer = () => {
    this.setState(this.props.question.answer)
  }

  render() {
    return(
      <div className="card rounded-0 mt-3 mb-5 shadow">
        <div className="card-body">
          <h3 className="card-title">{this.props.question.title}</h3>
          <p className="lead">
            <span className="badge bg-primary">{this.props.question.tag}</span>
          </p>
          <div className='d-flex justify-content-between flex-wrap' style={{rowGap: "1rem"}}>
            <div>
              <button type="button" className="btn btn-primary position-relative" onClick={this.updateLikeCounter} style={{marginRight: 1 + 'em'}}>
                Like
                { this.state.likeCount > 0 ?
                  <span className="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-success">{this.state.likeCount}</span> : ''
                }
              </button>
              <button type="button" className="btn btn-warning position-relative" onClick={this.updateDislikeCounter}>
                Dislike
                { this.state.dislikeCount > 0 ?
                  <span className="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">{this.state.dislikeCount}</span> : ''
                }
              </button>
            </div>
            { this.state.answer == null ?
              <button type="button" className="btn btn-secondary position-relative" data-bs-toggle="modal" data-bs-target="#answerModal"
                onClick={this.provideAnAnswer}>Provide an answer
              </button>
            :
              <AccordionAnswer question={this.props.question} />
            }
          </div>
        </div>
      </div>
    )
  }
}

export default QuestionDetail;
