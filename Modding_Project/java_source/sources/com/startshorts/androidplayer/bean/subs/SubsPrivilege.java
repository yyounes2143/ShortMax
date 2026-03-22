package com.startshorts.androidplayer.bean.subs;

import android.graphics.drawable.Drawable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SubsPrivilege.kt */
@Metadata
/* loaded from: classes6.dex */
public final class SubsPrivilege {
    @NotNull
    private final String desc;
    @Nullable
    private final Drawable icon;

    public SubsPrivilege(@Nullable Drawable drawable, @NotNull String desc) {
        Intrinsics.checkNotNullParameter(desc, "desc");
        this.icon = drawable;
        this.desc = desc;
    }

    public static /* synthetic */ SubsPrivilege copy$default(SubsPrivilege subsPrivilege, Drawable drawable, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            drawable = subsPrivilege.icon;
        }
        if ((i10 & 2) != 0) {
            str = subsPrivilege.desc;
        }
        return subsPrivilege.copy(drawable, str);
    }

    @Nullable
    public final Drawable component1() {
        return this.icon;
    }

    @NotNull
    public final String component2() {
        return this.desc;
    }

    @NotNull
    public final SubsPrivilege copy(@Nullable Drawable drawable, @NotNull String desc) {
        Intrinsics.checkNotNullParameter(desc, "desc");
        return new SubsPrivilege(drawable, desc);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SubsPrivilege)) {
            return false;
        }
        SubsPrivilege subsPrivilege = (SubsPrivilege) obj;
        if (Intrinsics.areEqual(this.icon, subsPrivilege.icon) && Intrinsics.areEqual(this.desc, subsPrivilege.desc)) {
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

    public int hashCode() {
        int hashCode;
        Drawable drawable = this.icon;
        if (drawable == null) {
            hashCode = 0;
        } else {
            hashCode = drawable.hashCode();
        }
        return (hashCode * 31) + this.desc.hashCode();
    }

    @NotNull
    public String toString() {
        return "SubsPrivilege(icon=" + this.icon + ", desc=" + this.desc + ')';
    }
}
