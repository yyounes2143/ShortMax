package j9;

import com.google.firebase.sessions.FirebaseSessions;
import com.google.firebase.sessions.settings.SessionsSettings;
import kotlin.coroutines.CoroutineContext;
/* compiled from: FirebaseSessions_Factory.java */
/* loaded from: classes5.dex */
public final class r implements l9.b<FirebaseSessions> {

    /* renamed from: a  reason: collision with root package name */
    private final ls.a<com.google.firebase.f> f60332a;

    /* renamed from: b  reason: collision with root package name */
    private final ls.a<SessionsSettings> f60333b;

    /* renamed from: c  reason: collision with root package name */
    private final ls.a<CoroutineContext> f60334c;

    /* renamed from: d  reason: collision with root package name */
    private final ls.a<i0> f60335d;

    public r(ls.a<com.google.firebase.f> aVar, ls.a<SessionsSettings> aVar2, ls.a<CoroutineContext> aVar3, ls.a<i0> aVar4) {
        this.f60332a = aVar;
        this.f60333b = aVar2;
        this.f60334c = aVar3;
        this.f60335d = aVar4;
    }

    public static r a(ls.a<com.google.firebase.f> aVar, ls.a<SessionsSettings> aVar2, ls.a<CoroutineContext> aVar3, ls.a<i0> aVar4) {
        return new r(aVar, aVar2, aVar3, aVar4);
    }

    public static FirebaseSessions c(com.google.firebase.f fVar, SessionsSettings sessionsSettings, CoroutineContext coroutineContext, i0 i0Var) {
        return new FirebaseSessions(fVar, sessionsSettings, coroutineContext, i0Var);
    }

    @Override // ls.a
    /* renamed from: b */
    public FirebaseSessions get() {
        return c(this.f60332a.get(), this.f60333b.get(), this.f60334c.get(), this.f60335d.get());
    }
}
