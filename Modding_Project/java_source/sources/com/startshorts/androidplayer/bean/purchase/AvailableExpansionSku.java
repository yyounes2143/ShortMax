package com.startshorts.androidplayer.bean.purchase;

import com.startshorts.androidplayer.utils.DeviceUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AvailableExpansionSku.kt */
@Metadata
/* loaded from: classes6.dex */
public final class AvailableExpansionSku {
    private final long createTime;
    private final long expirationTime;
    @NotNull
    private final CoinSku sku;

    public AvailableExpansionSku(@NotNull CoinSku sku, long j10, long j11) {
        Intrinsics.checkNotNullParameter(sku, "sku");
        this.sku = sku;
        this.createTime = j10;
        this.expirationTime = j11;
    }

    public static /* synthetic */ AvailableExpansionSku copy$default(AvailableExpansionSku availableExpansionSku, CoinSku coinSku, long j10, long j11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            coinSku = availableExpansionSku.sku;
        }
        if ((i10 & 2) != 0) {
            j10 = availableExpansionSku.createTime;
        }
        long j12 = j10;
        if ((i10 & 4) != 0) {
            j11 = availableExpansionSku.expirationTime;
        }
        return availableExpansionSku.copy(coinSku, j12, j11);
    }

    public final boolean available() {
        if (DeviceUtil.f48146a.K() < this.expirationTime) {
            return true;
        }
        return false;
    }

    @NotNull
    public final CoinSku component1() {
        return this.sku;
    }

    public final long component2() {
        return this.createTime;
    }

    public final long component3() {
        return this.expirationTime;
    }

    @NotNull
    public final AvailableExpansionSku copy(@NotNull CoinSku sku, long j10, long j11) {
        Intrinsics.checkNotNullParameter(sku, "sku");
        return new AvailableExpansionSku(sku, j10, j11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AvailableExpansionSku)) {
            return false;
        }
        AvailableExpansionSku availableExpansionSku = (AvailableExpansionSku) obj;
        if (Intrinsics.areEqual(this.sku, availableExpansionSku.sku) && this.createTime == availableExpansionSku.createTime && this.expirationTime == availableExpansionSku.expirationTime) {
            return true;
        }
        return false;
    }

    public final long getCreateTime() {
        return this.createTime;
    }

    public final long getExpirationTime() {
        return this.expirationTime;
    }

    @NotNull
    public final CoinSku getSku() {
        return this.sku;
    }

    public int hashCode() {
        return (((this.sku.hashCode() * 31) + Long.hashCode(this.createTime)) * 31) + Long.hashCode(this.expirationTime);
    }

    public final void refreshRetentionSeconds() {
        this.sku.setRetentionSeconds((this.expirationTime - DeviceUtil.f48146a.K()) / 1000);
    }

    @NotNull
    public String toString() {
        return "AvailableExpansionSku(sku=" + this.sku + ", createTime=" + this.createTime + ", expirationTime=" + this.expirationTime + ')';
    }
}
