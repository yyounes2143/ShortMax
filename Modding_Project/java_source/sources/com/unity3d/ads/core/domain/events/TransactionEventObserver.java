package com.unity3d.ads.core.domain.events;

import com.unity3d.ads.core.data.datasource.ByteStringDataSource;
import com.unity3d.ads.core.data.repository.TransactionEventRepository;
import com.unity3d.ads.core.domain.GetRequestPolicy;
import com.unity3d.ads.core.domain.GetUniversalRequestForPayLoad;
import com.unity3d.ads.gatewayclient.GatewayClient;
import gt.c0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.o;
import kt.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: TransactionEventObserver.kt */
@Metadata
/* loaded from: classes7.dex */
public final class TransactionEventObserver {
    @NotNull
    private final c0 defaultDispatcher;
    @NotNull
    private final GatewayClient gatewayClient;
    @NotNull
    private final GetRequestPolicy getRequestPolicy;
    @NotNull
    private final GetUniversalRequestForPayLoad getUniversalRequestForPayLoad;
    @NotNull
    private final ByteStringDataSource iapTransactionStore;
    @NotNull
    private final e<Boolean> isRunning;
    @NotNull
    private final TransactionEventRepository transactionEventRepository;

    public TransactionEventObserver(@NotNull GetUniversalRequestForPayLoad getUniversalRequestForPayLoad, @NotNull c0 defaultDispatcher, @NotNull TransactionEventRepository transactionEventRepository, @NotNull GatewayClient gatewayClient, @NotNull GetRequestPolicy getRequestPolicy, @NotNull ByteStringDataSource iapTransactionStore) {
        Intrinsics.checkNotNullParameter(getUniversalRequestForPayLoad, "getUniversalRequestForPayLoad");
        Intrinsics.checkNotNullParameter(defaultDispatcher, "defaultDispatcher");
        Intrinsics.checkNotNullParameter(transactionEventRepository, "transactionEventRepository");
        Intrinsics.checkNotNullParameter(gatewayClient, "gatewayClient");
        Intrinsics.checkNotNullParameter(getRequestPolicy, "getRequestPolicy");
        Intrinsics.checkNotNullParameter(iapTransactionStore, "iapTransactionStore");
        this.getUniversalRequestForPayLoad = getUniversalRequestForPayLoad;
        this.defaultDispatcher = defaultDispatcher;
        this.transactionEventRepository = transactionEventRepository;
        this.gatewayClient = gatewayClient;
        this.getRequestPolicy = getRequestPolicy;
        this.iapTransactionStore = iapTransactionStore;
        this.isRunning = o.a(Boolean.FALSE);
    }

    @Nullable
    public final Object invoke(@NotNull c<? super Unit> cVar) {
        Object g10 = gt.e.g(this.defaultDispatcher, new TransactionEventObserver$invoke$2(this, null), cVar);
        if (g10 == a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }
}
