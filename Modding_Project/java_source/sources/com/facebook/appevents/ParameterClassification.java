package com.facebook.appevents;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: OperationalData.kt */
@Metadata
/* loaded from: classes3.dex */
public enum ParameterClassification {
    CustomData("custom_data"),
    OperationalData("operational_data"),
    CustomAndOperationalData("custom_and_operational_data");
    
    @NotNull
    private final String value;

    ParameterClassification(String str) {
        this.value = str;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}
