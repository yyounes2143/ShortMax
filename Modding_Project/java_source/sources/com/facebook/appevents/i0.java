package com.facebook.appevents;

import android.os.Bundle;
import com.facebook.FacebookException;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.p0;
import kotlin.collections.y0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: OperationalData.kt */
@Metadata
@SourceDebugExtension({"SMAP\nOperationalData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OperationalData.kt\ncom/facebook/appevents/OperationalData\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,252:1\n457#2:253\n403#2:254\n1238#3,4:255\n*S KotlinDebug\n*F\n+ 1 OperationalData.kt\ncom/facebook/appevents/OperationalData\n*L\n74#1:253\n74#1:254\n74#1:255,4\n*E\n"})
/* loaded from: classes3.dex */
public final class i0 {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f15019b = new a(null);
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final Set<String> f15020c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final Set<String> f15021d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final Map<OperationalDataEnum, Pair<Set<String>, Set<String>>> f15022e;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Map<OperationalDataEnum, Map<String, Object>> f15023a = new LinkedHashMap();

    /* compiled from: OperationalData.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {

        /* compiled from: OperationalData.kt */
        @Metadata
        /* renamed from: com.facebook.appevents.i0$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public /* synthetic */ class C0250a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[ParameterClassification.values().length];
                try {
                    iArr[ParameterClassification.CustomData.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[ParameterClassification.OperationalData.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[ParameterClassification.CustomAndOperationalData.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(@NotNull OperationalDataEnum typeOfParameter, @NotNull String key, @NotNull String value, @NotNull Bundle customEventsParams, @NotNull i0 operationalData) {
            Intrinsics.checkNotNullParameter(typeOfParameter, "typeOfParameter");
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            Intrinsics.checkNotNullParameter(customEventsParams, "customEventsParams");
            Intrinsics.checkNotNullParameter(operationalData, "operationalData");
            int i10 = C0250a.$EnumSwitchMapping$0[d(typeOfParameter, key).ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        operationalData.b(typeOfParameter, key, value);
                        customEventsParams.putCharSequence(key, value);
                        return;
                    }
                    return;
                }
                operationalData.b(typeOfParameter, key, value);
                return;
            }
            customEventsParams.putCharSequence(key, value);
        }

        @NotNull
        public final Pair<Bundle, i0> b(@NotNull OperationalDataEnum typeOfParameter, @NotNull String key, @NotNull String value, @Nullable Bundle bundle, @Nullable i0 i0Var) {
            Intrinsics.checkNotNullParameter(typeOfParameter, "typeOfParameter");
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            int i10 = C0250a.$EnumSwitchMapping$0[d(typeOfParameter, key).ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        if (i0Var == null) {
                            i0Var = new i0();
                        }
                        if (bundle == null) {
                            bundle = new Bundle();
                        }
                        i0Var.b(typeOfParameter, key, value);
                        bundle.putCharSequence(key, value);
                    }
                } else {
                    if (i0Var == null) {
                        i0Var = new i0();
                    }
                    i0Var.b(typeOfParameter, key, value);
                }
            } else {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                bundle.putCharSequence(key, value);
            }
            return new Pair<>(bundle, i0Var);
        }

        @Nullable
        public final Object c(@NotNull OperationalDataEnum typeOfParameter, @NotNull String key, @Nullable Bundle bundle, @Nullable i0 i0Var) {
            Object obj;
            Intrinsics.checkNotNullParameter(typeOfParameter, "typeOfParameter");
            Intrinsics.checkNotNullParameter(key, "key");
            CharSequence charSequence = null;
            if (i0Var != null) {
                obj = i0Var.d(typeOfParameter, key);
            } else {
                obj = null;
            }
            if (bundle != null) {
                charSequence = bundle.getCharSequence(key);
            }
            if (obj == null) {
                return charSequence;
            }
            return obj;
        }

