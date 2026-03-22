package com.vungle.ads.internal.privacy;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrivacyConsent.kt */
@Metadata
/* loaded from: classes7.dex */
public enum PrivacyConsent {
    OPT_IN("opted_in"),
    OPT_OUT("opted_out");
    
    @NotNull
    private final String value;

    PrivacyConsent(String str) {
        this.value = str;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}
