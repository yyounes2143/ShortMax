package com.google.firebase.sessions;

import android.content.Context;
import androidx.datastore.core.DataStore;
import com.google.firebase.sessions.b;
import com.google.firebase.sessions.settings.RemoteSettings;
import com.google.firebase.sessions.settings.RemoteSettingsFetcher;
import com.google.firebase.sessions.settings.SessionsSettings;
import com.google.firebase.sessions.settings.SettingsCacheImpl;
import j9.a0;
import j9.e0;
import j9.f0;
import j9.g0;
import j9.i0;
import j9.j0;
import j9.k0;
import j9.l0;
import j9.m0;
import j9.o0;
import j9.r;
import j9.w;
import j9.x;
import kotlin.coroutines.CoroutineContext;
/* compiled from: DaggerFirebaseSessionsComponent.java */
/* loaded from: classes5.dex */
public final class a {

    /* compiled from: DaggerFirebaseSessionsComponent.java */
    /* loaded from: classes5.dex */
    private static final class b implements b.a {

        /* renamed from: a  reason: collision with root package name */
        private Context f21559a;

        /* renamed from: b  reason: collision with root package name */
        private CoroutineContext f21560b;

        /* renamed from: c  reason: collision with root package name */
        private CoroutineContext f21561c;

        /* renamed from: d  reason: collision with root package name */
        private com.google.firebase.f f21562d;

        /* renamed from: e  reason: collision with root package name */
        private x8.e f21563e;

        /* renamed from: f  reason: collision with root package name */
        private w8.b<a5.i> f21564f;

        private b() {
        }

        @Override // com.google.firebase.sessions.b.a
        public com.google.firebase.sessions.b build() {
            l9.d.a(this.f21559a, Context.class);
            l9.d.a(this.f21560b, CoroutineContext.class);
            l9.d.a(this.f21561c, CoroutineContext.class);
            l9.d.a(this.f21562d, com.google.firebase.f.class);
            l9.d.a(this.f21563e, x8.e.class);
            l9.d.a(this.f21564f, w8.b.class);
            return new c(this.f21559a, this.f21560b, this.f21561c, this.f21562d, this.f21563e, this.f21564f);
        }

        @Override // com.google.firebase.sessions.b.a
        /* renamed from: g */
        public b c(Context context) {
            this.f21559a = (Context) l9.d.b(context);
            return this;
        }

        @Override // com.google.firebase.sessions.b.a
        /* renamed from: h */
        public b d(CoroutineContext coroutineContext) {
            this.f21560b = (CoroutineContext) l9.d.b(coroutineContext);
            return this;
        }

        @Override // com.google.firebase.sessions.b.a
        /* renamed from: i */
        public b f(CoroutineContext coroutineContext) {
            this.f21561c = (CoroutineContext) l9.d.b(coroutineContext);
            return this;
        }

        @Override // com.google.firebase.sessions.b.a
        /* renamed from: j */
        public b b(com.google.firebase.f fVar) {
            this.f21562d = (com.google.firebase.f) l9.d.b(fVar);
            return this;
        }

        @Override // com.google.firebase.sessions.b.a
        /* renamed from: k */
        public b a(x8.e eVar) {
            this.f21563e = (x8.e) l9.d.b(eVar);
            return this;
        }

        @Override // com.google.firebase.sessions.b.a
        /* renamed from: l */
        public b e(w8.b<a5.i> bVar) {
            this.f21564f = (w8.b) l9.d.b(bVar);
            return this;
        }
    }

    /* compiled from: DaggerFirebaseSessionsComponent.java */
    /* loaded from: classes5.dex */
    private static final class c implements com.google.firebase.sessions.b {

        /* renamed from: a  reason: collision with root package name */
        private final c f21565a;

        /* renamed from: b  reason: collision with root package name */
        private l9.e<com.google.firebase.f> f21566b;

        /* renamed from: c  reason: collision with root package name */
        private l9.e<Context> f21567c;

        /* renamed from: d  reason: collision with root package name */
        private l9.e<m9.b> f21568d;

        /* renamed from: e  reason: collision with root package name */
        private l9.e<m0> f21569e;

        /* renamed from: f  reason: collision with root package name */
        private l9.e<x8.e> f21570f;

        /* renamed from: g  reason: collision with root package name */
        private l9.e<j9.b> f21571g;

        /* renamed from: h  reason: collision with root package name */
        private l9.e<CoroutineContext> f21572h;

        /* renamed from: i  reason: collision with root package name */
        private l9.e<RemoteSettingsFetcher> f21573i;

        /* renamed from: j  reason: collision with root package name */
        private l9.e<CoroutineContext> f21574j;

        /* renamed from: k  reason: collision with root package name */
        private l9.e<DataStore<com.google.firebase.sessions.settings.a>> f21575k;

