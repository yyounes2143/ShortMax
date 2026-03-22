package com.startshorts.androidplayer.bean.immersion;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImmersionVideoWatchRecord.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ImmersionVideoWatchRecord {
    @NotNull
    private String shortPlayCode;
    @NotNull
    private List<Integer> watchNode;

    public ImmersionVideoWatchRecord(@NotNull String shortPlayCode, @NotNull List<Integer> watchNode) {
        Intrinsics.checkNotNullParameter(shortPlayCode, "shortPlayCode");
        Intrinsics.checkNotNullParameter(watchNode, "watchNode");
        this.shortPlayCode = shortPlayCode;
        this.watchNode = watchNode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ImmersionVideoWatchRecord copy$default(ImmersionVideoWatchRecord immersionVideoWatchRecord, String str, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = immersionVideoWatchRecord.shortPlayCode;
        }
        if ((i10 & 2) != 0) {
            list = immersionVideoWatchRecord.watchNode;
        }
        return immersionVideoWatchRecord.copy(str, list);
    }

    @NotNull
    public final String component1() {
        return this.shortPlayCode;
    }

    @NotNull
    public final List<Integer> component2() {
        return this.watchNode;
    }

    @NotNull
    public final ImmersionVideoWatchRecord copy(@NotNull String shortPlayCode, @NotNull List<Integer> watchNode) {
        Intrinsics.checkNotNullParameter(shortPlayCode, "shortPlayCode");
        Intrinsics.checkNotNullParameter(watchNode, "watchNode");
        return new ImmersionVideoWatchRecord(shortPlayCode, watchNode);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersionVideoWatchRecord)) {
            return false;
        }
        ImmersionVideoWatchRecord immersionVideoWatchRecord = (ImmersionVideoWatchRecord) obj;
        if (Intrinsics.areEqual(this.shortPlayCode, immersionVideoWatchRecord.shortPlayCode) && Intrinsics.areEqual(this.watchNode, immersionVideoWatchRecord.watchNode)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getShortPlayCode() {
        return this.shortPlayCode;
    }

    @NotNull
    public final List<Integer> getWatchNode() {
        return this.watchNode;
    }

    public int hashCode() {
        return (this.shortPlayCode.hashCode() * 31) + this.watchNode.hashCode();
    }

    public final void setShortPlayCode(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.shortPlayCode = str;
    }

    public final void setWatchNode(@NotNull List<Integer> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.watchNode = list;
    }

    @NotNull
    public String toString() {
        return "ImmersionVideoWatchRecord(shortPlayCode=" + this.shortPlayCode + ", watchNode=" + this.watchNode + ')';
    }

    public /* synthetic */ ImmersionVideoWatchRecord(String str, List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? CollectionsKt.n() : list);
    }
}
