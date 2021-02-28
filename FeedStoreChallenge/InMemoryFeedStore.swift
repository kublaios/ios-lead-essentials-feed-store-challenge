import Foundation

public class InMemoryFeedStore: FeedStore {

	public static let shared = InMemoryFeedStore.init()

	public func deleteCachedFeed(completion: @escaping DeletionCompletion) {

	}

	public func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InsertionCompletion) {

	}

	public func retrieve(completion: @escaping RetrievalCompletion) {

	}

}
