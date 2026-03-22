package p000admanager.d;

import ca.f;
import e.k;
import e.v;
import java.io.Serializable;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import rs.c;
/* renamed from: ad-manager.d.g0  reason: invalid package */
/* loaded from: classes.dex */
public final class g0 extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public Ref.ObjectRef f460h;

    /* renamed from: i  reason: collision with root package name */
    public Object f461i;

    /* renamed from: j  reason: collision with root package name */
    public Serializable f462j;

    /* renamed from: k  reason: collision with root package name */
    public long f463k;

    /* renamed from: l  reason: collision with root package name */
    public int f464l;

    /* renamed from: m  reason: collision with root package name */
    public /* synthetic */ Object f465m;

    /* renamed from: n  reason: collision with root package name */
    public final /* synthetic */ k f466n;

    /* renamed from: o  reason: collision with root package name */
    public final /* synthetic */ f f467o;

    /* renamed from: p  reason: collision with root package name */
    public final /* synthetic */ v f468p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g0(k kVar, f fVar, v vVar, c cVar) {
        super(2, cVar);
        this.f466n = kVar;
        this.f467o = fVar;
        this.f468p = vVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        g0 g0Var = new g0(this.f466n, this.f467o, this.f468p, cVar);
        g0Var.f465m = obj;
        return g0Var;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((g0) create((gt.g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:1|(1:(1:(1:(3:6|7|8)(2:10|11))(10:12|13|14|15|16|(1:18)|19|(1:21)|7|8))(8:29|30|31|32|33|34|35|(1:37)(7:38|16|(0)|19|(0)|7|8)))(11:47|(1:49)(4:73|(2:76|74)|77|78)|50|(3:68|(1:70)(1:72)|71)|53|54|55|56|57|58|(1:60)(5:61|33|34|35|(0)(0)))|44|(1:46)|32|33|34|35|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0228, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0229, code lost:
        r14 = r15;
        r15 = r7;
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0225 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x027a  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x02bf A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x02c4  */
    /* JADX WARN: Type inference failed for: r0v2, types: [T, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r7v8, types: [T, kotlinx.coroutines.r] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r33) {
        /*
            Method dump skipped, instructions count: 709
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000admanager.d.g0.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
