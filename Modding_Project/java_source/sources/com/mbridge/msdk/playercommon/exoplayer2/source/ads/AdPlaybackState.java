package com.mbridge.msdk.playercommon.exoplayer2.source.ads;

import android.net.Uri;
import androidx.annotation.CheckResult;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
/* loaded from: classes6.dex */
public final class AdPlaybackState {
    public static final int AD_STATE_AVAILABLE = 1;
    public static final int AD_STATE_ERROR = 4;
    public static final int AD_STATE_PLAYED = 3;
    public static final int AD_STATE_SKIPPED = 2;
    public static final int AD_STATE_UNAVAILABLE = 0;
    public static final AdPlaybackState NONE = new AdPlaybackState(new long[0]);
    public final int adGroupCount;
    public final long[] adGroupTimesUs;
    public final AdGroup[] adGroups;
    public final long adResumePositionUs;
    public final long contentDurationUs;

    /* loaded from: classes6.dex */
    public static final class AdGroup {
        public final int count;
        public final long[] durationsUs;
        public final int[] states;
        public final Uri[] uris;

        public AdGroup() {
            this(-1, new int[0], new Uri[0], new long[0]);
        }

        @CheckResult
        private static long[] copyDurationsUsWithSpaceForAdCount(long[] jArr, int i10) {
            int length = jArr.length;
            int max = Math.max(i10, length);
            long[] copyOf = Arrays.copyOf(jArr, max);
            Arrays.fill(copyOf, length, max, -9223372036854775807L);
            return copyOf;
        }

        @CheckResult
        private static int[] copyStatesWithSpaceForAdCount(int[] iArr, int i10) {
            int length = iArr.length;
            int max = Math.max(i10, length);
            int[] copyOf = Arrays.copyOf(iArr, max);
            Arrays.fill(copyOf, length, max, 0);
            return copyOf;
        }

        public int getFirstAdIndexToPlay() {
            return getNextAdIndexToPlay(-1);
        }

        public int getNextAdIndexToPlay(int i10) {
            int i11;
            int i12 = i10 + 1;
            while (true) {
                int[] iArr = this.states;
                if (i12 >= iArr.length || (i11 = iArr[i12]) == 0 || i11 == 1) {
                    break;
                }
                i12++;
            }
            return i12;
        }

        public boolean hasUnplayedAds() {
            if (this.count != -1 && getFirstAdIndexToPlay() >= this.count) {
                return false;
            }
            return true;
        }

        @CheckResult
        public AdGroup withAdCount(int i10) {
            boolean z10;
            if (this.count == -1 && this.states.length <= i10) {
                z10 = true;
            } else {
                z10 = false;
            }
            Assertions.checkArgument(z10);
            return new AdGroup(i10, copyStatesWithSpaceForAdCount(this.states, i10), (Uri[]) Arrays.copyOf(this.uris, i10), copyDurationsUsWithSpaceForAdCount(this.durationsUs, i10));
        }

        @CheckResult
        public AdGroup withAdDurationsUs(long[] jArr) {
            boolean z10;
            if (this.count != -1 && jArr.length > this.uris.length) {
                z10 = false;
            } else {
                z10 = true;
            }
            Assertions.checkArgument(z10);
            int length = jArr.length;
            Uri[] uriArr = this.uris;
            if (length < uriArr.length) {
                jArr = copyDurationsUsWithSpaceForAdCount(jArr, uriArr.length);
            }
            return new AdGroup(this.count, this.states, this.uris, jArr);
        }

