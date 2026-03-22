package com.startshorts.androidplayer.bean.region;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Region.kt */
@Metadata
/* loaded from: classes6.dex */
public final class RegionGroup {
    @NotNull
    private final ArrayList<Region> codeInfoList;
    @NotNull
    private final String firstCode;

    public RegionGroup(@NotNull String firstCode, @NotNull ArrayList<Region> codeInfoList) {
        Intrinsics.checkNotNullParameter(firstCode, "firstCode");
        Intrinsics.checkNotNullParameter(codeInfoList, "codeInfoList");
        this.firstCode = firstCode;
        this.codeInfoList = codeInfoList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RegionGroup copy$default(RegionGroup regionGroup, String str, ArrayList arrayList, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = regionGroup.firstCode;
        }
        if ((i10 & 2) != 0) {
            arrayList = regionGroup.codeInfoList;
        }
        return regionGroup.copy(str, arrayList);
    }

    @NotNull
    public final String component1() {
        return this.firstCode;
    }

    @NotNull
    public final ArrayList<Region> component2() {
        return this.codeInfoList;
    }

    @NotNull
    public final RegionGroup copy(@NotNull String firstCode, @NotNull ArrayList<Region> codeInfoList) {
        Intrinsics.checkNotNullParameter(firstCode, "firstCode");
        Intrinsics.checkNotNullParameter(codeInfoList, "codeInfoList");
        return new RegionGroup(firstCode, codeInfoList);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RegionGroup)) {
            return false;
        }
        RegionGroup regionGroup = (RegionGroup) obj;
        if (Intrinsics.areEqual(this.firstCode, regionGroup.firstCode) && Intrinsics.areEqual(this.codeInfoList, regionGroup.codeInfoList)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final ArrayList<Region> getCodeInfoList() {
        return this.codeInfoList;
    }

    @NotNull
    public final String getFirstCode() {
        return this.firstCode;
    }

    public int hashCode() {
        return (this.firstCode.hashCode() * 31) + this.codeInfoList.hashCode();
    }

    @NotNull
    public String toString() {
        return "RegionGroup(firstCode=" + this.firstCode + ", codeInfoList=" + this.codeInfoList + ')';
    }

    public /* synthetic */ RegionGroup(String str, ArrayList arrayList, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? new ArrayList() : arrayList);
    }
}
