package p000admanager.d;

import android.os.Handler;
import ca.f;
import e.k;
import g.c;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* renamed from: ad-manager.d.s  reason: invalid package */
/* loaded from: classes.dex */
public final class s extends Lambda implements Function1 {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ k f492d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ f f493e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(k kVar, f fVar) {
        super(1);
        this.f492d = kVar;
        this.f493e = fVar;
    }

    public static final void b(f fVar, Throwable th2) {
        f.e n10 = fVar.n();
        if (n10 != null) {
            n10.a(null, "invokeOnCompletion exception -> " + th2.getMessage());
        }
        fVar.p();
    }

    public final void d(final Throwable th2) {
        this.f492d.getClass();
        k.i(true);
        if (th2 == null) {
            ca.k.p(ca.k.f3414a, "show OnCompletion", null, null, null, 14, null);
            return;
        }
        ca.k kVar = ca.k.f3414a;
        ca.k.m(kVar, "show OnCompletion exception -> " + th2.getMessage() + ')', null, null, null, 14, null);
        Handler handler = c.f52135a;
        final f fVar = this.f493e;
        c.a(new Runnable() { // from class: e.z
            @Override // java.lang.Runnable
            public final void run() {
                p000admanager.d.s.b(ca.f.this, th2);
            }
        });
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        d((Throwable) obj);
        return Unit.f60915a;
    }
}
