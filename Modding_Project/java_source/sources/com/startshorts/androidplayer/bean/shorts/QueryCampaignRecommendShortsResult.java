package com.startshorts.androidplayer.bean.shorts;

import com.startshorts.androidplayer.bean.purchase.RecommendCoinSku;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: QueryCampaignRecommendShortsResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class QueryCampaignRecommendShortsResult {
    @Nullable
    private final List<RecommendShorts> recommendList;
    private final boolean showOriginPrice;
    private final int showSkuAmount;
    @Nullable
    private final List<RecommendCoinSku> skuInfos;
    @Nullable
    private final List<SubsSku> subscribeList;

    public QueryCampaignRecommendShortsResult(@Nullable List<RecommendShorts> list, boolean z10, @Nullable List<RecommendCoinSku> list2, @Nullable List<SubsSku> list3, int i10) {
        this.recommendList = list;
        this.showOriginPrice = z10;
        this.skuInfos = list2;
        this.subscribeList = list3;
        this.showSkuAmount = i10;
    }

    public static /* synthetic */ QueryCampaignRecommendShortsResult copy$default(QueryCampaignRecommendShortsResult queryCampaignRecommendShortsResult, List list, boolean z10, List list2, List list3, int i10, int i11, Object obj) {
        List<RecommendShorts> list4 = list;
        if ((i11 & 1) != 0) {
            list4 = queryCampaignRecommendShortsResult.recommendList;
        }
        if ((i11 & 2) != 0) {
            z10 = queryCampaignRecommendShortsResult.showOriginPrice;
        }
        boolean z11 = z10;
        List<RecommendCoinSku> list5 = list2;
        if ((i11 & 4) != 0) {
            list5 = queryCampaignRecommendShortsResult.skuInfos;
        }
        List list6 = list5;
        List<SubsSku> list7 = list3;
        if ((i11 & 8) != 0) {
            list7 = queryCampaignRecommendShortsResult.subscribeList;
        }
        List list8 = list7;
        if ((i11 & 16) != 0) {
            i10 = queryCampaignRecommendShortsResult.showSkuAmount;
        }
        return queryCampaignRecommendShortsResult.copy(list4, z11, list6, list8, i10);
    }

    @Nullable
    public final List<RecommendShorts> component1() {
        return this.recommendList;
    }

    public final boolean component2() {
        return this.showOriginPrice;
    }

    @Nullable
    public final List<RecommendCoinSku> component3() {
        return this.skuInfos;
    }

    @Nullable
    public final List<SubsSku> component4() {
        return this.subscribeList;
    }

    public final int component5() {
        return this.showSkuAmount;
    }

    @NotNull
    public final QueryCampaignRecommendShortsResult copy(@Nullable List<RecommendShorts> list, boolean z10, @Nullable List<RecommendCoinSku> list2, @Nullable List<SubsSku> list3, int i10) {
        return new QueryCampaignRecommendShortsResult(list, z10, list2, list3, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof QueryCampaignRecommendShortsResult)) {
            return false;
        }
        QueryCampaignRecommendShortsResult queryCampaignRecommendShortsResult = (QueryCampaignRecommendShortsResult) obj;
        if (Intrinsics.areEqual(this.recommendList, queryCampaignRecommendShortsResult.recommendList) && this.showOriginPrice == queryCampaignRecommendShortsResult.showOriginPrice && Intrinsics.areEqual(this.skuInfos, queryCampaignRecommendShortsResult.skuInfos) && Intrinsics.areEqual(this.subscribeList, queryCampaignRecommendShortsResult.subscribeList) && this.showSkuAmount == queryCampaignRecommendShortsResult.showSkuAmount) {
            return true;
        }
        return false;
    }

    @Nullable
    public final List<RecommendShorts> getRecommendList() {
        return this.recommendList;
    }

    public final boolean getShowOriginPrice() {
        return this.showOriginPrice;
    }

    public final int getShowSkuAmount() {
        return this.showSkuAmount;
    }

    @Nullable
    public final List<RecommendCoinSku> getSkuInfos() {
        return this.skuInfos;
    }

    @Nullable
    public final List<SubsSku> getSubscribeList() {
        return this.subscribeList;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        List<RecommendShorts> list = this.recommendList;
        int i10 = 0;
        if (list == null) {
            hashCode = 0;
        } else {
            hashCode = list.hashCode();
        }
        int hashCode3 = ((hashCode * 31) + Boolean.hashCode(this.showOriginPrice)) * 31;
        List<RecommendCoinSku> list2 = this.skuInfos;
        if (list2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = list2.hashCode();
        }
        int i11 = (hashCode3 + hashCode2) * 31;
        List<SubsSku> list3 = this.subscribeList;
        if (list3 != null) {
            i10 = list3.hashCode();
        }
        return ((i11 + i10) * 31) + Integer.hashCode(this.showSkuAmount);
    }

    @NotNull
    public String toString() {
        return "QueryCampaignRecommendShortsResult(recommendList=" + this.recommendList + ", showOriginPrice=" + this.showOriginPrice + ", skuInfos=" + this.skuInfos + ", subscribeList=" + this.subscribeList + ", showSkuAmount=" + this.showSkuAmount + ')';
    }
}
