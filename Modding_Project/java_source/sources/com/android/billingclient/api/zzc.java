package com.android.billingclient.api;

import androidx.annotation.Nullable;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.util.Objects;
import org.json.JSONObject;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public final class zzc {

    /* renamed from: a  reason: collision with root package name */
    private final String f6701a;

    /* renamed from: b  reason: collision with root package name */
    private final String f6702b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String f6703c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzc(JSONObject jSONObject, zzd zzdVar) {
        this.f6701a = jSONObject.optString(InAppPurchaseMetaData.KEY_PRODUCT_ID);
        this.f6702b = jSONObject.optString("productType");
        String optString = jSONObject.optString("offerToken");
        this.f6703c = true == optString.isEmpty() ? null : optString;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzc)) {
            return false;
        }
        zzc zzcVar = (zzc) obj;
        if (this.f6701a.equals(zzcVar.f6701a) && this.f6702b.equals(zzcVar.f6702b) && Objects.equals(this.f6703c, zzcVar.f6703c)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f6701a, this.f6702b, this.f6703c);
    }

    public final String toString() {
        return String.format("{id: %s, type: %s, offer token: %s}", this.f6701a, this.f6702b, this.f6703c);
    }
}
