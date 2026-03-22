package com.moloco.sdk.internal.services;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class a0 {
    @NotNull
    public static final PackageInfo a(@NotNull Context context) {
        PackageManager.PackageInfoFlags of2;
        PackageInfo packageInfo;
        Intrinsics.checkNotNullParameter(context, "<this>");
        if (Build.VERSION.SDK_INT >= 33) {
            PackageManager packageManager = context.getPackageManager();
            String packageName = context.getPackageName();
            of2 = PackageManager.PackageInfoFlags.of(0L);
            packageInfo = packageManager.getPackageInfo(packageName, of2);
            Intrinsics.checkNotNull(packageInfo);
            return packageInfo;
        }
        PackageInfo packageInfo2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        Intrinsics.checkNotNull(packageInfo2);
        return packageInfo2;
    }
}
