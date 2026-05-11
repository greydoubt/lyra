import FoundationModels

let model = SystemLanguageModel.default
guard model.availability == .available else { return }

let session = LanguageModelSession {
  """
  Provide a brutalist, information-dense summary in Markdown format.
  - Use **bold** for key concepts.
  - Use bullet points for facts.
  - No fluff. Just facts.
  """
}

let response = try await session.respond(options: .init(maximumResponseTokens: 1_000)) {
  articleText
}

let markdown = response.content
