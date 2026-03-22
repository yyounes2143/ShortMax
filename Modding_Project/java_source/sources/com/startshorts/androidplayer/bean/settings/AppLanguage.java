package com.startshorts.androidplayer.bean.settings;

import com.startshorts.androidplayer.bean.adapter.SelectableItem;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AppLanguage.kt */
@Metadata
/* loaded from: classes6.dex */
public final class AppLanguage extends SelectableItem {
    @NotNull
    private String descName;
    @NotNull
    private String localName;
    @NotNull
    private String officialName;

    public AppLanguage(@NotNull String officialName, @NotNull String localName, @NotNull String descName) {
        Intrinsics.checkNotNullParameter(officialName, "officialName");
        Intrinsics.checkNotNullParameter(localName, "localName");
        Intrinsics.checkNotNullParameter(descName, "descName");
        this.officialName = officialName;
        this.localName = localName;
        this.descName = descName;
    }

    public static /* synthetic */ AppLanguage copy$default(AppLanguage appLanguage, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = appLanguage.officialName;
        }
        if ((i10 & 2) != 0) {
            str2 = appLanguage.localName;
        }
        if ((i10 & 4) != 0) {
            str3 = appLanguage.descName;
        }
        return appLanguage.copy(str, str2, str3);
    }

    @NotNull
    public final String component1() {
        return this.officialName;
    }

    @NotNull
    public final String component2() {
        return this.localName;
    }

    @NotNull
    public final String component3() {
        return this.descName;
    }

    @NotNull
    public final AppLanguage copy(@NotNull String officialName, @NotNull String localName, @NotNull String descName) {
        Intrinsics.checkNotNullParameter(officialName, "officialName");
        Intrinsics.checkNotNullParameter(localName, "localName");
        Intrinsics.checkNotNullParameter(descName, "descName");
        return new AppLanguage(officialName, localName, descName);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppLanguage)) {
            return false;
        }
        AppLanguage appLanguage = (AppLanguage) obj;
        if (Intrinsics.areEqual(this.officialName, appLanguage.officialName) && Intrinsics.areEqual(this.localName, appLanguage.localName) && Intrinsics.areEqual(this.descName, appLanguage.descName)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getDescName() {
        return this.descName;
    }

    @NotNull
    public final String getLocalName() {
        return this.localName;
    }

    @NotNull
    public final String getOfficialName() {
        return this.officialName;
    }

    public int hashCode() {
        return (((this.officialName.hashCode() * 31) + this.localName.hashCode()) * 31) + this.descName.hashCode();
    }

    public final void setDescName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.descName = str;
    }

    public final void setLocalName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.localName = str;
    }

    public final void setOfficialName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.officialName = str;
    }

    @Override // com.startshorts.androidplayer.bean.adapter.SelectableItem
    @NotNull
    public String toString() {
        return "AppLanguage(officialName=" + this.officialName + ", localName=" + this.localName + ", descName=" + this.descName + ')';
    }

    public /* synthetic */ AppLanguage(String str, String str2, String str3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i10 & 4) != 0 ? "" : str3);
    }
}
