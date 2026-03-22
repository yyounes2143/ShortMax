package com.facebook.appevents.cloudbridge;

import com.applovin.sdk.AppLovinEventTypes;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: AppEventsConversionsAPITransformer.kt */
@Metadata
/* loaded from: classes3.dex */
public enum ConversionsAPICustomEventField {
    VALUE_TO_SUM(AppMeasurementSdk.ConditionalUserProperty.VALUE),
    EVENT_TIME("event_time"),
    EVENT_NAME("event_name"),
    CONTENT_IDS("content_ids"),
    CONTENTS("contents"),
    CONTENT_TYPE("content_type"),
    DESCRIPTION(InMobiNetworkValues.DESCRIPTION),
    LEVEL(AppLovinEventTypes.USER_COMPLETED_LEVEL),
    MAX_RATING_VALUE("max_rating_value"),
    NUM_ITEMS("num_items"),
    PAYMENT_INFO_AVAILABLE("payment_info_available"),
    REGISTRATION_METHOD("registration_method"),
    SEARCH_STRING("search_string"),
    SUCCESS("success"),
    ORDER_ID("order_id"),
    AD_TYPE("ad_type"),
    CURRENCY("currency");
    
    @NotNull
    private final String rawValue;

    ConversionsAPICustomEventField(String str) {
        this.rawValue = str;
    }

    @NotNull
    public final String getRawValue() {
        return this.rawValue;
    }
}
