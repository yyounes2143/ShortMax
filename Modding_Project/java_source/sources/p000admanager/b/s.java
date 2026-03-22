package p000admanager.b;

import gt.e;
import gt.g0;
import gt.j1;
import gt.q0;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.TimeoutKt;
import rs.c;
/* renamed from: ad-manager.b.s  reason: invalid package */
/* loaded from: classes.dex */
public final class s extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public Throwable f405h;

    /* renamed from: i  reason: collision with root package name */
    public int f406i;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ long f407j;

    /* renamed from: k  reason: collision with root package name */
    public final /* synthetic */ long f408k;

    /* renamed from: l  reason: collision with root package name */
    public final /* synthetic */ Function0 f409l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(long j10, long j11, Function0 function0, c cVar) {
        super(2, cVar);
        this.f407j = j10;
        this.f408k = j11;
        this.f409l = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new s(this.f407j, this.f408k, this.f409l, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((s) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v6, types: [kotlin.jvm.functions.Function2, ad-manager.b.r] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str = "runAfterCCPAConfigured catch exception -> ";
        Object f10 = a.f();
        int i10 = this.f406i;
        try {
            try {
            } catch (Exception e10) {
                ga.a aVar = ga.a.f52235a;
                aVar.d("CCPAManager", str + e10.getMessage());
                aVar.d("CCPAManager", "runAfterCCPAConfigured end -> runAfterCCPA, cost=" + (System.currentTimeMillis() - this.f408k) + "ms");
                j1 c10 = q0.c();
                r rVar = new r(this.f409l, null);
                this.f406i = 3;
                if (e.g(c10, rVar, this) == f10) {
                    return f10;
                }
            }
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2 && i10 != 3) {
                        if (i10 != 4) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        Throwable th2 = this.f405h;
                        f.b(obj);
                        throw th2;
                    }
                    f.b(obj);
                    return Unit.f60915a;
                }
                f.b(obj);
            } else {
                f.b(obj);
                long j10 = this.f407j;
                q qVar = new q(null);
                this.f406i = 1;
                if (TimeoutKt.e(j10, qVar, this) == f10) {
                    return f10;
                }
            }
            ga.a aVar2 = ga.a.f52235a;
            aVar2.d("CCPAManager", "runAfterCCPAConfigured end -> runAfterCCPA, cost=" + (System.currentTimeMillis() - this.f408k) + "ms");
            j1 c11 = q0.c();
            str = new r(this.f409l, null);
            this.f406i = 2;
            if (e.g(c11, str, this) == f10) {
                return f10;
            }
            return Unit.f60915a;
        } catch (Throwable th3) {
            ga.a aVar3 = ga.a.f52235a;
            aVar3.d("CCPAManager", "runAfterCCPAConfigured end -> runAfterCCPA, cost=" + (System.currentTimeMillis() - this.f408k) + "ms");
            j1 c12 = q0.c();
            r rVar2 = new r(this.f409l, null);
            this.f405h = th3;
            this.f406i = 4;
            if (e.g(c12, rVar2, this) == f10) {
                return f10;
            }
            throw th3;
        }
    }
}
