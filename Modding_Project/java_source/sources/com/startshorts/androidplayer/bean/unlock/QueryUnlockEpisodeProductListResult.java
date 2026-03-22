package com.startshorts.androidplayer.bean.unlock;

import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: QueryUnlockEpisodeProductListResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class QueryUnlockEpisodeProductListResult {
    private int cardDisplayType;
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

    public QueryUnlockEpisodeProductListResult(@Nullable CoinSku coinSku, @Nullable CoinSku coinSku2, @Nullable List<SubsSku> list, @Nullable SubsSku subsSku, @Nullable UnlockEpisodeAdMethod unlockEpisodeAdMethod, @Nullable List<CoinSku> list2, @Nullable String str, @Nullable String str2, boolean z10, long j10, boolean z11, int i10) {
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
        this.cardDisplayType = i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ QueryUnlockEpisodeProductListResult copy$default(QueryUnlockEpisodeProductListResult queryUnlockEpisodeProductListResult, CoinSku coinSku, CoinSku coinSku2, List list, SubsSku subsSku, UnlockEpisodeAdMethod unlockEpisodeAdMethod, List list2, String str, String str2, boolean z10, long j10, boolean z11, int i10, int i11, Object obj) {
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
        int i12;
        if ((i11 & 1) != 0) {
            coinSku3 = queryUnlockEpisodeProductListResult.mainSkuV2Response;
        } else {
            coinSku3 = coinSku;
        }
        if ((i11 & 2) != 0) {
            coinSku4 = queryUnlockEpisodeProductListResult.retainSkuInfoResponses;
        } else {
            coinSku4 = coinSku2;
        }
        if ((i11 & 4) != 0) {
            list3 = queryUnlockEpisodeProductListResult.subscribeSkuResponses;
        } else {
            list3 = list;
        }
        if ((i11 & 8) != 0) {
            subsSku2 = queryUnlockEpisodeProductListResult.retainSubscribeProduct;
        } else {
            subsSku2 = subsSku;
        }
        if ((i11 & 16) != 0) {
            unlockEpisodeAdMethod2 = queryUnlockEpisodeProductListResult.watchAdResultResponse;
        } else {
            unlockEpisodeAdMethod2 = unlockEpisodeAdMethod;
        }
        if ((i11 & 32) != 0) {
            list4 = queryUnlockEpisodeProductListResult.skuInfoResponses;
        } else {
            list4 = list2;
        }
        if ((i11 & 64) != 0) {
            str3 = queryUnlockEpisodeProductListResult.tripartiteRewardRatio;
        } else {
            str3 = str;
        }
        if ((i11 & 128) != 0) {
            str4 = queryUnlockEpisodeProductListResult.tripartiteRewardUrl;
        } else {
            str4 = str2;
        }
        if ((i11 & 256) != 0) {
            z12 = queryUnlockEpisodeProductListResult.isDisplayedTripartite;
        } else {
            z12 = z10;
        }
        if ((i11 & 512) != 0) {
            j11 = queryUnlockEpisodeProductListResult.nextRefreshTime;
        } else {
            j11 = j10;
        }
        if ((i11 & 1024) != 0) {
            z13 = queryUnlockEpisodeProductListResult.isLowPayScoreUser;
        } else {
            z13 = z11;
        }
        if ((i11 & 2048) != 0) {
            i12 = queryUnlockEpisodeProductListResult.cardDisplayType;
        } else {
            i12 = i10;
        }
        return queryUnlockEpisodeProductListResult.copy(coinSku3, coinSku4, list3, subsSku2, unlockEpisodeAdMethod2, list4, str3, str4, z12, j11, z13, i12);
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

    public final int component12() {
        return this.cardDisplayType;
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
    public final QueryUnlockEpisodeProductListResult copy(@Nullable CoinSku coinSku, @Nullable CoinSku coinSku2, @Nullable List<SubsSku> list, @Nullable SubsSku subsSku, @Nullable UnlockEpisodeAdMethod unlockEpisodeAdMethod, @Nullable List<CoinSku> list2, @Nullable String str, @Nullable String str2, boolean z10, long j10, boolean z11, int i10) {
        return new QueryUnlockEpisodeProductListResult(coinSku, coinSku2, list, subsSku, unlockEpisodeAdMethod, list2, str, str2, z10, j10, z11, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof QueryUnlockEpisodeProductListResult)) {
            return false;
        }
        QueryUnlockEpisodeProductListResult queryUnlockEpisodeProductListResult = (QueryUnlockEpisodeProductListResult) obj;
        if (Intrinsics.areEqual(this.mainSkuV2Response, queryUnlockEpisodeProductListResult.mainSkuV2Response) && Intrinsics.areEqual(this.retainSkuInfoResponses, queryUnlockEpisodeProductListResult.retainSkuInfoResponses) && Intrinsics.areEqual(this.subscribeSkuResponses, queryUnlockEpisodeProductListResult.subscribeSkuResponses) && Intrinsics.areEqual(this.retainSubscribeProduct, queryUnlockEpisodeProductListResult.retainSubscribeProduct) && Intrinsics.areEqual(this.watchAdResultResponse, queryUnlockEpisodeProductListResult.watchAdResultResponse) && Intrinsics.areEqual(this.skuInfoResponses, queryUnlockEpisodeProductListResult.skuInfoResponses) && Intrinsics.areEqual(this.tripartiteRewardRatio, queryUnlockEpisodeProductListResult.tripartiteRewardRatio) && Intrinsics.areEqual(this.tripartiteRewardUrl, queryUnlockEpisodeProductListResult.tripartiteRewardUrl) && this.isDisplayedTripartite == queryUnlockEpisodeProductListResult.isDisplayedTripartite && this.nextRefreshTime == queryUnlockEpisodeProductListResult.nextRefreshTime && this.isLowPayScoreUser == queryUnlockEpisodeProductListResult.isLowPayScoreUser && this.cardDisplayType == queryUnlockEpisodeProductListResult.cardDisplayType) {
            return true;
        }
        return false;
    }

    public final int getCardDisplayType() {
        return this.cardDisplayType;
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
        return ((((((((i17 + i10) * 31) + Boolean.hashCode(this.isDisplayedTripartite)) * 31) + Long.hashCode(this.nextRefreshTime)) * 31) + Boolean.hashCode(this.isLowPayScoreUser)) * 31) + Integer.hashCode(this.cardDisplayType);
    }

    public final boolean isDisplayedTripartite() {
        return this.isDisplayedTripartite;
    }

    public final boolean isLowPayScoreUser() {
        return this.isLowPayScoreUser;
    }

    public final void setCardDisplayType(int i10) {
        this.cardDisplayType = i10;
    }

    public final void setSkuInfoResponses(@Nullable List<CoinSku> list) {
        this.skuInfoResponses = list;
    }

    @NotNull
    public String toString() {
        return "QueryUnlockEpisodeProductListResult(mainSkuV2Response=" + this.mainSkuV2Response + ", retainSkuInfoResponses=" + this.retainSkuInfoResponses + ", subscribeSkuResponses=" + this.subscribeSkuResponses + ", retainSubscribeProduct=" + this.retainSubscribeProduct + ", watchAdResultResponse=" + this.watchAdResultResponse + ", skuInfoResponses=" + this.skuInfoResponses + ", tripartiteRewardRatio=" + this.tripartiteRewardRatio + ", tripartiteRewardUrl=" + this.tripartiteRewardUrl + ", isDisplayedTripartite=" + this.isDisplayedTripartite + ", nextRefreshTime=" + this.nextRefreshTime + ", isLowPayScoreUser=" + this.isLowPayScoreUser + ", cardDisplayType=" + this.cardDisplayType + ')';
    }
}
