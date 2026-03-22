package com.facebook.ads.internal.dynamicloading;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import com.facebook.ads.internal.api.BuildConfigApi;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class DexLoadErrorReporter {
    public static final double SAMPLING = 0.1d;

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicBoolean f14896a = new AtomicBoolean();

    /* loaded from: classes3.dex */
    class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f14897a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f14898b;

        a(Context context, String str) {
            this.f14897a = context;
            this.f14898b = str;
        }

        /* JADX WARN: Removed duplicated region for block: B:65:0x0178 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:83:0x016d A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:86:? A[RETURN, SYNTHETIC] */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 419
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.internal.dynamicloading.DexLoadErrorReporter.a.run():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, JSONObject jSONObject, String str) throws JSONException, PackageManager.NameNotFoundException {
        String packageName = context.getPackageName();
        jSONObject.put("APPBUILD", context.getPackageManager().getPackageInfo(packageName, 0).versionCode);
        jSONObject.put("APPNAME", context.getPackageManager().getApplicationLabel(context.getPackageManager().getApplicationInfo(packageName, 0)));
        jSONObject.put("APPVERS", context.getPackageManager().getPackageInfo(packageName, 0).versionName);
        jSONObject.put("OSVERS", Build.VERSION.RELEASE);
        jSONObject.put("SDK", "android");
        jSONObject.put("SESSION_ID", str);
        jSONObject.put("MODEL", Build.MODEL);
        jSONObject.put("BUNDLE", packageName);
        jSONObject.put("SDK_VERSION", BuildConfigApi.getVersionName(context));
        jSONObject.put("OS", "Android");
    }

    @SuppressLint({"CatchGeneralException"})
    public static void reportDexLoadingIssue(Context context, String str, double d10) {
        AtomicBoolean atomicBoolean = f14896a;
        if (!atomicBoolean.get() && Math.random() < d10) {
            atomicBoolean.set(true);
            new a(context, str).start();
        }
    }
}
