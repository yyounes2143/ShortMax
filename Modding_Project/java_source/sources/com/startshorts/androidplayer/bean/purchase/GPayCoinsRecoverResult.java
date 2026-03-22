package com.startshorts.androidplayer.bean.purchase;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GPayCoinsRecoverResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class GPayCoinsRecoverResult {
    private final int bonusRecover;
    private final int coinsRecover;
    private final int shortPlayId;
    @NotNull
    private final String skuId;

    public GPayCoinsRecoverResult(@NotNull String skuId, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(skuId, "skuId");
        this.skuId = skuId;
        this.coinsRecover = i10;
        this.bonusRecover = i11;
        this.shortPlayId = i12;
    }

    public static /* synthetic */ GPayCoinsRecoverResult copy$default(GPayCoinsRecoverResult gPayCoinsRecoverResult, String str, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            str = gPayCoinsRecoverResult.skuId;
        }
        if ((i13 & 2) != 0) {
            i10 = gPayCoinsRecoverResult.coinsRecover;
        }
        if ((i13 & 4) != 0) {
            i11 = gPayCoinsRecoverResult.bonusRecover;
        }
        if ((i13 & 8) != 0) {
            i12 = gPayCoinsRecoverResult.shortPlayId;
        }
        return gPayCoinsRecoverResult.copy(str, i10, i11, i12);
    }

    @NotNull
    public final String component1() {
        return this.skuId;
    }

    public final int component2() {
        return this.coinsRecover;
    }

    public final int component3() {
        return this.bonusRecover;
    }

    public final int component4() {
        return this.shortPlayId;
    }

    @NotNull
    public final GPayCoinsRecoverResult copy(@NotNull String skuId, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(skuId, "skuId");
        return new GPayCoinsRecoverResult(skuId, i10, i11, i12);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GPayCoinsRecoverResult)) {
            return false;
        }
        GPayCoinsRecoverResult gPayCoinsRecoverResult = (GPayCoinsRecoverResult) obj;
        if (Intrinsics.areEqual(this.skuId, gPayCoinsRecoverResult.skuId) && this.coinsRecover == gPayCoinsRecoverResult.coinsRecover && this.bonusRecover == gPayCoinsRecoverResult.bonusRecover && this.shortPlayId == gPayCoinsRecoverResult.shortPlayId) {
            return true;
        }
        return false;
    }

    public final int getBonusRecover() {
        return this.bonusRecover;
    }

    public final int getCoinsRecover() {
        return this.coinsRecover;
    }

    public final int getShortPlayId() {
        return this.shortPlayId;
    }

    @NotNull
    public final String getSkuId() {
        return this.skuId;
    }

    public int hashCode() {
        return (((((this.skuId.hashCode() * 31) + Integer.hashCode(this.coinsRecover)) * 31) + Integer.hashCode(this.bonusRecover)) * 31) + Integer.hashCode(this.shortPlayId);
    }

    @NotNull
    public String toString() {
        return "GPayCoinsRecoverResult(skuId=" + this.skuId + ", coinsRecover=" + this.coinsRecover + ", bonusRecover=" + this.bonusRecover + ", shortPlayId=" + this.shortPlayId + ')';
    }

    public /* synthetic */ GPayCoinsRecoverResult(String str, int i10, int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i10, i11, (i13 & 8) != 0 ? -1 : i12);
    }
}
