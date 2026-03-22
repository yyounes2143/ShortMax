package m9;

import com.google.firebase.sessions.settings.SessionsSettings;
/* compiled from: SessionsSettings_Factory.java */
/* loaded from: classes5.dex */
public final class f implements l9.b<SessionsSettings> {

    /* renamed from: a  reason: collision with root package name */
    private final ls.a<i> f62485a;

    /* renamed from: b  reason: collision with root package name */
    private final ls.a<i> f62486b;

    public f(ls.a<i> aVar, ls.a<i> aVar2) {
        this.f62485a = aVar;
        this.f62486b = aVar2;
    }

    public static f a(ls.a<i> aVar, ls.a<i> aVar2) {
        return new f(aVar, aVar2);
    }

    public static SessionsSettings c(i iVar, i iVar2) {
        return new SessionsSettings(iVar, iVar2);
    }

    @Override // ls.a
    /* renamed from: b */
    public SessionsSettings get() {
        return c(this.f62485a.get(), this.f62486b.get());
    }
}
