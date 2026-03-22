package com.unity3d.ads.core.domain.events;

import com.unity3d.ads.core.domain.GetByteStringId;
import com.unity3d.ads.core.extensions.TimestampExtensionsKt;
import com.unity3d.ads.core.extensions.TransactionStateExtensionsKt;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import com.unity3d.services.store.gpbl.bridges.PurchaseBridge;
import com.unity3d.services.store.gpbl.bridges.SkuDetailsBridge;
import gatewayprotocol.v1.TransactionDataKt;
import gatewayprotocol.v1.TransactionEventRequestOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidGetTransactionData.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidGetTransactionData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidGetTransactionData.kt\ncom/unity3d/ads/core/domain/events/AndroidGetTransactionData\n+ 2 TransactionDataKt.kt\ngatewayprotocol/v1/TransactionDataKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,27:1\n10#2:28\n1#3:29\n*S KotlinDebug\n*F\n+ 1 AndroidGetTransactionData.kt\ncom/unity3d/ads/core/domain/events/AndroidGetTransactionData\n*L\n17#1:28\n17#1:29\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidGetTransactionData implements GetTransactionData {
    @NotNull
    private final GetByteStringId getByteStringId;

    public AndroidGetTransactionData(@NotNull GetByteStringId getByteStringId) {
        Intrinsics.checkNotNullParameter(getByteStringId, "getByteStringId");
        this.getByteStringId = getByteStringId;
    }

    @Override // com.unity3d.ads.core.domain.events.GetTransactionData
    @NotNull
    public TransactionEventRequestOuterClass.TransactionData invoke(@NotNull PurchaseBridge purchaseDetail, @NotNull SkuDetailsBridge productDetail) {
        Intrinsics.checkNotNullParameter(purchaseDetail, "purchaseDetail");
        Intrinsics.checkNotNullParameter(productDetail, "productDetail");
        TransactionDataKt.Dsl.Companion companion = TransactionDataKt.Dsl.Companion;
        TransactionEventRequestOuterClass.TransactionData.Builder newBuilder = TransactionEventRequestOuterClass.TransactionData.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        TransactionDataKt.Dsl _create = companion._create(newBuilder);
        _create.setProductId(purchaseDetail.getOriginalJson().get(InAppPurchaseMetaData.KEY_PRODUCT_ID).toString());
        _create.setEventId(this.getByteStringId.invoke());
        Object obj = purchaseDetail.getOriginalJson().get("purchaseTime");
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Long");
        _create.setTimestamp(TimestampExtensionsKt.fromMillis(((Long) obj).longValue()));
        _create.setTransactionId(purchaseDetail.getOriginalJson().get("orderId").toString());
        String jSONObject = productDetail.getOriginalJson().toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject, "productDetail.originalJson.toString()");
        _create.setProduct(jSONObject);
        String jSONObject2 = purchaseDetail.getOriginalJson().toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject2, "purchaseDetail.originalJson.toString()");
        _create.setTransaction(jSONObject2);
        Object obj2 = purchaseDetail.getOriginalJson().get("purchaseState");
        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Int");
        _create.setTransactionState(TransactionStateExtensionsKt.fromPurchaseState(((Integer) obj2).intValue()));
        return _create._build();
    }
}
