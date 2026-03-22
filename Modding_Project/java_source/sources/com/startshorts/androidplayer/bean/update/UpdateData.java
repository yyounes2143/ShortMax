package com.startshorts.androidplayer.bean.update;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UpdateData.kt */
@Metadata
/* loaded from: classes6.dex */
public final class UpdateData {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int UPDATE_FORCE = 2;
    public static final int UPDATE_NEVER = 0;
    public static final int UPDATE_RECOMMEND = 1;
    @Nullable
    private final String minVersion;
    private int recentShowDay;
    @Nullable
    private final String storeLink;
    private final int tipPeriod;
    private int update;
    @Nullable
    private final String updateRemark;
    @Nullable
    private String versionCodeUpdating;

    /* compiled from: UpdateData.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public UpdateData(int i10, @Nullable String str, @Nullable String str2, @Nullable String str3, int i11, int i12, @Nullable String str4) {
        this.update = i10;
        this.minVersion = str;
        this.updateRemark = str2;
        this.storeLink = str3;
        this.tipPeriod = i11;
        this.recentShowDay = i12;
        this.versionCodeUpdating = str4;
    }

    public static /* synthetic */ UpdateData copy$default(UpdateData updateData, int i10, String str, String str2, String str3, int i11, int i12, String str4, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i10 = updateData.update;
        }
        if ((i13 & 2) != 0) {
            str = updateData.minVersion;
        }
        String str5 = str;
        if ((i13 & 4) != 0) {
            str2 = updateData.updateRemark;
        }
        String str6 = str2;
        if ((i13 & 8) != 0) {
            str3 = updateData.storeLink;
        }
        String str7 = str3;
        if ((i13 & 16) != 0) {
            i11 = updateData.tipPeriod;
        }
        int i14 = i11;
        if ((i13 & 32) != 0) {
            i12 = updateData.recentShowDay;
        }
        int i15 = i12;
        if ((i13 & 64) != 0) {
            str4 = updateData.versionCodeUpdating;
        }
        return updateData.copy(i10, str5, str6, str7, i14, i15, str4);
    }

    public final int component1() {
        return this.update;
    }

    @Nullable
    public final String component2() {
        return this.minVersion;
    }

    @Nullable
    public final String component3() {
        return this.updateRemark;
    }

    @Nullable
    public final String component4() {
        return this.storeLink;
    }

    public final int component5() {
        return this.tipPeriod;
    }

    public final int component6() {
        return this.recentShowDay;
    }

    @Nullable
    public final String component7() {
        return this.versionCodeUpdating;
    }

    @NotNull
    public final UpdateData copy(int i10, @Nullable String str, @Nullable String str2, @Nullable String str3, int i11, int i12, @Nullable String str4) {
        return new UpdateData(i10, str, str2, str3, i11, i12, str4);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UpdateData)) {
            return false;
        }
        UpdateData updateData = (UpdateData) obj;
        if (this.update == updateData.update && Intrinsics.areEqual(this.minVersion, updateData.minVersion) && Intrinsics.areEqual(this.updateRemark, updateData.updateRemark) && Intrinsics.areEqual(this.storeLink, updateData.storeLink) && this.tipPeriod == updateData.tipPeriod && this.recentShowDay == updateData.recentShowDay && Intrinsics.areEqual(this.versionCodeUpdating, updateData.versionCodeUpdating)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getMinVersion() {
        return this.minVersion;
    }

    public final int getRecentShowDay() {
        return this.recentShowDay;
    }

    @Nullable
    public final String getStoreLink() {
        return this.storeLink;
    }

    public final int getTipPeriod() {
        return this.tipPeriod;
    }

    public final int getUpdate() {
        return this.update;
    }

    @Nullable
    public final String getUpdateRemark() {
        return this.updateRemark;
    }

    @Nullable
    public final String getVersionCodeUpdating() {
        return this.versionCodeUpdating;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4 = Integer.hashCode(this.update) * 31;
        String str = this.minVersion;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = (hashCode4 + hashCode) * 31;
        String str2 = this.updateRemark;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        String str3 = this.storeLink;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        int hashCode5 = (((((i12 + hashCode3) * 31) + Integer.hashCode(this.tipPeriod)) * 31) + Integer.hashCode(this.recentShowDay)) * 31;
        String str4 = this.versionCodeUpdating;
        if (str4 != null) {
            i10 = str4.hashCode();
        }
        return hashCode5 + i10;
    }

    public final void setRecentShowDay(int i10) {
        this.recentShowDay = i10;
    }

    public final void setUpdate(int i10) {
        this.update = i10;
    }

    public final void setVersionCodeUpdating(@Nullable String str) {
        this.versionCodeUpdating = str;
    }

    @NotNull
    public String toString() {
        return "UpdateData:force=" + this.update + ",minVersion=" + this.minVersion + ",tipPeriod=" + this.tipPeriod + ",recentShowDay=" + this.recentShowDay + ",versionCodeUpdating=" + this.versionCodeUpdating + ",storeLink=" + this.storeLink;
    }

    public /* synthetic */ UpdateData(int i10, String str, String str2, String str3, int i11, int i12, String str4, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, str, str2, str3, i11, (i13 & 32) != 0 ? 0 : i12, (i13 & 64) != 0 ? null : str4);
    }
}
