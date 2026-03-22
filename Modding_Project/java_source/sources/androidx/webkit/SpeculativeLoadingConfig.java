package androidx.webkit;

import androidx.annotation.IntRange;
import androidx.webkit.Profile;
@Profile.ExperimentalUrlPrefetch
/* loaded from: classes2.dex */
public class SpeculativeLoadingConfig {
    private final int mMaxPrefetches;
    private final int mMaxPrerenders;
    private final int mPrefetchTTLSeconds;

    @Profile.ExperimentalUrlPrefetch
    /* loaded from: classes2.dex */
    public static final class Builder {
        private int mMaxPrefetches;
        private int mMaxPrerenders;
        private int mPrefetchTTLSeconds;

        @Profile.ExperimentalUrlPrefetch
        public SpeculativeLoadingConfig build() {
            return new SpeculativeLoadingConfig(this.mPrefetchTTLSeconds, this.mMaxPrefetches, this.mMaxPrerenders);
        }

        public Builder setMaxPrefetches(@IntRange(from = 1) int i10) {
            if (i10 >= 1) {
                this.mMaxPrefetches = i10;
                return this;
            }
            throw new IllegalArgumentException("Max prefetches must be greater than 0");
        }

        public Builder setMaxPrerenders(@IntRange(from = 1) int i10) {
            if (i10 >= 1) {
                this.mMaxPrerenders = i10;
                return this;
            }
            throw new IllegalArgumentException("Max prerenders must be greater than 0");
        }

        public Builder setPrefetchTtlSeconds(@IntRange(from = 1) int i10) {
            if (i10 > 0) {
                this.mPrefetchTTLSeconds = i10;
                return this;
            }
            throw new IllegalArgumentException("Prefetch TTL must be greater than 0");
        }
    }

    @IntRange(from = 1)
    public int getMaxPrefetches() {
        return this.mMaxPrefetches;
    }

    @IntRange(from = 1)
    @Profile.ExperimentalUrlPrefetch
    public int getMaxPrerenders() {
        return this.mMaxPrerenders;
    }

    @IntRange(from = 1)
    public int getPrefetchTtlSeconds() {
        return this.mPrefetchTTLSeconds;
    }

    private SpeculativeLoadingConfig(int i10, int i11, int i12) {
        this.mPrefetchTTLSeconds = i10;
        this.mMaxPrefetches = i11;
        this.mMaxPrerenders = i12;
    }
}
