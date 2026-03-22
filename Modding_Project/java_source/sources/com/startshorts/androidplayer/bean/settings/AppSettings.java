package com.startshorts.androidplayer.bean.settings;

import fk.z;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AppSettings.kt */
@Metadata
/* loaded from: classes6.dex */
public final class AppSettings {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int TYPE_AB_TEST = 20000;
    public static final int TYPE_AD_TOOLS = 30000;
    public static final int TYPE_APP_TEST = 20001;
    public static final int TYPE_AUTO_UNLOCK_EPISODE = 2;
    public static final int TYPE_BIND_INFO = 1;
    public static final int TYPE_DEBUG_INFO_TEST = 10002;
    public static final int TYPE_DELETE_ACCOUNT = 6;
    public static final int TYPE_DIVIDER_LINE = -1;
    public static final int TYPE_FIREBASE_TEST = 10000;
    public static final int TYPE_PIP_MODE = 7;
    public static final int TYPE_PRIVACY_POLICY = 4;
    public static final int TYPE_ROUTINGACTIVITY_TEST = 10001;
    public static final int TYPE_SHORT_TOOLS = 30001;
    public static final int TYPE_SHOW_DIALOG_COUNT_B = 10005;
    public static final int TYPE_SWITCH_INFO = 8;
    public static final int TYPE_TITLE = -2;
    public static final int TYPE_UPLOAD_ALL_EVENTS = 20003;
    public static final int TYPE_USER_AGREEMENT = 5;
    public static final int TYPE_WATCH_AD_COUNT_A = 10003;
    public static final int TYPE_WATCH_AD_COUNT_C = 10004;
    @NotNull
    private final String abTestKey;
    @NotNull
    private String name;
    private final int type;

    /* compiled from: AppSettings.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public AppSettings(int i10, @NotNull String name, @NotNull String abTestKey) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(abTestKey, "abTestKey");
        this.type = i10;
        this.name = name;
        this.abTestKey = abTestKey;
    }

    public static /* synthetic */ AppSettings copy$default(AppSettings appSettings, int i10, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = appSettings.type;
        }
        if ((i11 & 2) != 0) {
            str = appSettings.name;
        }
        if ((i11 & 4) != 0) {
            str2 = appSettings.abTestKey;
        }
        return appSettings.copy(i10, str, str2);
    }

    public final int component1() {
        return this.type;
    }

    @NotNull
    public final String component2() {
        return this.name;
    }

    @NotNull
    public final String component3() {
        return this.abTestKey;
    }

    @NotNull
    public final AppSettings copy(int i10, @NotNull String name, @NotNull String abTestKey) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(abTestKey, "abTestKey");
        return new AppSettings(i10, name, abTestKey);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppSettings)) {
            return false;
        }
        AppSettings appSettings = (AppSettings) obj;
        if (this.type == appSettings.type && Intrinsics.areEqual(this.name, appSettings.name) && Intrinsics.areEqual(this.abTestKey, appSettings.abTestKey)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getAbTestKey() {
        return this.abTestKey;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public final int getTitlePaddingTop(int i10) {
        if (i10 == 0) {
            return z.f51786a.d();
        }
        return z.f51786a.h();
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        return (((Integer.hashCode(this.type) * 31) + this.name.hashCode()) * 31) + this.abTestKey.hashCode();
    }

    public final void setName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.name = str;
    }

    @NotNull
    public String toString() {
        return "AppSettings(type=" + this.type + ", name=" + this.name + ", abTestKey=" + this.abTestKey + ')';
    }

    public /* synthetic */ AppSettings(int i10, String str, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, (i11 & 2) != 0 ? "" : str, (i11 & 4) != 0 ? "" : str2);
    }
}
