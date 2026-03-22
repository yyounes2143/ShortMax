package com.google.firebase.crashlytics.internal.common;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.sessions.api.SessionSubscriber;
/* compiled from: CrashlyticsAppQualitySessionsSubscriber.java */
/* loaded from: classes5.dex */
public class l implements SessionSubscriber {

    /* renamed from: a  reason: collision with root package name */
    private final e0 f20747a;

    /* renamed from: b  reason: collision with root package name */
    private final k f20748b;

    public l(e0 e0Var, h8.g gVar) {
        this.f20747a = e0Var;
        this.f20748b = new k(gVar);
    }

    @Override // com.google.firebase.sessions.api.SessionSubscriber
    public boolean a() {
        return this.f20747a.d();
    }

    @Override // com.google.firebase.sessions.api.SessionSubscriber
    @NonNull
    public SessionSubscriber.Name b() {
        return SessionSubscriber.Name.CRASHLYTICS;
    }

    @Override // com.google.firebase.sessions.api.SessionSubscriber
    public void c(@NonNull SessionSubscriber.a aVar) {
        z7.g f10 = z7.g.f();
        f10.b("App Quality Sessions session changed: " + aVar);
        this.f20748b.h(aVar.a());
    }

    @Nullable
    public String d(@NonNull String str) {
        return this.f20748b.c(str);
    }

    public void e(@Nullable String str) {
        this.f20748b.i(str);
    }
}
