package com.startshorts.androidplayer.bean.profile;

import android.graphics.drawable.Drawable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ProfileMenu.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ProfileMenu {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int TYPE_DEBUG = 8;
    public static final int TYPE_DOWNLOAD = 6;
    public static final int TYPE_FAQ = 7;
    public static final int TYPE_FEEDBACK = 2;
    public static final int TYPE_LANGUAGE = 3;
    public static final int TYPE_MY_LIST = 5;
    public static final int TYPE_REWARDS = 1;
    public static final int TYPE_SETTINGS = 4;
    @Nullable
    private final Drawable icon;
    @NotNull
    private final String name;
    private int redPointVisibility;
    private final int type;

    /* compiled from: ProfileMenu.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public ProfileMenu(int i10, @Nullable Drawable drawable, @NotNull String name, int i11) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.type = i10;
        this.icon = drawable;
        this.name = name;
        this.redPointVisibility = i11;
    }

    public static /* synthetic */ ProfileMenu copy$default(ProfileMenu profileMenu, int i10, Drawable drawable, String str, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = profileMenu.type;
        }
        if ((i12 & 2) != 0) {
            drawable = profileMenu.icon;
        }
        if ((i12 & 4) != 0) {
            str = profileMenu.name;
        }
        if ((i12 & 8) != 0) {
            i11 = profileMenu.redPointVisibility;
        }
        return profileMenu.copy(i10, drawable, str, i11);
    }

    public final int component1() {
        return this.type;
    }

    @Nullable
    public final Drawable component2() {
        return this.icon;
    }

    @NotNull
    public final String component3() {
        return this.name;
    }

    public final int component4() {
        return this.redPointVisibility;
    }

    @NotNull
    public final ProfileMenu copy(int i10, @Nullable Drawable drawable, @NotNull String name, int i11) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new ProfileMenu(i10, drawable, name, i11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProfileMenu)) {
            return false;
        }
        ProfileMenu profileMenu = (ProfileMenu) obj;
        if (this.type == profileMenu.type && Intrinsics.areEqual(this.icon, profileMenu.icon) && Intrinsics.areEqual(this.name, profileMenu.name) && this.redPointVisibility == profileMenu.redPointVisibility) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Drawable getIcon() {
        return this.icon;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public final int getRedPointVisibility() {
        return this.redPointVisibility;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = Integer.hashCode(this.type) * 31;
        Drawable drawable = this.icon;
        if (drawable == null) {
            hashCode = 0;
        } else {
            hashCode = drawable.hashCode();
        }
        return ((((hashCode2 + hashCode) * 31) + this.name.hashCode()) * 31) + Integer.hashCode(this.redPointVisibility);
    }

    public final void setRedPointVisibility(int i10) {
        this.redPointVisibility = i10;
    }

    @NotNull
    public String toString() {
        return "ProfileMenu(type=" + this.type + ", icon=" + this.icon + ", name=" + this.name + ", redPointVisibility=" + this.redPointVisibility + ')';
    }

    public /* synthetic */ ProfileMenu(int i10, Drawable drawable, String str, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, drawable, str, (i12 & 8) != 0 ? 8 : i11);
    }
}
