package com.bytedance.bdtracker;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.applog.util.HardwareUtils;
import java.util.Collections;
/* loaded from: classes3.dex */
public class g4 extends v3 {

    /* renamed from: f  reason: collision with root package name */
    public static g4 f12025f;

    /* renamed from: c  reason: collision with root package name */
    public final SharedPreferences f12026c;

    /* renamed from: d  reason: collision with root package name */
    public SharedPreferences f12027d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f12028e;

    /* loaded from: classes3.dex */
    public interface a {
    }

    public g4(Context context, String str, String str2) {
        this.f12028e = false;
        this.f12026c = a(context, str, 0);
        this.f12027d = a(context, str2, 0);
    }

    public static SharedPreferences a(Context context, String str, int i10) {
        Context context2;
        Throwable th2;
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                context2 = context.createDeviceProtectedStorageContext();
                try {
                    if (!context2.moveSharedPreferencesFrom(context, str)) {
                        LoggerImpl.global().warn(Collections.singletonList("SharedPreferenceCacheHelper"), "Failed to migrate shared preferences.", new Object[0]);
                    }
                } catch (Throwable th3) {
                    th2 = th3;
                    LoggerImpl.global().error(Collections.singletonList("SharedPreferenceCacheHelper"), "Create protected storage context failed", th2, new Object[0]);
                    context = context2;
                    return context.getSharedPreferences(str, i10);
                }
            } catch (Throwable th4) {
                context2 = context;
                th2 = th4;
            }
            context = context2;
        }
        return context.getSharedPreferences(str, i10);
    }

    @Override // com.bytedance.bdtracker.v3
    public String b(String str) {
        return c(str).getString(str, null);
    }

    public SharedPreferences c(String str) {
        SharedPreferences sharedPreferences;
        if (!"device_id".equals(str) || (sharedPreferences = this.f12027d) == null) {
            return this.f12026c;
        }
        return sharedPreferences;
    }

    public g4(Context context, String str, boolean z10) {
        this.f12028e = false;
        this.f12026c = a(context, str, 0);
        this.f12028e = z10;
    }

    public static synchronized g4 a(Context context) {
        g4 g4Var;
        synchronized (g4.class) {
            try {
                if (f12025f == null) {
                    f12025f = new g4(context, "_global_cache", true);
                }
                g4Var = f12025f;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return g4Var;
    }

    @Override // com.bytedance.bdtracker.v3
    public void a(String str) {
        SharedPreferences c10 = c(str);
        if (c10 != null && c10.contains(str)) {
            c(str).edit().remove(str).apply();
        }
        super.a(str);
    }

    @Override // com.bytedance.bdtracker.v3
    public void a(String str, String str2) {
        if (this.f12028e || !TextUtils.isEmpty(str2)) {
            SharedPreferences.Editor edit = c(str).edit();
            if (this.f12028e && str2 == null) {
                str2 = "";
            }
            edit.putString(str, str2);
            edit.apply();
        }
    }

    public synchronized String a(String str, a aVar) {
        if (c(str).contains(str)) {
            return c(str).getString(str, null);
        }
        String a10 = aVar != null ? ((HardwareUtils.a) aVar).a() : null;
        a(str, a10);
        return a10;
    }
}
