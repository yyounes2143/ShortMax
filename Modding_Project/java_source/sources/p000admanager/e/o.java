package p000admanager.e;

import ca.e;
import ca.k;
import com.hades.aar.admanager.core.AdFormat;
import f.i;
import f.n;
import gt.g0;
import java.util.List;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import rs.c;
/* renamed from: ad-manager.e.o  reason: invalid package */
/* loaded from: classes.dex */
public final class o extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public int f547h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ Ref.ObjectRef f548i;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ n f549j;

    /* renamed from: k  reason: collision with root package name */
    public final /* synthetic */ e f550k;

    /* renamed from: l  reason: collision with root package name */
    public final /* synthetic */ long f551l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(Ref.ObjectRef objectRef, n nVar, e eVar, long j10, c cVar) {
        super(2, cVar);
        this.f548i = objectRef;
        this.f549j = nVar;
        this.f550k = eVar;
        this.f551l = j10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new o(this.f548i, this.f549j, this.f550k, this.f551l, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((o) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [T, java.lang.String] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f547h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            Ref.ObjectRef objectRef = this.f548i;
            n nVar = this.f549j;
            e eVar = this.f550k;
            long j10 = this.f551l;
            this.f547h = 1;
            kotlinx.coroutines.e eVar2 = new kotlinx.coroutines.e(a.c(this), 1);
            eVar2.H();
            fa.c cVar = nVar.f51592a;
            List<AdFormat> t10 = CollectionsKt.t(eVar.f());
            ca.f fVar = new ca.f();
            fVar.v(CollectionsKt.t(eVar));
            Unit unit = Unit.f60915a;
            objectRef.element = cVar.o(t10, fVar, new i(eVar2, nVar, objectRef));
            if (nVar.f51592a.z(eVar)) {
                k.p(k.f3414a, "requestAd start", null, eVar, kotlin.coroutines.jvm.internal.a.e(j10), 2, null);
                nVar.f51592a.K(eVar);
            } else {
                k.m(k.f3414a, "requestAd failed -> filled up", null, eVar, kotlin.coroutines.jvm.internal.a.e(j10), 2, null);
                nVar.k((String) objectRef.element);
                if (!eVar2.isCompleted()) {
                    Result.a aVar = Result.f60901b;
                    eVar2.resumeWith(Result.d(kotlin.coroutines.jvm.internal.a.a(false)));
                }
            }
            obj = eVar2.B();
            if (obj == a.f()) {
                kotlin.coroutines.jvm.internal.f.c(this);
            }
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }
}
