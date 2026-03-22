package com.startshorts.androidplayer.bean.subs;

import android.graphics.drawable.Drawable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SubsPrivilege2.kt */
@Metadata
/* loaded from: classes6.dex */
public final class SubsPrivilege2 {
    @NotNull
    private final String desc;
    @Nullable
    private final Drawable icon;
    @NotNull
    private final String title;

    public SubsPrivilege2(@Nullable Drawable drawable, @NotNull String title, @NotNull String desc) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(desc, "desc");
        this.icon = drawable;
        this.title = title;
        this.desc = desc;
    }

    public static /* synthetic */ SubsPrivilege2 copy$default(SubsPrivilege2 subsPrivilege2, Drawable drawable, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            drawable = subsPrivilege2.icon;
        }
        if ((i10 & 2) != 0) {
            str = subsPrivilege2.title;
        }
        if ((i10 & 4) != 0) {
            str2 = subsPrivilege2.desc;
        }
        return subsPrivilege2.copy(drawable, str, str2);
    }

    @Nullable
    public final Drawable component1() {
        return this.icon;
    }

    @NotNull
    public final String component2() {
        return this.title;
    }

    @NotNull
    public final String component3() {
        return this.desc;
    }

    @NotNull
    public final SubsPrivilege2 copy(@Nullable Drawable drawable, @NotNull String title, @NotNull String desc) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(desc, "desc");
        return new SubsPrivilege2(drawable, title, desc);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SubsPrivilege2)) {
            return false;
        }
        SubsPrivilege2 subsPrivilege2 = (SubsPrivilege2) obj;
        if (Intrinsics.areEqual(this.icon, subsPrivilege2.icon) && Intrinsics.areEqual(this.title, subsPrivilege2.title) && Intrinsics.areEqual(this.desc, subsPrivilege2.desc)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getDesc() {
        return this.desc;
    }

    @Nullable
    public final Drawable getIcon() {
        return this.icon;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        int hashCode;
        Drawable drawable = this.icon;
        if (drawable == null) {
            hashCode = 0;
        } else {
            hashCode = drawable.hashCode();
        }
        return (((hashCode * 31) + this.title.hashCode()) * 31) + this.desc.hashCode();
    }

    @NotNull
    public String toString() {
        return "SubsPrivilege2(icon=" + this.icon + ", title=" + this.title + ", desc=" + this.desc + ')';
    }
}
