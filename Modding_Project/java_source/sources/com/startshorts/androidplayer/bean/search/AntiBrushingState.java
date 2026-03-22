package com.startshorts.androidplayer.bean.search;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AntiBrushingState.kt */
@Metadata
/* loaded from: classes6.dex */
public final class AntiBrushingState {
    @NotNull
    private final List<RedeemSearchInfo> redeemCodeSearchHistorys;

    public AntiBrushingState() {
        this(null, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AntiBrushingState copy$default(AntiBrushingState antiBrushingState, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = antiBrushingState.redeemCodeSearchHistorys;
        }
        return antiBrushingState.copy(list);
    }

    @NotNull
    public final List<RedeemSearchInfo> component1() {
        return this.redeemCodeSearchHistorys;
    }

    @NotNull
    public final AntiBrushingState copy(@NotNull List<RedeemSearchInfo> redeemCodeSearchHistorys) {
        Intrinsics.checkNotNullParameter(redeemCodeSearchHistorys, "redeemCodeSearchHistorys");
        return new AntiBrushingState(redeemCodeSearchHistorys);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof AntiBrushingState) && Intrinsics.areEqual(this.redeemCodeSearchHistorys, ((AntiBrushingState) obj).redeemCodeSearchHistorys)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final List<RedeemSearchInfo> getRedeemCodeSearchHistorys() {
        return this.redeemCodeSearchHistorys;
    }

    public int hashCode() {
        return this.redeemCodeSearchHistorys.hashCode();
    }

    @NotNull
    public String toString() {
        return "AntiBrushingState(redeemCodeSearchHistorys=" + this.redeemCodeSearchHistorys + ')';
    }

    public AntiBrushingState(@NotNull List<RedeemSearchInfo> redeemCodeSearchHistorys) {
        Intrinsics.checkNotNullParameter(redeemCodeSearchHistorys, "redeemCodeSearchHistorys");
        this.redeemCodeSearchHistorys = redeemCodeSearchHistorys;
    }

    public /* synthetic */ AntiBrushingState(List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new ArrayList() : list);
    }
}
