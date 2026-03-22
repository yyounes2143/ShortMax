package p000admanager.d;

import ca.e;
import com.hades.aar.admanager.core.AdFormat;
import e.k;
import e.l0;
import e.t;
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
/* renamed from: ad-manager.d.w  reason: invalid package */
/* loaded from: classes.dex */
public final class w extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public int f502h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ Ref.ObjectRef f503i;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ k f504j;

    /* renamed from: k  reason: collision with root package name */
    public final /* synthetic */ e f505k;

    /* renamed from: l  reason: collision with root package name */
    public final /* synthetic */ long f506l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(Ref.ObjectRef objectRef, k kVar, e eVar, long j10, c cVar) {
        super(2, cVar);
        this.f503i = objectRef;
        this.f504j = kVar;
        this.f505k = eVar;
        this.f506l = j10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new w(this.f503i, this.f504j, this.f505k, this.f506l, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((w) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [T, java.lang.String] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f502h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            Ref.ObjectRef objectRef = this.f503i;
            k kVar = this.f504j;
            e eVar = this.f505k;
            long j10 = this.f506l;
            this.f502h = 1;
            kotlinx.coroutines.e eVar2 = new kotlinx.coroutines.e(a.c(this), 1);
            eVar2.H();
            t tVar = kVar.f50656b;
            List<AdFormat> t10 = CollectionsKt.t(eVar.f());
            ca.f fVar = new ca.f();
            fVar.v(CollectionsKt.t(eVar));
            Unit unit = Unit.f60915a;
            objectRef.element = tVar.o(t10, fVar, new l0(eVar2, kVar, objectRef));
            if (kVar.f50656b.z(eVar)) {
                ca.k.p(ca.k.f3414a, "requestAd start", null, eVar, kotlin.coroutines.jvm.internal.a.e(j10), 2, null);
                kVar.f50656b.K(eVar);
            } else {
                ca.k.m(ca.k.f3414a, "requestAd failed -> filled up", null, eVar, kotlin.coroutines.jvm.internal.a.e(j10), 2, null);
                String str = (String) objectRef.element;
                ga.a aVar = ga.a.f52235a;
                aVar.d("AdEventHandler", "removeRequest -> requestId " + str);
                t tVar2 = kVar.f50656b;
                if (str == null) {
                    str = "";
                }
                tVar2.O(str);
                if (!eVar2.isCompleted()) {
                    Result.a aVar2 = Result.f60901b;
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
