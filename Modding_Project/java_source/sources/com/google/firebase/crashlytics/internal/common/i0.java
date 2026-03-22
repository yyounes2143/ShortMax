package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.google.firebase.crashlytics.internal.common.j0;
import java.util.Locale;
import java.util.Objects;
import java.util.UUID;
import java.util.regex.Pattern;
/* compiled from: IdManager.java */
/* loaded from: classes5.dex */
public class i0 implements j0 {

    /* renamed from: g  reason: collision with root package name */
    private static final Pattern f20733g = Pattern.compile("[^\\p{Alnum}]");

    /* renamed from: h  reason: collision with root package name */
    private static final String f20734h = Pattern.quote(DomExceptionUtils.SEPARATOR);

    /* renamed from: a  reason: collision with root package name */
    private final k0 f20735a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f20736b;

    /* renamed from: c  reason: collision with root package name */
    private final String f20737c;

    /* renamed from: d  reason: collision with root package name */
    private final x8.e f20738d;

    /* renamed from: e  reason: collision with root package name */
    private final e0 f20739e;

    /* renamed from: f  reason: collision with root package name */
    private j0.a f20740f;

    public i0(Context context, String str, x8.e eVar, e0 e0Var) {
        if (context != null) {
            if (str != null) {
                this.f20736b = context;
                this.f20737c = str;
                this.f20738d = eVar;
                this.f20739e = e0Var;
                this.f20735a = new k0();
                return;
            }
            throw new IllegalArgumentException("appIdentifier must not be null");
        }
        throw new IllegalArgumentException("appContext must not be null");
    }

    @NonNull
    private synchronized String b(String str, SharedPreferences sharedPreferences) {
        String e10;
        e10 = e(UUID.randomUUID().toString());
        z7.g f10 = z7.g.f();
        f10.i("Created new Crashlytics installation ID: " + e10 + " for FID: " + str);
        sharedPreferences.edit().putString("crashlytics.installation.id", e10).putString("firebase.installation.id", str).apply();
        return e10;
    }

    static String c() {
        return "SYN_" + UUID.randomUUID().toString();
    }

    @NonNull
    private static String e(@NonNull String str) {
        return f20733g.matcher(str).replaceAll("").toLowerCase(Locale.US);
    }

    static boolean k(String str) {
        if (str != null && str.startsWith("SYN_")) {
            return true;
        }
        return false;
    }

    private String l(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString("crashlytics.installation.id", null);
    }

    private String m(String str) {
        return str.replaceAll(f20734h, "");
    }

    private boolean n() {
        j0.a aVar = this.f20740f;
        if (aVar != null && (aVar.e() != null || !this.f20739e.d())) {
            return false;
        }
        return true;
    }

    @Override // com.google.firebase.crashlytics.internal.common.j0
    @NonNull
    public synchronized j0.a a() {
        String str;
        if (!n()) {
            return this.f20740f;
        }
        z7.g.f().i("Determining Crashlytics installation ID...");
        SharedPreferences q10 = CommonUtils.q(this.f20736b);
        String string = q10.getString("firebase.installation.id", null);
        z7.g f10 = z7.g.f();
        f10.i("Cached Firebase Installation ID: " + string);
        if (this.f20739e.d()) {
            h0 d10 = d(false);
            z7.g f11 = z7.g.f();
            f11.i("Fetched Firebase Installation ID: " + d10.b());
            if (d10.b() == null) {
                if (string == null) {
                    str = c();
                } else {
                    str = string;
                }
                d10 = new h0(str, null);
            }
            if (Objects.equals(d10.b(), string)) {
                this.f20740f = j0.a.a(l(q10), d10);
            } else {
                this.f20740f = j0.a.a(b(d10.b(), q10), d10);
            }
        } else if (k(string)) {
            this.f20740f = j0.a.b(l(q10));
        } else {
            this.f20740f = j0.a.b(b(c(), q10));
        }
        z7.g f12 = z7.g.f();
        f12.i("Install IDs: " + this.f20740f);
        return this.f20740f;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:1|(7:13|14|4|5|6|7|8)|3|4|5|6|7|8) */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0037, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0038, code lost:
        z7.g.f().l("Error getting Firebase installation id.", r0);
     */
    @androidx.annotation.NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.firebase.crashlytics.internal.common.h0 d(boolean r6) {
        /*
            r5 = this;
            com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers.e()
            r0 = 10000(0x2710, double:4.9407E-320)
            r2 = 0
            if (r6 == 0) goto L26
            x8.e r6 = r5.f20738d     // Catch: java.lang.Exception -> L1c
            r3 = 0
            com.google.android.gms.tasks.Task r6 = r6.a(r3)     // Catch: java.lang.Exception -> L1c
            java.util.concurrent.TimeUnit r3 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Exception -> L1c
            java.lang.Object r6 = com.google.android.gms.tasks.Tasks.await(r6, r0, r3)     // Catch: java.lang.Exception -> L1c
            com.google.firebase.installations.f r6 = (com.google.firebase.installations.f) r6     // Catch: java.lang.Exception -> L1c
            java.lang.String r6 = r6.b()     // Catch: java.lang.Exception -> L1c
            goto L27
        L1c:
            r6 = move-exception
            z7.g r3 = z7.g.f()
            java.lang.String r4 = "Error getting Firebase authentication token."
            r3.l(r4, r6)
        L26:
            r6 = r2
        L27:
            x8.e r3 = r5.f20738d     // Catch: java.lang.Exception -> L37
            com.google.android.gms.tasks.Task r3 = r3.getId()     // Catch: java.lang.Exception -> L37
            java.util.concurrent.TimeUnit r4 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Exception -> L37
            java.lang.Object r0 = com.google.android.gms.tasks.Tasks.await(r3, r0, r4)     // Catch: java.lang.Exception -> L37
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Exception -> L37
            r2 = r0
            goto L41
        L37:
            r0 = move-exception
            z7.g r1 = z7.g.f()
            java.lang.String r3 = "Error getting Firebase installation id."
            r1.l(r3, r0)
        L41:
            com.google.firebase.crashlytics.internal.common.h0 r0 = new com.google.firebase.crashlytics.internal.common.h0
            r0.<init>(r2, r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.crashlytics.internal.common.i0.d(boolean):com.google.firebase.crashlytics.internal.common.h0");
    }

    public String f() {
        return this.f20737c;
    }

    public String g() {
        return this.f20735a.a(this.f20736b);
    }

    public String h() {
        return String.format(Locale.US, "%s/%s", m(Build.MANUFACTURER), m(Build.MODEL));
    }

    public String i() {
        return m(Build.VERSION.INCREMENTAL);
    }

    public String j() {
        return m(Build.VERSION.RELEASE);
    }
}
