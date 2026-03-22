package com.appsflyer;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes2.dex */
public enum AFPurchaseType {
    SUBSCRIPTION("subscription"),
    ONE_TIME_PURCHASE("one_time_purchase");
    
    @NotNull
    private final String value;

    AFPurchaseType(String str) {
        this.value = str;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}
