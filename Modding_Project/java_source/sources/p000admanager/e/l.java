package p000admanager.e;

import android.os.Handler;
import ca.f;
import ca.k;
import f.n;
import g.c;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* renamed from: ad-manager.e.l  reason: invalid package */
/* loaded from: classes.dex */
public final class l extends Lambda implements Function1 {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ n f537d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ f f538e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(n nVar, f fVar) {
        super(1);
        this.f537d = nVar;
        this.f538e = fVar;
    }

    public static final void b(f fVar, Throwable th2) {
        f.e n10 = fVar.n();
        if (n10 != null) {
            n10.a(null, "invokeOnCompletion exception -> " + th2.getMessage());
        }
        fVar.p();
    }

    public final void d(final Throwable th2) {
        this.f537d.getClass();
        n.h(true);
        if (th2 == null) {
            k.p(k.f3414a, "show OnCompletion", null, null, null, 14, null);
            return;
        }
        k kVar = k.f3414a;
        k.m(kVar, "show OnCompletion exception -> " + th2.getMessage() + ')', null, null, null, 14, null);
        Handler handler = c.f52135a;
        final f fVar = this.f538e;
        c.a(new Runnable() { // from class: f.h
            @Override // java.lang.Runnable
            public final void run() {
                p000admanager.e.l.b(ca.f.this, th2);
            }
        });
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        d((Throwable) obj);
        return Unit.f60915a;
    }
}
