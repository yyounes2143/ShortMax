package m9;

import com.google.firebase.sessions.settings.RemoteSettings;
import j9.m0;
/* compiled from: RemoteSettings_Factory.java */
/* loaded from: classes5.dex */
public final class e implements l9.b<RemoteSettings> {

    /* renamed from: a  reason: collision with root package name */
    private final ls.a<m0> f62480a;

    /* renamed from: b  reason: collision with root package name */
    private final ls.a<x8.e> f62481b;

    /* renamed from: c  reason: collision with root package name */
    private final ls.a<j9.b> f62482c;

    /* renamed from: d  reason: collision with root package name */
    private final ls.a<a> f62483d;

    /* renamed from: e  reason: collision with root package name */
    private final ls.a<g> f62484e;

    public e(ls.a<m0> aVar, ls.a<x8.e> aVar2, ls.a<j9.b> aVar3, ls.a<a> aVar4, ls.a<g> aVar5) {
        this.f62480a = aVar;
        this.f62481b = aVar2;
        this.f62482c = aVar3;
        this.f62483d = aVar4;
        this.f62484e = aVar5;
    }

    public static e a(ls.a<m0> aVar, ls.a<x8.e> aVar2, ls.a<j9.b> aVar3, ls.a<a> aVar4, ls.a<g> aVar5) {
        return new e(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static RemoteSettings c(m0 m0Var, x8.e eVar, j9.b bVar, a aVar, g gVar) {
        return new RemoteSettings(m0Var, eVar, bVar, aVar, gVar);
    }

    @Override // ls.a
    /* renamed from: b */
    public RemoteSettings get() {
        return c(this.f62480a.get(), this.f62481b.get(), this.f62482c.get(), this.f62483d.get(), this.f62484e.get());
    }
}
