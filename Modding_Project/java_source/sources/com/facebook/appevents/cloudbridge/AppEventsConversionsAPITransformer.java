package com.facebook.appevents.cloudbridge;

import com.facebook.LoggingBehavior;
import com.facebook.appevents.cloudbridge.AppEventType;
import com.facebook.internal.i0;
import com.facebook.internal.u0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import ms.d;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AppEventsConversionsAPITransformer.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAppEventsConversionsAPITransformer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppEventsConversionsAPITransformer.kt\ncom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,713:1\n1855#2,2:714\n1855#2,2:716\n1855#2:718\n1855#2,2:719\n1856#2:721\n1855#2,2:722\n215#3,2:724\n*S KotlinDebug\n*F\n+ 1 AppEventsConversionsAPITransformer.kt\ncom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer\n*L\n380#1:714,2\n427#1:716,2\n448#1:718\n453#1:719,2\n448#1:721\n604#1:722,2\n660#1:724,2\n*E\n"})
/* loaded from: classes3.dex */
public final class AppEventsConversionsAPITransformer {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final AppEventsConversionsAPITransformer f14954a = new AppEventsConversionsAPITransformer();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final Map<AppEventUserAndAppDataField, b> f14955b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final Map<CustomEventField, a> f14956c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final Map<String, ConversionsAPIEventName> f14957d;

    /* compiled from: AppEventsConversionsAPITransformer.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public enum DataProcessingParameterName {
        OPTIONS("data_processing_options"),
        COUNTRY("data_processing_options_country"),
        STATE("data_processing_options_state");
        
        @NotNull
        public static final a Companion = new a(null);
        @NotNull
        private final String rawValue;

        /* compiled from: AppEventsConversionsAPITransformer.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nAppEventsConversionsAPITransformer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppEventsConversionsAPITransformer.kt\ncom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$DataProcessingParameterName$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,713:1\n1282#2,2:714\n*S KotlinDebug\n*F\n+ 1 AppEventsConversionsAPITransformer.kt\ncom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformer$DataProcessingParameterName$Companion\n*L\n341#1:714,2\n*E\n"})
        /* loaded from: classes3.dex */
        public static final class a {
            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @Nullable
            public final DataProcessingParameterName a(@NotNull String rawValue) {
                DataProcessingParameterName[] values;
                Intrinsics.checkNotNullParameter(rawValue, "rawValue");
                for (DataProcessingParameterName dataProcessingParameterName : DataProcessingParameterName.values()) {
                    if (Intrinsics.areEqual(dataProcessingParameterName.getRawValue(), rawValue)) {
                        return dataProcessingParameterName;
                    }
                }
                return null;
            }

            private a() {
            }
        }

        DataProcessingParameterName(String str) {
            this.rawValue = str;
        }

