package com.mbridge.msdk.util;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.GoogleApiAvailability;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.r0;
import java.util.ArrayList;
import java.util.Iterator;
/* compiled from: CronetEnvironmentCheckUtil.java */
/* loaded from: classes6.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f30462a = false;

    /* renamed from: b  reason: collision with root package name */
    public static String f30463b = "";

    public static void a() {
        if (!c()) {
            return;
        }
        try {
            GoogleApiAvailability.getInstance().getApkVersion(com.mbridge.msdk.foundation.controller.c.m().d());
            GoogleApiAvailability.getInstance().verifyGooglePlayServicesIsAvailable(com.mbridge.msdk.foundation.controller.c.m().d(), 11925000);
            try {
                String b10 = b();
                boolean isEmpty = TextUtils.isEmpty(b10);
                f30462a = !isEmpty;
                if (isEmpty) {
                    return;
                }
                f30463b = b10;
            } catch (Throwable th2) {
                p0.b("CronetEnvCheckUtil", th2.getMessage());
            }
        } catch (Throwable th3) {
            p0.b("CronetEnvCheckUtil", th3.getMessage());
            f30462a = false;
        }
    }

    private static String b() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Pair.create(1, "org.chromium.net.impl.JavaCronetProvider"));
        arrayList.add(Pair.create(2, "org.chromium.net.impl.NativeCronetProvider"));
        arrayList.add(Pair.create(3, "com.google.android.gms.net.PlayServicesCronetProvider"));
        arrayList.add(Pair.create(4, "com.google.android.gms.net.GmsCoreCronetProvider"));
        try {
            StringBuilder sb2 = new StringBuilder();
            ClassLoader classLoader = com.mbridge.msdk.foundation.controller.c.m().d().getClassLoader();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                if (!TextUtils.isEmpty(classLoader.loadClass((String) pair.second).getConstructor(Context.class).newInstance(com.mbridge.msdk.foundation.controller.c.m().d()).getClass().getName())) {
                    if (sb2.length() > 0) {
                        sb2.append(",");
                    }
                    sb2.append(pair.first);
                }
            }
            return sb2.toString();
        } catch (Throwable th2) {
            p0.b("CronetEnvCheckUtil", th2.getMessage());
            return "";
        }
    }

    public static boolean c() {
        return r0.a().a("cronet_env_check", false);
    }
}
