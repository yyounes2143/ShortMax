package com.unity3d.ads.core.domain.events;

import gatewayprotocol.v1.TransactionEventRequestOuterClass;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: GetTransactionRequest.kt */
@Metadata
/* loaded from: classes7.dex */
public interface GetTransactionRequest {
    @Nullable
    Object invoke(@NotNull List<TransactionEventRequestOuterClass.TransactionData> list, @NotNull c<? super TransactionEventRequestOuterClass.TransactionEventRequest> cVar);
}
