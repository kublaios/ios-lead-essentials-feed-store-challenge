import Foundation

public class InMemoryFeedStore {
	public static let shared = InMemoryFeedStore.init()
}

extension InMemoryFeedStore: FeedStore {
	public func deleteCachedFeed(completion: @escaping DeletionCompletion) {

	}

	public func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InsertionCompletion) {

	}

	public func retrieve(completion: @escaping RetrievalCompletion) {
		completion(.empty)
	}
}
