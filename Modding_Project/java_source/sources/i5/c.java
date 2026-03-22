package i5;

import a5.j;
import c5.p;
import c5.u;
import d5.k;
import java.util.concurrent.Executor;
import java.util.logging.Logger;
import l5.a;
/* compiled from: DefaultScheduler.java */
/* loaded from: classes4.dex */
public class c implements e {

    /* renamed from: f  reason: collision with root package name */
    private static final Logger f53301f = Logger.getLogger(u.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final j5.u f53302a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f53303b;

    /* renamed from: c  reason: collision with root package name */
    private final d5.d f53304c;

    /* renamed from: d  reason: collision with root package name */
    private final k5.d f53305d;

    /* renamed from: e  reason: collision with root package name */
    private final l5.a f53306e;

    public c(Executor executor, d5.d dVar, j5.u uVar, k5.d dVar2, l5.a aVar) {
        this.f53303b = executor;
        this.f53304c = dVar;
        this.f53302a = uVar;
        this.f53305d = dVar2;
        this.f53306e = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object d(p pVar, c5.i iVar) {
        this.f53305d.e(pVar, iVar);
        this.f53302a.a(pVar, 1);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(final p pVar, j jVar, c5.i iVar) {
        try {
            k kVar = this.f53304c.get(pVar.b());
            if (kVar == null) {
                String format = String.format("Transport backend '%s' is not registered", pVar.b());
                f53301f.warning(format);
                jVar.a(new IllegalArgumentException(format));
                return;
            }
            final c5.i a10 = kVar.a(iVar);
            this.f53306e.a(new a.InterfaceC0862a() { // from class: i5.b
                @Override // l5.a.InterfaceC0862a
                public final Object execute() {
                    Object d10;
                    d10 = c.this.d(pVar, a10);
                    return d10;
                }
            });
            jVar.a(null);
        } catch (Exception e10) {
            Logger logger = f53301f;
            logger.warning("Error scheduling event " + e10.getMessage());
            jVar.a(e10);
        }
    }

    @Override // i5.e
    public void a(final p pVar, final c5.i iVar, final j jVar) {
        this.f53303b.execute(new Runnable() { // from class: i5.a
            @Override // java.lang.Runnable
            public final void run() {
                c.this.e(pVar, jVar, iVar);
            }
        });
    }
}
