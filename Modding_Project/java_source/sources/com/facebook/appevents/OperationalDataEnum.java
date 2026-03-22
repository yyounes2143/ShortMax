package com.facebook.appevents;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: OperationalData.kt */
@Metadata
/* loaded from: classes3.dex */
public enum OperationalDataEnum {
    IAPParameters("iap_parameters");
    
    @NotNull
    private final String value;

    OperationalDataEnum(String str) {
        this.value = str;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}
