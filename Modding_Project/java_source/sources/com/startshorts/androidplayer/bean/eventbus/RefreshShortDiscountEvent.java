package com.startshorts.androidplayer.bean.eventbus;

import com.startshorts.androidplayer.bean.shorts.ShortDiscountSku;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RefreshShortDiscountEvent.kt */
@Metadata
/* loaded from: classes6.dex */
public final class RefreshShortDiscountEvent {
    @NotNull
    private final ShortDiscountSku shortDiscountSku;

    public RefreshShortDiscountEvent(@NotNull ShortDiscountSku shortDiscountSku) {
        Intrinsics.checkNotNullParameter(shortDiscountSku, "shortDiscountSku");
        this.shortDiscountSku = shortDiscountSku;
    }

    public static /* synthetic */ RefreshShortDiscountEvent copy$default(RefreshShortDiscountEvent refreshShortDiscountEvent, ShortDiscountSku shortDiscountSku, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            shortDiscountSku = refreshShortDiscountEvent.shortDiscountSku;
        }
        return refreshShortDiscountEvent.copy(shortDiscountSku);
    }

    @NotNull
    public final ShortDiscountSku component1() {
        return this.shortDiscountSku;
    }

    @NotNull
    public final RefreshShortDiscountEvent copy(@NotNull ShortDiscountSku shortDiscountSku) {
        Intrinsics.checkNotNullParameter(shortDiscountSku, "shortDiscountSku");
        return new RefreshShortDiscountEvent(shortDiscountSku);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof RefreshShortDiscountEvent) && Intrinsics.areEqual(this.shortDiscountSku, ((RefreshShortDiscountEvent) obj).shortDiscountSku)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final ShortDiscountSku getShortDiscountSku() {
        return this.shortDiscountSku;
    }

    public int hashCode() {
        return this.shortDiscountSku.hashCode();
    }

    @NotNull
    public String toString() {
        return "RefreshShortDiscountEvent(shortDiscountSku=" + this.shortDiscountSku + ')';
    }
}
