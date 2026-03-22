package com.startshorts.androidplayer.bean.discover;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverAct.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DiscoverAct {
    @Nullable
    private String campaignName;
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private String f38113id;
    @Nullable
    private String linkUrl;

    public DiscoverAct() {
        this(null, null, null, 7, null);
    }

    public static /* synthetic */ DiscoverAct copy$default(DiscoverAct discoverAct, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = discoverAct.f38113id;
        }
        if ((i10 & 2) != 0) {
            str2 = discoverAct.campaignName;
        }
        if ((i10 & 4) != 0) {
            str3 = discoverAct.linkUrl;
        }
        return discoverAct.copy(str, str2, str3);
    }

    @Nullable
    public final String component1() {
        return this.f38113id;
    }

    @Nullable
    public final String component2() {
        return this.campaignName;
    }

    @Nullable
    public final String component3() {
        return this.linkUrl;
    }

    @NotNull
    public final DiscoverAct copy(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        return new DiscoverAct(str, str2, str3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DiscoverAct)) {
            return false;
        }
        DiscoverAct discoverAct = (DiscoverAct) obj;
        if (Intrinsics.areEqual(this.f38113id, discoverAct.f38113id) && Intrinsics.areEqual(this.campaignName, discoverAct.campaignName) && Intrinsics.areEqual(this.linkUrl, discoverAct.linkUrl)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getCampaignName() {
        return this.campaignName;
    }

    @Nullable
    public final String getId() {
        return this.f38113id;
    }

    @Nullable
    public final String getLinkUrl() {
        return this.linkUrl;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        String str = this.f38113id;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = hashCode * 31;
        String str2 = this.campaignName;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        String str3 = this.linkUrl;
        if (str3 != null) {
            i10 = str3.hashCode();
        }
        return i12 + i10;
    }

    public final void setCampaignName(@Nullable String str) {
        this.campaignName = str;
    }

    public final void setId(@Nullable String str) {
        this.f38113id = str;
    }

    public final void setLinkUrl(@Nullable String str) {
        this.linkUrl = str;
    }

    @NotNull
    public String toString() {
        return "DiscoverAct(id=" + this.f38113id + ", campaignName=" + this.campaignName + ", linkUrl=" + this.linkUrl + ')';
    }

    public DiscoverAct(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        this.f38113id = str;
        this.campaignName = str2;
        this.linkUrl = str3;
    }

    public /* synthetic */ DiscoverAct(String str, String str2, String str3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : str2, (i10 & 4) != 0 ? null : str3);
    }
}
