package com.unity3d.ads.core.data.manager;

import com.unity3d.ads.core.data.datasource.ByteStringDataSource;
import com.unity3d.ads.core.data.repository.TransactionEventRepository;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.domain.events.GetTransactionData;
import com.unity3d.ads.core.domain.events.GetTransactionRequest;
import com.unity3d.services.store.StoreMonitor;
import com.unity3d.services.store.gpbl.BillingResultResponseCode;
import com.unity3d.services.store.gpbl.bridges.BillingResultBridge;
import com.unity3d.services.store.gpbl.bridges.PurchaseBridge;
import gt.g;
import gt.g0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TransactionEventManager.kt */
@Metadata
/* loaded from: classes7.dex */
public final class TransactionEventManager {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String INAPP = "inapp";
    private static final int dummyOperationId = 42;
    @NotNull
    private final GetTransactionData getTransactionData;
    @NotNull
    private final GetTransactionRequest getTransactionRequest;
    @NotNull
    private final ByteStringDataSource iapTransactionStore;
    @NotNull
    private final g0 scope;
    @NotNull
    private final SendDiagnosticEvent sendDiagnosticEvent;
    @NotNull
    private final StoreMonitor storeMonitor;
    @NotNull
    private final TransactionEventRepository transactionEventRepository;

    /* compiled from: TransactionEventManager.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public TransactionEventManager(@NotNull g0 scope, @NotNull StoreMonitor storeMonitor, @NotNull GetTransactionData getTransactionData, @NotNull GetTransactionRequest getTransactionRequest, @NotNull TransactionEventRepository transactionEventRepository, @NotNull ByteStringDataSource iapTransactionStore, @NotNull SendDiagnosticEvent sendDiagnosticEvent) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(storeMonitor, "storeMonitor");
        Intrinsics.checkNotNullParameter(getTransactionData, "getTransactionData");
        Intrinsics.checkNotNullParameter(getTransactionRequest, "getTransactionRequest");
        Intrinsics.checkNotNullParameter(transactionEventRepository, "transactionEventRepository");
        Intrinsics.checkNotNullParameter(iapTransactionStore, "iapTransactionStore");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        this.scope = scope;
        this.storeMonitor = storeMonitor;
        this.getTransactionData = getTransactionData;
        this.getTransactionRequest = getTransactionRequest;
        this.transactionEventRepository = transactionEventRepository;
        this.iapTransactionStore = iapTransactionStore;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onPurchasesReceived(BillingResultBridge billingResultBridge, List<? extends PurchaseBridge> list) {
        List<? extends PurchaseBridge> list2;
        if (billingResultBridge.getResponseCode() == BillingResultResponseCode.OK && (list2 = list) != null && !list2.isEmpty()) {
            g.d(this.scope, null, null, new TransactionEventManager$onPurchasesReceived$1(list, this, null), 3, null);
        }
    }

    public final void invoke() {
        g.d(this.scope, null, null, new TransactionEventManager$invoke$1(this, null), 3, null);
    }
}
