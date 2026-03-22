package com.startshorts.androidplayer.bean.permission;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CheckPermissionResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class CheckPermissionResult {
    private final boolean granted;
    @NotNull
    private final String permission;

    public CheckPermissionResult(@NotNull String permission, boolean z10) {
        Intrinsics.checkNotNullParameter(permission, "permission");
        this.permission = permission;
        this.granted = z10;
    }

    public static /* synthetic */ CheckPermissionResult copy$default(CheckPermissionResult checkPermissionResult, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = checkPermissionResult.permission;
        }
        if ((i10 & 2) != 0) {
            z10 = checkPermissionResult.granted;
        }
        return checkPermissionResult.copy(str, z10);
    }

    @NotNull
    public final String component1() {
        return this.permission;
    }

    public final boolean component2() {
        return this.granted;
    }

    @NotNull
    public final CheckPermissionResult copy(@NotNull String permission, boolean z10) {
        Intrinsics.checkNotNullParameter(permission, "permission");
        return new CheckPermissionResult(permission, z10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CheckPermissionResult)) {
            return false;
        }
        CheckPermissionResult checkPermissionResult = (CheckPermissionResult) obj;
        if (Intrinsics.areEqual(this.permission, checkPermissionResult.permission) && this.granted == checkPermissionResult.granted) {
            return true;
        }
        return false;
    }

    public final boolean getGranted() {
        return this.granted;
    }

    @NotNull
    public final String getPermission() {
        return this.permission;
    }

    public int hashCode() {
        return (this.permission.hashCode() * 31) + Boolean.hashCode(this.granted);
    }

    @NotNull
    public String toString() {
        return "CheckPermissionResult(permission=" + this.permission + ", granted=" + this.granted + ')';
    }
}
