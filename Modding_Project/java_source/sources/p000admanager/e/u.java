package p000admanager.e;

import ca.e;
import ca.f;
import f.k;
import gt.g0;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.r;
import rs.c;
/* renamed from: ad-manager.e.u  reason: invalid package */
/* loaded from: classes.dex */
public final class u extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public int f563h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ f f564i;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ Ref.ObjectRef f565j;

    /* renamed from: k  reason: collision with root package name */
    public final /* synthetic */ r f566k;

    /* renamed from: l  reason: collision with root package name */
    public final /* synthetic */ Ref.ObjectRef f567l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(f fVar, Ref.ObjectRef objectRef, r rVar, Ref.ObjectRef objectRef2, c cVar) {
        super(2, cVar);
        this.f564i = fVar;
        this.f565j = objectRef;
        this.f566k = rVar;
        this.f567l = objectRef2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new u(this.f564i, this.f565j, this.f566k, this.f567l, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((u) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kt.f fVar;
        Object f10 = a.f();
        int i10 = this.f563h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            ArrayList arrayList = new ArrayList();
            for (e eVar : this.f564i.f()) {
                arrayList.add(eVar.e());
            }
            da.f.f50275i.getClass();
            fVar = da.f.f50278l;
            k kVar = new k(fVar, arrayList);
            q qVar = new q(this.f565j, this.f566k, this.f567l, null);
            this.f563h = 1;
            if (kotlinx.coroutines.flow.c.m(kVar, qVar, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
