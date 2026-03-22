package com.facebook.appevents.cloudbridge;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: AppEventsConversionsAPITransformer.kt */
@Metadata
/* loaded from: classes3.dex */
public enum ConversionsAPISection {
    USER_DATA("user_data"),
    APP_DATA("app_data"),
    CUSTOM_DATA("custom_data"),
    CUSTOM_EVENTS("custom_events");
    
    @NotNull
    private final String rawValue;

    ConversionsAPISection(String str) {
        this.rawValue = str;
    }

    @NotNull
    public final String getRawValue() {
        return this.rawValue;
    }
}
