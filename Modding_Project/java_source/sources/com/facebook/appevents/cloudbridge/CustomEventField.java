package com.facebook.appevents.cloudbridge;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AppEventsConversionsAPITransformer.kt */
@Metadata
/* loaded from: classes3.dex */
public enum CustomEventField {
    EVENT_TIME("_logTime"),
    EVENT_NAME("_eventName"),
    VALUE_TO_SUM("_valueToSum"),
    CONTENT_IDS("fb_content_id"),
    CONTENTS("fb_content"),
    CONTENT_TYPE("fb_content_type"),
    DESCRIPTION("fb_description"),
    LEVEL("fb_level"),
    MAX_RATING_VALUE("fb_max_rating_value"),
    NUM_ITEMS("fb_num_items"),
    PAYMENT_INFO_AVAILABLE("fb_payment_info_available"),
    REGISTRATION_METHOD("fb_registration_method"),
    SEARCH_STRING("fb_search_string"),
    SUCCESS("fb_success"),
    ORDER_ID("fb_order_id"),
    AD_TYPE("ad_type"),
    CURRENCY("fb_currency");
    
    @NotNull
    public static final a Companion = new a(null);
    @NotNull
    private final String rawValue;

    /* compiled from: AppEventsConversionsAPITransformer.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nAppEventsConversionsAPITransformer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppEventsConversionsAPITransformer.kt\ncom/facebook/appevents/cloudbridge/CustomEventField$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,713:1\n1282#2,2:714\n*S KotlinDebug\n*F\n+ 1 AppEventsConversionsAPITransformer.kt\ncom/facebook/appevents/cloudbridge/CustomEventField$Companion\n*L\n44#1:714,2\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final CustomEventField a(@NotNull String rawValue) {
            CustomEventField[] values;
            Intrinsics.checkNotNullParameter(rawValue, "rawValue");
            for (CustomEventField customEventField : CustomEventField.values()) {
                if (Intrinsics.areEqual(customEventField.getRawValue(), rawValue)) {
                    return customEventField;
                }
            }
            return null;
        }

        private a() {
        }
    }

    CustomEventField(String str) {
        this.rawValue = str;
    }

    @NotNull
    public final String getRawValue() {
        return this.rawValue;
    }
}
