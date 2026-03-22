package com.startshorts.androidplayer.bean.unlock;

import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: QuerySingleUnlockEpisodeMethodsResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class QuerySingleUnlockEpisodeMethodsResult {
    private final boolean isDisplayedTripartite;
    private final boolean isLowPayScoreUser;
    @Nullable
    private final CoinSku mainSkuV2Response;
    private final long nextRefreshTime;
    @Nullable
    private final CoinSku retainSkuInfoResponses;
    @Nullable
    private final SubsSku retainSubscribeProduct;
    @Nullable
    private List<CoinSku> skuInfoResponses;
    @Nullable
    private final List<SubsSku> subscribeSkuResponses;
    @Nullable
    private final String tripartiteRewardRatio;
    @Nullable
    private final String tripartiteRewardUrl;
    @Nullable
    private final UnlockEpisodeAdMethod watchAdResultResponse;

    public QuerySingleUnlockEpisodeMethodsResult(@Nullable CoinSku coinSku, @Nullable CoinSku coinSku2, @Nullable List<SubsSku> list, @Nullable SubsSku subsSku, @Nullable UnlockEpisodeAdMethod unlockEpisodeAdMethod, @Nullable List<CoinSku> list2, @Nullable String str, @Nullable String str2, boolean z10, long j10, boolean z11) {
        this.mainSkuV2Response = coinSku;
        this.retainSkuInfoResponses = coinSku2;
        this.subscribeSkuResponses = list;
        this.retainSubscribeProduct = subsSku;
        this.watchAdResultResponse = unlockEpisodeAdMethod;
        this.skuInfoResponses = list2;
        this.tripartiteRewardRatio = str;
        this.tripartiteRewardUrl = str2;
        this.isDisplayedTripartite = z10;
        this.nextRefreshTime = j10;
        this.isLowPayScoreUser = z11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ QuerySingleUnlockEpisodeMethodsResult copy$default(QuerySingleUnlockEpisodeMethodsResult querySingleUnlockEpisodeMethodsResult, CoinSku coinSku, CoinSku coinSku2, List list, SubsSku subsSku, UnlockEpisodeAdMethod unlockEpisodeAdMethod, List list2, String str, String str2, boolean z10, long j10, boolean z11, int i10, Object obj) {
        CoinSku coinSku3;
        CoinSku coinSku4;
        List<SubsSku> list3;
        SubsSku subsSku2;
        UnlockEpisodeAdMethod unlockEpisodeAdMethod2;
        List<CoinSku> list4;
        String str3;
        String str4;
        boolean z12;
        long j11;
        boolean z13;
        if ((i10 & 1) != 0) {
            coinSku3 = querySingleUnlockEpisodeMethodsResult.mainSkuV2Response;
        } else {
            coinSku3 = coinSku;
        }
        if ((i10 & 2) != 0) {
            coinSku4 = querySingleUnlockEpisodeMethodsResult.retainSkuInfoResponses;
        } else {
            coinSku4 = coinSku2;
        }
        if ((i10 & 4) != 0) {
            list3 = querySingleUnlockEpisodeMethodsResult.subscribeSkuResponses;
        } else {
            list3 = list;
        }
        if ((i10 & 8) != 0) {
            subsSku2 = querySingleUnlockEpisodeMethodsResult.retainSubscribeProduct;
        } else {
            subsSku2 = subsSku;
        }
        if ((i10 & 16) != 0) {
            unlockEpisodeAdMethod2 = querySingleUnlockEpisodeMethodsResult.watchAdResultResponse;
        } else {
            unlockEpisodeAdMethod2 = unlockEpisodeAdMethod;
        }
        if ((i10 & 32) != 0) {
            list4 = querySingleUnlockEpisodeMethodsResult.skuInfoResponses;
        } else {
            list4 = list2;
        }
        if ((i10 & 64) != 0) {
            str3 = querySingleUnlockEpisodeMethodsResult.tripartiteRewardRatio;
        } else {
            str3 = str;
        }
        if ((i10 & 128) != 0) {
            str4 = querySingleUnlockEpisodeMethodsResult.tripartiteRewardUrl;
        } else {
            str4 = str2;
        }
        if ((i10 & 256) != 0) {
            z12 = querySingleUnlockEpisodeMethodsResult.isDisplayedTripartite;
        } else {
            z12 = z10;
        }
        if ((i10 & 512) != 0) {
            j11 = querySingleUnlockEpisodeMethodsResult.nextRefreshTime;
        } else {
            j11 = j10;
        }
        if ((i10 & 1024) != 0) {
            z13 = querySingleUnlockEpisodeMethodsResult.isLowPayScoreUser;
        } else {
            z13 = z11;
        }
        return querySingleUnlockEpisodeMethodsResult.copy(coinSku3, coinSku4, list3, subsSku2, unlockEpisodeAdMethod2, list4, str3, str4, z12, j11, z13);
    }

    @Nullable
    public final CoinSku component1() {
        return this.mainSkuV2Response;
    }

    public final long component10() {
        return this.nextRefreshTime;
    }

    public final boolean component11() {
        return this.isLowPayScoreUser;
    }

    @Nullable
    public final CoinSku component2() {
        return this.retainSkuInfoResponses;
    }

    @Nullable
    public final List<SubsSku> component3() {
        return this.subscribeSkuResponses;
    }

    @Nullable
    public final SubsSku component4() {
        return this.retainSubscribeProduct;
    }

    @Nullable
    public final UnlockEpisodeAdMethod component5() {
        return this.watchAdResultResponse;
    }

    @Nullable
    public final List<CoinSku> component6() {
        return this.skuInfoResponses;
    }

    @Nullable
    public final String component7() {
        return this.tripartiteRewardRatio;
    }

    @Nullable
    public final String component8() {
        return this.tripartiteRewardUrl;
    }

    public final boolean component9() {
        return this.isDisplayedTripartite;
    }

    @NotNull
    public final QuerySingleUnlockEpisodeMethodsResult copy(@Nullable CoinSku coinSku, @Nullable CoinSku coinSku2, @Nullable List<SubsSku> list, @Nullable SubsSku subsSku, @Nullable UnlockEpisodeAdMethod unlockEpisodeAdMethod, @Nullable List<CoinSku> list2, @Nullable String str, @Nullable String str2, boolean z10, long j10, boolean z11) {
        return new QuerySingleUnlockEpisodeMethodsResult(coinSku, coinSku2, list, subsSku, unlockEpisodeAdMethod, list2, str, str2, z10, j10, z11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof QuerySingleUnlockEpisodeMethodsResult)) {
            return false;
        }
        QuerySingleUnlockEpisodeMethodsResult querySingleUnlockEpisodeMethodsResult = (QuerySingleUnlockEpisodeMethodsResult) obj;
        if (Intrinsics.areEqual(this.mainSkuV2Response, querySingleUnlockEpisodeMethodsResult.mainSkuV2Response) && Intrinsics.areEqual(this.retainSkuInfoResponses, querySingleUnlockEpisodeMethodsResult.retainSkuInfoResponses) && Intrinsics.areEqual(this.subscribeSkuResponses, querySingleUnlockEpisodeMethodsResult.subscribeSkuResponses) && Intrinsics.areEqual(this.retainSubscribeProduct, querySingleUnlockEpisodeMethodsResult.retainSubscribeProduct) && Intrinsics.areEqual(this.watchAdResultResponse, querySingleUnlockEpisodeMethodsResult.watchAdResultResponse) && Intrinsics.areEqual(this.skuInfoResponses, querySingleUnlockEpisodeMethodsResult.skuInfoResponses) && Intrinsics.areEqual(this.tripartiteRewardRatio, querySingleUnlockEpisodeMethodsResult.tripartiteRewardRatio) && Intrinsics.areEqual(this.tripartiteRewardUrl, querySingleUnlockEpisodeMethodsResult.tripartiteRewardUrl) && this.isDisplayedTripartite == querySingleUnlockEpisodeMethodsResult.isDisplayedTripartite && this.nextRefreshTime == querySingleUnlockEpisodeMethodsResult.nextRefreshTime && this.isLowPayScoreUser == querySingleUnlockEpisodeMethodsResult.isLowPayScoreUser) {
            return true;
        }
        return false;
    }

    @Nullable
    public final CoinSku getMainSkuV2Response() {
        return this.mainSkuV2Response;
    }

    public final long getNextRefreshTime() {
        return this.nextRefreshTime;
    }

    @Nullable
    public final CoinSku getRetainSkuInfoResponses() {
        return this.retainSkuInfoResponses;
    }

    @Nullable
    public final SubsSku getRetainSubscribeProduct() {
        return this.retainSubscribeProduct;
    }

    @Nullable
    public final List<CoinSku> getSkuInfoResponses() {
        return this.skuInfoResponses;
    }

    @Nullable
    public final List<SubsSku> getSubscribeSkuResponses() {
        return this.subscribeSkuResponses;
    }

    @Nullable
    public final String getTripartiteRewardRatio() {
        return this.tripartiteRewardRatio;
    }

    @Nullable
    public final String getTripartiteRewardUrl() {
        return this.tripartiteRewardUrl;
    }

    @Nullable
    public final UnlockEpisodeAdMethod getWatchAdResultResponse() {
        return this.watchAdResultResponse;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6;
        int hashCode7;
        CoinSku coinSku = this.mainSkuV2Response;
        int i10 = 0;
        if (coinSku == null) {
            hashCode = 0;
        } else {
            hashCode = coinSku.hashCode();
        }
        int i11 = hashCode * 31;
        CoinSku coinSku2 = this.retainSkuInfoResponses;
        if (coinSku2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = coinSku2.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        List<SubsSku> list = this.subscribeSkuResponses;
        if (list == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = list.hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        SubsSku subsSku = this.retainSubscribeProduct;
        if (subsSku == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = subsSku.hashCode();
        }
        int i14 = (i13 + hashCode4) * 31;
        UnlockEpisodeAdMethod unlockEpisodeAdMethod = this.watchAdResultResponse;
        if (unlockEpisodeAdMethod == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = unlockEpisodeAdMethod.hashCode();
        }
        int i15 = (i14 + hashCode5) * 31;
        List<CoinSku> list2 = this.skuInfoResponses;
        if (list2 == null) {
            hashCode6 = 0;
        } else {
            hashCode6 = list2.hashCode();
        }
        int i16 = (i15 + hashCode6) * 31;
        String str = this.tripartiteRewardRatio;
        if (str == null) {
            hashCode7 = 0;
        } else {
            hashCode7 = str.hashCode();
        }
        int i17 = (i16 + hashCode7) * 31;
        String str2 = this.tripartiteRewardUrl;
        if (str2 != null) {
            i10 = str2.hashCode();
        }
        return ((((((i17 + i10) * 31) + Boolean.hashCode(this.isDisplayedTripartite)) * 31) + Long.hashCode(this.nextRefreshTime)) * 31) + Boolean.hashCode(this.isLowPayScoreUser);
    }

    public final boolean isDisplayedTripartite() {
        return this.isDisplayedTripartite;
    }

    public final boolean isLowPayScoreUser() {
        return this.isLowPayScoreUser;
    }

    public final void setSkuInfoResponses(@Nullable List<CoinSku> list) {
        this.skuInfoResponses = list;
    }

    @NotNull
    public String toString() {
        return "QuerySingleUnlockEpisodeMethodsResult(mainSkuV2Response=" + this.mainSkuV2Response + ", retainSkuInfoResponses=" + this.retainSkuInfoResponses + ", subscribeSkuResponses=" + this.subscribeSkuResponses + ", retainSubscribeProduct=" + this.retainSubscribeProduct + ", watchAdResultResponse=" + this.watchAdResultResponse + ", skuInfoResponses=" + this.skuInfoResponses + ", tripartiteRewardRatio=" + this.tripartiteRewardRatio + ", tripartiteRewardUrl=" + this.tripartiteRewardUrl + ", isDisplayedTripartite=" + this.isDisplayedTripartite + ", nextRefreshTime=" + this.nextRefreshTime + ", isLowPayScoreUser=" + this.isLowPayScoreUser + ')';
    }
}
