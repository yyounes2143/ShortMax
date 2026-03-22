package j5;

import java.util.concurrent.Executor;
import l5.a;
/* compiled from: WorkInitializer.java */
/* loaded from: classes4.dex */
public class s {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f60205a;

    /* renamed from: b  reason: collision with root package name */
    private final k5.d f60206b;

    /* renamed from: c  reason: collision with root package name */
    private final u f60207c;

    /* renamed from: d  reason: collision with root package name */
    private final l5.a f60208d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(Executor executor, k5.d dVar, u uVar, l5.a aVar) {
        this.f60205a = executor;
        this.f60206b = dVar;
        this.f60207c = uVar;
        this.f60208d = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object d() {
        for (c5.p pVar : this.f60206b.Q()) {
            this.f60207c.a(pVar, 1);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        this.f60208d.a(new a.InterfaceC0862a() { // from class: j5.r
            @Override // l5.a.InterfaceC0862a
            public final Object execute() {
                Object d10;
                d10 = s.this.d();
                return d10;
            }
        });
    }

    public void c() {
        this.f60205a.execute(new Runnable() { // from class: j5.q
            @Override // java.lang.Runnable
            public final void run() {
                s.this.e();
            }
        });
    }
}
