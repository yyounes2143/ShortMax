package j9;

import androidx.datastore.core.DataStore;
import com.google.firebase.sessions.SharedSessionRepositoryImpl;
import com.google.firebase.sessions.settings.SessionsSettings;
import kotlin.coroutines.CoroutineContext;
/* compiled from: SharedSessionRepositoryImpl_Factory.java */
/* loaded from: classes5.dex */
public final class l0 implements l9.b<SharedSessionRepositoryImpl> {

    /* renamed from: a  reason: collision with root package name */
    private final ls.a<SessionsSettings> f60320a;

    /* renamed from: b  reason: collision with root package name */
    private final ls.a<f0> f60321b;

    /* renamed from: c  reason: collision with root package name */
    private final ls.a<d0> f60322c;

    /* renamed from: d  reason: collision with root package name */
    private final ls.a<m0> f60323d;

    /* renamed from: e  reason: collision with root package name */
    private final ls.a<DataStore<com.google.firebase.sessions.i>> f60324e;

    /* renamed from: f  reason: collision with root package name */
    private final ls.a<s> f60325f;

    /* renamed from: g  reason: collision with root package name */
    private final ls.a<CoroutineContext> f60326g;

    public l0(ls.a<SessionsSettings> aVar, ls.a<f0> aVar2, ls.a<d0> aVar3, ls.a<m0> aVar4, ls.a<DataStore<com.google.firebase.sessions.i>> aVar5, ls.a<s> aVar6, ls.a<CoroutineContext> aVar7) {
        this.f60320a = aVar;
        this.f60321b = aVar2;
        this.f60322c = aVar3;
        this.f60323d = aVar4;
        this.f60324e = aVar5;
        this.f60325f = aVar6;
        this.f60326g = aVar7;
    }

    public static l0 a(ls.a<SessionsSettings> aVar, ls.a<f0> aVar2, ls.a<d0> aVar3, ls.a<m0> aVar4, ls.a<DataStore<com.google.firebase.sessions.i>> aVar5, ls.a<s> aVar6, ls.a<CoroutineContext> aVar7) {
        return new l0(aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7);
    }

    public static SharedSessionRepositoryImpl c(SessionsSettings sessionsSettings, f0 f0Var, d0 d0Var, m0 m0Var, DataStore<com.google.firebase.sessions.i> dataStore, s sVar, CoroutineContext coroutineContext) {
        return new SharedSessionRepositoryImpl(sessionsSettings, f0Var, d0Var, m0Var, dataStore, sVar, coroutineContext);
    }

    @Override // ls.a
    /* renamed from: b */
    public SharedSessionRepositoryImpl get() {
        return c(this.f60320a.get(), this.f60321b.get(), this.f60322c.get(), this.f60323d.get(), this.f60324e.get(), this.f60325f.get(), this.f60326g.get());
    }
}