        @CheckResult
        public AdGroup withAdState(int i10, int i11) {
            boolean z10;
            int i12 = this.count;
            boolean z11 = false;
            if (i12 != -1 && i11 >= i12) {
                z10 = false;
            } else {
                z10 = true;
            }
            Assertions.checkArgument(z10);
            int[] copyStatesWithSpaceForAdCount = copyStatesWithSpaceForAdCount(this.states, i11 + 1);
            int i13 = copyStatesWithSpaceForAdCount[i11];
            if (i13 == 0 || i13 == 1 || i13 == i10) {
                z11 = true;
            }
            Assertions.checkArgument(z11);
            long[] jArr = this.durationsUs;
            if (jArr.length != copyStatesWithSpaceForAdCount.length) {
                jArr = copyDurationsUsWithSpaceForAdCount(jArr, copyStatesWithSpaceForAdCount.length);
            }
            Uri[] uriArr = this.uris;
            if (uriArr.length != copyStatesWithSpaceForAdCount.length) {
                uriArr = (Uri[]) Arrays.copyOf(uriArr, copyStatesWithSpaceForAdCount.length);
            }
            copyStatesWithSpaceForAdCount[i11] = i10;
            return new AdGroup(this.count, copyStatesWithSpaceForAdCount, uriArr, jArr);
        }

        @CheckResult
        public AdGroup withAdUri(Uri uri, int i10) {
            boolean z10;
            int i11 = this.count;
            boolean z11 = false;
            if (i11 != -1 && i10 >= i11) {
                z10 = false;
            } else {
                z10 = true;
            }
            Assertions.checkArgument(z10);
            int[] copyStatesWithSpaceForAdCount = copyStatesWithSpaceForAdCount(this.states, i10 + 1);
            if (copyStatesWithSpaceForAdCount[i10] == 0) {
                z11 = true;
            }
            Assertions.checkArgument(z11);
            long[] jArr = this.durationsUs;
            if (jArr.length != copyStatesWithSpaceForAdCount.length) {
                jArr = copyDurationsUsWithSpaceForAdCount(jArr, copyStatesWithSpaceForAdCount.length);
            }
            Uri[] uriArr = (Uri[]) Arrays.copyOf(this.uris, copyStatesWithSpaceForAdCount.length);
            uriArr[i10] = uri;
            copyStatesWithSpaceForAdCount[i10] = 1;
            return new AdGroup(this.count, copyStatesWithSpaceForAdCount, uriArr, jArr);
        }

        @CheckResult
        public AdGroup withAllAdsSkipped() {
            if (this.count == -1) {
                return new AdGroup(0, new int[0], new Uri[0], new long[0]);
            }
            int[] iArr = this.states;
            int length = iArr.length;
            int[] copyOf = Arrays.copyOf(iArr, length);
            for (int i10 = 0; i10 < length; i10++) {
                int i11 = copyOf[i10];
                if (i11 == 1 || i11 == 0) {
                    copyOf[i10] = 2;
                }
            }
            return new AdGroup(length, copyOf, this.uris, this.durationsUs);
        }

