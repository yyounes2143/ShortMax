package j9;

import com.google.firebase.sessions.SessionDataSerializer;
/* compiled from: SessionDataSerializer_Factory.java */
/* loaded from: classes5.dex */
public final class a0 implements l9.b<SessionDataSerializer> {

    /* renamed from: a  reason: collision with root package name */
    private final ls.a<f0> f60243a;

    public a0(ls.a<f0> aVar) {
        this.f60243a = aVar;
    }

    public static a0 a(ls.a<f0> aVar) {
        return new a0(aVar);
    }

    public static SessionDataSerializer c(f0 f0Var) {
        return new SessionDataSerializer(f0Var);
    }

    @Override // ls.a
    /* renamed from: b */
    public SessionDataSerializer get() {
        return c(this.f60243a.get());
    }
}
