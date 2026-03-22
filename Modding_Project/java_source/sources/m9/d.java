package m9;

import com.google.firebase.sessions.settings.RemoteSettingsFetcher;
import kotlin.coroutines.CoroutineContext;
/* compiled from: RemoteSettingsFetcher_Factory.java */
/* loaded from: classes5.dex */
public final class d implements l9.b<RemoteSettingsFetcher> {

    /* renamed from: a  reason: collision with root package name */
    private final ls.a<j9.b> f62478a;

    /* renamed from: b  reason: collision with root package name */
    private final ls.a<CoroutineContext> f62479b;

    public d(ls.a<j9.b> aVar, ls.a<CoroutineContext> aVar2) {
        this.f62478a = aVar;
        this.f62479b = aVar2;
    }

    public static d a(ls.a<j9.b> aVar, ls.a<CoroutineContext> aVar2) {
        return new d(aVar, aVar2);
    }

    public static RemoteSettingsFetcher c(j9.b bVar, CoroutineContext coroutineContext) {
        return new RemoteSettingsFetcher(bVar, coroutineContext);
    }

    @Override // ls.a
    /* renamed from: b */
    public RemoteSettingsFetcher get() {
        return c(this.f62478a.get(), this.f62479b.get());
    }
}
