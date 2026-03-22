package com.bytedance.sdk.openadsdk.core.dLZ.oJ;

import androidx.annotation.NonNull;
/* loaded from: classes3.dex */
public enum oJ {
    XML_PARSING_ERROR(100),
    SCHEMA_VALIDATION_ERROR(101),
    WRAPPER_TIMEOUT(301),
    NO_ADS_VAST_RESPONSE(303),
    GENERAL_LINEAR_AD_ERROR(400),
    GENERAL_COMPANION_AD_ERROR(600),
    UNDEFINED_ERROR(900);
    

    /* renamed from: so  reason: collision with root package name */
    private final int f13139so;

    oJ(int i10) {
        this.f13139so = i10;
    }

    @NonNull
    public String oJ() {
        return String.valueOf(this.f13139so);
    }
}
