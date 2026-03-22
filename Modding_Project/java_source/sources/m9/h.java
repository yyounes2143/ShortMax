package m9;

import androidx.datastore.core.DataStore;
import com.google.firebase.sessions.settings.SettingsCacheImpl;
import j9.m0;
import kotlin.coroutines.CoroutineContext;
/* compiled from: SettingsCacheImpl_Factory.java */
/* loaded from: classes5.dex */
public final class h implements l9.b<SettingsCacheImpl> {

    /* renamed from: a  reason: collision with root package name */
    private final ls.a<CoroutineContext> f62487a;

    /* renamed from: b  reason: collision with root package name */
    private final ls.a<m0> f62488b;

    /* renamed from: c  reason: collision with root package name */
    private final ls.a<DataStore<com.google.firebase.sessions.settings.a>> f62489c;

    public h(ls.a<CoroutineContext> aVar, ls.a<m0> aVar2, ls.a<DataStore<com.google.firebase.sessions.settings.a>> aVar3) {
        this.f62487a = aVar;
        this.f62488b = aVar2;
        this.f62489c = aVar3;
    }

    public static h a(ls.a<CoroutineContext> aVar, ls.a<m0> aVar2, ls.a<DataStore<com.google.firebase.sessions.settings.a>> aVar3) {
        return new h(aVar, aVar2, aVar3);
    }

    public static SettingsCacheImpl c(CoroutineContext coroutineContext, m0 m0Var, DataStore<com.google.firebase.sessions.settings.a> dataStore) {
        return new SettingsCacheImpl(coroutineContext, m0Var, dataStore);
    }

    @Override // ls.a
    /* renamed from: b */
    public SettingsCacheImpl get() {
        return c(this.f62487a.get(), this.f62488b.get(), this.f62489c.get());
    }
}
