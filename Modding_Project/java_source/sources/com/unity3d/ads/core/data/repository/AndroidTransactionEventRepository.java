package com.unity3d.ads.core.data.repository;

import gatewayprotocol.v1.TransactionEventRequestOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.c;
import kt.d;
import kt.f;
import kt.g;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidTransactionEventRepository.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AndroidTransactionEventRepository implements TransactionEventRepository {
    @NotNull
    private final d<TransactionEventRequestOuterClass.TransactionEventRequest> _transactionEvents;
    @NotNull
    private final f<TransactionEventRequestOuterClass.TransactionEventRequest> transactionEvents;

    public AndroidTransactionEventRepository() {
        d<TransactionEventRequestOuterClass.TransactionEventRequest> a10 = g.a(10, 10, BufferOverflow.DROP_OLDEST);
        this._transactionEvents = a10;
        this.transactionEvents = c.c(a10);
    }

    @Override // com.unity3d.ads.core.data.repository.TransactionEventRepository
    public void addTransactionEvent(@NotNull TransactionEventRequestOuterClass.TransactionEventRequest transactionEventRequest) {
        Intrinsics.checkNotNullParameter(transactionEventRequest, "transactionEventRequest");
        this._transactionEvents.g(transactionEventRequest);
    }

    @Override // com.unity3d.ads.core.data.repository.TransactionEventRepository
    @NotNull
    public f<TransactionEventRequestOuterClass.TransactionEventRequest> getTransactionEvents() {
        return this.transactionEvents;
    }
}
