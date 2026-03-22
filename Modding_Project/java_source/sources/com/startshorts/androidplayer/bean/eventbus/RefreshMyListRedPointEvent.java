package com.startshorts.androidplayer.bean.eventbus;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RefreshMyListRedPointEvent.kt */
@Metadata
/* loaded from: classes6.dex */
public final class RefreshMyListRedPointEvent {
    @NotNull
    private final List<Integer> shortIds;

    public RefreshMyListRedPointEvent(@NotNull List<Integer> shortIds) {
        Intrinsics.checkNotNullParameter(shortIds, "shortIds");
        this.shortIds = shortIds;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RefreshMyListRedPointEvent copy$default(RefreshMyListRedPointEvent refreshMyListRedPointEvent, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = refreshMyListRedPointEvent.shortIds;
        }
        return refreshMyListRedPointEvent.copy(list);
    }

    @NotNull
    public final List<Integer> component1() {
        return this.shortIds;
    }

    @NotNull
    public final RefreshMyListRedPointEvent copy(@NotNull List<Integer> shortIds) {
        Intrinsics.checkNotNullParameter(shortIds, "shortIds");
        return new RefreshMyListRedPointEvent(shortIds);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof RefreshMyListRedPointEvent) && Intrinsics.areEqual(this.shortIds, ((RefreshMyListRedPointEvent) obj).shortIds)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final List<Integer> getShortIds() {
        return this.shortIds;
    }

    public int hashCode() {
        return this.shortIds.hashCode();
    }

    @NotNull
    public String toString() {
        return "RefreshMyListRedPointEvent(shortIds=" + this.shortIds + ')';
    }
}
