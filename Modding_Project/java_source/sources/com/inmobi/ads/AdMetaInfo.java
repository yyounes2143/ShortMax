package com.inmobi.ads;

import com.inmobi.media.C3248y0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@Metadata
/* loaded from: classes5.dex */
public final class AdMetaInfo {

    /* renamed from: a  reason: collision with root package name */
    public final String f23370a;

    /* renamed from: b  reason: collision with root package name */
    public final JSONObject f23371b;

    public AdMetaInfo(@NotNull String creativeID, @Nullable JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(creativeID, "creativeID");
        this.f23370a = creativeID;
        this.f23371b = jSONObject;
    }

    public final double getBid() {
        JSONObject jSONObject = this.f23371b;
        if (jSONObject != null) {
            return jSONObject.optDouble(C3248y0.BUYER_PRICE);
        }
        return 0.0d;
    }

    @NotNull
    public final JSONObject getBidInfo() {
        JSONObject jSONObject = this.f23371b;
        if (jSONObject == null) {
            return new JSONObject();
        }
        return jSONObject;
    }

    @Nullable
    public final String getBidKeyword() {
        JSONObject jSONObject = this.f23371b;
        if (jSONObject != null) {
            return jSONObject.optString("bidKeyword");
        }
        return null;
    }

    @NotNull
    public final String getCreativeID() {
        return this.f23370a;
    }
}
