package p000admanager.e;

import ca.f;
import f.g;
import f.n;
import gt.g0;
import java.io.Serializable;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import rs.c;
/* renamed from: ad-manager.e.x  reason: invalid package */
/* loaded from: classes.dex */
public final class x extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public Object f575h;

    /* renamed from: i  reason: collision with root package name */
    public Object f576i;

    /* renamed from: j  reason: collision with root package name */
    public Serializable f577j;

    /* renamed from: k  reason: collision with root package name */
    public long f578k;

    /* renamed from: l  reason: collision with root package name */
    public int f579l;

    /* renamed from: m  reason: collision with root package name */
    public /* synthetic */ Object f580m;

    /* renamed from: n  reason: collision with root package name */
    public final /* synthetic */ n f581n;

    /* renamed from: o  reason: collision with root package name */
    public final /* synthetic */ f f582o;

    /* renamed from: p  reason: collision with root package name */
    public final /* synthetic */ g f583p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(n nVar, f fVar, g gVar, c cVar) {
        super(2, cVar);
        this.f581n = nVar;
        this.f582o = fVar;
        this.f583p = gVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        x xVar = new x(this.f581n, this.f582o, this.f583p, cVar);
        xVar.f580m = obj;
        return xVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((x) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x02ae A[RETURN] */
    /* JADX WARN: Type inference failed for: r11v0, types: [T, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v19, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v3, types: [T, kotlinx.coroutines.r] */
    /* JADX WARN: Type inference failed for: r8v13, types: [java.util.List] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r33) {
        /*
            Method dump skipped, instructions count: 690
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000admanager.e.x.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
