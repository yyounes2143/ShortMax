package com.startshorts.androidplayer.bean.discover;

import com.startshorts.androidplayer.bean.adapter.SelectableItem;
import jk.g;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverTab.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DiscoverTab extends SelectableItem {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TAB_LIBRARY = "library_tab";
    @NotNull
    public static final String TAB_RANKING = "ranking_tab";
    @Nullable
    private Integer dramaStyle;
    @Nullable
    private String linkUrl;
    @Nullable
    private Integer realizeType;
    @Nullable
    private String tabDisplayName;
    @Nullable
    private String tabFlagName;
    @Nullable
    private Integer tabId;

    /* compiled from: DiscoverTab.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public DiscoverTab() {
        this(null, null, null, null, null, null, 63, null);
    }

    public static /* synthetic */ DiscoverTab copy$default(DiscoverTab discoverTab, Integer num, String str, String str2, Integer num2, String str3, Integer num3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = discoverTab.tabId;
        }
        if ((i10 & 2) != 0) {
            str = discoverTab.tabFlagName;
        }
        String str4 = str;
        if ((i10 & 4) != 0) {
            str2 = discoverTab.tabDisplayName;
        }
        String str5 = str2;
        if ((i10 & 8) != 0) {
            num2 = discoverTab.realizeType;
        }
        Integer num4 = num2;
        if ((i10 & 16) != 0) {
            str3 = discoverTab.linkUrl;
        }
        String str6 = str3;
        if ((i10 & 32) != 0) {
            num3 = discoverTab.dramaStyle;
        }
        return discoverTab.copy(num, str4, str5, num4, str6, num3);
    }

    @Nullable
    public final Integer component1() {
        return this.tabId;
    }

    @Nullable
    public final String component2() {
        return this.tabFlagName;
    }

    @Nullable
    public final String component3() {
        return this.tabDisplayName;
    }

    @Nullable
    public final Integer component4() {
        return this.realizeType;
    }

    @Nullable
    public final String component5() {
        return this.linkUrl;
    }

    @Nullable
    public final Integer component6() {
        return this.dramaStyle;
    }

    @NotNull
    public final DiscoverTab copy(@Nullable Integer num, @Nullable String str, @Nullable String str2, @Nullable Integer num2, @Nullable String str3, @Nullable Integer num3) {
        return new DiscoverTab(num, str, str2, num2, str3, num3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DiscoverTab)) {
            return false;
        }
        DiscoverTab discoverTab = (DiscoverTab) obj;
        if (Intrinsics.areEqual(this.tabId, discoverTab.tabId) && Intrinsics.areEqual(this.tabFlagName, discoverTab.tabFlagName) && Intrinsics.areEqual(this.tabDisplayName, discoverTab.tabDisplayName) && Intrinsics.areEqual(this.realizeType, discoverTab.realizeType) && Intrinsics.areEqual(this.linkUrl, discoverTab.linkUrl) && Intrinsics.areEqual(this.dramaStyle, discoverTab.dramaStyle)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Integer getDramaStyle() {
        return this.dramaStyle;
    }

    @Nullable
    public final String getLinkUrl() {
        return this.linkUrl;
    }

    public final int getPaddingTop(boolean z10) {
        if (z10) {
            return g.a(-3.0f);
        }
        return 0;
    }

    @Nullable
    public final Integer getRealizeType() {
        return this.realizeType;
    }

    @Nullable
    public final String getTabDisplayName() {
        return this.tabDisplayName;
    }

    @Nullable
    public final String getTabFlagName() {
        return this.tabFlagName;
    }

    @Nullable
    public final Integer getTabId() {
        return this.tabId;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        Integer num = this.tabId;
        int i10 = 0;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int i11 = hashCode * 31;
        String str = this.tabFlagName;
        if (str == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        String str2 = this.tabDisplayName;
        if (str2 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str2.hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        Integer num2 = this.realizeType;
        if (num2 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = num2.hashCode();
        }
        int i14 = (i13 + hashCode4) * 31;
        String str3 = this.linkUrl;
        if (str3 == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = str3.hashCode();
        }
        int i15 = (i14 + hashCode5) * 31;
        Integer num3 = this.dramaStyle;
        if (num3 != null) {
            i10 = num3.hashCode();
        }
        return i15 + i10;
    }

    public final boolean isH5() {
        Integer num = this.realizeType;
        if (num != null && num.intValue() == 2) {
            return true;
        }
        return false;
    }

    public final boolean isTabRanking() {
        return Intrinsics.areEqual(TAB_RANKING, this.tabFlagName);
    }

    public final void setDramaStyle(@Nullable Integer num) {
        this.dramaStyle = num;
    }

    public final void setLinkUrl(@Nullable String str) {
        this.linkUrl = str;
    }

    public final void setRealizeType(@Nullable Integer num) {
        this.realizeType = num;
    }

    public final void setTabDisplayName(@Nullable String str) {
        this.tabDisplayName = str;
    }

    public final void setTabFlagName(@Nullable String str) {
        this.tabFlagName = str;
    }

    public final void setTabId(@Nullable Integer num) {
        this.tabId = num;
    }

    @Override // com.startshorts.androidplayer.bean.adapter.SelectableItem
    @NotNull
    public String toString() {
        return "DiscoverTab(tabId=" + this.tabId + ", tabFlagName=" + this.tabFlagName + ", tabDisplayName=" + this.tabDisplayName + ", realizeType=" + this.realizeType + ", linkUrl=" + this.linkUrl + ", dramaStyle=" + this.dramaStyle + ')';
    }

    public /* synthetic */ DiscoverTab(Integer num, String str, String str2, Integer num2, String str3, Integer num3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : num, (i10 & 2) != 0 ? null : str, (i10 & 4) != 0 ? null : str2, (i10 & 8) != 0 ? null : num2, (i10 & 16) != 0 ? null : str3, (i10 & 32) != 0 ? null : num3);
    }

    public DiscoverTab(@Nullable Integer num, @Nullable String str, @Nullable String str2, @Nullable Integer num2, @Nullable String str3, @Nullable Integer num3) {
        this.tabId = num;
        this.tabFlagName = str;
        this.tabDisplayName = str2;
        this.realizeType = num2;
        this.linkUrl = str3;
        this.dramaStyle = num3;
    }
}
