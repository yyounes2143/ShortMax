package com.startshorts.androidplayer.bean.purchase;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GPayCoinsRecoverResponse.kt */
@Metadata
/* loaded from: classes6.dex */
public final class GPayCoinsRecoverResponse {
    private final int bonusCurrent;
    private final int coinsCurrent;
    @NotNull
    private final List<GPayCoinsRecoverResult> payRecoverAndroidInfoResponses;

    public GPayCoinsRecoverResponse(int i10, int i11, @NotNull List<GPayCoinsRecoverResult> payRecoverAndroidInfoResponses) {
        Intrinsics.checkNotNullParameter(payRecoverAndroidInfoResponses, "payRecoverAndroidInfoResponses");
        this.coinsCurrent = i10;
        this.bonusCurrent = i11;
        this.payRecoverAndroidInfoResponses = payRecoverAndroidInfoResponses;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GPayCoinsRecoverResponse copy$default(GPayCoinsRecoverResponse gPayCoinsRecoverResponse, int i10, int i11, List list, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = gPayCoinsRecoverResponse.coinsCurrent;
        }
        if ((i12 & 2) != 0) {
            i11 = gPayCoinsRecoverResponse.bonusCurrent;
        }
        if ((i12 & 4) != 0) {
            list = gPayCoinsRecoverResponse.payRecoverAndroidInfoResponses;
        }
        return gPayCoinsRecoverResponse.copy(i10, i11, list);
    }

    public final int component1() {
        return this.coinsCurrent;
    }

    public final int component2() {
        return this.bonusCurrent;
    }

    @NotNull
    public final List<GPayCoinsRecoverResult> component3() {
        return this.payRecoverAndroidInfoResponses;
    }

    @NotNull
    public final GPayCoinsRecoverResponse copy(int i10, int i11, @NotNull List<GPayCoinsRecoverResult> payRecoverAndroidInfoResponses) {
        Intrinsics.checkNotNullParameter(payRecoverAndroidInfoResponses, "payRecoverAndroidInfoResponses");
        return new GPayCoinsRecoverResponse(i10, i11, payRecoverAndroidInfoResponses);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GPayCoinsRecoverResponse)) {
            return false;
        }
        GPayCoinsRecoverResponse gPayCoinsRecoverResponse = (GPayCoinsRecoverResponse) obj;
        if (this.coinsCurrent == gPayCoinsRecoverResponse.coinsCurrent && this.bonusCurrent == gPayCoinsRecoverResponse.bonusCurrent && Intrinsics.areEqual(this.payRecoverAndroidInfoResponses, gPayCoinsRecoverResponse.payRecoverAndroidInfoResponses)) {
            return true;
        }
        return false;
    }

    public final int getBonusCurrent() {
        return this.bonusCurrent;
    }

    public final int getCoinsCurrent() {
        return this.coinsCurrent;
    }

    @NotNull
    public final List<GPayCoinsRecoverResult> getPayRecoverAndroidInfoResponses() {
        return this.payRecoverAndroidInfoResponses;
    }

    public int hashCode() {
        return (((Integer.hashCode(this.coinsCurrent) * 31) + Integer.hashCode(this.bonusCurrent)) * 31) + this.payRecoverAndroidInfoResponses.hashCode();
    }

    @NotNull
    public String toString() {
        return "GPayCoinsRecoverResponse(coinsCurrent=" + this.coinsCurrent + ", bonusCurrent=" + this.bonusCurrent + ", payRecoverAndroidInfoResponses=" + this.payRecoverAndroidInfoResponses + ')';
    }
}
