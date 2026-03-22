package com.unity3d.ads.core.data.manager;

import com.unity3d.ads.core.domain.events.GetTransactionData;
import com.unity3d.services.store.gpbl.BillingResultResponseCode;
import com.unity3d.services.store.gpbl.bridges.BillingResultBridge;
import com.unity3d.services.store.gpbl.bridges.PurchaseBridge;
import com.unity3d.services.store.gpbl.bridges.SkuDetailsBridge;
import gt.g0;
import gt.p;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TransactionEventManager.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.manager.TransactionEventManager$onPurchasesReceived$1", f = "TransactionEventManager.kt", l = {92, 109, 112}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nTransactionEventManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionEventManager.kt\ncom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,122:1\n1549#2:123\n1620#2,3:124\n1864#2,3:127\n1549#2:132\n1620#2,3:133\n37#3,2:130\n*S KotlinDebug\n*F\n+ 1 TransactionEventManager.kt\ncom/unity3d/ads/core/data/manager/TransactionEventManager$onPurchasesReceived$1\n*L\n89#1:123\n89#1:124,3\n90#1:127,3\n100#1:132\n100#1:133,3\n109#1:130,2\n*E\n"})
/* loaded from: classes7.dex */
public final class TransactionEventManager$onPurchasesReceived$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ List<PurchaseBridge> $purchases;
    int I$0;
    int I$1;
    long J$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    final /* synthetic */ TransactionEventManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public TransactionEventManager$onPurchasesReceived$1(List<? extends PurchaseBridge> list, TransactionEventManager transactionEventManager, c<? super TransactionEventManager$onPurchasesReceived$1> cVar) {
        super(2, cVar);
        this.$purchases = list;
        this.this$0 = transactionEventManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokeSuspend$lambda$3$lambda$2(List list, int i10, List list2, TransactionEventManager transactionEventManager, PurchaseBridge purchaseBridge, BillingResultBridge billingResultBridge, List list3) {
        GetTransactionData getTransactionData;
        if (list3 != null && billingResultBridge.getResponseCode() == BillingResultResponseCode.OK) {
            List<SkuDetailsBridge> list4 = list3;
            ArrayList arrayList = new ArrayList(CollectionsKt.z(list4, 10));
            for (SkuDetailsBridge skuDetailsBridge : list4) {
                getTransactionData = transactionEventManager.getTransactionData;
                arrayList.add(getTransactionData.invoke(purchaseBridge, skuDetailsBridge));
            }
            list2.addAll(arrayList);
            ((p) list.get(i10)).i(Unit.f60915a);
            return;
        }
        ((p) list.get(i10)).i(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new TransactionEventManager$onPurchasesReceived$1(this.$purchases, this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((TransactionEventManager$onPurchasesReceived$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0169  */
    /* JADX WARN: Type inference failed for: r14v5, types: [java.util.List] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00d9 -> B:12:0x0051). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r25) {
        /*
            Method dump skipped, instructions count: 394
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.manager.TransactionEventManager$onPurchasesReceived$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
