package b9;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.core.content.ContextCompat;
import t8.c;
/* compiled from: DataCollectionConfigStorage.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final Context f2568a;

    /* renamed from: b  reason: collision with root package name */
    private final SharedPreferences f2569b;

    /* renamed from: c  reason: collision with root package name */
    private final c f2570c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f2571d;

    public a(Context context, String str, c cVar) {
        Context a10 = a(context);
        this.f2568a = a10;
        this.f2569b = a10.getSharedPreferences("com.google.firebase.common.prefs:" + str, 0);
        this.f2570c = cVar;
        this.f2571d = c();
    }

    private static Context a(Context context) {
        return ContextCompat.createDeviceProtectedStorageContext(context);
    }

    private boolean c() {
        if (this.f2569b.contains("firebase_data_collection_default_enabled")) {
            return this.f2569b.getBoolean("firebase_data_collection_default_enabled", true);
        }
        return d();
    }

    private boolean d() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            PackageManager packageManager = this.f2568a.getPackageManager();
            if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(this.f2568a.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("firebase_data_collection_default_enabled")) {
                return applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
            }
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return true;
        }
    }

    public synchronized boolean b() {
        return this.f2571d;
    }
}
