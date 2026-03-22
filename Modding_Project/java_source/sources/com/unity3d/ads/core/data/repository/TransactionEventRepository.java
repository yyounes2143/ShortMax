package com.unity3d.ads.core.data.repository;

import gatewayprotocol.v1.TransactionEventRequestOuterClass;
import kotlin.Metadata;
import kt.f;
import org.jetbrains.annotations.NotNull;
/* compiled from: TransactionEventRepository.kt */
@Metadata
/* loaded from: classes7.dex */
public interface TransactionEventRepository {
    void addTransactionEvent(@NotNull TransactionEventRequestOuterClass.TransactionEventRequest transactionEventRequest);

    @NotNull
    f<TransactionEventRequestOuterClass.TransactionEventRequest> getTransactionEvents();
}
