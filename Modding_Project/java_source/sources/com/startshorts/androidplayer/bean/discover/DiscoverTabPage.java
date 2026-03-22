package com.startshorts.androidplayer.bean.discover;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverTabPage.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DiscoverTabPage {
    @Nullable
    private List<DiscoverModule> bannerResponseList;
    @Nullable
    private Integer realizeType;
    @Nullable
    private Integer tabId;

    public DiscoverTabPage() {
        this(null, null, null, 7, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DiscoverTabPage copy$default(DiscoverTabPage discoverTabPage, Integer num, Integer num2, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = discoverTabPage.tabId;
        }
        if ((i10 & 2) != 0) {
            num2 = discoverTabPage.realizeType;
        }
        if ((i10 & 4) != 0) {
            list = discoverTabPage.bannerResponseList;
        }
        return discoverTabPage.copy(num, num2, list);
    }

    @Nullable
    public final Integer component1() {
        return this.tabId;
    }

    @Nullable
    public final Integer component2() {
        return this.realizeType;
    }

    @Nullable
    public final List<DiscoverModule> component3() {
        return this.bannerResponseList;
    }

    @NotNull
    public final DiscoverTabPage copy(@Nullable Integer num, @Nullable Integer num2, @Nullable List<DiscoverModule> list) {
        return new DiscoverTabPage(num, num2, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DiscoverTabPage)) {
            return false;
        }
        DiscoverTabPage discoverTabPage = (DiscoverTabPage) obj;
        if (Intrinsics.areEqual(this.tabId, discoverTabPage.tabId) && Intrinsics.areEqual(this.realizeType, discoverTabPage.realizeType) && Intrinsics.areEqual(this.bannerResponseList, discoverTabPage.bannerResponseList)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final List<DiscoverModule> getBannerResponseList() {
        return this.bannerResponseList;
    }

    @Nullable
    public final Integer getRealizeType() {
        return this.realizeType;
    }

    @Nullable
    public final Integer getTabId() {
        return this.tabId;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        Integer num = this.tabId;
        int i10 = 0;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int i11 = hashCode * 31;
        Integer num2 = this.realizeType;
        if (num2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = num2.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        List<DiscoverModule> list = this.bannerResponseList;
        if (list != null) {
            i10 = list.hashCode();
        }
        return i12 + i10;
    }

    public final void setBannerResponseList(@Nullable List<DiscoverModule> list) {
        this.bannerResponseList = list;
    }

    public final void setRealizeType(@Nullable Integer num) {
        this.realizeType = num;
    }

    public final void setTabId(@Nullable Integer num) {
        this.tabId = num;
    }

    @NotNull
    public String toString() {
        return "DiscoverTabPage(tabId=" + this.tabId + ", realizeType=" + this.realizeType + ", bannerResponseList=" + this.bannerResponseList + ')';
    }

    public DiscoverTabPage(@Nullable Integer num, @Nullable Integer num2, @Nullable List<DiscoverModule> list) {
        this.tabId = num;
        this.realizeType = num2;
        this.bannerResponseList = list;
    }

    public /* synthetic */ DiscoverTabPage(Integer num, Integer num2, List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : num, (i10 & 2) != 0 ? null : num2, (i10 & 4) != 0 ? null : list);
    }
}
