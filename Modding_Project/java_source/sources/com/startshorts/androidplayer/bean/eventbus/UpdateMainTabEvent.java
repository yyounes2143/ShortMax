package com.startshorts.androidplayer.bean.eventbus;

import com.startshorts.androidplayer.bean.tab.MainTab;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UpdateMainTabEvent.kt */
@Metadata
/* loaded from: classes6.dex */
public final class UpdateMainTabEvent {
    private final boolean clickTab;
    @NotNull
    private final Object extra;
    @NotNull
    private final String from;
    @NotNull
    private final MainTab.Type tabType;

    public UpdateMainTabEvent(@NotNull MainTab.Type tabType, boolean z10, @NotNull String from, @NotNull Object extra) {
        Intrinsics.checkNotNullParameter(tabType, "tabType");
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(extra, "extra");
        this.tabType = tabType;
        this.clickTab = z10;
        this.from = from;
        this.extra = extra;
    }

    public static /* synthetic */ UpdateMainTabEvent copy$default(UpdateMainTabEvent updateMainTabEvent, MainTab.Type type, boolean z10, String str, Object obj, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            type = updateMainTabEvent.tabType;
        }
        if ((i10 & 2) != 0) {
            z10 = updateMainTabEvent.clickTab;
        }
        if ((i10 & 4) != 0) {
            str = updateMainTabEvent.from;
        }
        if ((i10 & 8) != 0) {
            obj = updateMainTabEvent.extra;
        }
        return updateMainTabEvent.copy(type, z10, str, obj);
    }

    @NotNull
    public final MainTab.Type component1() {
        return this.tabType;
    }

    public final boolean component2() {
        return this.clickTab;
    }

    @NotNull
    public final String component3() {
        return this.from;
    }

    @NotNull
    public final Object component4() {
        return this.extra;
    }

    @NotNull
    public final UpdateMainTabEvent copy(@NotNull MainTab.Type tabType, boolean z10, @NotNull String from, @NotNull Object extra) {
        Intrinsics.checkNotNullParameter(tabType, "tabType");
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(extra, "extra");
        return new UpdateMainTabEvent(tabType, z10, from, extra);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UpdateMainTabEvent)) {
            return false;
        }
        UpdateMainTabEvent updateMainTabEvent = (UpdateMainTabEvent) obj;
        if (this.tabType == updateMainTabEvent.tabType && this.clickTab == updateMainTabEvent.clickTab && Intrinsics.areEqual(this.from, updateMainTabEvent.from) && Intrinsics.areEqual(this.extra, updateMainTabEvent.extra)) {
            return true;
        }
        return false;
    }

    public final boolean getClickTab() {
        return this.clickTab;
    }

    @NotNull
    public final Object getExtra() {
        return this.extra;
    }

    @NotNull
    public final String getFrom() {
        return this.from;
    }

    @NotNull
    public final MainTab.Type getTabType() {
        return this.tabType;
    }

    public int hashCode() {
        return (((((this.tabType.hashCode() * 31) + Boolean.hashCode(this.clickTab)) * 31) + this.from.hashCode()) * 31) + this.extra.hashCode();
    }

    @NotNull
    public String toString() {
        return "UpdateMainTabEvent(tabType=" + this.tabType + ", clickTab=" + this.clickTab + ", from=" + this.from + ", extra=" + this.extra + ')';
    }

    public /* synthetic */ UpdateMainTabEvent(MainTab.Type type, boolean z10, String str, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(type, (i10 & 2) != 0 ? false : z10, (i10 & 4) != 0 ? "" : str, (i10 & 8) != 0 ? "" : str2);
    }
}
