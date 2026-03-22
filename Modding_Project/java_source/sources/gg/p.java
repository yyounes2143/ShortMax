package gg;

import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* compiled from: FakeBillingOriginalObject.kt */
@Metadata
/* loaded from: classes7.dex */
public final class p {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final p f52356a = new p();

    private p() {
    }

    @NotNull
    public final JSONObject a(@NotNull String skuId) {
        Intrinsics.checkNotNullParameter(skuId, "skuId");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(InAppPurchaseMetaData.KEY_PRODUCT_ID, skuId);
        return jSONObject;
    }
}
