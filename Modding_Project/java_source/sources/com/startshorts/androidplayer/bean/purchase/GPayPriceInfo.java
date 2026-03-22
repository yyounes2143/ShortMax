package com.startshorts.androidplayer.bean.purchase;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GPayPriceInfo.kt */
@Metadata
/* loaded from: classes6.dex */
public final class GPayPriceInfo {
    @NotNull
    private String gpCurrencyCode;
    @NotNull
    private String gpPrice;
    @NotNull
    private String serverPrice;

    public GPayPriceInfo(@NotNull String gpCurrencyCode, @NotNull String gpPrice, @NotNull String serverPrice) {
        Intrinsics.checkNotNullParameter(gpCurrencyCode, "gpCurrencyCode");
        Intrinsics.checkNotNullParameter(gpPrice, "gpPrice");
        Intrinsics.checkNotNullParameter(serverPrice, "serverPrice");
        this.gpCurrencyCode = gpCurrencyCode;
        this.gpPrice = gpPrice;
        this.serverPrice = serverPrice;
    }

    public static /* synthetic */ GPayPriceInfo copy$default(GPayPriceInfo gPayPriceInfo, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = gPayPriceInfo.gpCurrencyCode;
        }
        if ((i10 & 2) != 0) {
            str2 = gPayPriceInfo.gpPrice;
        }
        if ((i10 & 4) != 0) {
            str3 = gPayPriceInfo.serverPrice;
        }
        return gPayPriceInfo.copy(str, str2, str3);
    }

    @NotNull
    public final String component1() {
        return this.gpCurrencyCode;
    }

    @NotNull
    public final String component2() {
        return this.gpPrice;
    }

    @NotNull
    public final String component3() {
        return this.serverPrice;
    }

    @NotNull
    public final GPayPriceInfo copy(@NotNull String gpCurrencyCode, @NotNull String gpPrice, @NotNull String serverPrice) {
        Intrinsics.checkNotNullParameter(gpCurrencyCode, "gpCurrencyCode");
        Intrinsics.checkNotNullParameter(gpPrice, "gpPrice");
        Intrinsics.checkNotNullParameter(serverPrice, "serverPrice");
        return new GPayPriceInfo(gpCurrencyCode, gpPrice, serverPrice);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GPayPriceInfo)) {
            return false;
        }
        GPayPriceInfo gPayPriceInfo = (GPayPriceInfo) obj;
        if (Intrinsics.areEqual(this.gpCurrencyCode, gPayPriceInfo.gpCurrencyCode) && Intrinsics.areEqual(this.gpPrice, gPayPriceInfo.gpPrice) && Intrinsics.areEqual(this.serverPrice, gPayPriceInfo.serverPrice)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getGpCurrencyCode() {
        return this.gpCurrencyCode;
    }

    @NotNull
    public final String getGpPrice() {
        return this.gpPrice;
    }

    @NotNull
    public final String getServerPrice() {
        return this.serverPrice;
    }

    public int hashCode() {
        return (((this.gpCurrencyCode.hashCode() * 31) + this.gpPrice.hashCode()) * 31) + this.serverPrice.hashCode();
    }

    public final boolean isValid() {
        if (this.gpCurrencyCode.length() > 0 && this.gpPrice.length() > 0) {
            return true;
        }
        return false;
    }

    public final void setGpCurrencyCode(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.gpCurrencyCode = str;
    }

    public final void setGpPrice(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.gpPrice = str;
    }

    public final void setServerPrice(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.serverPrice = str;
    }

    @NotNull
    public String toString() {
        return "GPayPriceInfo(gpCurrencyCode=" + this.gpCurrencyCode + ", gpPrice=" + this.gpPrice + ", serverPrice=" + this.serverPrice + ')';
    }

    public /* synthetic */ GPayPriceInfo(String str, String str2, String str3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i10 & 4) != 0 ? "" : str3);
    }
}
