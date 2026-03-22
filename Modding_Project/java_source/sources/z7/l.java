package z7;

import d8.p;
import w8.a;
/* compiled from: RemoteConfigDeferredProxy.java */
/* loaded from: classes5.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private final w8.a<h9.a> f71522a;

    public l(w8.a<h9.a> aVar) {
        this.f71522a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(e eVar, w8.b bVar) {
        ((h9.a) bVar.get()).a("firebase", eVar);
        g.f().b("Registering RemoteConfig Rollouts subscriber");
    }

    public void c(p pVar) {
        if (pVar == null) {
            g.f().k("Didn't successfully register with UserMetadata for rollouts listener");
            return;
        }
        final e eVar = new e(pVar);
        this.f71522a.a(new a.InterfaceC0960a() { // from class: z7.k
            @Override // w8.a.InterfaceC0960a
            public final void a(w8.b bVar) {
                l.b(e.this, bVar);
            }
        });
    }
}