        @NotNull
        public final String getRawValue() {
            return this.rawValue;
        }
    }

    /* compiled from: AppEventsConversionsAPITransformer.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public enum ValueTransformationType {
        ARRAY,
        BOOL,
        INT;
        
        @NotNull
        public static final a Companion = new a(null);

        /* compiled from: AppEventsConversionsAPITransformer.kt */
        @Metadata
        /* loaded from: classes3.dex */
        public static final class a {
            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @Nullable
            public final ValueTransformationType a(@NotNull String rawValue) {
                Intrinsics.checkNotNullParameter(rawValue, "rawValue");
                if (Intrinsics.areEqual(rawValue, AppEventUserAndAppDataField.EXT_INFO.getRawValue())) {
                    return ValueTransformationType.ARRAY;
                }
                if (Intrinsics.areEqual(rawValue, AppEventUserAndAppDataField.URL_SCHEMES.getRawValue())) {
                    return ValueTransformationType.ARRAY;
                }
                if (Intrinsics.areEqual(rawValue, CustomEventField.CONTENT_IDS.getRawValue())) {
                    return ValueTransformationType.ARRAY;
                }
                if (Intrinsics.areEqual(rawValue, CustomEventField.CONTENTS.getRawValue())) {
                    return ValueTransformationType.ARRAY;
                }
                if (Intrinsics.areEqual(rawValue, DataProcessingParameterName.OPTIONS.getRawValue())) {
                    return ValueTransformationType.ARRAY;
                }
                if (Intrinsics.areEqual(rawValue, AppEventUserAndAppDataField.ADV_TE.getRawValue())) {
                    return ValueTransformationType.BOOL;
                }
                if (Intrinsics.areEqual(rawValue, AppEventUserAndAppDataField.APP_TE.getRawValue())) {
                    return ValueTransformationType.BOOL;
                }
                if (Intrinsics.areEqual(rawValue, CustomEventField.EVENT_TIME.getRawValue())) {
                    return ValueTransformationType.INT;
                }
                return null;
            }

            private a() {
            }
        }
    }

    /* compiled from: AppEventsConversionsAPITransformer.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private ConversionsAPISection f14958a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private ConversionsAPICustomEventField f14959b;

        public a(@Nullable ConversionsAPISection conversionsAPISection, @NotNull ConversionsAPICustomEventField field) {
            Intrinsics.checkNotNullParameter(field, "field");
            this.f14958a = conversionsAPISection;
            this.f14959b = field;
        }

        @NotNull
        public final ConversionsAPICustomEventField a() {
            return this.f14959b;
        }

        @Nullable
        public final ConversionsAPISection b() {
            return this.f14958a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f14958a == aVar.f14958a && this.f14959b == aVar.f14959b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            ConversionsAPISection conversionsAPISection = this.f14958a;
            if (conversionsAPISection == null) {
                hashCode = 0;
            } else {
                hashCode = conversionsAPISection.hashCode();
            }
            return (hashCode * 31) + this.f14959b.hashCode();
        }

        @NotNull
        public String toString() {
            return "SectionCustomEventFieldMapping(section=" + this.f14958a + ", field=" + this.f14959b + ')';
        }
    }

    /* compiled from: AppEventsConversionsAPITransformer.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private ConversionsAPISection f14960a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private ConversionsAPIUserAndAppDataField f14961b;

        public b(@NotNull ConversionsAPISection section, @Nullable ConversionsAPIUserAndAppDataField conversionsAPIUserAndAppDataField) {
            Intrinsics.checkNotNullParameter(section, "section");
            this.f14960a = section;
            this.f14961b = conversionsAPIUserAndAppDataField;
        }

        @Nullable
        public final ConversionsAPIUserAndAppDataField a() {
            return this.f14961b;
        }

        @NotNull
        public final ConversionsAPISection b() {
            return this.f14960a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f14960a == bVar.f14960a && this.f14961b == bVar.f14961b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = this.f14960a.hashCode() * 31;
            ConversionsAPIUserAndAppDataField conversionsAPIUserAndAppDataField = this.f14961b;
            if (conversionsAPIUserAndAppDataField == null) {
                hashCode = 0;
            } else {
                hashCode = conversionsAPIUserAndAppDataField.hashCode();
            }
            return hashCode2 + hashCode;
        }

        @NotNull
        public String toString() {
            return "SectionFieldMapping(section=" + this.f14960a + ", field=" + this.f14961b + ')';
        }
    }

    /* compiled from: AppEventsConversionsAPITransformer.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public /* synthetic */ class c {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[ValueTransformationType.values().length];
            try {
                iArr[ValueTransformationType.ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ValueTransformationType.BOOL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ValueTransformationType.INT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[ConversionsAPISection.values().length];
            try {
                iArr2[ConversionsAPISection.APP_DATA.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[ConversionsAPISection.USER_DATA.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[AppEventType.values().length];
            try {
                iArr3[AppEventType.MOBILE_APP_INSTALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr3[AppEventType.CUSTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$2 = iArr3;
        }
    }

    static {
        AppEventUserAndAppDataField appEventUserAndAppDataField = AppEventUserAndAppDataField.ANON_ID;
        ConversionsAPISection conversionsAPISection = ConversionsAPISection.USER_DATA;
        Pair a10 = k.a(appEventUserAndAppDataField, new b(conversionsAPISection, ConversionsAPIUserAndAppDataField.ANON_ID));
        Pair a11 = k.a(AppEventUserAndAppDataField.APP_USER_ID, new b(conversionsAPISection, ConversionsAPIUserAndAppDataField.FB_LOGIN_ID));
        Pair a12 = k.a(AppEventUserAndAppDataField.ADVERTISER_ID, new b(conversionsAPISection, ConversionsAPIUserAndAppDataField.MAD_ID));
        Pair a13 = k.a(AppEventUserAndAppDataField.PAGE_ID, new b(conversionsAPISection, ConversionsAPIUserAndAppDataField.PAGE_ID));
        Pair a14 = k.a(AppEventUserAndAppDataField.PAGE_SCOPED_USER_ID, new b(conversionsAPISection, ConversionsAPIUserAndAppDataField.PAGE_SCOPED_USER_ID));
        AppEventUserAndAppDataField appEventUserAndAppDataField2 = AppEventUserAndAppDataField.ADV_TE;
        ConversionsAPISection conversionsAPISection2 = ConversionsAPISection.APP_DATA;
        f14955b = p0.m(a10, a11, a12, a13, a14, k.a(appEventUserAndAppDataField2, new b(conversionsAPISection2, ConversionsAPIUserAndAppDataField.ADV_TE)), k.a(AppEventUserAndAppDataField.APP_TE, new b(conversionsAPISection2, ConversionsAPIUserAndAppDataField.APP_TE)), k.a(AppEventUserAndAppDataField.CONSIDER_VIEWS, new b(conversionsAPISection2, ConversionsAPIUserAndAppDataField.CONSIDER_VIEWS)), k.a(AppEventUserAndAppDataField.DEVICE_TOKEN, new b(conversionsAPISection2, ConversionsAPIUserAndAppDataField.DEVICE_TOKEN)), k.a(AppEventUserAndAppDataField.EXT_INFO, new b(conversionsAPISection2, ConversionsAPIUserAndAppDataField.EXT_INFO)), k.a(AppEventUserAndAppDataField.INCLUDE_DWELL_DATA, new b(conversionsAPISection2, ConversionsAPIUserAndAppDataField.INCLUDE_DWELL_DATA)), k.a(AppEventUserAndAppDataField.INCLUDE_VIDEO_DATA, new b(conversionsAPISection2, ConversionsAPIUserAndAppDataField.INCLUDE_VIDEO_DATA)), k.a(AppEventUserAndAppDataField.INSTALL_REFERRER, new b(conversionsAPISection2, ConversionsAPIUserAndAppDataField.INSTALL_REFERRER)), k.a(AppEventUserAndAppDataField.INSTALLER_PACKAGE, new b(conversionsAPISection2, ConversionsAPIUserAndAppDataField.INSTALLER_PACKAGE)), k.a(AppEventUserAndAppDataField.RECEIPT_DATA, new b(conversionsAPISection2, ConversionsAPIUserAndAppDataField.RECEIPT_DATA)), k.a(AppEventUserAndAppDataField.URL_SCHEMES, new b(conversionsAPISection2, ConversionsAPIUserAndAppDataField.URL_SCHEMES)), k.a(AppEventUserAndAppDataField.USER_DATA, new b(conversionsAPISection, null)));
        Pair a15 = k.a(CustomEventField.EVENT_TIME, new a(null, ConversionsAPICustomEventField.EVENT_TIME));
        Pair a16 = k.a(CustomEventField.EVENT_NAME, new a(null, ConversionsAPICustomEventField.EVENT_NAME));
        CustomEventField customEventField = CustomEventField.VALUE_TO_SUM;
        ConversionsAPISection conversionsAPISection3 = ConversionsAPISection.CUSTOM_DATA;
        f14956c = p0.m(a15, a16, k.a(customEventField, new a(conversionsAPISection3, ConversionsAPICustomEventField.VALUE_TO_SUM)), k.a(CustomEventField.CONTENT_IDS, new a(conversionsAPISection3, ConversionsAPICustomEventField.CONTENT_IDS)), k.a(CustomEventField.CONTENTS, new a(conversionsAPISection3, ConversionsAPICustomEventField.CONTENTS)), k.a(CustomEventField.CONTENT_TYPE, new a(conversionsAPISection3, ConversionsAPICustomEventField.CONTENT_TYPE)), k.a(CustomEventField.CURRENCY, new a(conversionsAPISection3, ConversionsAPICustomEventField.CURRENCY)), k.a(CustomEventField.DESCRIPTION, new a(conversionsAPISection3, ConversionsAPICustomEventField.DESCRIPTION)), k.a(CustomEventField.LEVEL, new a(conversionsAPISection3, ConversionsAPICustomEventField.LEVEL)), k.a(CustomEventField.MAX_RATING_VALUE, new a(conversionsAPISection3, ConversionsAPICustomEventField.MAX_RATING_VALUE)), k.a(CustomEventField.NUM_ITEMS, new a(conversionsAPISection3, ConversionsAPICustomEventField.NUM_ITEMS)), k.a(CustomEventField.PAYMENT_INFO_AVAILABLE, new a(conversionsAPISection3, ConversionsAPICustomEventField.PAYMENT_INFO_AVAILABLE)), k.a(CustomEventField.REGISTRATION_METHOD, new a(conversionsAPISection3, ConversionsAPICustomEventField.REGISTRATION_METHOD)), k.a(CustomEventField.SEARCH_STRING, new a(conversionsAPISection3, ConversionsAPICustomEventField.SEARCH_STRING)), k.a(CustomEventField.SUCCESS, new a(conversionsAPISection3, ConversionsAPICustomEventField.SUCCESS)), k.a(CustomEventField.ORDER_ID, new a(conversionsAPISection3, ConversionsAPICustomEventField.ORDER_ID)), k.a(CustomEventField.AD_TYPE, new a(conversionsAPISection3, ConversionsAPICustomEventField.AD_TYPE)));
        f14957d = p0.m(k.a("fb_mobile_achievement_unlocked", ConversionsAPIEventName.UNLOCKED_ACHIEVEMENT), k.a("fb_mobile_activate_app", ConversionsAPIEventName.ACTIVATED_APP), k.a("fb_mobile_add_payment_info", ConversionsAPIEventName.ADDED_PAYMENT_INFO), k.a("fb_mobile_add_to_cart", ConversionsAPIEventName.ADDED_TO_CART), k.a("fb_mobile_add_to_wishlist", ConversionsAPIEventName.ADDED_TO_WISHLIST), k.a("fb_mobile_complete_registration", ConversionsAPIEventName.COMPLETED_REGISTRATION), k.a("fb_mobile_content_view", ConversionsAPIEventName.VIEWED_CONTENT), k.a("fb_mobile_initiated_checkout", ConversionsAPIEventName.INITIATED_CHECKOUT), k.a("fb_mobile_level_achieved", ConversionsAPIEventName.ACHIEVED_LEVEL), k.a("fb_mobile_purchase", ConversionsAPIEventName.PURCHASED), k.a("fb_mobile_rate", ConversionsAPIEventName.RATED), k.a("fb_mobile_search", ConversionsAPIEventName.SEARCHED), k.a("fb_mobile_spent_credits", ConversionsAPIEventName.SPENT_CREDITS), k.a("fb_mobile_tutorial_completion", ConversionsAPIEventName.COMPLETED_TUTORIAL));
    }

    private AppEventsConversionsAPITransformer() {
    }

    private final List<Map<String, Object>> b(Map<String, ? extends Object> map, List<? extends Map<String, ? extends Object>> list) {
        if (list.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.putAll(map);
            linkedHashMap.putAll((Map) it.next());
            arrayList.add(linkedHashMap);
        }
        return arrayList;
    }

    private final List<Map<String, Object>> c(Map<String, ? extends Object> map, Object obj) {
        if (obj == null) {
            return null;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.putAll(map);
        linkedHashMap.put(ConversionsAPICustomEventField.EVENT_NAME.getRawValue(), OtherEventConstants.MOBILE_APP_INSTALL.getRawValue());
        linkedHashMap.put(ConversionsAPICustomEventField.EVENT_TIME.getRawValue(), obj);
        return CollectionsKt.e(linkedHashMap);
    }

    private final AppEventType f(Map<String, ? extends Object> map, Map<String, Object> map2, Map<String, Object> map3, ArrayList<Map<String, Object>> arrayList, Map<String, Object> map4) {
        Object obj = map.get(OtherEventConstants.EVENT.getRawValue());
        AppEventType.a aVar = AppEventType.Companion;
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
        AppEventType a10 = aVar.a((String) obj);
        if (a10 == AppEventType.OTHER) {
            return a10;
        }
        for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            AppEventUserAndAppDataField a11 = AppEventUserAndAppDataField.Companion.a(key);
            if (a11 != null) {
                f14954a.g(map2, map3, a11, value);
            } else {
                boolean areEqual = Intrinsics.areEqual(key, ConversionsAPISection.CUSTOM_EVENTS.getRawValue());
                boolean z10 = value instanceof String;
                if (a10 == AppEventType.CUSTOM && areEqual && z10) {
                    Intrinsics.checkNotNull(value, "null cannot be cast to non-null type kotlin.String");
                    ArrayList<Map<String, Object>> k10 = k((String) value);
                    if (k10 != null) {
                        arrayList.addAll(k10);
                    }
                } else if (DataProcessingParameterName.Companion.a(key) != null) {
                    map4.put(key, value);
                }
            }
        }
        return a10;
    }

    private final void h(Map<String, Object> map, AppEventUserAndAppDataField appEventUserAndAppDataField, Object obj) {
        ConversionsAPIUserAndAppDataField a10;
        String rawValue;
        b bVar = f14955b.get(appEventUserAndAppDataField);
        if (bVar != null && (a10 = bVar.a()) != null && (rawValue = a10.getRawValue()) != null) {
            map.put(rawValue, obj);
        }
    }

    private final void i(Map<String, Object> map, AppEventUserAndAppDataField appEventUserAndAppDataField, Object obj) {
        ConversionsAPIUserAndAppDataField a10;
        String rawValue;
        if (appEventUserAndAppDataField == AppEventUserAndAppDataField.USER_DATA) {
            try {
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                map.putAll(u0.o(new JSONObject((String) obj)));
                return;
            } catch (JSONException e10) {
                i0.f16209e.c(LoggingBehavior.APP_EVENTS, "AppEventsConversionsAPITransformer", "\n transformEvents JSONException: \n%s\n%s", obj, e10);
                return;
            }
        }
        b bVar = f14955b.get(appEventUserAndAppDataField);
        if (bVar != null && (a10 = bVar.a()) != null && (rawValue = a10.getRawValue()) != null) {
            map.put(rawValue, obj);
        }
    }

    private final String j(String str) {
        String rawValue;
        Map<String, ConversionsAPIEventName> map = f14957d;
        if (map.containsKey(str)) {
            ConversionsAPIEventName conversionsAPIEventName = map.get(str);
            if (conversionsAPIEventName == null || (rawValue = conversionsAPIEventName.getRawValue()) == null) {
                return "";
            }
            return rawValue;
        }
        return str;
    }

    @Nullable
    public static final ArrayList<Map<String, Object>> k(@NotNull String appEvents) {
        Intrinsics.checkNotNullParameter(appEvents, "appEvents");
        ArrayList<Map> arrayList = new ArrayList();
        try {
            for (String str : u0.n(new JSONArray(appEvents))) {
                arrayList.add(u0.o(new JSONObject(str)));
            }
            if (arrayList.isEmpty()) {
                return null;
            }
            ArrayList<Map<String, Object>> arrayList2 = new ArrayList<>();
            for (Map map : arrayList) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                for (String str2 : map.keySet()) {
                    CustomEventField a10 = CustomEventField.Companion.a(str2);
                    a aVar = f14956c.get(a10);
                    if (a10 != null && aVar != null) {
                        ConversionsAPISection b10 = aVar.b();
                        if (b10 != null) {
                            if (b10 == ConversionsAPISection.CUSTOM_DATA) {
                                String rawValue = aVar.a().getRawValue();
                                Object obj = map.get(str2);
                                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Any");
                                Object l10 = l(str2, obj);
                                Intrinsics.checkNotNull(l10, "null cannot be cast to non-null type kotlin.Any");
                                linkedHashMap.put(rawValue, l10);
                            }
                        } else {
                            try {
                                String rawValue2 = aVar.a().getRawValue();
                                if (a10 == CustomEventField.EVENT_NAME && ((String) map.get(str2)) != null) {
                                    AppEventsConversionsAPITransformer appEventsConversionsAPITransformer = f14954a;
                                    Object obj2 = map.get(str2);
                                    Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                                    linkedHashMap2.put(rawValue2, appEventsConversionsAPITransformer.j((String) obj2));
                                } else if (a10 == CustomEventField.EVENT_TIME && ((Integer) map.get(str2)) != null) {
                                    Object obj3 = map.get(str2);
                                    Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.Any");
                                    Object l11 = l(str2, obj3);
                                    Intrinsics.checkNotNull(l11, "null cannot be cast to non-null type kotlin.Any");
                                    linkedHashMap2.put(rawValue2, l11);
                                }
                            } catch (ClassCastException e10) {
                                i0.f16209e.c(LoggingBehavior.APP_EVENTS, "AppEventsConversionsAPITransformer", "\n transformEvents ClassCastException: \n %s ", d.c(e10));
                            }
                        }
                    }
                }
                if (!linkedHashMap.isEmpty()) {
                    linkedHashMap2.put(ConversionsAPISection.CUSTOM_DATA.getRawValue(), linkedHashMap);
                }
                arrayList2.add(linkedHashMap2);
            }
            return arrayList2;
        } catch (JSONException e11) {
            i0.f16209e.c(LoggingBehavior.APP_EVENTS, "AppEventsConversionsAPITransformer", "\n transformEvents JSONException: \n%s\n%s", appEvents, e11);
            return null;
        }
    }

    @Nullable
    public static final Object l(@NotNull String field, @NotNull Object value) {
        String str;
        String str2;
        Object n10;
        Intrinsics.checkNotNullParameter(field, "field");
        Intrinsics.checkNotNullParameter(value, "value");
        ValueTransformationType a10 = ValueTransformationType.Companion.a(field);
        if (value instanceof String) {
            str = (String) value;
        } else {
            str = null;
        }
        if (a10 != null && str != null) {
            int i10 = c.$EnumSwitchMapping$0[a10.ordinal()];
            boolean z10 = true;
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        return StringsKt.toIntOrNull(value.toString());
                    }
                    throw new NoWhenBranchMatchedException();
                }
                Integer intOrNull = StringsKt.toIntOrNull(str.toString());
                if (intOrNull == null) {
                    return null;
                }
                if (intOrNull.intValue() == 0) {
                    z10 = false;
                }
                return Boolean.valueOf(z10);
            }
            try {
                List<String> n11 = u0.n(new JSONArray(str));
                ArrayList arrayList = new ArrayList();
                for (String str3 : n11) {
                    try {
                        try {
                            n10 = u0.o(new JSONObject(str3));
                        } catch (JSONException unused) {
                            n10 = u0.n(new JSONArray(str2));
                        }
                    } catch (JSONException unused2) {
                    }
                    arrayList.add(n10);
                }
                return arrayList;
            } catch (JSONException e10) {
                i0.f16209e.c(LoggingBehavior.APP_EVENTS, "AppEventsConversionsAPITransformer", "\n transformEvents JSONException: \n%s\n%s", value, e10);
                return Unit.f60915a;
            }
        }
        return value;
    }

    @Nullable
    public final List<Map<String, Object>> a(@NotNull AppEventType eventType, @NotNull Map<String, Object> userData, @NotNull Map<String, Object> appData, @NotNull Map<String, Object> restOfData, @NotNull List<? extends Map<String, ? extends Object>> customEvents, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(userData, "userData");
        Intrinsics.checkNotNullParameter(appData, "appData");
        Intrinsics.checkNotNullParameter(restOfData, "restOfData");
        Intrinsics.checkNotNullParameter(customEvents, "customEvents");
        Map<String, Object> d10 = d(userData, appData, restOfData);
        int i10 = c.$EnumSwitchMapping$2[eventType.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                return null;
            }
            return b(d10, customEvents);
        }
        return c(d10, obj);
    }

    @NotNull
    public final Map<String, Object> d(@NotNull Map<String, ? extends Object> userData, @NotNull Map<String, ? extends Object> appData, @NotNull Map<String, ? extends Object> restOfData) {
        Intrinsics.checkNotNullParameter(userData, "userData");
        Intrinsics.checkNotNullParameter(appData, "appData");
        Intrinsics.checkNotNullParameter(restOfData, "restOfData");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(OtherEventConstants.ACTION_SOURCE.getRawValue(), OtherEventConstants.APP.getRawValue());
        linkedHashMap.put(ConversionsAPISection.USER_DATA.getRawValue(), userData);
        linkedHashMap.put(ConversionsAPISection.APP_DATA.getRawValue(), appData);
        linkedHashMap.putAll(restOfData);
        return linkedHashMap;
    }

    @Nullable
    public final List<Map<String, Object>> e(@NotNull Map<String, ? extends Object> parameters) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        Map<String, Object> linkedHashMap = new LinkedHashMap<>();
        Map<String, Object> linkedHashMap2 = new LinkedHashMap<>();
        ArrayList<Map<String, Object>> arrayList = new ArrayList<>();
        Map<String, Object> linkedHashMap3 = new LinkedHashMap<>();
        AppEventType f10 = f(parameters, linkedHashMap, linkedHashMap2, arrayList, linkedHashMap3);
        if (f10 == AppEventType.OTHER) {
            return null;
        }
        return a(f10, linkedHashMap, linkedHashMap2, linkedHashMap3, arrayList, parameters.get(OtherEventConstants.INSTALL_EVENT_TIME.getRawValue()));
    }

    public final void g(@NotNull Map<String, Object> userData, @NotNull Map<String, Object> appData, @NotNull AppEventUserAndAppDataField field, @NotNull Object value) {
        ConversionsAPISection b10;
        Intrinsics.checkNotNullParameter(userData, "userData");
        Intrinsics.checkNotNullParameter(appData, "appData");
        Intrinsics.checkNotNullParameter(field, "field");
        Intrinsics.checkNotNullParameter(value, "value");
        b bVar = f14955b.get(field);
        if (bVar != null && (b10 = bVar.b()) != null) {
            int i10 = c.$EnumSwitchMapping$1[b10.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    return;
                }
                i(userData, field, value);
                return;
            }
            h(appData, field, value);
        }
    }
}
