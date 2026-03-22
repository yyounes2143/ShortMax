package com.google.firebase.messaging;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SharedPreferencesQueue.java */
/* loaded from: classes5.dex */
public final class v0 {

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f21279a;

    /* renamed from: b  reason: collision with root package name */
    private final String f21280b;

    /* renamed from: c  reason: collision with root package name */
    private final String f21281c;

    /* renamed from: e  reason: collision with root package name */
    private final Executor f21283e;
    @GuardedBy("internalQueue")
    @VisibleForTesting

    /* renamed from: d  reason: collision with root package name */
    final ArrayDeque<String> f21282d = new ArrayDeque<>();
    @GuardedBy("internalQueue")

    /* renamed from: f  reason: collision with root package name */
    private boolean f21284f = false;

    private v0(SharedPreferences sharedPreferences, String str, String str2, Executor executor) {
        this.f21279a = sharedPreferences;
        this.f21280b = str;
        this.f21281c = str2;
        this.f21283e = executor;
    }

    @GuardedBy("internalQueue")
    private boolean b(boolean z10) {
        if (z10 && !this.f21284f) {
            i();
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public static v0 c(SharedPreferences sharedPreferences, String str, String str2, Executor executor) {
        v0 v0Var = new v0(sharedPreferences, str, str2, executor);
        v0Var.d();
        return v0Var;
    }

    @WorkerThread
    private void d() {
        synchronized (this.f21282d) {
            try {
                this.f21282d.clear();
                String string = this.f21279a.getString(this.f21280b, "");
                if (!TextUtils.isEmpty(string) && string.contains(this.f21281c)) {
                    String[] split = string.split(this.f21281c, -1);
                    if (split.length == 0) {
                        Log.e("FirebaseMessaging", "Corrupted queue. Please check the queue contents and item separator provided");
                    }
                    for (String str : split) {
                        if (!TextUtils.isEmpty(str)) {
                            this.f21282d.add(str);
                        }
                    }
                }
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public void h() {
        synchronized (this.f21282d) {
            this.f21279a.edit().putString(this.f21280b, g()).commit();
        }
    }

    private void i() {
        this.f21283e.execute(new Runnable() { // from class: com.google.firebase.messaging.u0
            @Override // java.lang.Runnable
            public final void run() {
                v0.this.h();
            }
        });
    }

    @Nullable
    public String e() {
        String peek;
        synchronized (this.f21282d) {
            peek = this.f21282d.peek();
        }
        return peek;
    }

    public boolean f(@Nullable Object obj) {
        boolean b10;
        synchronized (this.f21282d) {
            b10 = b(this.f21282d.remove(obj));
        }
        return b10;
    }

    @NonNull
    @GuardedBy("internalQueue")
    public String g() {
        StringBuilder sb2 = new StringBuilder();
        Iterator<String> it = this.f21282d.iterator();
        while (it.hasNext()) {
            sb2.append(it.next());
            sb2.append(this.f21281c);
        }
        return sb2.toString();
    }
}
