package com.google.firebase.sessions;

import android.content.Context;
import androidx.datastore.core.DataStore;
import com.google.firebase.sessions.b;
import kotlin.coroutines.CoroutineContext;
/* compiled from: FirebaseSessionsComponent_MainModule_Companion_SessionDataStoreFactory.java */
/* loaded from: classes5.dex */
public final class e implements l9.b<DataStore<i>> {

    /* renamed from: a  reason: collision with root package name */
    private final ls.a<Context> f21609a;

    /* renamed from: b  reason: collision with root package name */
    private final ls.a<CoroutineContext> f21610b;

    /* renamed from: c  reason: collision with root package name */
    private final ls.a<SessionDataSerializer> f21611c;

    public e(ls.a<Context> aVar, ls.a<CoroutineContext> aVar2, ls.a<SessionDataSerializer> aVar3) {
        this.f21609a = aVar;
        this.f21610b = aVar2;
        this.f21611c = aVar3;
    }

    public static e a(ls.a<Context> aVar, ls.a<CoroutineContext> aVar2, ls.a<SessionDataSerializer> aVar3) {
        return new e(aVar, aVar2, aVar3);
    }

    public static DataStore<i> c(Context context, CoroutineContext coroutineContext, SessionDataSerializer sessionDataSerializer) {
        return (DataStore) l9.d.d(b.InterfaceC0313b.f21604a.m(context, coroutineContext, sessionDataSerializer));
    }

    @Override // ls.a
    /* renamed from: b */
    public DataStore<i> get() {
        return c(this.f21609a.get(), this.f21610b.get(), this.f21611c.get());
    }
}