        /* renamed from: l  reason: collision with root package name */
        private l9.e<SettingsCacheImpl> f21576l;

        /* renamed from: m  reason: collision with root package name */
        private l9.e<RemoteSettings> f21577m;

        /* renamed from: n  reason: collision with root package name */
        private l9.e<SessionsSettings> f21578n;

        /* renamed from: o  reason: collision with root package name */
        private l9.e<o0> f21579o;

        /* renamed from: p  reason: collision with root package name */
        private l9.e<f0> f21580p;

        /* renamed from: q  reason: collision with root package name */
        private l9.e<w8.b<a5.i>> f21581q;

        /* renamed from: r  reason: collision with root package name */
        private l9.e<j9.f> f21582r;

        /* renamed from: s  reason: collision with root package name */
        private l9.e<SessionFirelogPublisherImpl> f21583s;

        /* renamed from: t  reason: collision with root package name */
        private l9.e<SessionDataSerializer> f21584t;

        /* renamed from: u  reason: collision with root package name */
        private l9.e<DataStore<i>> f21585u;

        /* renamed from: v  reason: collision with root package name */
        private l9.e<w> f21586v;

        /* renamed from: w  reason: collision with root package name */
        private l9.e<SharedSessionRepositoryImpl> f21587w;

        /* renamed from: x  reason: collision with root package name */
        private l9.e<i0> f21588x;

        /* renamed from: y  reason: collision with root package name */
        private l9.e<FirebaseSessions> f21589y;

        private void c(Context context, CoroutineContext coroutineContext, CoroutineContext coroutineContext2, com.google.firebase.f fVar, x8.e eVar, w8.b<a5.i> bVar) {
            this.f21566b = l9.c.a(fVar);
            l9.b a10 = l9.c.a(context);
            this.f21567c = a10;
            this.f21568d = l9.a.a(m9.c.a(a10));
            this.f21569e = l9.a.a(f.a());
            this.f21570f = l9.c.a(eVar);
            this.f21571g = l9.a.a(com.google.firebase.sessions.c.b(this.f21566b));
            l9.b a11 = l9.c.a(coroutineContext2);
            this.f21572h = a11;
            this.f21573i = l9.a.a(m9.d.a(this.f21571g, a11));
            this.f21574j = l9.c.a(coroutineContext);
            l9.e<DataStore<com.google.firebase.sessions.settings.a>> a12 = l9.a.a(d.a(this.f21567c, this.f21572h));
            this.f21575k = a12;
            l9.e<SettingsCacheImpl> a13 = l9.a.a(m9.h.a(this.f21574j, this.f21569e, a12));
            this.f21576l = a13;
            l9.e<RemoteSettings> a14 = l9.a.a(m9.e.a(this.f21569e, this.f21570f, this.f21571g, this.f21573i, a13));
            this.f21577m = a14;
            this.f21578n = l9.a.a(m9.f.a(this.f21568d, a14));
            l9.e<o0> a15 = l9.a.a(g.a());
            this.f21579o = a15;
            this.f21580p = l9.a.a(g0.a(this.f21569e, a15));
            l9.b a16 = l9.c.a(bVar);
            this.f21581q = a16;
            l9.e<j9.f> a17 = l9.a.a(j9.h.a(a16));
            this.f21582r = a17;
            this.f21583s = l9.a.a(e0.a(this.f21566b, this.f21570f, this.f21578n, a17, this.f21574j));
            l9.e<SessionDataSerializer> a18 = l9.a.a(a0.a(this.f21580p));
            this.f21584t = a18;
            this.f21585u = l9.a.a(e.a(this.f21567c, this.f21572h, a18));
            l9.e<w> a19 = l9.a.a(x.a(this.f21567c, this.f21579o));
            this.f21586v = a19;
            l9.e<SharedSessionRepositoryImpl> a20 = l9.a.a(l0.a(this.f21578n, this.f21580p, this.f21583s, this.f21569e, this.f21585u, a19, this.f21574j));
            this.f21587w = a20;
            l9.e<i0> a21 = l9.a.a(j0.a(a20));
            this.f21588x = a21;
            this.f21589y = l9.a.a(r.a(this.f21566b, this.f21578n, this.f21574j, a21));
        }

        @Override // com.google.firebase.sessions.b
        public FirebaseSessions a() {
            return this.f21589y.get();
        }

        @Override // com.google.firebase.sessions.b
        public k0 b() {
            return this.f21587w.get();
        }

        private c(Context context, CoroutineContext coroutineContext, CoroutineContext coroutineContext2, com.google.firebase.f fVar, x8.e eVar, w8.b<a5.i> bVar) {
            this.f21565a = this;
            c(context, coroutineContext, coroutineContext2, fVar, eVar, bVar);
        }
    }

    public static b.a a() {
        return new b();
    }
}
