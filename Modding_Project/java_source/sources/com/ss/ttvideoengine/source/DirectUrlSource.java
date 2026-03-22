package com.ss.ttvideoengine.source;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ss.ttvideoengine.source.Source;
import com.ss.ttvideoengine.strategy.source.StrategySource;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
/* loaded from: classes6.dex */
public class DirectUrlSource implements StrategySource {
    public static final int KEY_LITE_EDITION = 1;
    private static final int KEY_PRO_EDITION = 2;
    private final int codecStrategy;
    private final boolean smartUrlEnabled;
    private final int smartUrlVersion;
    private final Object tag;
    private final List<UrlItem> urlItems;
    @NonNull
    private final String vid;

    /* loaded from: classes6.dex */
    public static class Builder {
        private int codecStrategy;
        private boolean smartUrlEnabled;
        private Object tag;
        @Nullable
        private String vid;
        private final List<UrlItem> items = new ArrayList();
        private int smartUrlVersion = 1;

        public Builder addItem(@NonNull UrlItem urlItem) {
            if (urlItem != null) {
                this.items.add(urlItem);
                return this;
            }
            throw new NullPointerException("urlItem = null");
        }

        public DirectUrlSource build() {
            if (!this.items.isEmpty()) {
                return new DirectUrlSource(this);
            }
            throw new IllegalArgumentException("items is empty");
        }

        public Builder setCodecStrategy(int i10) {
            this.codecStrategy = i10;
            return this;
        }

        public Builder setSmartUrlEnabled(boolean z10) {
            this.smartUrlEnabled = z10;
            return this;
        }

        public Builder setSmartUrlVersion(int i10) {
            this.smartUrlVersion = i10;
            return this;
        }

        public Builder setTag(Object obj) {
            this.tag = obj;
            return this;
        }

        public Builder setVid(@Nullable String str) {
            this.vid = str;
            return this;
        }
    }

    /* loaded from: classes6.dex */
    public static class UrlItem {
        @Nullable
        private final String cacheKey;
        @Nullable
        private final String encodeType;
        @Nullable
        private final String playAuth;
        private final long urlExpiredTime;
        @Nullable
        private final String[] urlExpires;
        @NonNull
        private final String[] urls;

        /* loaded from: classes6.dex */
        public static class Builder {
            @Nullable
            private String cacheKey;
            @Nullable
            private String encodeType;
            @Nullable
            private String playAuth;
            private long urlExpiredTime;
            private String[] urlExpires;
            private String[] urls;

            public Builder() {
            }

            private static void checkUrls(String[] strArr) {
                if (strArr != null) {
                    if (strArr.length != 0) {
                        if (!TextUtils.isEmpty(strArr[0])) {
                            return;
                        }
                        throw new IllegalArgumentException("urls[0] = null");
                    }
                    throw new IllegalArgumentException("urls is empty");
                }
                throw new NullPointerException("urls = null");
            }

            public UrlItem build() {
                checkUrls(this.urls);
                return new UrlItem(this);
            }

            public Builder setCacheKey(@Nullable String str) {
                this.cacheKey = str;
                return this;
            }

            public Builder setEncodeType(@Nullable String str) {
                this.encodeType = str;
                return this;
            }

            public Builder setPlayAuth(@Nullable String str) {
                this.playAuth = str;
                return this;
            }

            public Builder setUrl(@NonNull String str) {
                if (str != null) {
                    this.urls = new String[]{str};
                    return this;
                }
                throw new NullPointerException("url = null");
            }

            public Builder setUrlExpire(@NonNull String str) {
                if (str != null) {
                    this.urlExpires = new String[]{str};
                    return this;
                }
                throw new NullPointerException("expire = null");
            }

            Builder setUrlExpiredTime(long j10) {
                this.urlExpiredTime = j10;
                return this;
            }

            public Builder setUrlExpires(@Nullable String[] strArr) {
                this.urlExpires = strArr;
                return this;
            }

            public Builder setUrls(@NonNull String[] strArr) {
                checkUrls(strArr);
                this.urls = strArr;
                return this;
            }

