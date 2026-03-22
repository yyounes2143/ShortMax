package com.startshorts.androidplayer.bean.purchase;

import com.startshorts.androidplayer.repo.account.AccountRepo;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BatchUnlockEpisodeSku.kt */
@Metadata
/* loaded from: classes6.dex */
public final class BatchUnlockEpisodeSku extends CoinSku {
    private int discountTotalCount;
    private int dramaId;
    @Nullable
    private String extra;
    private int shortsId;
    private int totalCount;
    private int unlockingEpisodes;

    public final int getDiscountTotalCount() {
        return this.discountTotalCount;
    }

    public final int getDramaId() {
        return this.dramaId;
    }

    @Nullable
    public final String getExtra() {
        return this.extra;
    }

    @Override // com.startshorts.androidplayer.bean.purchase.CoinSku
    @NotNull
    public String getPayPendingCoinSku() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(getSkuType()));
        arrayList.add(getSkuProductId());
        arrayList.add(getSkuModelConfigId());
        arrayList.add(Integer.valueOf(getPrizeId()));
        arrayList.add(Float.valueOf(getRecharge()));
        arrayList.add(Integer.valueOf(this.shortsId));
        arrayList.add(Integer.valueOf(this.dramaId));
        arrayList.add(Integer.valueOf(this.unlockingEpisodes));
        arrayList.add(AccountRepo.f43052a.t0());
        return new Regex("\\s").replace(arrayList.toString(), "");
    }

    public final int getShortsId() {
        return this.shortsId;
    }

    public final int getTotalCount() {
        return this.totalCount;
    }

    public final int getUnlockingEpisodes() {
        return this.unlockingEpisodes;
    }

    public final void setDiscountTotalCount(int i10) {
        this.discountTotalCount = i10;
    }

    public final void setDramaId(int i10) {
        this.dramaId = i10;
    }

    public final void setExtra(@Nullable String str) {
        this.extra = str;
    }

    public final void setShortsId(int i10) {
        this.shortsId = i10;
    }

    public final void setTotalCount(int i10) {
        this.totalCount = i10;
    }

    public final void setUnlockingEpisodes(int i10) {
        this.unlockingEpisodes = i10;
    }

    @Override // com.startshorts.androidplayer.bean.purchase.CoinSku, com.startshorts.androidplayer.bean.adapter.SelectableItem
    @NotNull
    public String toString() {
        return "BatchUnlockEpisodeSku(discountTotalCount=" + this.discountTotalCount + ", totalCount=" + this.totalCount + ", unlockingEpisodes=" + this.unlockingEpisodes + ", shortsId=" + this.shortsId + ", dramaId=" + this.dramaId + ", extra=" + this.extra + ')';
    }
}