        @NotNull
        public final ParameterClassification d(@NotNull OperationalDataEnum typeOfParameter, @NotNull String parameter) {
            Set set;
            Intrinsics.checkNotNullParameter(typeOfParameter, "typeOfParameter");
            Intrinsics.checkNotNullParameter(parameter, "parameter");
            Pair pair = (Pair) i0.f15022e.get(typeOfParameter);
            Set set2 = null;
            if (pair != null) {
                set = (Set) pair.e();
            } else {
                set = null;
            }
            Pair pair2 = (Pair) i0.f15022e.get(typeOfParameter);
            if (pair2 != null) {
                set2 = (Set) pair2.f();
            }
            if (set != null && set.contains(parameter)) {
                return ParameterClassification.OperationalData;
            }
            if (set2 != null && set2.contains(parameter)) {
                return ParameterClassification.CustomAndOperationalData;
            }
            return ParameterClassification.CustomData;
        }

        private a() {
        }
    }

    static {
        Set<String> j10 = y0.j("fb_iap_package_name", "fb_iap_subs_auto_renewing", "fb_free_trial_period", "fb_intro_price_amount_micros", "fb_intro_price_cycles", "fb_iap_base_plan", "is_implicit_purchase_logging_enabled", "fb_iap_sdk_supported_library_versions", "is_autolog_app_events_enabled", "fb_iap_client_library_version", "fb_iap_subs_period", "fb_iap_purchase_token", "fb_iap_non_deduped_event_time", "fb_iap_actual_dedup_result", "fb_iap_actual_dedup_key_used", "fb_iap_test_dedup_result", "fb_iap_test_dedup_key_used");
        f15020c = j10;
        Set<String> j11 = y0.j("fb_iap_product_id", "fb_iap_product_type", "fb_iap_purchase_time");
        f15021d = j11;
        f15022e = p0.f(ms.k.a(OperationalDataEnum.IAPParameters, new Pair(j10, j11)));
    }

    public final void b(@NotNull OperationalDataEnum type, @NotNull String key, @NotNull Object value) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        try {
            AppEvent.f14929f.a(key);
            if (!(value instanceof String) && !(value instanceof Number)) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String format = String.format("Parameter value '%s' for key '%s' should be a string or a numeric type.", Arrays.copyOf(new Object[]{value, key}, 2));
                Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                throw new FacebookException(format);
            }
            if (!this.f15023a.containsKey(type)) {
                this.f15023a.put(type, new LinkedHashMap());
            }
            Map<String, Object> map = this.f15023a.get(type);
            if (map != null) {
                map.put(key, value);
            }
        } catch (Exception unused) {
        }
    }

    @NotNull
    public final i0 c() {
        i0 i0Var = new i0();
        for (OperationalDataEnum operationalDataEnum : this.f15023a.keySet()) {
            Map<String, Object> map = this.f15023a.get(operationalDataEnum);
            if (map != null) {
                for (String str : map.keySet()) {
                    Object obj = map.get(str);
                    if (obj != null) {
                        i0Var.b(operationalDataEnum, str, obj);
                    }
                }
            }
        }
        return i0Var;
    }

    @Nullable
    public final Object d(@NotNull OperationalDataEnum type, @NotNull String key) {
        Map<String, Object> map;
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(key, "key");
        if (!this.f15023a.containsKey(type) || (map = this.f15023a.get(type)) == null) {
            return null;
        }
        return map.get(key);
    }

    @NotNull
    public final JSONObject e() {
        JSONObject jSONObject;
        try {
            Map<OperationalDataEnum, Map<String, Object>> map = this.f15023a;
            LinkedHashMap linkedHashMap = new LinkedHashMap(p0.e(map.size()));
            for (Object obj : map.entrySet()) {
                linkedHashMap.put(((OperationalDataEnum) ((Map.Entry) obj).getKey()).getValue(), ((Map.Entry) obj).getValue());
            }
            jSONObject = new JSONObject(p0.x(linkedHashMap));
        } catch (Exception unused) {
            jSONObject = null;
        }
        if (jSONObject == null) {
            return new JSONObject();
        }
        return jSONObject;
    }
}