            public Builder(UrlItem urlItem) {
                this.urls = urlItem.urls;
                this.urlExpires = urlItem.urlExpires;
                this.urlExpiredTime = urlItem.urlExpiredTime;
                this.cacheKey = urlItem.cacheKey;
                this.playAuth = urlItem.playAuth;
                this.encodeType = urlItem.encodeType;
            }
        }

        @Nullable
        public String getCacheKey() {
            return this.cacheKey;
        }

        @Nullable
        public String getEncodeType() {
            return this.encodeType;
        }

        @Nullable
        public String getPlayAuth() {
            return this.playAuth;
        }

        @NonNull
        public String getUrl() {
            return this.urls[0];
        }

        public String getUrlExpire() {
            String[] strArr = this.urlExpires;
            if (strArr != null) {
                return strArr[0];
            }
            return null;
        }

        public long getUrlExpiredTime() {
            return this.urlExpiredTime;
        }

        public String[] getUrlExpires() {
            return this.urlExpires;
        }

        public String[] getUrls() {
            return this.urls;
        }

        public String toString() {
            return "UrlItem{urls='" + Arrays.toString(this.urls) + "', urlExpires='" + this.urlExpires + "', cacheKey='" + this.cacheKey + "', playAuth='" + this.playAuth + "', encodeType='" + this.encodeType + "'}";
        }

        private UrlItem(Builder builder) {
            String[] unused = builder.urls;
            this.urls = builder.urls;
            this.urlExpires = builder.urlExpires;
            this.urlExpiredTime = builder.urlExpiredTime;
            this.cacheKey = builder.cacheKey;
            this.playAuth = builder.playAuth;
            this.encodeType = builder.encodeType;
        }
    }

    @NonNull
    public List<UrlItem> allItems() {
        return Collections.unmodifiableList(this.urlItems);
    }

    @Override // com.ss.ttvideoengine.source.Source
    public int codecStrategy() {
        return this.codecStrategy;
    }

    @Nullable
    public UrlItem findItemByEncodeType(String str) {
        for (UrlItem urlItem : this.urlItems) {
            if (TextUtils.equals(urlItem.encodeType, str)) {
                return urlItem;
            }
        }
        return null;
    }

    @Nullable
    public UrlItem firstItem() {
        if (this.urlItems.isEmpty()) {
            return null;
        }
        return this.urlItems.get(0);
    }

    public boolean isEmpty() {
        return this.urlItems.isEmpty();
    }

    public boolean isSmartUrlEnabled() {
        return this.smartUrlEnabled;
    }

    public boolean isSmartUrlValid() {
        int i10;
        if (this.smartUrlEnabled && ((i10 = this.smartUrlVersion) == 2 || i10 == 1)) {
            return true;
        }
        return false;
    }

    public int smartUrlVersion() {
        return this.smartUrlVersion;
    }

    @Override // com.ss.ttvideoengine.source.Source
    public Object tag() {
        return this.tag;
    }

    public String toString() {
        return "DirectUrlSource{vid='" + this.vid + "', urlItems=" + this.urlItems + ", codecStrategy=" + this.codecStrategy + ", smartUrlEnabled=" + this.smartUrlEnabled + ", smartUrlVersion=" + this.smartUrlVersion + '}';
    }

    @Override // com.ss.ttvideoengine.source.Source
    public Source.Type type() {
        return Source.Type.DIRECT_URL_SOURCE;
    }

    @Override // com.ss.ttvideoengine.source.Source
    @NonNull
    public String vid() {
        return this.vid;
    }

    private DirectUrlSource(Builder builder) {
        ArrayList arrayList = new ArrayList();
        this.urlItems = arrayList;
        this.vid = builder.vid == null ? UUID.randomUUID().toString() : builder.vid;
        arrayList.addAll(builder.items);
        this.codecStrategy = builder.codecStrategy;
        this.smartUrlEnabled = builder.smartUrlEnabled;
        this.smartUrlVersion = builder.smartUrlVersion;
        this.tag = builder.tag;
    }
}
