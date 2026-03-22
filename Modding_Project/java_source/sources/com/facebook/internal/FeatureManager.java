package com.facebook.internal;

import androidx.annotation.RestrictTo;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import androidx.profileinstaller.ProfileVerifier;
import com.facebook.internal.o;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: FeatureManager.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class FeatureManager {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final FeatureManager f16097a = new FeatureManager();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final Map<Feature, String[]> f16098b = new HashMap();

    /* compiled from: FeatureManager.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public enum Feature {
        Unknown(-1),
        Core(0),
        AppEvents(65536),
        CodelessEvents(65792),
        CloudBridge(67584),
        RestrictiveDataFiltering(66048),
        AAM(66304),
        PrivacyProtection(66560),
        SuggestedEvents(66561),
        IntelligentIntegrity(66562),
        ModelRequest(66563),
        ProtectedMode(66564),
        MACARuleMatching(66565),
        BlocklistEvents(66566),
        FilterRedactedEvents(66567),
        FilterSensitiveParams(66568),
        StdParamEnforcement(16843785),
        BannedParamFiltering(16843786),
        EventDeactivation(66816),
        OnDeviceEventProcessing(67072),
        OnDevicePostInstallEventProcessing(67073),
        IapLogging(67328),
        IapLoggingLib2(67329),
        IapLoggingLib5To7(67330),
        AndroidManualImplicitPurchaseDedupe(67331),
        AndroidManualImplicitSubsDedupe(67332),
        AndroidIAPSubscriptionAutoLogging(67333),
        Instrument(131072),
        CrashReport(131328),
        CrashShield(131329),
        ThreadCheck(131330),
        ErrorReport(131584),
        AnrReport(131840),
        Monitoring(ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE),
        ServiceUpdateCompliance(196864),
        Megatron(262144),
        Elora(ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_NO_PROFILE_EMBEDDED),
        GPSARATriggers(393216),
        GPSPACAProcessing(458752),
        GPSTopicsObservation(524288),
        Login(16777216),
        ChromeCustomTabsPrefetching(16842752),
        IgnoreAppSwitchToLoggedOut(16908288),
        BypassAppSwitch(16973824),
        Share(33554432);
        
        @NotNull
        public static final a Companion = new a(null);
        private final int code;

        /* compiled from: FeatureManager.kt */
        @Metadata
        /* loaded from: classes3.dex */
        public static final class a {
            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final Feature a(int i10) {
                Feature[] values;
                for (Feature feature : Feature.values()) {
                    if (feature.code == i10) {
                        return feature;
                    }
                }
                return Feature.Unknown;
            }

            private a() {
            }
        }

        /* compiled from: FeatureManager.kt */
        @Metadata
        /* loaded from: classes3.dex */
        public /* synthetic */ class b {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Feature.values().length];
                try {
                    iArr[Feature.Core.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Feature.AppEvents.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[Feature.CodelessEvents.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[Feature.RestrictiveDataFiltering.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[Feature.Instrument.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[Feature.CrashReport.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[Feature.CrashShield.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    iArr[Feature.ThreadCheck.ordinal()] = 8;
                } catch (NoSuchFieldError unused8) {
                }
                try {
                    iArr[Feature.ErrorReport.ordinal()] = 9;
                } catch (NoSuchFieldError unused9) {
                }
                try {
                    iArr[Feature.AnrReport.ordinal()] = 10;
                } catch (NoSuchFieldError unused10) {
                }
                try {
                    iArr[Feature.AAM.ordinal()] = 11;
                } catch (NoSuchFieldError unused11) {
                }
                try {
                    iArr[Feature.CloudBridge.ordinal()] = 12;
                } catch (NoSuchFieldError unused12) {
                }
                try {
                    iArr[Feature.PrivacyProtection.ordinal()] = 13;
                } catch (NoSuchFieldError unused13) {
                }
                try {
                    iArr[Feature.SuggestedEvents.ordinal()] = 14;
                } catch (NoSuchFieldError unused14) {
                }
                try {
                    iArr[Feature.IntelligentIntegrity.ordinal()] = 15;
                } catch (NoSuchFieldError unused15) {
                }
                try {
                    iArr[Feature.StdParamEnforcement.ordinal()] = 16;
                } catch (NoSuchFieldError unused16) {
                }
                try {
                    iArr[Feature.ProtectedMode.ordinal()] = 17;
                } catch (NoSuchFieldError unused17) {
                }
                try {
                    iArr[Feature.BannedParamFiltering.ordinal()] = 18;
                } catch (NoSuchFieldError unused18) {
                }
                try {
                    iArr[Feature.MACARuleMatching.ordinal()] = 19;
                } catch (NoSuchFieldError unused19) {
                }
                try {
                    iArr[Feature.BlocklistEvents.ordinal()] = 20;
                } catch (NoSuchFieldError unused20) {
                }
                try {
                    iArr[Feature.FilterRedactedEvents.ordinal()] = 21;
                } catch (NoSuchFieldError unused21) {
                }
                try {
                    iArr[Feature.FilterSensitiveParams.ordinal()] = 22;
                } catch (NoSuchFieldError unused22) {
                }
                try {
                    iArr[Feature.ModelRequest.ordinal()] = 23;
                } catch (NoSuchFieldError unused23) {
                }
                try {
                    iArr[Feature.EventDeactivation.ordinal()] = 24;
                } catch (NoSuchFieldError unused24) {
                }
                try {
                    iArr[Feature.OnDeviceEventProcessing.ordinal()] = 25;
                } catch (NoSuchFieldError unused25) {
                }
                try {
                    iArr[Feature.OnDevicePostInstallEventProcessing.ordinal()] = 26;
                } catch (NoSuchFieldError unused26) {
                }
                try {
                    iArr[Feature.IapLogging.ordinal()] = 27;
                } catch (NoSuchFieldError unused27) {
                }
                try {
                    iArr[Feature.IapLoggingLib2.ordinal()] = 28;
                } catch (NoSuchFieldError unused28) {
                }
                try {
                    iArr[Feature.IapLoggingLib5To7.ordinal()] = 29;
                } catch (NoSuchFieldError unused29) {
                }
                try {
                    iArr[Feature.AndroidManualImplicitPurchaseDedupe.ordinal()] = 30;
                } catch (NoSuchFieldError unused30) {
                }
                try {
                    iArr[Feature.AndroidManualImplicitSubsDedupe.ordinal()] = 31;
                } catch (NoSuchFieldError unused31) {
                }
                try {
                    iArr[Feature.AndroidIAPSubscriptionAutoLogging.ordinal()] = 32;
                } catch (NoSuchFieldError unused32) {
                }
                try {
                    iArr[Feature.Monitoring.ordinal()] = 33;
                } catch (NoSuchFieldError unused33) {
                }
                try {
                    iArr[Feature.Megatron.ordinal()] = 34;
                } catch (NoSuchFieldError unused34) {
                }
                try {
                    iArr[Feature.Elora.ordinal()] = 35;
                } catch (NoSuchFieldError unused35) {
                }
                try {
                    iArr[Feature.GPSARATriggers.ordinal()] = 36;
                } catch (NoSuchFieldError unused36) {
                }
                try {
                    iArr[Feature.GPSPACAProcessing.ordinal()] = 37;
                } catch (NoSuchFieldError unused37) {
                }
                try {
                    iArr[Feature.GPSTopicsObservation.ordinal()] = 38;
                } catch (NoSuchFieldError unused38) {
                }
                try {
                    iArr[Feature.ServiceUpdateCompliance.ordinal()] = 39;
                } catch (NoSuchFieldError unused39) {
                }
                try {
                    iArr[Feature.Login.ordinal()] = 40;
                } catch (NoSuchFieldError unused40) {
                }
                try {
                    iArr[Feature.ChromeCustomTabsPrefetching.ordinal()] = 41;
                } catch (NoSuchFieldError unused41) {
                }
                try {
                    iArr[Feature.IgnoreAppSwitchToLoggedOut.ordinal()] = 42;
                } catch (NoSuchFieldError unused42) {
                }
                try {
                    iArr[Feature.BypassAppSwitch.ordinal()] = 43;
                } catch (NoSuchFieldError unused43) {
                }
                try {
                    iArr[Feature.Share.ordinal()] = 44;
                } catch (NoSuchFieldError unused44) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        Feature(int i10) {
            this.code = i10;
        }

        @NotNull
        public final Feature getParent() {
            int i10 = this.code;
            if ((i10 & 255) > 0) {
                return Companion.a(i10 & InputDeviceCompat.SOURCE_ANY);
            }
            if ((65280 & i10) > 0) {
                return Companion.a(i10 & SupportMenu.CATEGORY_MASK);
            }
            if ((16711680 & i10) > 0) {
                return Companion.a(i10 & ViewCompat.MEASURED_STATE_MASK);
            }
            return Companion.a(0);
        }

        @NotNull
        public final String toKey() {
            return "FBSDKFeature" + this;
        }

        @Override // java.lang.Enum
        @NotNull
        public String toString() {
            switch (b.$EnumSwitchMapping$0[ordinal()]) {
                case 1:
                    return "CoreKit";
                case 2:
                    return "AppEvents";
                case 3:
                    return "CodelessEvents";
                case 4:
                    return "RestrictiveDataFiltering";
                case 5:
                    return "Instrument";
                case 6:
                    return "CrashReport";
                case 7:
                    return "CrashShield";
                case 8:
                    return "ThreadCheck";
                case 9:
                    return "ErrorReport";
                case 10:
                    return "AnrReport";
                case 11:
                    return "AAM";
                case 12:
                    return "AppEventsCloudbridge";
                case 13:
                    return "PrivacyProtection";
                case 14:
                    return "SuggestedEvents";
                case 15:
                    return "IntelligentIntegrity";
                case 16:
                    return "StdParamEnforcement";
                case 17:
                    return "ProtectedMode";
                case 18:
                    return "BannedParamFiltering";
                case 19:
                    return "MACARuleMatching";
                case 20:
                    return "BlocklistEvents";
                case 21:
                    return "FilterRedactedEvents";
                case 22:
                    return "FilterSensitiveParams";
                case 23:
                    return "ModelRequest";
                case 24:
                    return "EventDeactivation";
                case 25:
                    return "OnDeviceEventProcessing";
                case 26:
                    return "OnDevicePostInstallEventProcessing";
                case 27:
                    return "IAPLogging";
                case 28:
                    return "IAPLoggingLib2";
                case 29:
                    return "IAPLoggingLib5To7";
                case 30:
                    return "AndroidManualImplicitPurchaseDedupe";
                case 31:
                    return "AndroidManualImplicitSubsDedupe";
                case 32:
                    return "AndroidIAPSubscriptionAutoLogging";
                case 33:
                    return "Monitoring";
                case 34:
                    return "Megatron";
                case 35:
                    return "Elora";
                case 36:
                    return "GPSARATriggers";
                case 37:
                    return "GPSPACAProcessing";
                case 38:
                    return "GPSTopicsObservation";
                case 39:
                    return "ServiceUpdateCompliance";
                case 40:
                    return "LoginKit";
                case 41:
                    return "ChromeCustomTabsPrefetching";
                case 42:
                    return "IgnoreAppSwitchToLoggedOut";
                case 43:
                    return "BypassAppSwitch";
                case 44:
                    return "ShareKit";
                default:
                    return "unknown";
            }
        }
    }

    /* compiled from: FeatureManager.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface a {
        void a(boolean z10);
    }

    /* compiled from: FeatureManager.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Feature.values().length];
            try {
                iArr[Feature.RestrictiveDataFiltering.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Feature.Instrument.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Feature.CrashReport.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Feature.CrashShield.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Feature.ThreadCheck.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[Feature.ErrorReport.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[Feature.AnrReport.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[Feature.AAM.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[Feature.CloudBridge.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[Feature.PrivacyProtection.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[Feature.SuggestedEvents.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[Feature.IntelligentIntegrity.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[Feature.ModelRequest.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[Feature.EventDeactivation.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[Feature.OnDeviceEventProcessing.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[Feature.OnDevicePostInstallEventProcessing.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[Feature.IapLogging.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[Feature.IapLoggingLib2.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[Feature.IapLoggingLib5To7.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[Feature.AndroidManualImplicitPurchaseDedupe.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[Feature.AndroidManualImplicitSubsDedupe.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[Feature.AndroidIAPSubscriptionAutoLogging.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[Feature.BannedParamFiltering.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr[Feature.ProtectedMode.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr[Feature.StdParamEnforcement.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr[Feature.MACARuleMatching.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr[Feature.BlocklistEvents.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr[Feature.FilterRedactedEvents.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr[Feature.FilterSensitiveParams.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr[Feature.ChromeCustomTabsPrefetching.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr[Feature.Monitoring.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr[Feature.IgnoreAppSwitchToLoggedOut.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr[Feature.BypassAppSwitch.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                iArr[Feature.GPSARATriggers.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                iArr[Feature.GPSPACAProcessing.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                iArr[Feature.GPSTopicsObservation.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* compiled from: FeatureManager.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class c implements o.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a f16099a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Feature f16100b;

        c(a aVar, Feature feature) {
            this.f16099a = aVar;
            this.f16100b = feature;
        }

        @Override // com.facebook.internal.o.a
        public void a() {
            this.f16099a.a(FeatureManager.g(this.f16100b));
        }
    }

    private FeatureManager() {
    }

    public static final void a(@NotNull Feature feature, @NotNull a callback) {
        Intrinsics.checkNotNullParameter(feature, "feature");
        Intrinsics.checkNotNullParameter(callback, "callback");
        o.h(new c(callback, feature));
    }

    private final boolean b(Feature feature) {
        switch (b.$EnumSwitchMapping$0[feature.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
                return false;
            default:
                return true;
        }
    }

    public static final void c(@NotNull Feature feature) {
        Intrinsics.checkNotNullParameter(feature, "feature");
        com.facebook.v.l().getSharedPreferences("com.facebook.internal.FEATURE_MANAGER", 0).edit().putString(feature.toKey(), com.facebook.v.C()).apply();
    }

    @NotNull
    public static final Feature d(@NotNull String className) {
        Intrinsics.checkNotNullParameter(className, "className");
        f16097a.f();
        for (Map.Entry<Feature, String[]> entry : f16098b.entrySet()) {
            Feature key = entry.getKey();
            for (String str : entry.getValue()) {
                if (StringsKt.V(className, str, false, 2, null)) {
                    return key;
                }
            }
        }
        return Feature.Unknown;
    }

    private final boolean e(Feature feature) {
        return o.d(feature.toKey(), com.facebook.v.m(), b(feature));
    }

    private final synchronized void f() {
        Map<Feature, String[]> map = f16098b;
        if (!map.isEmpty()) {
            return;
        }
        map.put(Feature.AAM, new String[]{"com.facebook.appevents.aam."});
        map.put(Feature.CodelessEvents, new String[]{"com.facebook.appevents.codeless."});
        map.put(Feature.CloudBridge, new String[]{"com.facebook.appevents.cloudbridge."});
        map.put(Feature.ErrorReport, new String[]{"com.facebook.internal.instrument.errorreport."});
        map.put(Feature.AnrReport, new String[]{"com.facebook.internal.instrument.anrreport."});
        map.put(Feature.PrivacyProtection, new String[]{"com.facebook.appevents.ml."});
        map.put(Feature.SuggestedEvents, new String[]{"com.facebook.appevents.suggestedevents."});
        map.put(Feature.RestrictiveDataFiltering, new String[]{"com.facebook.appevents.restrictivedatafilter.RestrictiveDataManager"});
        map.put(Feature.IntelligentIntegrity, new String[]{"com.facebook.appevents.integrity.IntegrityManager"});
        map.put(Feature.ProtectedMode, new String[]{"com.facebook.appevents.integrity.ProtectedModeManager"});
        map.put(Feature.MACARuleMatching, new String[]{"com.facebook.appevents.integrity.MACARuleMatchingManager"});
        map.put(Feature.BlocklistEvents, new String[]{"com.facebook.appevents.integrity.BlocklistEventsManager"});
        map.put(Feature.FilterRedactedEvents, new String[]{"com.facebook.appevents.integrity.RedactedEventsManager"});
        map.put(Feature.FilterSensitiveParams, new String[]{"com.facebook.appevents.integrity.SensitiveParamsManager"});
        map.put(Feature.EventDeactivation, new String[]{"com.facebook.appevents.eventdeactivation."});
        map.put(Feature.OnDeviceEventProcessing, new String[]{"com.facebook.appevents.ondeviceprocessing."});
        map.put(Feature.IapLogging, new String[]{"com.facebook.appevents.iap."});
        map.put(Feature.Monitoring, new String[]{"com.facebook.internal.logging.monitor"});
        map.put(Feature.GPSARATriggers, new String[]{"com.facebook.appevents.gps.ara.GpsARAManager"});
        map.put(Feature.GPSPACAProcessing, new String[]{"com.facebook.appevents.gps.pa.PACustomAudienceClient"});
        map.put(Feature.GPSTopicsObservation, new String[]{"com.facebook.appevents.gps.topics.GpsTopicsManager"});
    }

    public static final boolean g(@NotNull Feature feature) {
        Intrinsics.checkNotNullParameter(feature, "feature");
        if (Feature.Unknown == feature) {
            return false;
        }
        if (Feature.Core == feature) {
            return true;
        }
        String string = com.facebook.v.l().getSharedPreferences("com.facebook.internal.FEATURE_MANAGER", 0).getString(feature.toKey(), null);
        if (string != null && Intrinsics.areEqual(string, com.facebook.v.C())) {
            return false;
        }
        Feature parent = feature.getParent();
        if (parent == feature) {
            return f16097a.e(feature);
        }
        if (!g(parent) || !f16097a.e(feature)) {
            return false;
        }
        return true;
    }
}
