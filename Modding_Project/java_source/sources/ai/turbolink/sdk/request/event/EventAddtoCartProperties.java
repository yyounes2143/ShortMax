package ai.turbolink.sdk.request.event;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* compiled from: EventAddtoCartProperties.kt */
@Metadata
/* loaded from: classes.dex */
public final class EventAddtoCartProperties extends JSONObject {
    @NotNull
    public final EventAddtoCartProperties setCurrency(@NotNull String currency) {
        Intrinsics.checkNotNullParameter(currency, "currency");
        put("currency", currency);
        return this;
    }

    @NotNull
    public final EventAddtoCartProperties setPrice(long j10) {
        put("price", j10);
        return this;
    }

    @NotNull
    public final EventAddtoCartProperties setProductId(@NotNull String productId) {
        Intrinsics.checkNotNullParameter(productId, "productId");
        put("product_id", productId);
        return this;
    }

    @NotNull
    public final EventAddtoCartProperties setProductName(@NotNull String productName) {
        Intrinsics.checkNotNullParameter(productName, "productName");
        put("product_name", productName);
        return this;
    }

    @NotNull
    public final EventAddtoCartProperties setProductQuantity(int i10) {
        put("product_quantity", i10);
        return this;
    }

    @NotNull
    public final EventAddtoCartProperties setProductType(@NotNull String productType) {
        Intrinsics.checkNotNullParameter(productType, "productType");
        put("product_type", productType);
        return this;
    }
}
