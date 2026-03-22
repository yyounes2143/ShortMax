package com.ss.ttvideoengine.strategy.refresh;

import android.util.LruCache;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ss.ttvideoengine.strategy.refresh.TTVideoEngineUrlFetcher;
/* loaded from: classes6.dex */
public interface UrlCache {
    public static final UrlCache DEFAULT = new UrlCache() { // from class: com.ss.ttvideoengine.strategy.refresh.UrlCache.1
        private final LruCache<String, TTVideoEngineUrlFetcher.UrlResult> sCache = new LruCache<>(100);

        @Override // com.ss.ttvideoengine.strategy.refresh.UrlCache
        public void clear() {
            this.sCache.evictAll();
        }

        @NonNull
        public String generateKey(@Nullable TTVideoEngineUrlFetcher.UrlRequest urlRequest) {
            if (urlRequest == null) {
                return "";
            }
            return urlRequest.cacheKey;
        }

        @Override // com.ss.ttvideoengine.strategy.refresh.UrlCache
        public TTVideoEngineUrlFetcher.UrlResult get(TTVideoEngineUrlFetcher.UrlRequest urlRequest) {
            if (urlRequest == null) {
                return null;
            }
            return this.sCache.get(generateKey(urlRequest));
        }

        @Override // com.ss.ttvideoengine.strategy.refresh.UrlCache
        public boolean isExpired(@Nullable TTVideoEngineUrlFetcher.UrlResult urlResult) {
            if (urlResult != null && urlResult.expireTimeInMS > System.currentTimeMillis()) {
                return false;
            }
            return true;
        }

        @Override // com.ss.ttvideoengine.strategy.refresh.UrlCache
        public void put(TTVideoEngineUrlFetcher.UrlRequest urlRequest, @Nullable TTVideoEngineUrlFetcher.UrlResult urlResult) {
            if (urlRequest != null && urlResult != null) {
                this.sCache.put(generateKey(urlRequest), urlResult);
            }
        }

        @Override // com.ss.ttvideoengine.strategy.refresh.UrlCache
        public void remove(TTVideoEngineUrlFetcher.UrlRequest urlRequest) {
            if (urlRequest == null) {
                return;
            }
            this.sCache.remove(generateKey(urlRequest));
        }
    };

    void clear();

    @Nullable
    TTVideoEngineUrlFetcher.UrlResult get(TTVideoEngineUrlFetcher.UrlRequest urlRequest);

    boolean isExpired(@Nullable TTVideoEngineUrlFetcher.UrlResult urlResult);

    void put(TTVideoEngineUrlFetcher.UrlRequest urlRequest, @Nullable TTVideoEngineUrlFetcher.UrlResult urlResult);

    void remove(TTVideoEngineUrlFetcher.UrlRequest urlRequest);
}
