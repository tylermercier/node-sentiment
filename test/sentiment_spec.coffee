sentiment = require('../main');

describe "Sentiment", ->
  before ->
    @sentimentEngine = new sentiment()

  it "'fuck, that is rad' should be positive", ->
    sentiment = @sentimentEngine.classify('fuck, that is rad').sentiment
    expect(sentiment).to.equal('positive')

  it "'I went for a walk today' should be neutral", ->
    sentiment = @sentimentEngine.classify('I went for a walk today').sentiment
    expect(sentiment).to.equal('neutral')

  it "'this is garbage!' should be negative", ->
    sentiment = @sentimentEngine.classify('this is garbage!').sentiment
    expect(sentiment).to.equal('negative')
