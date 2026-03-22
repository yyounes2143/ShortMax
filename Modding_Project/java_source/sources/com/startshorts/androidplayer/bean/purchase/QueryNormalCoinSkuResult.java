package com.startshorts.androidplayer.bean.purchase;

import com.startshorts.androidplayer.bean.subs.SubsSku;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: QueryNormalCoinSkuResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class QueryNormalCoinSkuResult implements Serializable {
    @Nullable
    private final SubsSku activeSubscribeSku;
    private boolean isDisplayedTripartite;
    private final boolean isLowPayScoreUser;
    @Nullable
    private final CoinSku retainSkuInfoResponses;
    @Nullable
    private final SubsSku retainSubscribeProduct;
    @Nullable
    private final CoinSku rewardSkuInfoResponses;
    private final int rewardSkuPositionType;
    @Nullable
    private final List<CoinSku> skuInfoResponses;
    private final int skuPositionType;
    @Nullable
    private List<SubsSku> subscribeSkuResponses;
    @Nullable
    private String tripartiteRewardRatio;
    @Nullable
    private String tripartiteRewardUrl;

    public QueryNormalCoinSkuResult(@Nullable List<CoinSku> list, @Nullable CoinSku coinSku, int i10, @Nullable CoinSku coinSku2, int i11, @Nullable List<SubsSku> list2, @Nullable SubsSku subsSku, @Nullable SubsSku subsSku2, @Nullable String str, @Nullable String str2, boolean z10, boolean z11) {
        this.skuInfoResponses = list;
        this.retainSkuInfoResponses = coinSku;
        this.skuPositionType = i10;
        this.rewardSkuInfoResponses = coinSku2;
        this.rewardSkuPositionType = i11;
        this.subscribeSkuResponses = list2;
        this.retainSubscribeProduct = subsSku;
        this.activeSubscribeSku = subsSku2;
        this.tripartiteRewardRatio = str;
        this.tripartiteRewardUrl = str2;
        this.isDisplayedTripartite = z10;
        this.isLowPayScoreUser = z11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ QueryNormalCoinSkuResult copy$default(QueryNormalCoinSkuResult queryNormalCoinSkuResult, List list, CoinSku coinSku, int i10, CoinSku coinSku2, int i11, List list2, SubsSku subsSku, SubsSku subsSku2, String str, String str2, boolean z10, boolean z11, int i12, Object obj) {
        List<CoinSku> list3;
        CoinSku coinSku3;
        int i13;
        CoinSku coinSku4;
        int i14;
        List<SubsSku> list4;
        SubsSku subsSku3;
        SubsSku subsSku4;
        String str3;
        String str4;
        boolean z12;
        boolean z13;
        if ((i12 & 1) != 0) {
            list3 = queryNormalCoinSkuResult.skuInfoResponses;
        } else {
            list3 = list;
        }
        if ((i12 & 2) != 0) {
            coinSku3 = queryNormalCoinSkuResult.retainSkuInfoResponses;
        } else {
            coinSku3 = coinSku;
        }
        if ((i12 & 4) != 0) {
            i13 = queryNormalCoinSkuResult.skuPositionType;
        } else {
            i13 = i10;
        }
        if ((i12 & 8) != 0) {
            coinSku4 = queryNormalCoinSkuResult.rewardSkuInfoResponses;
        } else {
            coinSku4 = coinSku2;
        }
        if ((i12 & 16) != 0) {
            i14 = queryNormalCoinSkuResult.rewardSkuPositionType;
        } else {
            i14 = i11;
        }
        if ((i12 & 32) != 0) {
            list4 = queryNormalCoinSkuResult.subscribeSkuResponses;
        } else {
            list4 = list2;
        }
        if ((i12 & 64) != 0) {
            subsSku3 = queryNormalCoinSkuResult.retainSubscribeProduct;
        } else {
            subsSku3 = subsSku;
        }
        if ((i12 & 128) != 0) {
            subsSku4 = queryNormalCoinSkuResult.activeSubscribeSku;
        } else {
            subsSku4 = subsSku2;
        }
        if ((i12 & 256) != 0) {
            str3 = queryNormalCoinSkuResult.tripartiteRewardRatio;
        } else {
            str3 = str;
        }
        if ((i12 & 512) != 0) {
            str4 = queryNormalCoinSkuResult.tripartiteRewardUrl;
        } else {
            str4 = str2;
        }
        if ((i12 & 1024) != 0) {
            z12 = queryNormalCoinSkuResult.isDisplayedTripartite;
        } else {
            z12 = z10;
        }
        if ((i12 & 2048) != 0) {
            z13 = queryNormalCoinSkuResult.isLowPayScoreUser;
        } else {
            z13 = z11;
        }
        return queryNormalCoinSkuResult.copy(list3, coinSku3, i13, coinSku4, i14, list4, subsSku3, subsSku4, str3, str4, z12, z13);
    }

    @Nullable
    public final List<CoinSku> component1() {
        return this.skuInfoResponses;
    }

    @Nullable
    public final String component10() {
        return this.tripartiteRewardUrl;
    }

    public final boolean component11() {
        return this.isDisplayedTripartite;
    }

    public final boolean component12() {
        return this.isLowPayScoreUser;
    }

    @Nullable
    public final CoinSku component2() {
        return this.retainSkuInfoResponses;
    }

    public final int component3() {
        return this.skuPositionType;
    }

    @Nullable
    public final CoinSku component4() {
        return this.rewardSkuInfoResponses;
    }

    public final int component5() {
        return this.rewardSkuPositionType;
    }

    @Nullable
    public final List<SubsSku> component6() {
        return this.subscribeSkuResponses;
    }

    @Nullable
    public final SubsSku component7() {
        return this.retainSubscribeProduct;
    }

    @Nullable
    public final SubsSku component8() {
        return this.activeSubscribeSku;
    }

    @Nullable
    public final String component9() {
        return this.tripartiteRewardRatio;
    }

    @NotNull
    public final QueryNormalCoinSkuResult copy(@Nullable List<CoinSku> list, @Nullable CoinSku coinSku, int i10, @Nullable CoinSku coinSku2, int i11, @Nullable List<SubsSku> list2, @Nullable SubsSku subsSku, @Nullable SubsSku subsSku2, @Nullable String str, @Nullable String str2, boolean z10, boolean z11) {
        return new QueryNormalCoinSkuResult(list, coinSku, i10, coinSku2, i11, list2, subsSku, subsSku2, str, str2, z10, z11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof QueryNormalCoinSkuResult)) {
            return false;
        }
        QueryNormalCoinSkuResult queryNormalCoinSkuResult = (QueryNormalCoinSkuResult) obj;
        if (Intrinsics.areEqual(this.skuInfoResponses, queryNormalCoinSkuResult.skuInfoResponses) && Intrinsics.areEqual(this.retainSkuInfoResponses, queryNormalCoinSkuResult.retainSkuInfoResponses) && this.skuPositionType == queryNormalCoinSkuResult.skuPositionType && Intrinsics.areEqual(this.rewardSkuInfoResponses, queryNormalCoinSkuResult.rewardSkuInfoResponses) && this.rewardSkuPositionType == queryNormalCoinSkuResult.rewardSkuPositionType && Intrinsics.areEqual(this.subscribeSkuResponses, queryNormalCoinSkuResult.subscribeSkuResponses) && Intrinsics.areEqual(this.retainSubscribeProduct, queryNormalCoinSkuResult.retainSubscribeProduct) && Intrinsics.areEqual(this.activeSubscribeSku, queryNormalCoinSkuResult.activeSubscribeSku) && Intrinsics.areEqual(this.tripartiteRewardRatio, queryNormalCoinSkuResult.tripartiteRewardRatio) && Intrinsics.areEqual(this.tripartiteRewardUrl, queryNormalCoinSkuResult.tripartiteRewardUrl) && this.isDisplayedTripartite == queryNormalCoinSkuResult.isDisplayedTripartite && this.isLowPayScoreUser == queryNormalCoinSkuResult.isLowPayScoreUser) {
            return true;
        }
        return false;
    }

    @Nullable
    public final SubsSku getActiveSubscribeSku() {
        return this.activeSubscribeSku;
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
    public final CoinSku getRewardSkuInfoResponses() {
        return this.rewardSkuInfoResponses;
    }

    public final int getRewardSkuPositionType() {
        return this.rewardSkuPositionType;
    }

    @Nullable
    public final List<CoinSku> getSkuInfoResponses() {
        return this.skuInfoResponses;
    }

    public final int getSkuPositionType() {
        return this.skuPositionType;
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

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6;
        int hashCode7;
        List<CoinSku> list = this.skuInfoResponses;
        int i10 = 0;
        if (list == null) {
            hashCode = 0;
        } else {
            hashCode = list.hashCode();
        }
        int i11 = hashCode * 31;
        CoinSku coinSku = this.retainSkuInfoResponses;
        if (coinSku == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = coinSku.hashCode();
        }
        int hashCode8 = (((i11 + hashCode2) * 31) + Integer.hashCode(this.skuPositionType)) * 31;
        CoinSku coinSku2 = this.rewardSkuInfoResponses;
        if (coinSku2 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = coinSku2.hashCode();
        }
        int hashCode9 = (((hashCode8 + hashCode3) * 31) + Integer.hashCode(this.rewardSkuPositionType)) * 31;
        List<SubsSku> list2 = this.subscribeSkuResponses;
        if (list2 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = list2.hashCode();
        }
        int i12 = (hashCode9 + hashCode4) * 31;
        SubsSku subsSku = this.retainSubscribeProduct;
        if (subsSku == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = subsSku.hashCode();
        }
        int i13 = (i12 + hashCode5) * 31;
        SubsSku subsSku2 = this.activeSubscribeSku;
        if (subsSku2 == null) {
            hashCode6 = 0;
        } else {
            hashCode6 = subsSku2.hashCode();
        }
        int i14 = (i13 + hashCode6) * 31;
        String str = this.tripartiteRewardRatio;
        if (str == null) {
            hashCode7 = 0;
        } else {
            hashCode7 = str.hashCode();
        }
        int i15 = (i14 + hashCode7) * 31;
        String str2 = this.tripartiteRewardUrl;
        if (str2 != null) {
            i10 = str2.hashCode();
        }
        return ((((i15 + i10) * 31) + Boolean.hashCode(this.isDisplayedTripartite)) * 31) + Boolean.hashCode(this.isLowPayScoreUser);
    }

    public final boolean isDisplayedTripartite() {
        return this.isDisplayedTripartite;
    }

    public final boolean isLowPayScoreUser() {
        return this.isLowPayScoreUser;
    }

    public final void setDisplayedTripartite(boolean z10) {
        this.isDisplayedTripartite = z10;
    }

    public final void setSubscribeSkuResponses(@Nullable List<SubsSku> list) {
        this.subscribeSkuResponses = list;
    }

    public final void setTripartiteRewardRatio(@Nullable String str) {
        this.tripartiteRewardRatio = str;
    }

    public final void setTripartiteRewardUrl(@Nullable String str) {
        this.tripartiteRewardUrl = str;
    }

    @NotNull
    public String toString() {
        return "QueryNormalCoinSkuResult(skuInfoResponses=" + this.skuInfoResponses + ", retainSkuInfoResponses=" + this.retainSkuInfoResponses + ", skuPositionType=" + this.skuPositionType + ", rewardSkuInfoResponses=" + this.rewardSkuInfoResponses + ", rewardSkuPositionType=" + this.rewardSkuPositionType + ", subscribeSkuResponses=" + this.subscribeSkuResponses + ", retainSubscribeProduct=" + this.retainSubscribeProduct + ", activeSubscribeSku=" + this.activeSubscribeSku + ", tripartiteRewardRatio=" + this.tripartiteRewardRatio + ", tripartiteRewardUrl=" + this.tripartiteRewardUrl + ", isDisplayedTripartite=" + this.isDisplayedTripartite + ", isLowPayScoreUser=" + this.isLowPayScoreUser + ')';
    }

    @NotNull
    public final QueryNormalCoinSkuResult copy() {
        return new QueryNormalCoinSkuResult(this.skuInfoResponses, this.retainSkuInfoResponses, this.skuPositionType, this.rewardSkuInfoResponses, this.rewardSkuPositionType, this.subscribeSkuResponses, this.retainSubscribeProduct, this.activeSubscribeSku, this.tripartiteRewardRatio, this.tripartiteRewardUrl, this.isDisplayedTripartite, this.isLowPayScoreUser);
    }
}
