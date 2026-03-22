package com.ss.ttvideoengine.strategy.refresh;

import androidx.annotation.NonNull;
import com.ss.ttvideoengine.TTVideoEngine;
/* loaded from: classes6.dex */
public interface TTVideoEngineUrlFetcher extends TTVideoEngineFetcher<UrlRequest, UrlResult> {

    /* loaded from: classes6.dex */
    public interface Factory {
        TTVideoEngineUrlFetcher create(@NonNull TTVideoEngine tTVideoEngine);
    }

    /* loaded from: classes6.dex */
    public static class UrlRequest {
        public final String cacheKey;
        public final String url;
        public final String vid;

        public UrlRequest(String str, String str2, String str3) {
            this.vid = str;
            this.cacheKey = str2;
            this.url = str3;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static String dump(UrlRequest urlRequest) {
            if (urlRequest == null) {
                return null;
            }
            return urlRequest.vid + " " + urlRequest.cacheKey + " " + urlRequest.url;
        }
    }

    /* loaded from: classes6.dex */
    public static class UrlResult {
        public final long expireTimeInMS;
        public final String url;

        public UrlResult(String str, long j10) {
            this.url = str;
            this.expireTimeInMS = j10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static String dump(UrlResult urlResult) {
            if (urlResult == null) {
                return null;
            }
            return urlResult.url + " " + urlResult.expireTimeInMS;
        }
    }
}
