import Foundation

public final class InMemoryFeedStore {
	private struct Cache {
		let feed: [LocalFeedImage]
		let timestamp: Date
	}

	public static let shared = InMemoryFeedStore.init()
	private var cache: Cache?
}

extension InMemoryFeedStore: FeedStore {
	public func deleteCachedFeed(completion: @escaping DeletionCompletion) {
		self.cache = nil
		completion(nil)
	}

	public func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InsertionCompletion) {
		self.cache = Cache(feed: feed, timestamp: timestamp)
		completion(nil)
	}

	public func retrieve(completion: @escaping RetrievalCompletion) {
		guard let cache = self.cache else {
			return completion(.empty)
		}
		completion(.found(feed: cache.feed, timestamp: cache.timestamp))
	}
}
