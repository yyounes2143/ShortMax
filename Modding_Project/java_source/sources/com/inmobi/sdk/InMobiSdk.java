package com.inmobi.sdk;

import android.content.Context;
import android.location.Location;
import android.os.SystemClock;
import androidx.annotation.Size;
import androidx.annotation.UiThread;
import androidx.core.app.NotificationCompat;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.inmobi.commons.core.configs.Config;
import com.inmobi.commons.core.configs.SignalsConfig;
import com.inmobi.media.AbstractC2872ab;
import com.inmobi.media.AbstractC2984h7;
import com.inmobi.media.AbstractC3103oe;
import com.inmobi.media.AbstractC3221w5;
import com.inmobi.media.AbstractC3226wa;
import com.inmobi.media.B6;
import com.inmobi.media.C3182te;
import com.inmobi.media.C6;
import com.inmobi.media.De;
import com.inmobi.media.G4;
import com.inmobi.media.Gd;
import com.inmobi.media.H6;
import com.inmobi.media.I5;
import com.inmobi.media.I7;
import com.inmobi.media.J5;
import com.inmobi.media.L3;
import com.inmobi.media.M2;
import com.inmobi.media.Md;
import com.inmobi.media.O2;
import com.inmobi.media.Pd;
import com.inmobi.media.S5;
import com.inmobi.media.Td;
import com.inmobi.media.Uc;
import com.inmobi.media.Ya;
import com.inmobi.sdk.InMobiSdk;
import com.inmobi.sdk.SdkInitializationListener;
import com.inmobi.unifiedId.InMobiUnifiedIdService;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@Metadata
@SourceDebugExtension({"SMAP\nInMobiSdk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InMobiSdk.kt\ncom/inmobi/sdk/InMobiSdk\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,602:1\n107#2:603\n79#2,22:604\n13309#3,2:626\n*S KotlinDebug\n*F\n+ 1 InMobiSdk.kt\ncom/inmobi/sdk/InMobiSdk\n*L\n118#1:603\n118#1:604,22\n288#1:626,2\n*E\n"})
/* loaded from: classes5.dex */
public final class InMobiSdk {
    @NotNull
    public static final String IM_GDPR_CONSENT_AVAILABLE = "gdpr_consent_available";
    @NotNull
    public static final String IM_GDPR_CONSENT_GDPR_APPLIES = "gdpr";
    @NotNull
    public static final String IM_GDPR_CONSENT_IAB = "gdpr_consent";
    @NotNull
    public static final InMobiSdk INSTANCE = new InMobiSdk();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class AgeGroup {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ AgeGroup[] $VALUES;
        @NotNull
        private final String value;
        public static final AgeGroup BELOW_18 = new AgeGroup(InMobiNetworkValues.BELOW_18, 0, "below18");
        public static final AgeGroup BETWEEN_18_AND_24 = new AgeGroup(InMobiNetworkValues.BETWEEN_18_AND_24, 1, "between18and24");
        public static final AgeGroup BETWEEN_25_AND_29 = new AgeGroup(InMobiNetworkValues.BETWEEN_25_AND_29, 2, "between25and29");
        public static final AgeGroup BETWEEN_30_AND_34 = new AgeGroup(InMobiNetworkValues.BETWEEN_30_AND_34, 3, "between30and34");
        public static final AgeGroup BETWEEN_35_AND_44 = new AgeGroup(InMobiNetworkValues.BETWEEN_35_AND_44, 4, "between35and44");
        public static final AgeGroup BETWEEN_45_AND_54 = new AgeGroup(InMobiNetworkValues.BETWEEN_45_AND_54, 5, "between45and54");
        public static final AgeGroup BETWEEN_55_AND_65 = new AgeGroup(InMobiNetworkValues.BETWEEN_55_AND_65, 6, "between55and65");
        public static final AgeGroup ABOVE_65 = new AgeGroup(InMobiNetworkValues.ABOVE_65, 7, "above65");

        private static final /* synthetic */ AgeGroup[] $values() {
            return new AgeGroup[]{BELOW_18, BETWEEN_18_AND_24, BETWEEN_25_AND_29, BETWEEN_30_AND_34, BETWEEN_35_AND_44, BETWEEN_45_AND_54, BETWEEN_55_AND_65, ABOVE_65};
        }

        static {
            AgeGroup[] $values = $values();
            $VALUES = $values;
            $ENTRIES = kotlin.enums.a.a($values);
        }

        private AgeGroup(String str, int i10, String str2) {
            this.value = str2;
        }

        @NotNull
        public static ss.a<AgeGroup> getEntries() {
            return $ENTRIES;
        }

        public static AgeGroup valueOf(String str) {
            return (AgeGroup) Enum.valueOf(AgeGroup.class, str);
        }

        public static AgeGroup[] values() {
            return (AgeGroup[]) $VALUES.clone();
        }

        @Override // java.lang.Enum
        @NotNull
        public String toString() {
            return this.value;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class Education {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ Education[] $VALUES;
        @NotNull
        private final String value;
        public static final Education HIGH_SCHOOL_OR_LESS = new Education("HIGH_SCHOOL_OR_LESS", 0, "highschoolorless");
        public static final Education COLLEGE_OR_GRADUATE = new Education("COLLEGE_OR_GRADUATE", 1, "collegeorgraduate");
        public static final Education POST_GRADUATE_OR_ABOVE = new Education("POST_GRADUATE_OR_ABOVE", 2, "postgraduateorabove");

        private static final /* synthetic */ Education[] $values() {
            return new Education[]{HIGH_SCHOOL_OR_LESS, COLLEGE_OR_GRADUATE, POST_GRADUATE_OR_ABOVE};
        }

        static {
            Education[] $values = $values();
            $VALUES = $values;
            $ENTRIES = kotlin.enums.a.a($values);
        }

        private Education(String str, int i10, String str2) {
            this.value = str2;
        }

        @NotNull
        public static ss.a<Education> getEntries() {
            return $ENTRIES;
        }

        public static Education valueOf(String str) {
            return (Education) Enum.valueOf(Education.class, str);
        }

        public static Education[] values() {
            return (Education[]) $VALUES.clone();
        }

        @Override // java.lang.Enum
        @NotNull
        public String toString() {
            return this.value;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class Gender {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ Gender[] $VALUES;
        public static final Gender FEMALE = new Gender("FEMALE", 0, "f");
        public static final Gender MALE = new Gender("MALE", 1, "m");
        @NotNull
        private final String value;

        private static final /* synthetic */ Gender[] $values() {
            return new Gender[]{FEMALE, MALE};
        }

        static {
            Gender[] $values = $values();
            $VALUES = $values;
            $ENTRIES = kotlin.enums.a.a($values);
        }

        private Gender(String str, int i10, String str2) {
            this.value = str2;
        }

        @NotNull
        public static ss.a<Gender> getEntries() {
            return $ENTRIES;
        }

        public static Gender valueOf(String str) {
            return (Gender) Enum.valueOf(Gender.class, str);
        }

        public static Gender[] values() {
            return (Gender[]) $VALUES.clone();
        }

        @Override // java.lang.Enum
        @NotNull
        public String toString() {
            return this.value;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class LogLevel {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ LogLevel[] $VALUES;
        public static final LogLevel NONE = new LogLevel("NONE", 0);
        public static final LogLevel ERROR = new LogLevel("ERROR", 1);
        public static final LogLevel DEBUG = new LogLevel("DEBUG", 2);

        private static final /* synthetic */ LogLevel[] $values() {
            return new LogLevel[]{NONE, ERROR, DEBUG};
        }

        static {
            LogLevel[] $values = $values();
            $VALUES = $values;
            $ENTRIES = kotlin.enums.a.a($values);
        }

        private LogLevel(String str, int i10) {
        }

        @NotNull
        public static ss.a<LogLevel> getEntries() {
            return $ENTRIES;
        }

        public static LogLevel valueOf(String str) {
            return (LogLevel) Enum.valueOf(LogLevel.class, str);
        }

        public static LogLevel[] values() {
            return (LogLevel[]) $VALUES.clone();
        }
    }

    @Metadata
    /* loaded from: classes5.dex */
    public static final class PublisherSignals {
        @NotNull
        public static final PublisherSignals INSTANCE = new PublisherSignals();

        @Nullable
        public final Map<String, Object> getPublisherSignals() {
            Map<String, Object> a10;
            if (InMobiSdk.isSDKInitialized()) {
                Ya ya2 = Ya.f24405a;
                ya2.getClass();
                try {
                    LinkedHashMap linkedHashMap = O2.f23923a;
                    Config a11 = M2.a("signals", Uc.b(), null);
                    Intrinsics.checkNotNull(a11, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig");
                    SignalsConfig.PublisherConfig publisherConfig = ((SignalsConfig) a11).getPublisherConfig();
                    if (!publisherConfig.getEnableMCO() && !publisherConfig.getEnableAB()) {
                        a10 = p0.i();
                        return a10;
                    }
                    a10 = ya2.a();
                    return a10;
                } catch (Exception e10) {
                    S5 s52 = S5.f24132a;
                    S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
                    AbstractC2984h7.a((byte) 1, "PubSignalsStore", "Publisher signals could not be retrieved.");
                    return p0.i();
                }
            }
            String access$getTAG$p = InMobiSdk.access$getTAG$p();
            Intrinsics.checkNotNullExpressionValue(access$getTAG$p, "access$getTAG$p(...)");
            AbstractC2984h7.a((byte) 1, access$getTAG$p, "SDK not initialized. Cannot get publisher signals.");
            return null;
        }

        public final void putPublisherSignals(@Nullable Map<String, ? extends Object> map) {
            if (InMobiSdk.isSDKInitialized()) {
                if (map != null) {
                    Ya ya2 = Ya.f24405a;
                    ya2.getClass();
                    Intrinsics.checkNotNullParameter(map, "signals");
                    try {
                        LinkedHashMap linkedHashMap = O2.f23923a;
                        Config a10 = M2.a("signals", Uc.b(), null);
                        Intrinsics.checkNotNull(a10, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig");
                        SignalsConfig.PublisherConfig publisherConfig = ((SignalsConfig) a10).getPublisherConfig();
                        if (!publisherConfig.getEnableMCO() && !publisherConfig.getEnableAB()) {
                            AbstractC2984h7.a((byte) 1, "PubSignalsStore", "Publisher signals are disabled from InMobi");
                            return;
                        }
                        LinkedHashMap a11 = ya2.a();
                        Intrinsics.checkNotNullParameter(a11, "<this>");
                        Intrinsics.checkNotNullParameter(map, "map");
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                        linkedHashMap2.putAll(a11);
                        linkedHashMap2.putAll(map);
                        JSONObject a12 = Ya.a(Ya.a(Ya.a(linkedHashMap2, publisherConfig)), publisherConfig);
                        if (a12 != null) {
                            Ya.a(a12);
                        }
                        return;
                    } catch (Exception e10) {
                        S5 s52 = S5.f24132a;
                        S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
                        AbstractC2984h7.a((byte) 1, "PubSignalsStore", "Publisher signals could not be saved.");
                        return;
                    }
                }
                return;
            }
            String access$getTAG$p = InMobiSdk.access$getTAG$p();
            Intrinsics.checkNotNullExpressionValue(access$getTAG$p, "access$getTAG$p(...)");
            AbstractC2984h7.a((byte) 1, access$getTAG$p, "SDK not initialized. Cannot set publisher signals.");
        }

        public final void resetPublisherSignals() {
            if (InMobiSdk.isSDKInitialized()) {
                Ya.f24405a.getClass();
                Ya.b();
                return;
            }
            String access$getTAG$p = InMobiSdk.access$getTAG$p();
            Intrinsics.checkNotNullExpressionValue(access$getTAG$p, "access$getTAG$p(...)");
            AbstractC2984h7.a((byte) 1, access$getTAG$p, "SDK not initialized. Cannot reset publisher signals.");
        }
    }

    public static void a(final Context context, final String str, final JSONObject jSONObject, final SdkInitializationListener sdkInitializationListener) {
        Md.a(new Runnable() { // from class: vb.a
            @Override // java.lang.Runnable
            public final void run() {
                InMobiSdk.a(context, sdkInitializationListener, str, jSONObject);
            }
        });
    }

    public static final /* synthetic */ String access$getTAG$p() {
        return "InMobiSdk";
    }

    public static void b(final SdkInitializationListener sdkInitializationListener, final String str) {
        if (sdkInitializationListener != null) {
            Md.a(new Runnable() { // from class: vb.b
                @Override // java.lang.Runnable
                public final void run() {
                    InMobiSdk.c(SdkInitializationListener.this, str);
                }
            });
        }
        if (str == null) {
            StringBuilder a10 = H6.a("InMobiSdk", "TAG", "InMobi SDK initialized with account id: ");
            a10.append(Uc.b());
            AbstractC2984h7.a((byte) 2, "InMobiSdk", a10.toString());
            return;
        }
        Intrinsics.checkNotNullExpressionValue("InMobiSdk", "TAG");
        AbstractC2984h7.a((byte) 1, "InMobiSdk", str);
    }

    public static final void c(SdkInitializationListener sdkInitializationListener, String str) {
        INSTANCE.a(sdkInitializationListener, str);
    }

    @Nullable
    public static final String getToken() {
        return getToken(null, null);
    }

    @NotNull
    public static final String getVersion() {
        return "10.8.7";
    }

    @UiThread
    public static final void init(@Nullable Context context, @Size(max = 36, min = 32) @Nullable String str, @Nullable JSONObject jSONObject, @Nullable SdkInitializationListener sdkInitializationListener) {
        Context context2;
        InMobiSdk inMobiSdk = INSTANCE;
        if (context != null) {
            context2 = context.getApplicationContext();
        } else {
            context2 = null;
        }
        inMobiSdk.getClass();
        a(context2, str, jSONObject, sdkInitializationListener);
    }

    public static final boolean isSDKInitialized() {
        return Uc.q();
    }

    public static final void setAge(int i10) {
        Context d10 = Uc.d();
        if (i10 != Integer.MIN_VALUE) {
            AbstractC2872ab.f24491a = i10;
            if (d10 != null) {
                ConcurrentHashMap concurrentHashMap = C6.f23529b;
                C6.a(B6.a(d10, "user_info_store"), "user_age", i10, false, 4, (Object) null);
            }
        }
    }

    public static final void setAgeGroup(@NotNull AgeGroup group) {
        Intrinsics.checkNotNullParameter(group, "group");
        String ageGroup = group.toString();
        Locale ENGLISH = Locale.ENGLISH;
        Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
        String lowerCase = ageGroup.toLowerCase(ENGLISH);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        Context d10 = Uc.d();
        if (lowerCase != null) {
            AbstractC2872ab.f24493c = lowerCase;
            if (d10 != null) {
                ConcurrentHashMap concurrentHashMap = C6.f23529b;
                C6.a(B6.a(d10, "user_info_store"), "user_age_group", lowerCase, false, 4, (Object) null);
            }
        }
    }

    public static final void setApplicationMuted(boolean z10) {
        Uc.b(z10);
    }

    public static final void setAreaCode(@Nullable String str) {
        Context d10 = Uc.d();
        AbstractC2872ab.f24494d = str;
        if (d10 != null && str != null) {
            ConcurrentHashMap concurrentHashMap = C6.f23529b;
            C6.a(B6.a(d10, "user_info_store"), "user_area_code", str, false, 4, (Object) null);
        }
    }

    public static final void setEducation(@NotNull Education education) {
        Intrinsics.checkNotNullParameter(education, "education");
        String education2 = education.toString();
        Locale ENGLISH = Locale.ENGLISH;
        Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
        String lowerCase = education2.toLowerCase(ENGLISH);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        Context d10 = Uc.d();
        if (lowerCase != null) {
            AbstractC2872ab.f24501k = lowerCase;
            if (d10 != null) {
                ConcurrentHashMap concurrentHashMap = C6.f23529b;
                C6.a(B6.a(d10, "user_info_store"), "user_education", lowerCase, false, 4, (Object) null);
            }
        }
    }

    public static final void setGender(@NotNull Gender gender) {
        Intrinsics.checkNotNullParameter(gender, "gender");
        String gender2 = gender.toString();
        Locale ENGLISH = Locale.ENGLISH;
        Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
        String lowerCase = gender2.toLowerCase(ENGLISH);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        Context d10 = Uc.d();
        if (lowerCase != null) {
            AbstractC2872ab.f24500j = lowerCase;
            if (d10 != null) {
                ConcurrentHashMap concurrentHashMap = C6.f23529b;
                C6.a(B6.a(d10, "user_info_store"), "user_gender", lowerCase, false, 4, (Object) null);
            }
        }
    }

    public static final void setInterests(@Nullable String str) {
        Context d10 = Uc.d();
        if (str != null) {
            AbstractC2872ab.f24503m = str;
            if (d10 != null) {
                ConcurrentHashMap concurrentHashMap = C6.f23529b;
                C6.a(B6.a(d10, "user_info_store"), "user_interest", str, false, 4, (Object) null);
            }
        }
    }

    public static final void setIsAgeRestricted(boolean z10) {
        AbstractC2872ab.a(z10);
        C3182te.f25312a.a(z10);
        if (z10) {
            InMobiUnifiedIdService.reset();
            I5.a();
        }
    }

    public static final void setLanguage(@Nullable String str) {
        Context d10 = Uc.d();
        if (str != null) {
            AbstractC2872ab.f24502l = str;
            if (d10 != null) {
                ConcurrentHashMap concurrentHashMap = C6.f23529b;
                C6.a(B6.a(d10, "user_info_store"), "user_language", str, false, 4, (Object) null);
            }
        }
    }

    public static final void setLocation(@Nullable Location location) {
        Context d10 = Uc.d();
        if (location != null) {
            AbstractC2872ab.f24504n = location;
            if (d10 != null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(location.getLatitude());
                sb2.append(',');
                sb2.append(location.getLongitude());
                sb2.append(',');
                sb2.append((int) location.getAccuracy());
                sb2.append(',');
                sb2.append(location.getTime());
                String sb3 = sb2.toString();
                ConcurrentHashMap concurrentHashMap = C6.f23529b;
                C6.a(B6.a(d10, "user_info_store"), "user_location", sb3, false, 4, (Object) null);
            }
        }
    }

    public static final void setLocationWithCityStateCountry(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        Context d10 = Uc.d();
        if (str != null) {
            AbstractC2872ab.f24496f = str;
            if (d10 != null) {
                ConcurrentHashMap concurrentHashMap = C6.f23529b;
                C6.a(B6.a(d10, "user_info_store"), "user_city_code", str, false, 4, (Object) null);
            }
        }
        Context d11 = Uc.d();
        if (str2 != null) {
            AbstractC2872ab.f24497g = str2;
            if (d11 != null) {
                ConcurrentHashMap concurrentHashMap2 = C6.f23529b;
                C6.a(B6.a(d11, "user_info_store"), "user_state_code", str2, false, 4, (Object) null);
            }
        }
        Context d12 = Uc.d();
        if (str3 != null) {
            AbstractC2872ab.f24498h = str3;
            if (d12 != null) {
                ConcurrentHashMap concurrentHashMap3 = C6.f23529b;
                C6.a(B6.a(d12, "user_info_store"), "user_country_code", str3, false, 4, (Object) null);
            }
        }
    }

    public static final void setLogLevel(@Nullable LogLevel logLevel) {
        int i10;
        if (logLevel == null) {
            i10 = -1;
        } else {
            i10 = a.f25520a[logLevel.ordinal()];
        }
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    AbstractC2984h7.a((byte) 2);
                    return;
                } else {
                    AbstractC2984h7.a((byte) 2);
                    return;
                }
            }
            AbstractC2984h7.a((byte) 1);
            return;
        }
        AbstractC2984h7.a((byte) 0);
    }

    public static final void setPartnerGDPRConsent(@Nullable JSONObject jSONObject) {
        G4.c(jSONObject);
    }

    public static final void setPostalCode(@Nullable String str) {
        Context d10 = Uc.d();
        if (str != null) {
            AbstractC2872ab.f24495e = str;
            if (d10 != null) {
                ConcurrentHashMap concurrentHashMap = C6.f23529b;
                C6.a(B6.a(d10, "user_info_store"), "user_post_code", str, false, 4, (Object) null);
            }
        }
    }

    public static final void setPublisherProvidedUnifiedId(@Nullable JSONObject jSONObject) {
        Intrinsics.checkNotNullExpressionValue("InMobiSdk", "TAG");
        Objects.toString(jSONObject);
        Uc.a(new J5(jSONObject));
    }

    public static final void setYearOfBirth(int i10) {
        Context d10 = Uc.d();
        if (i10 != Integer.MIN_VALUE) {
            AbstractC2872ab.f24499i = i10;
            if (d10 != null) {
                ConcurrentHashMap concurrentHashMap = C6.f23529b;
                C6.a(B6.a(d10, "user_info_store"), "user_yob", i10, false, 4, (Object) null);
            }
        }
    }

    public static final void updateGDPRConsent(@Nullable JSONObject jSONObject) {
        G4.b(jSONObject);
    }

    public static final void a(final Context context, final SdkInitializationListener sdkInitializationListener, String str, JSONObject jSONObject) {
        if (context == null) {
            INSTANCE.getClass();
            b(sdkInitializationListener, SdkInitializationListener.MISSING_CONTEXT);
        } else if (str == null) {
            INSTANCE.getClass();
            b(sdkInitializationListener, "Account id cannot be empty. Please provide a valid account id.");
        } else {
            final long elapsedRealtime = SystemClock.elapsedRealtime();
            Gd.f23688a.a();
            if (De.f23600a.c()) {
                INSTANCE.getClass();
                b(sdkInitializationListener, "SDK could not be initialized; Required dependency could not be found. Please check out documentation and include the required dependency.");
                return;
            }
            int length = str.length() - 1;
            int i10 = 0;
            boolean z10 = false;
            while (i10 <= length) {
                boolean z11 = Intrinsics.compare((int) str.charAt(!z10 ? i10 : length), 32) <= 0;
                if (z10) {
                    if (!z11) {
                        break;
                    }
                    length--;
                } else if (z11) {
                    i10++;
                } else {
                    z10 = true;
                }
            }
            final String a10 = I7.a(length, 1, str, i10);
            try {
                G4.b(jSONObject);
                if (a10.length() == 0) {
                    INSTANCE.getClass();
                    b(sdkInitializationListener, "Account id cannot be empty. Please provide a valid account id.");
                    return;
                }
                if (!AbstractC3226wa.a(context, "android.permission.ACCESS_COARSE_LOCATION") && !AbstractC3226wa.a(context, "android.permission.ACCESS_FINE_LOCATION")) {
                    Intrinsics.checkNotNullExpressionValue("InMobiSdk", "TAG");
                    AbstractC2984h7.a((byte) 1, "InMobiSdk", "Please grant the location permissions (ACCESS_COARSE_LOCATION or ACCESS_FINE_LOCATION, or both) for better ad targeting.");
                }
                if (Uc.q()) {
                    Intrinsics.checkNotNullExpressionValue("InMobiSdk", "TAG");
                    INSTANCE.getClass();
                    b(sdkInitializationListener, null);
                    return;
                }
                Uc uc2 = Uc.f24267a;
                if (uc2.i() == 1) {
                    Intrinsics.checkNotNullExpressionValue("InMobiSdk", "TAG");
                } else if (!Uc.b(context, a10)) {
                    Intrinsics.checkNotNullExpressionValue("InMobiSdk", "TAG");
                    uc2.s();
                    INSTANCE.getClass();
                    b(sdkInitializationListener, SdkInitializationListener.MISSING_WEBVIEW_DEPENDENCY);
                } else {
                    De.f23600a.e(context);
                    INSTANCE.getClass();
                    a();
                    Uc.a(new Runnable() { // from class: vb.d
                        @Override // java.lang.Runnable
                        public final void run() {
                            InMobiSdk.a(context, a10, sdkInitializationListener, elapsedRealtime);
                        }
                    });
                }
            } catch (Exception unused) {
                Intrinsics.checkNotNullExpressionValue("InMobiSdk", "TAG");
                Uc.f24267a.s();
                INSTANCE.getClass();
                b(sdkInitializationListener, "SDK could not be initialized; an unexpected error was encountered.");
            }
        }
    }

    @UiThread
    @Nullable
    public static final String getToken(@Nullable Map<String, String> map, @Nullable String str) {
        return AbstractC3103oe.a(map, str);
    }

    public static final void b() {
        String[] strArr = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_WIFI_STATE", "android.permission.CHANGE_WIFI_STATE"};
        StringBuilder sb2 = new StringBuilder("Permissions granted to SDK are :\nandroid.permission.INTERNET\nandroid.permission.ACCESS_NETWORK_STATE");
        for (int i10 = 0; i10 < 4; i10++) {
            String str = strArr[i10];
            if (AbstractC3226wa.a(Uc.d(), str)) {
                sb2.append("\n");
                sb2.append(str);
            }
        }
        Intrinsics.checkNotNullExpressionValue("InMobiSdk", "TAG");
        AbstractC2984h7.a((byte) 2, "InMobiSdk", sb2.toString());
    }

    public static final void a(Context context, String str, SdkInitializationListener sdkInitializationListener, long j10) {
        try {
            De de2 = De.f23600a;
            de2.a(context);
            Uc uc2 = Uc.f24267a;
            uc2.a();
            uc2.b(str);
            de2.c(context);
            uc2.t();
            INSTANCE.getClass();
            b(sdkInitializationListener, null);
            LinkedHashMap a10 = a(j10);
            Pd pd2 = Pd.f23988a;
            Pd.b("SdkInitialized", a10, Td.f24224a);
            InMobiUnifiedIdService.push(null);
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue("InMobiSdk", "TAG");
            Uc.f24267a.s();
            INSTANCE.getClass();
            b(sdkInitializationListener, "SDK could not be initialized; an unexpected error was encountered.");
        }
    }

    public final void a(SdkInitializationListener sdkInitializationListener, String str) {
        sdkInitializationListener.onInitializationComplete(str == null ? null : new Error(str));
    }

    public static LinkedHashMap a(long j10) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - j10));
        Intrinsics.checkNotNullExpressionValue("InMobiSdk", "TAG");
        Objects.toString(linkedHashMap.get("latency"));
        linkedHashMap.put("networkType", L3.q());
        linkedHashMap.put("integrationType", "InMobi");
        return linkedHashMap;
    }

    public static void a() {
        Uc.a(new Runnable() { // from class: vb.c
            @Override // java.lang.Runnable
            public final void run() {
                InMobiSdk.b();
            }
        });
    }
}
