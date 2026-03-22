package com.google.firebase;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.google.firebase.components.ComponentRegistrar;
import e9.h;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class FirebaseCommonRegistrar implements ComponentRegistrar {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String e(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo != null) {
            return String.valueOf(applicationInfo.targetSdkVersion);
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String f(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo != null) {
            return String.valueOf(applicationInfo.minSdkVersion);
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String g(Context context) {
        int i10 = Build.VERSION.SDK_INT;
        if (context.getPackageManager().hasSystemFeature("android.hardware.type.television")) {
            return "tv";
        }
        if (context.getPackageManager().hasSystemFeature("android.hardware.type.watch")) {
            return "watch";
        }
        if (context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
            return "auto";
        }
        if (i10 >= 26 && context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) {
            return "embedded";
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String h(Context context) {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        if (installerPackageName != null) {
            return i(installerPackageName);
        }
        return "";
    }

    private static String i(String str) {
        return str.replace(' ', '_').replace('/', '_');
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<w7.c<?>> getComponents() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(e9.c.b());
        arrayList.add(com.google.firebase.heartbeatinfo.a.g());
        arrayList.add(e9.h.b("fire-android", String.valueOf(Build.VERSION.SDK_INT)));
        arrayList.add(e9.h.b("fire-core", "22.0.1"));
        arrayList.add(e9.h.b("device-name", i(Build.PRODUCT)));
        arrayList.add(e9.h.b("device-model", i(Build.DEVICE)));
        arrayList.add(e9.h.b("device-brand", i(Build.BRAND)));
        arrayList.add(e9.h.c("android-target-sdk", new h.a() { // from class: com.google.firebase.h
            @Override // e9.h.a
            public final String a(Object obj) {
                String e10;
                e10 = FirebaseCommonRegistrar.e((Context) obj);
                return e10;
            }
        }));
        arrayList.add(e9.h.c("android-min-sdk", new h.a() { // from class: com.google.firebase.i
            @Override // e9.h.a
            public final String a(Object obj) {
                String f10;
                f10 = FirebaseCommonRegistrar.f((Context) obj);
                return f10;
            }
        }));
        arrayList.add(e9.h.c("android-platform", new h.a() { // from class: com.google.firebase.j
            @Override // e9.h.a
            public final String a(Object obj) {
                String g10;
                g10 = FirebaseCommonRegistrar.g((Context) obj);
                return g10;
            }
        }));
        arrayList.add(e9.h.c("android-installer", new h.a() { // from class: com.google.firebase.k
            @Override // e9.h.a
            public final String a(Object obj) {
                String h10;
                h10 = FirebaseCommonRegistrar.h((Context) obj);
                return h10;
            }
        }));
        String a10 = e9.e.a();
        if (a10 != null) {
            arrayList.add(e9.h.b("kotlin", a10));
        }
        return arrayList;
    }
}
