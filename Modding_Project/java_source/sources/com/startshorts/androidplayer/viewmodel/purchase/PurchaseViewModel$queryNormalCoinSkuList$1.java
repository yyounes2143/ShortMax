package com.startshorts.androidplayer.viewmodel.purchase;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PurchaseViewModel.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.viewmodel.purchase.PurchaseViewModel$queryNormalCoinSkuList$1", f = "PurchaseViewModel.kt", l = {254}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class PurchaseViewModel$queryNormalCoinSkuList$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49002h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PurchaseViewModel f49003i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f49004j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f49005k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PurchaseViewModel$queryNormalCoinSkuList$1(PurchaseViewModel purchaseViewModel, String str, String str2, c<? super PurchaseViewModel$queryNormalCoinSkuList$1> cVar) {
        super(2, cVar);
        this.f49003i = purchaseViewModel;
        this.f49004j = str;
        this.f49005k = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new PurchaseViewModel$queryNormalCoinSkuList$1(this.f49003i, this.f49004j, this.f49005k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((PurchaseViewModel$queryNormalCoinSkuList$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a7, code lost:
        if (r2.equals("top_up") == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0104, code lost:
        if (r2.equals("top_up_dialog") != false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0106, code lost:
        r1.i0(r3);
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r20) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.viewmodel.purchase.PurchaseViewModel$queryNormalCoinSkuList$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
