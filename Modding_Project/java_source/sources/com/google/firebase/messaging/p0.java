package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.tasks.OnSuccessListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ProxyNotificationPreferences.java */
/* loaded from: classes5.dex */
public final class p0 {
    private static SharedPreferences b(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return context.getSharedPreferences("com.google.firebase.messaging", 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public static boolean c(Context context) {
        return b(context).getBoolean("proxy_notification_initialized", false);
    }

    @WorkerThread
    static boolean d(SharedPreferences sharedPreferences, boolean z10) {
        if (!sharedPreferences.contains("proxy_retention") || sharedPreferences.getBoolean("proxy_retention", false) != z10) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public static void f(Context context, boolean z10) {
        SharedPreferences.Editor edit = b(context).edit();
        edit.putBoolean("proxy_notification_initialized", z10);
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public static void g(final Context context, c0 c0Var, final boolean z10) {
        if (PlatformVersion.isAtLeastQ() && !d(b(context), z10)) {
            c0Var.k(z10).addOnSuccessListener(new androidx.credentials.a(), new OnSuccessListener() { // from class: com.google.firebase.messaging.o0
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    Void r32 = (Void) obj;
                    p0.h(context, z10);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public static void h(Context context, boolean z10) {
        SharedPreferences.Editor edit = b(context).edit();
        edit.putBoolean("proxy_retention", z10);
        edit.apply();
    }
}
