package j9;

import com.google.firebase.sessions.SessionFirelogPublisherImpl;
import com.google.firebase.sessions.settings.SessionsSettings;
import kotlin.coroutines.CoroutineContext;
/* compiled from: SessionFirelogPublisherImpl_Factory.java */
/* loaded from: classes5.dex */
public final class e0 implements l9.b<SessionFirelogPublisherImpl> {

    /* renamed from: a  reason: collision with root package name */
    private final ls.a<com.google.firebase.f> f60295a;

    /* renamed from: b  reason: collision with root package name */
    private final ls.a<x8.e> f60296b;

    /* renamed from: c  reason: collision with root package name */
    private final ls.a<SessionsSettings> f60297c;

    /* renamed from: d  reason: collision with root package name */
    private final ls.a<g> f60298d;

    /* renamed from: e  reason: collision with root package name */
    private final ls.a<CoroutineContext> f60299e;

    public e0(ls.a<com.google.firebase.f> aVar, ls.a<x8.e> aVar2, ls.a<SessionsSettings> aVar3, ls.a<g> aVar4, ls.a<CoroutineContext> aVar5) {
        this.f60295a = aVar;
        this.f60296b = aVar2;
        this.f60297c = aVar3;
        this.f60298d = aVar4;
        this.f60299e = aVar5;
    }

    public static e0 a(ls.a<com.google.firebase.f> aVar, ls.a<x8.e> aVar2, ls.a<SessionsSettings> aVar3, ls.a<g> aVar4, ls.a<CoroutineContext> aVar5) {
        return new e0(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static SessionFirelogPublisherImpl c(com.google.firebase.f fVar, x8.e eVar, SessionsSettings sessionsSettings, g gVar, CoroutineContext coroutineContext) {
        return new SessionFirelogPublisherImpl(fVar, eVar, sessionsSettings, gVar, coroutineContext);
    }

    @Override // ls.a
    /* renamed from: b */
    public SessionFirelogPublisherImpl get() {
        return c(this.f60295a.get(), this.f60296b.get(), this.f60297c.get(), this.f60298d.get(), this.f60299e.get());
    }
}
