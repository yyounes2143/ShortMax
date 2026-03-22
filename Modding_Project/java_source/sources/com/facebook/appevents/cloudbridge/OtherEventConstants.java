package com.facebook.appevents.cloudbridge;

import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.MBridgeConstans;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: AppEventsConversionsAPITransformer.kt */
@Metadata
/* loaded from: classes3.dex */
public enum OtherEventConstants {
    EVENT(NotificationCompat.CATEGORY_EVENT),
    ACTION_SOURCE("action_source"),
    APP(MBridgeConstans.DYNAMIC_VIEW_WX_APP),
    MOBILE_APP_INSTALL("MobileAppInstall"),
    INSTALL_EVENT_TIME("install_timestamp");
    
    @NotNull
    private final String rawValue;

    OtherEventConstants(String str) {
        this.rawValue = str;
    }

    @NotNull
    public final String getRawValue() {
        return this.rawValue;
    }
}
