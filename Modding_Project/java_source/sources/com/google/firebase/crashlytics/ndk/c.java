package com.google.firebase.crashlytics.ndk;

import android.content.Context;
import androidx.annotation.NonNull;
import e8.g0;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FirebaseCrashlyticsNdk.java */
/* loaded from: classes5.dex */
public class c implements z7.a {

    /* renamed from: e  reason: collision with root package name */
    private static c f20901e;

    /* renamed from: a  reason: collision with root package name */
    private final com.google.firebase.crashlytics.ndk.a f20902a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f20903b;

    /* renamed from: c  reason: collision with root package name */
    private String f20904c;

    /* renamed from: d  reason: collision with root package name */
    private a f20905d;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FirebaseCrashlyticsNdk.java */
    /* loaded from: classes5.dex */
    public interface a {
        void a();
    }

    c(@NonNull com.google.firebase.crashlytics.ndk.a aVar, boolean z10) {
        this.f20902a = aVar;
        this.f20903b = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static c f(@NonNull Context context, boolean z10) {
        c cVar = new c(new com.google.firebase.crashlytics.ndk.a(context, new JniNativeApi(context), new h8.g(context)), z10);
        f20901e = cVar;
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(String str, String str2, long j10, g0 g0Var) {
        z7.g f10 = z7.g.f();
        f10.b("Initializing native session: " + str);
        if (!this.f20902a.k(str, str2, j10, g0Var)) {
            z7.g f11 = z7.g.f();
            f11.k("Failed to initialize Crashlytics NDK for session " + str);
        }
    }

    @Override // z7.a
    @NonNull
    public z7.h a(@NonNull String str) {
        return new g(this.f20902a.d(str));
    }

    @Override // z7.a
    public boolean b() {
        String str = this.f20904c;
        if (str != null && d(str)) {
            return true;
        }
        return false;
    }

    @Override // z7.a
    public synchronized void c(@NonNull final String str, @NonNull final String str2, final long j10, @NonNull final g0 g0Var) {
        this.f20904c = str;
        a aVar = new a() { // from class: com.google.firebase.crashlytics.ndk.b
            @Override // com.google.firebase.crashlytics.ndk.c.a
            public final void a() {
                c.this.g(str, str2, j10, g0Var);
            }
        };
        this.f20905d = aVar;
        if (this.f20903b) {
            aVar.a();
        }
    }

    @Override // z7.a
    public boolean d(@NonNull String str) {
        return this.f20902a.j(str);
    }
}
