package com.unity3d.ads.core.extensions;

import gatewayprotocol.v1.TransactionEventRequestOuterClass;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: TransactionStateExtensions.kt */
@Metadata
/* loaded from: classes7.dex */
public final class TransactionStateExtensionsKt {
    @NotNull
    public static final TransactionEventRequestOuterClass.TransactionState fromPurchaseState(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    return TransactionEventRequestOuterClass.TransactionState.UNRECOGNIZED;
                }
                return TransactionEventRequestOuterClass.TransactionState.TRANSACTION_STATE_PENDING;
            }
            return TransactionEventRequestOuterClass.TransactionState.TRANSACTION_STATE_UNSPECIFIED;
        }
        return TransactionEventRequestOuterClass.TransactionState.TRANSACTION_STATE_PURCHASED;
    }
}
