package com.shorttv.aar.billing.core;

import gt.g0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
import zc.g;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BillingClient.kt */
@Metadata
@d(c = "com.shorttv.aar.billing.core.BillingClient$queryProductDetails$1", f = "BillingClient.kt", l = {348, 352}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nBillingClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BillingClient.kt\ncom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,617:1\n1863#2,2:618\n*S KotlinDebug\n*F\n+ 1 BillingClient.kt\ncom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1\n*L\n339#1:618,2\n*E\n"})
/* loaded from: classes6.dex */
public final class BillingClient$queryProductDetails$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f37020h;

    /* renamed from: i  reason: collision with root package name */
    Object f37021i;

    /* renamed from: j  reason: collision with root package name */
    int f37022j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ List<g> f37023k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ BillingClient f37024l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ String f37025m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BillingClient$queryProductDetails$1(List<g> list, BillingClient billingClient, String str, c<? super BillingClient$queryProductDetails$1> cVar) {
        super(2, cVar);
        this.f37023k = list;
        this.f37024l = billingClient;
        this.f37025m = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new BillingClient$queryProductDetails$1(this.f37023k, this.f37024l, this.f37025m, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((BillingClient$queryProductDetails$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009a  */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.util.List] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r8.f37022j
            java.lang.String r2 = "inapp"
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L2d
            if (r1 == r4) goto L21
            if (r1 != r3) goto L19
            java.lang.Object r0 = r8.f37020h
            java.util.List r0 = (java.util.List) r0
            kotlin.f.b(r9)
            goto Lab
        L19:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L21:
            java.lang.Object r1 = r8.f37021i
            java.util.List r1 = (java.util.List) r1
            java.lang.Object r4 = r8.f37020h
            java.util.List r4 = (java.util.List) r4
            kotlin.f.b(r9)
            goto L7c
        L2d:
            kotlin.f.b(r9)
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.List<zc.g> r5 = r8.f37023k
            java.lang.Iterable r5 = (java.lang.Iterable) r5
            java.util.Iterator r5 = r5.iterator()
        L42:
            boolean r6 = r5.hasNext()
            if (r6 == 0) goto L60
            java.lang.Object r6 = r5.next()
            zc.g r6 = (zc.g) r6
            java.lang.String r7 = r6.b()
            boolean r7 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r2)
            if (r7 == 0) goto L5c
            r9.add(r6)
            goto L42
        L5c:
            r1.add(r6)
            goto L42
        L60:
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            boolean r6 = r9.isEmpty()
            if (r6 != 0) goto L8f
            com.shorttv.aar.billing.core.BillingClient r6 = r8.f37024l
            r8.f37020h = r1
            r8.f37021i = r5
            r8.f37022j = r4
            java.lang.Object r9 = com.shorttv.aar.billing.core.BillingClient.s(r6, r9, r8)
            if (r9 != r0) goto L7a
            return r0
        L7a:
            r4 = r1
            r1 = r5
        L7c:
            zc.i r9 = (zc.i) r9
            zc.h r5 = new zc.h
            com.shorttv.aar.billing.bean.ErrorCode r6 = r9.a()
            java.util.List r9 = r9.b()
            r5.<init>(r6, r2, r9)
            r1.add(r5)
            goto L91
        L8f:
            r4 = r1
            r1 = r5
        L91:
            r9 = r4
            java.util.Collection r9 = (java.util.Collection) r9
            boolean r9 = r9.isEmpty()
            if (r9 != 0) goto Lc1
            com.shorttv.aar.billing.core.BillingClient r9 = r8.f37024l
            r8.f37020h = r1
            r2 = 0
            r8.f37021i = r2
            r8.f37022j = r3
            java.lang.Object r9 = com.shorttv.aar.billing.core.BillingClient.s(r9, r4, r8)
            if (r9 != r0) goto Laa
            return r0
        Laa:
            r0 = r1
        Lab:
            zc.i r9 = (zc.i) r9
            zc.h r1 = new zc.h
            com.shorttv.aar.billing.bean.ErrorCode r2 = r9.a()
            java.lang.String r3 = "subs"
            java.util.List r9 = r9.b()
            r1.<init>(r2, r3, r9)
            r0.add(r1)
            r1 = r0
        Lc1:
            com.shorttv.aar.billing.core.BillingClient r9 = r8.f37024l
            java.lang.String r0 = r8.f37025m
            com.shorttv.aar.billing.core.BillingClient.w(r9, r0, r1)
            kotlin.Unit r9 = kotlin.Unit.f60915a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.shorttv.aar.billing.core.BillingClient$queryProductDetails$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
