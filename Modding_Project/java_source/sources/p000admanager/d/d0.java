package p000admanager.d;

import ca.f;
import e.k;
import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import rs.c;
/* renamed from: ad-manager.d.d0  reason: invalid package */
/* loaded from: classes.dex */
public final class d0 extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public /* synthetic */ Object f449h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ k f450i;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ f f451j;

    /* renamed from: k  reason: collision with root package name */
    public final /* synthetic */ Ref.ObjectRef f452k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d0(k kVar, f fVar, Ref.ObjectRef objectRef, c cVar) {
        super(2, cVar);
        this.f450i = kVar;
        this.f451j = fVar;
        this.f452k = objectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        d0 d0Var = new d0(this.f450i, this.f451j, this.f452k, cVar);
        d0Var.f449h = obj;
        return d0Var;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((d0) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:88:0x0163 A[EDGE_INSN: B:88:0x0163->B:68:0x0163 ?: BREAK  , SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 519
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000admanager.d.d0.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
