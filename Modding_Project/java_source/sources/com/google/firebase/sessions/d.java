package com.google.firebase.sessions;

import android.content.Context;
import androidx.datastore.core.DataStore;
import com.google.firebase.sessions.b;
import kotlin.coroutines.CoroutineContext;
/* compiled from: FirebaseSessionsComponent_MainModule_Companion_SessionConfigsDataStoreFactory.java */
/* loaded from: classes5.dex */
public final class d implements l9.b<DataStore<com.google.firebase.sessions.settings.a>> {

    /* renamed from: a  reason: collision with root package name */
    private final ls.a<Context> f21607a;

    /* renamed from: b  reason: collision with root package name */
    private final ls.a<CoroutineContext> f21608b;

    public d(ls.a<Context> aVar, ls.a<CoroutineContext> aVar2) {
        this.f21607a = aVar;
        this.f21608b = aVar2;
    }

    public static d a(ls.a<Context> aVar, ls.a<CoroutineContext> aVar2) {
        return new d(aVar, aVar2);
    }

    public static DataStore<com.google.firebase.sessions.settings.a> c(Context context, CoroutineContext coroutineContext) {
        return (DataStore) l9.d.d(b.InterfaceC0313b.f21604a.j(context, coroutineContext));
    }

    @Override // ls.a
    /* renamed from: b */
    public DataStore<com.google.firebase.sessions.settings.a> get() {
        return c(this.f21607a.get(), this.f21608b.get());
    }
}
