package com.facebook.appevents.integrity;

import android.os.Bundle;
import com.applovin.sdk.AppLovinEventParameters;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.p;
import com.facebook.v;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.c;
import kotlin.collections.y0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import o4.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
/* compiled from: ProtectedModeManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nProtectedModeManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtectedModeManager.kt\ncom/facebook/appevents/integrity/ProtectedModeManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,241:1\n1855#2,2:242\n1855#2,2:244\n*S KotlinDebug\n*F\n+ 1 ProtectedModeManager.kt\ncom/facebook/appevents/integrity/ProtectedModeManager\n*L\n218#1:242,2\n224#1:244,2\n*E\n"})
/* loaded from: classes3.dex */
public final class ProtectedModeManager {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f15109b;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static HashSet<String> f15111d;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final ProtectedModeManager f15108a = new ProtectedModeManager();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final i f15110c = c.b(new Function0<HashSet<String>>() { // from class: com.facebook.appevents.integrity.ProtectedModeManager$defaultStandardParameterNames$2
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: b */
        public final HashSet<String> invoke() {
            return y0.g("_currency", "_valueToSum", "fb_availability", "fb_body_style", "fb_checkin_date", "fb_checkout_date", "fb_city", "fb_condition_of_vehicle", "fb_content_ids", "fb_content_type", "fb_contents", "fb_country", "fb_currency", "fb_delivery_category", "fb_departing_arrival_date", "fb_departing_departure_date", "fb_destination_airport", "fb_destination_ids", "fb_dma_code", "fb_drivetrain", "fb_exterior_color", "fb_fuel_type", "fb_hotel_score", "fb_interior_color", "fb_lease_end_date", "fb_lease_start_date", "fb_listing_type", "fb_make", "fb_mileage.unit", "fb_mileage.value", "fb_model", "fb_neighborhood", "fb_num_adults", "fb_num_children", "fb_num_infants", "fb_num_items", "fb_order_id", "fb_origin_airport", "fb_postal_code", "fb_predicted_ltv", "fb_preferred_baths_range", "fb_preferred_beds_range", "fb_preferred_neighborhoods", "fb_preferred_num_stops", "fb_preferred_price_range", "fb_preferred_star_ratings", "fb_price", "fb_property_type", "fb_region", "fb_returning_arrival_date", "fb_returning_departure_date", "fb_state_of_vehicle", "fb_suggested_destinations", "fb_suggested_home_listings", "fb_suggested_hotels", "fb_suggested_jobs", "fb_suggested_local_service_businesses", "fb_suggested_location_based_items", "fb_suggested_vehicles", "fb_transmission", "fb_travel_class", "fb_travel_end", "fb_travel_start", "fb_trim", "fb_user_bucket", "fb_value", "fb_vin", "fb_year", "lead_event_source", "predicted_ltv", "product_catalog_id", "app_user_id", "appVersion", "_eventName", "_eventName_md5", "_implicitlyLogged", "_inBackground", "_isTimedEvent", "_logTime", "_session_id", "_ui", "_valueToUpdate", "_is_fb_codeless", "_is_suggested_event", "_fb_pixel_referral_id", "fb_pixel_id", "trace_id", "subscription_id", "event_id", "_restrictedParams", "_onDeviceParams", "purchase_valid_result_type", "core_lib_included", "login_lib_included", "share_lib_included", "place_lib_included", "messenger_lib_included", "applinks_lib_included", "marketing_lib_included", "_codeless_action", "sdk_initialized", "billing_client_lib_included", "billing_service_lib_included", "user_data_keys", "device_push_token", "fb_mobile_pckg_fp", "fb_mobile_app_cert_hash", "aggregate_id", "anonymous_id", "campaign_ids", "fb_post_attachment", AppLovinEventParameters.IN_APP_PURCHASE_DATA, "ad_type", "fb_content", "fb_content_id", "fb_description", "fb_level", "fb_max_rating_value", "fb_payment_info_available", "fb_registration_method", "fb_success", "pm", "_audiencePropertyIds", "cs_maca");
        }
    });

    private ProtectedModeManager() {
    }

    private final HashSet<String> a(JSONArray jSONArray) {
        if (!a.d(this) && jSONArray != null) {
            try {
                if (jSONArray.length() != 0) {
                    HashSet<String> hashSet = new HashSet<>();
                    int length = jSONArray.length();
                    for (int i10 = 0; i10 < length; i10++) {
                        String string = jSONArray.getString(i10);
                        Intrinsics.checkNotNullExpressionValue(string, "jsonArray.getString(i)");
                        hashSet.add(string);
                    }
                    return hashSet;
                }
            } catch (Throwable th2) {
                a.b(th2, this);
            }
        }
        return null;
    }

    public static final void b() {
        if (a.d(ProtectedModeManager.class)) {
            return;
        }
        try {
            f15109b = true;
            f15108a.e();
        } catch (Throwable th2) {
            a.b(th2, ProtectedModeManager.class);
        }
    }

    public static final boolean d() {
        if (a.d(ProtectedModeManager.class)) {
            return false;
        }
        try {
            return f15109b;
        } catch (Throwable th2) {
            a.b(th2, ProtectedModeManager.class);
            return false;
        }
    }

    private final void e() {
        if (a.d(this)) {
            return;
        }
        try {
            p u10 = FetchedAppSettingsManager.u(v.m(), false);
            if (u10 == null) {
                return;
            }
            HashSet<String> a10 = a(u10.n());
            if (a10 == null) {
                a10 = c();
            }
            f15111d = a10;
        } catch (Throwable th2) {
            a.b(th2, this);
        }
    }

    public static final void f(@Nullable Bundle bundle) {
        if (a.d(ProtectedModeManager.class)) {
            return;
        }
        try {
            if (f15109b && bundle != null && !bundle.isEmpty() && f15111d != null) {
                ArrayList<String> arrayList = new ArrayList();
                Set<String> keySet = bundle.keySet();
                Intrinsics.checkNotNullExpressionValue(keySet, "parameters.keySet()");
                for (String param : keySet) {
                    HashSet<String> hashSet = f15111d;
                    Intrinsics.checkNotNull(hashSet);
                    if (!hashSet.contains(param)) {
                        Intrinsics.checkNotNullExpressionValue(param, "param");
                        arrayList.add(param);
                    }
                }
                for (String str : arrayList) {
                    bundle.remove(str);
                }
                bundle.putString("pm", "1");
            }
        } catch (Throwable th2) {
            a.b(th2, ProtectedModeManager.class);
        }
    }

    @NotNull
    public final HashSet<String> c() {
        if (a.d(this)) {
            return null;
        }
        try {
            return (HashSet) f15110c.getValue();
        } catch (Throwable th2) {
            a.b(th2, this);
            return null;
        }
    }

    public final boolean g(@Nullable Bundle bundle) {
        if (a.d(this) || bundle == null) {
            return false;
        }
        try {
            if (!bundle.containsKey("pm")) {
                return false;
            }
            if (!Intrinsics.areEqual(bundle.get("pm"), "1")) {
                return false;
            }
            return true;
        } catch (Throwable th2) {
            a.b(th2, this);
            return false;
        }
    }
}
