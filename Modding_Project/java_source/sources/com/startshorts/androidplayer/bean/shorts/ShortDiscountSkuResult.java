package com.startshorts.androidplayer.bean.shorts;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortDiscountSkuResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ShortDiscountSkuResult {
    @Nullable
    private ShortDiscountSku value;

    public ShortDiscountSkuResult(@Nullable ShortDiscountSku shortDiscountSku) {
        this.value = shortDiscountSku;
    }

    public static /* synthetic */ ShortDiscountSkuResult copy$default(ShortDiscountSkuResult shortDiscountSkuResult, ShortDiscountSku shortDiscountSku, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            shortDiscountSku = shortDiscountSkuResult.value;
        }
        return shortDiscountSkuResult.copy(shortDiscountSku);
    }

    @Nullable
    public final ShortDiscountSku component1() {
        return this.value;
    }

    @NotNull
    public final ShortDiscountSkuResult copy(@Nullable ShortDiscountSku shortDiscountSku) {
        return new ShortDiscountSkuResult(shortDiscountSku);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof ShortDiscountSkuResult) && Intrinsics.areEqual(this.value, ((ShortDiscountSkuResult) obj).value)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final ShortDiscountSku getValue() {
        return this.value;
    }

    public int hashCode() {
        ShortDiscountSku shortDiscountSku = this.value;
        if (shortDiscountSku == null) {
            return 0;
        }
        return shortDiscountSku.hashCode();
    }

    public final void setValue(@Nullable ShortDiscountSku shortDiscountSku) {
        this.value = shortDiscountSku;
    }

    @NotNull
    public String toString() {
        return "ShortDiscountSkuResult(value=" + this.value + ')';
    }
}
