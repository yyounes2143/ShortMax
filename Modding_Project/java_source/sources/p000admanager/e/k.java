package p000admanager.e;

import ca.f;
import f.g;
import f.n;
import gt.g0;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import rs.c;
/* renamed from: ad-manager.e.k  reason: invalid package */
/* loaded from: classes.dex */
public final class k extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public int f529h;

    /* renamed from: i  reason: collision with root package name */
    public Iterator f530i;

    /* renamed from: j  reason: collision with root package name */
    public int f531j;

    /* renamed from: k  reason: collision with root package name */
    public final /* synthetic */ g f532k;

    /* renamed from: l  reason: collision with root package name */
    public final /* synthetic */ f f533l;

    /* renamed from: m  reason: collision with root package name */
    public final /* synthetic */ Ref.ObjectRef f534m;

    /* renamed from: n  reason: collision with root package name */
    public final /* synthetic */ n f535n;

    /* renamed from: o  reason: collision with root package name */
    public final /* synthetic */ long f536o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(g gVar, f fVar, Ref.ObjectRef objectRef, n nVar, long j10, c cVar) {
        super(2, cVar);
        this.f532k = gVar;
        this.f533l = fVar;
        this.f534m = objectRef;
        this.f535n = nVar;
        this.f536o = j10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new k(this.f532k, this.f533l, this.f534m, this.f535n, this.f536o, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((k) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0081  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0074 -> B:19:0x0077). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r11.f531j
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L22
            if (r1 == r3) goto L1e
            if (r1 != r2) goto L16
            int r1 = r11.f529h
            java.util.Iterator r4 = r11.f530i
            kotlin.f.b(r12)
            goto L77
        L16:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L1e:
            kotlin.f.b(r12)
            goto L32
        L22:
            kotlin.f.b(r12)
            ca.i r12 = ca.i.f3408a
            r11.f531j = r3
            java.lang.String r1 = "preloadAd"
            java.lang.Object r12 = r12.j(r1, r11)
            if (r12 != r0) goto L32
            return r0
        L32:
            ca.k r4 = ca.k.f3414a
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            java.lang.String r1 = "preloadAd start -> requestAd in sync mode.\n"
            r12.<init>(r1)
            f.g r1 = r11.f532k
            r12.append(r1)
            java.lang.String r5 = r12.toString()
            ca.f r6 = r11.f533l
            r9 = 12
            r10 = 0
            r7 = 0
            r8 = 0
            ca.k.p(r4, r5, r6, r7, r8, r9, r10)
            kotlin.jvm.internal.Ref$ObjectRef r12 = r11.f534m
            T r12 = r12.element
            java.util.List r12 = (java.util.List) r12
            java.util.Iterator r12 = r12.iterator()
            r1 = 0
            r4 = r12
        L5a:
            boolean r12 = r4.hasNext()
            if (r12 == 0) goto L82
            java.lang.Object r12 = r4.next()
            ca.e r12 = (ca.e) r12
            f.n r5 = r11.f535n
            long r6 = r11.f536o
            r11.f530i = r4
            r11.f529h = r1
            r11.f531j = r2
            java.lang.Object r12 = f.n.f(r5, r12, r6, r11)
            if (r12 != r0) goto L77
            return r0
        L77:
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.a.a(r3)
            boolean r12 = kotlin.jvm.internal.Intrinsics.areEqual(r12, r5)
            if (r12 == 0) goto L5a
            int r1 = r1 + r3
        L82:
            ca.k r2 = ca.k.f3414a
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            java.lang.String r0 = "preloadAd end -> loadedCount="
            r12.<init>(r0)
            r12.append(r1)
            java.lang.String r0 = " cached="
            r12.append(r0)
            f.n r0 = r11.f535n
            ca.f r1 = r11.f533l
            f.g r0 = r0.e(r1)
            java.util.ArrayList r0 = r0.f51579a
            r12.append(r0)
            java.lang.String r3 = r12.toString()
            r7 = 14
            r8 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            ca.k.p(r2, r3, r4, r5, r6, r7, r8)
            kotlin.Unit r12 = kotlin.Unit.f60915a
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: p000admanager.e.k.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