        private AdGroup(int i10, int[] iArr, Uri[] uriArr, long[] jArr) {
            Assertions.checkArgument(iArr.length == uriArr.length);
            this.count = i10;
            this.states = iArr;
            this.uris = uriArr;
            this.durationsUs = jArr;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes6.dex */
    public @interface AdState {
    }

    public AdPlaybackState(long... jArr) {
        int length = jArr.length;
        this.adGroupCount = length;
        this.adGroupTimesUs = Arrays.copyOf(jArr, length);
        this.adGroups = new AdGroup[length];
        for (int i10 = 0; i10 < length; i10++) {
            this.adGroups[i10] = new AdGroup();
        }
        this.adResumePositionUs = 0L;
        this.contentDurationUs = -9223372036854775807L;
    }

    public int getAdGroupIndexAfterPositionUs(long j10) {
        int i10 = 0;
        while (true) {
            long[] jArr = this.adGroupTimesUs;
            if (i10 >= jArr.length) {
                break;
            }
            long j11 = jArr[i10];
            if (j11 == Long.MIN_VALUE || (j10 < j11 && this.adGroups[i10].hasUnplayedAds())) {
                break;
            }
            i10++;
        }
        if (i10 >= this.adGroupTimesUs.length) {
            return -1;
        }
        return i10;
    }

    public int getAdGroupIndexForPositionUs(long j10) {
        int length = this.adGroupTimesUs.length - 1;
        while (length >= 0) {
            long j11 = this.adGroupTimesUs[length];
            if (j11 != Long.MIN_VALUE && j11 <= j10) {
                break;
            }
            length--;
        }
        if (length < 0 || !this.adGroups[length].hasUnplayedAds()) {
            return -1;
        }
        return length;
    }

    @CheckResult
    public AdPlaybackState withAdCount(int i10, int i11) {
        boolean z10;
        if (i11 > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        Assertions.checkArgument(z10);
        AdGroup[] adGroupArr = this.adGroups;
        if (adGroupArr[i10].count == i11) {
            return this;
        }
        AdGroup[] adGroupArr2 = (AdGroup[]) Arrays.copyOf(adGroupArr, adGroupArr.length);
        adGroupArr2[i10] = this.adGroups[i10].withAdCount(i11);
        return new AdPlaybackState(this.adGroupTimesUs, adGroupArr2, this.adResumePositionUs, this.contentDurationUs);
    }

    @CheckResult
    public AdPlaybackState withAdDurationsUs(long[][] jArr) {
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Arrays.copyOf(adGroupArr, adGroupArr.length);
        for (int i10 = 0; i10 < this.adGroupCount; i10++) {
            adGroupArr2[i10] = adGroupArr2[i10].withAdDurationsUs(jArr[i10]);
        }
        return new AdPlaybackState(this.adGroupTimesUs, adGroupArr2, this.adResumePositionUs, this.contentDurationUs);
    }

    @CheckResult
    public AdPlaybackState withAdLoadError(int i10, int i11) {
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Arrays.copyOf(adGroupArr, adGroupArr.length);
        adGroupArr2[i10] = adGroupArr2[i10].withAdState(4, i11);
        return new AdPlaybackState(this.adGroupTimesUs, adGroupArr2, this.adResumePositionUs, this.contentDurationUs);
    }

    @CheckResult
    public AdPlaybackState withAdResumePositionUs(long j10) {
        if (this.adResumePositionUs == j10) {
            return this;
        }
        return new AdPlaybackState(this.adGroupTimesUs, this.adGroups, j10, this.contentDurationUs);
    }

    @CheckResult
    public AdPlaybackState withAdUri(int i10, int i11, Uri uri) {
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Arrays.copyOf(adGroupArr, adGroupArr.length);
        adGroupArr2[i10] = adGroupArr2[i10].withAdUri(uri, i11);
        return new AdPlaybackState(this.adGroupTimesUs, adGroupArr2, this.adResumePositionUs, this.contentDurationUs);
    }

    @CheckResult
    public AdPlaybackState withContentDurationUs(long j10) {
        if (this.contentDurationUs == j10) {
            return this;
        }
        return new AdPlaybackState(this.adGroupTimesUs, this.adGroups, this.adResumePositionUs, j10);
    }

    @CheckResult
    public AdPlaybackState withPlayedAd(int i10, int i11) {
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Arrays.copyOf(adGroupArr, adGroupArr.length);
        adGroupArr2[i10] = adGroupArr2[i10].withAdState(3, i11);
        return new AdPlaybackState(this.adGroupTimesUs, adGroupArr2, this.adResumePositionUs, this.contentDurationUs);
    }

    @CheckResult
    public AdPlaybackState withSkippedAd(int i10, int i11) {
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Arrays.copyOf(adGroupArr, adGroupArr.length);
        adGroupArr2[i10] = adGroupArr2[i10].withAdState(2, i11);
        return new AdPlaybackState(this.adGroupTimesUs, adGroupArr2, this.adResumePositionUs, this.contentDurationUs);
    }

    @CheckResult
    public AdPlaybackState withSkippedAdGroup(int i10) {
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Arrays.copyOf(adGroupArr, adGroupArr.length);
        adGroupArr2[i10] = adGroupArr2[i10].withAllAdsSkipped();
        return new AdPlaybackState(this.adGroupTimesUs, adGroupArr2, this.adResumePositionUs, this.contentDurationUs);
    }

    private AdPlaybackState(long[] jArr, AdGroup[] adGroupArr, long j10, long j11) {
        this.adGroupCount = adGroupArr.length;
        this.adGroupTimesUs = jArr;
        this.adGroups = adGroupArr;
        this.adResumePositionUs = j10;
        this.contentDurationUs = j11;
    }
}
