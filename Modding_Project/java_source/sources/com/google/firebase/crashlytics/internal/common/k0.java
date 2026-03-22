package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
/* compiled from: InstallerPackageNameProvider.java */
/* loaded from: classes5.dex */
class k0 {

    /* renamed from: a  reason: collision with root package name */
    private String f20746a;

    private static String b(Context context) {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        if (installerPackageName == null) {
            return "";
        }
        return installerPackageName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized String a(Context context) {
        String str;
        try {
            if (this.f20746a == null) {
                this.f20746a = b(context);
            }
            if ("".equals(this.f20746a)) {
                str = null;
            } else {
                str = this.f20746a;
            }
        } finally {
        }
        return str;
    }
}
