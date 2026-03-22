package com.facebook.appevents.cloudbridge;

import com.adjust.sdk.Constants;
import com.applovin.sdk.AppLovinEventParameters;
import com.ss.ttvideoengine.selector.strategy.GearStrategyConsts;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AppEventsConversionsAPITransformer.kt */
@Metadata
/* loaded from: classes3.dex */
public enum AppEventUserAndAppDataField {
    ANON_ID("anon_id"),
    APP_USER_ID("app_user_id"),
    ADVERTISER_ID("advertiser_id"),
    PAGE_ID("page_id"),
    PAGE_SCOPED_USER_ID("page_scoped_user_id"),
    USER_DATA(GearStrategyConsts.EV_USER_DOWNGRADE),
    ADV_TE("advertiser_tracking_enabled"),
    APP_TE("application_tracking_enabled"),
    CONSIDER_VIEWS("consider_views"),
    DEVICE_TOKEN("device_token"),
    EXT_INFO("extInfo"),
    INCLUDE_DWELL_DATA("include_dwell_data"),
    INCLUDE_VIDEO_DATA("include_video_data"),
    INSTALL_REFERRER(Constants.INSTALL_REFERRER),
    INSTALLER_PACKAGE("installer_package"),
    RECEIPT_DATA(AppLovinEventParameters.IN_APP_PURCHASE_DATA),
    URL_SCHEMES("url_schemes");
    
    @NotNull
    public static final a Companion = new a(null);
    @NotNull
    private final String rawValue;

    /* compiled from: AppEventsConversionsAPITransformer.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nAppEventsConversionsAPITransformer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppEventsConversionsAPITransformer.kt\ncom/facebook/appevents/cloudbridge/AppEventUserAndAppDataField$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,713:1\n1282#2,2:714\n*S KotlinDebug\n*F\n+ 1 AppEventsConversionsAPITransformer.kt\ncom/facebook/appevents/cloudbridge/AppEventUserAndAppDataField$Companion\n*L\n88#1:714,2\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final AppEventUserAndAppDataField a(@NotNull String rawValue) {
            AppEventUserAndAppDataField[] values;
            Intrinsics.checkNotNullParameter(rawValue, "rawValue");
            for (AppEventUserAndAppDataField appEventUserAndAppDataField : AppEventUserAndAppDataField.values()) {
                if (Intrinsics.areEqual(appEventUserAndAppDataField.getRawValue(), rawValue)) {
                    return appEventUserAndAppDataField;
                }
            }
            return null;
        }

        private a() {
        }
    }

    AppEventUserAndAppDataField(String str) {
        this.rawValue = str;
    }

    @NotNull
    public final String getRawValue() {
        return this.rawValue;
    }
}
