package com.startshorts.androidplayer.bean.purchase;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PayPendingCoinSku.kt */
@Metadata
/* loaded from: classes6.dex */
public final class PayPendingCoinSku {

    /* renamed from: t  reason: collision with root package name */
    private int f38120t = -1;
    @Nullable
    private String pid = "";
    @Nullable
    private String cid = "";
    private int prid = -1;

    /* renamed from: r  reason: collision with root package name */
    private float f38119r = -1.0f;

    @Nullable
    public final String getCid() {
        return this.cid;
    }

    @Nullable
    public final String getPid() {
        return this.pid;
    }

    public final int getPrid() {
        return this.prid;
    }

    public final float getR() {
        return this.f38119r;
    }

    public final int getT() {
        return this.f38120t;
    }

    @Nullable
    public final CoinSku parse() {
        String str = this.pid;
        if (str != null && str.length() != 0) {
            CoinSku coinSku = new CoinSku();
            coinSku.setSkuType(this.f38120t);
            String str2 = this.pid;
            Intrinsics.checkNotNull(str2);
            coinSku.setSkuProductId(str2);
            coinSku.setSkuModelConfigId(this.cid);
            coinSku.setPrizeId(this.prid);
            coinSku.setRecharge(this.f38119r);
            return coinSku;
        }
        return null;
    }

    public final void setCid(@Nullable String str) {
        this.cid = str;
    }

    public final void setPid(@Nullable String str) {
        this.pid = str;
    }

    public final void setPrid(int i10) {
        this.prid = i10;
    }

    public final void setR(float f10) {
        this.f38119r = f10;
    }

    public final void setT(int i10) {
        this.f38120t = i10;
    }

    @NotNull
    public String toString() {
        return "PayPendingCoinSku(t=" + this.f38120t + ", pid=" + this.pid + ", cid=" + this.cid + ", prid=" + this.prid + ", r=" + this.f38119r + ')';
    }
}
