package com.unity3d.ads.core.data.manager;

import com.unity3d.ads.core.data.model.exception.TransactionException;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.services.store.StoreMonitor;
import com.unity3d.services.store.gpbl.BillingResultResponseCode;
import com.unity3d.services.store.gpbl.bridges.BillingResultBridge;
import com.unity3d.services.store.gpbl.bridges.PurchaseBridge;
import com.unity3d.services.store.gpbl.listeners.BillingInitializationListener;
import com.unity3d.services.store.gpbl.listeners.PurchasesResponseListener;
import gt.g0;
import gt.i;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TransactionEventManager.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.manager.TransactionEventManager$invoke$1", f = "TransactionEventManager.kt", l = {123}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nTransactionEventManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionEventManager.kt\ncom/unity3d/ads/core/data/manager/TransactionEventManager$invoke$1\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,122:1\n314#2,11:123\n*S KotlinDebug\n*F\n+ 1 TransactionEventManager.kt\ncom/unity3d/ads/core/data/manager/TransactionEventManager$invoke$1\n*L\n39#1:123,11\n*E\n"})
/* loaded from: classes7.dex */
public final class TransactionEventManager$invoke$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ TransactionEventManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransactionEventManager$invoke$1(TransactionEventManager transactionEventManager, c<? super TransactionEventManager$invoke$1> cVar) {
        super(2, cVar);
        this.this$0 = transactionEventManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new TransactionEventManager$invoke$1(this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((TransactionEventManager$invoke$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        SendDiagnosticEvent sendDiagnosticEvent;
        StoreMonitor storeMonitor;
        StoreMonitor storeMonitor2;
        StoreMonitor storeMonitor3;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        try {
        } catch (Exception unused) {
            sendDiagnosticEvent = this.this$0.sendDiagnosticEvent;
            SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, "billing_service_unavailable", null, null, null, null, null, 62, null);
        }
        if (i10 != 0) {
            if (i10 == 1) {
                TransactionEventManager transactionEventManager = (TransactionEventManager) this.L$0;
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            storeMonitor = this.this$0.storeMonitor;
            if (!storeMonitor.isInitialized()) {
                final TransactionEventManager transactionEventManager2 = this.this$0;
                this.L$0 = transactionEventManager2;
                this.label = 1;
                final e eVar = new e(kotlin.coroutines.intrinsics.a.c(this), 1);
                eVar.H();
                storeMonitor2 = transactionEventManager2.storeMonitor;
                storeMonitor2.initialize(new BillingInitializationListener() { // from class: com.unity3d.ads.core.data.manager.TransactionEventManager$invoke$1$1$1
                    private final void tryResume() {
                        if (eVar.isActive()) {
                            i<Unit> iVar = eVar;
                            Result.a aVar = Result.f60901b;
                            iVar.resumeWith(Result.d(Unit.f60915a));
                        }
                    }

                    private final void tryResumeWithException(Exception exc) {
                        if (eVar.isActive()) {
                            i<Unit> iVar = eVar;
                            Result.a aVar = Result.f60901b;
                            iVar.resumeWith(Result.d(f.a(exc)));
                        }
                    }

                    @Override // com.unity3d.services.store.gpbl.listeners.BillingClientStateListener
                    public void onBillingServiceDisconnected() {
                        tryResumeWithException(new TransactionException("Billing service disconnected"));
                    }

                    @Override // com.unity3d.services.store.gpbl.listeners.BillingClientStateListener
                    public void onBillingSetupFinished(@NotNull BillingResultBridge billingResult) {
                        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
                        if (billingResult.getResponseCode() != BillingResultResponseCode.OK) {
                            tryResumeWithException(new TransactionException("Billing setup failed"));
                        } else {
                            tryResume();
                        }
                    }

                    @Override // com.unity3d.services.store.gpbl.listeners.BillingInitializationListener
                    public void onIsAlreadyInitialized() {
                        tryResume();
                    }

                    @Override // com.unity3d.services.store.gpbl.listeners.PurchaseUpdatedResponseListener
                    public void onPurchaseUpdated(@NotNull BillingResultBridge billingResult, @Nullable List<? extends PurchaseBridge> list) {
                        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
                        transactionEventManager2.onPurchasesReceived(billingResult, list);
                    }
                });
                Object B = eVar.B();
                if (B == kotlin.coroutines.intrinsics.a.f()) {
                    kotlin.coroutines.jvm.internal.f.c(this);
                }
                if (B == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
        storeMonitor3 = this.this$0.storeMonitor;
        final TransactionEventManager transactionEventManager3 = this.this$0;
        storeMonitor3.getPurchases(42, "inapp", new PurchasesResponseListener() { // from class: com.unity3d.ads.core.data.manager.a
            @Override // com.unity3d.services.store.gpbl.listeners.PurchasesResponseListener
            public final void onPurchaseResponse(BillingResultBridge billingResultBridge, List list) {
                TransactionEventManager.access$onPurchasesReceived(TransactionEventManager.this, billingResultBridge, list);
            }
        });
        return Unit.f60915a;
    }
}
