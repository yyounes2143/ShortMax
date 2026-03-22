package com.google.firebase.sessions;

import com.google.firebase.sessions.b;
/* compiled from: FirebaseSessionsComponent_MainModule_Companion_ApplicationInfoFactory.java */
/* loaded from: classes5.dex */
public final class c implements l9.b<j9.b> {

    /* renamed from: a  reason: collision with root package name */
    private final ls.a<com.google.firebase.f> f21606a;

    public c(ls.a<com.google.firebase.f> aVar) {
        this.f21606a = aVar;
    }

    public static j9.b a(com.google.firebase.f fVar) {
        return (j9.b) l9.d.d(b.InterfaceC0313b.f21604a.e(fVar));
    }

    public static c b(ls.a<com.google.firebase.f> aVar) {
        return new c(aVar);
    }

    @Override // ls.a
    /* renamed from: c */
    public j9.b get() {
        return a(this.f21606a.get());
    }
}
