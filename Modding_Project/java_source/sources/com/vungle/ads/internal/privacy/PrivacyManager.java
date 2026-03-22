package com.vungle.ads.internal.privacy;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import androidx.annotation.VisibleForTesting;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.model.ConfigPayload;
import com.vungle.ads.internal.model.Cookie;
import com.vungle.ads.internal.persistence.FilePreferences;
import com.vungle.ads.internal.util.Logger;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.f;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PrivacyManager.kt */
@Metadata
/* loaded from: classes7.dex */
public final class PrivacyManager {
    @Nullable
    private static PrivacyConsent ccpaConsent;
    @Nullable
    private static FilePreferences filePreferences;
    @Nullable
    private static String gdprConsent;
    @Nullable
    private static String gdprConsentMessageVersion;
    @Nullable
    private static String gdprConsentSource;
    @Nullable
    private static Long gdprConsentTimestamp;
    @Nullable
    private static SharedPreferences sharedPreferences;
    @NotNull
    public static final PrivacyManager INSTANCE = new PrivacyManager();
    @NotNull
    private static final AtomicReference<Boolean> disableAdId = new AtomicReference<>();
    @NotNull
    private static final AtomicReference<Boolean> coppaStatus = new AtomicReference<>();
    @NotNull
    private static final AtomicBoolean initialized = new AtomicBoolean(false);

    /* compiled from: PrivacyManager.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public enum DeviceIdAllowed {
        ALLOW_ID,
        DISABLE_ID,
        FALLBACK
    }

    /* compiled from: PrivacyManager.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[DeviceIdAllowed.values().length];
            iArr[DeviceIdAllowed.DISABLE_ID.ordinal()] = 1;
            iArr[DeviceIdAllowed.FALLBACK.ordinal()] = 2;
            iArr[DeviceIdAllowed.ALLOW_ID.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[ConfigPayload.IABSettings.TcfStatus.values().length];
            iArr2[ConfigPayload.IABSettings.TcfStatus.DISABLE_ID.ordinal()] = 1;
            iArr2[ConfigPayload.IABSettings.TcfStatus.ALLOW_ID.ordinal()] = 2;
            iArr2[ConfigPayload.IABSettings.TcfStatus.LEGACY.ordinal()] = 3;
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    private PrivacyManager() {
    }

    private final void saveCcpaConsent(PrivacyConsent privacyConsent) {
        FilePreferences put;
        FilePreferences filePreferences2 = filePreferences;
        if (filePreferences2 != null && (put = filePreferences2.put(Cookie.CCPA_CONSENT_STATUS, privacyConsent.getValue())) != null) {
            put.apply();
        }
    }

    private final void saveCoppaConsent(boolean z10) {
        FilePreferences put;
        FilePreferences filePreferences2 = filePreferences;
        if (filePreferences2 != null && (put = filePreferences2.put(Cookie.COPPA_STATUS_KEY, z10)) != null) {
            put.apply();
        }
    }

    private final void saveGdprConsent(String str, String str2, String str3, long j10) {
        FilePreferences put;
        FilePreferences put2;
        FilePreferences put3;
        FilePreferences put4;
        FilePreferences filePreferences2 = filePreferences;
        if (filePreferences2 != null && (put = filePreferences2.put(Cookie.GDPR_CONSENT_STATUS, str)) != null && (put2 = put.put(Cookie.GDPR_CONSENT_SOURCE, str2)) != null && (put3 = put2.put(Cookie.GDPR_CONSENT_MESSAGE_VERSION, str3)) != null && (put4 = put3.put(Cookie.GDPR_CONSENT_TIMESTAMP, j10)) != null) {
            put4.apply();
        }
    }

    @NotNull
    public final DeviceIdAllowed allowDeviceIDFromTCF() {
        int i10;
        Boolean gdprAppliesFromPreferences = getGdprAppliesFromPreferences();
        if (Intrinsics.areEqual(gdprAppliesFromPreferences, Boolean.TRUE)) {
            ConfigPayload.IABSettings.TcfStatus tcfStatus = ConfigManager.INSTANCE.getTcfStatus();
            if (tcfStatus == null) {
                i10 = -1;
            } else {
                i10 = WhenMappings.$EnumSwitchMapping$1[tcfStatus.ordinal()];
            }
            if (i10 != -1) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            throw new NoWhenBranchMatchedException();
                        }
                    } else {
                        return DeviceIdAllowed.ALLOW_ID;
                    }
                } else {
                    return DeviceIdAllowed.DISABLE_ID;
                }
            }
            return DeviceIdAllowed.FALLBACK;
        } else if (gdprAppliesFromPreferences == null) {
            return DeviceIdAllowed.FALLBACK;
        } else {
            return DeviceIdAllowed.ALLOW_ID;
        }
    }

    @NotNull
    public final String getCcpaStatus() {
        String value;
        PrivacyConsent privacyConsent = ccpaConsent;
        if (privacyConsent == null || (value = privacyConsent.getValue()) == null) {
            return PrivacyConsent.OPT_IN.getValue();
        }
        return value;
    }

    @NotNull
    public final String getConsentMessageVersion() {
        String str = gdprConsentMessageVersion;
        if (str == null) {
            return "";
        }
        return str;
    }

    @NotNull
    public final String getConsentSource() {
        String str = gdprConsentSource;
        if (str == null) {
            return "no_interaction";
        }
        return str;
    }

    @NotNull
    public final String getConsentStatus() {
        String str = gdprConsent;
        if (str == null) {
            return "unknown";
        }
        return str;
    }

    public final long getConsentTimestamp() {
        Long l10 = gdprConsentTimestamp;
        if (l10 != null) {
            return l10.longValue();
        }
        return 0L;
    }

    @NotNull
    public final COPPA getCoppaStatus() {
        AtomicReference<Boolean> atomicReference = coppaStatus;
        if (atomicReference.get() == null) {
            return COPPA.COPPA_NOTSET;
        }
        if (Intrinsics.areEqual(atomicReference.get(), Boolean.TRUE)) {
            return COPPA.COPPA_ENABLED;
        }
        if (Intrinsics.areEqual(atomicReference.get(), Boolean.FALSE)) {
            return COPPA.COPPA_DISABLED;
        }
        return COPPA.COPPA_NOTSET;
    }

    @VisibleForTesting
    @Nullable
    public final Boolean getDisableAdId$vungle_ads_release() {
        return disableAdId.get();
    }

    @Nullable
    public final Boolean getGdprAppliesFromPreferences() {
        Object d10;
        Object d11;
        Integer num;
        String string;
        Integer num2;
        try {
            Result.a aVar = Result.f60901b;
            SharedPreferences sharedPreferences2 = sharedPreferences;
            if (sharedPreferences2 != null) {
                num2 = Integer.valueOf(sharedPreferences2.getInt(Cookie.IABTCF_GDPR_APPLIES, -1));
            } else {
                num2 = null;
            }
            d10 = Result.d(num2);
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(f.a(th2));
        }
        if (Result.g(d10) != null) {
            try {
                SharedPreferences sharedPreferences3 = sharedPreferences;
                if (sharedPreferences3 != null && (string = sharedPreferences3.getString(Cookie.IABTCF_GDPR_APPLIES, "-1")) != null) {
                    Intrinsics.checkNotNullExpressionValue(string, "getString(IABTCF_GDPR_APPLIES, \"-1\")");
                    num = Integer.valueOf(Integer.parseInt(string));
                } else {
                    num = null;
                }
                d11 = Result.d(num);
            } catch (Throwable th3) {
                Result.a aVar3 = Result.f60901b;
                d11 = Result.d(f.a(th3));
            }
            d10 = d11;
        }
        if (Result.i(d10)) {
            d10 = null;
        }
        Integer num3 = (Integer) d10;
        if (num3 != null && num3.intValue() == 1) {
            return Boolean.TRUE;
        }
        if (num3 == null || num3.intValue() != 0) {
            return null;
        }
        return Boolean.FALSE;
    }

    @NotNull
    public final String getIABTCFString() {
        String str;
        SharedPreferences sharedPreferences2 = sharedPreferences;
        if (sharedPreferences2 != null) {
            str = sharedPreferences2.getString("IABTCF_TCString", "");
        } else {
            str = null;
        }
        if (str == null) {
            return "";
        }
        return str;
    }

    @Nullable
    public final String getPreviousTcfToken() {
        FilePreferences filePreferences2 = filePreferences;
        if (filePreferences2 != null) {
            return filePreferences2.getString("previous_tcf_token", "");
        }
        return null;
    }

    @Nullable
    public final SharedPreferences getSharedPreferences() {
        return sharedPreferences;
    }

    public final synchronized void init(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        AtomicBoolean atomicBoolean = initialized;
        if (atomicBoolean.get()) {
            Logger.Companion.w("PrivacyManager", "PrivacyManager already initialized");
            return;
        }
        sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        FilePreferences filePreferences2 = (FilePreferences) ServiceLocator.Companion.getInstance(context).getService(FilePreferences.class);
        filePreferences = filePreferences2;
        AtomicReference<Boolean> atomicReference = disableAdId;
        Boolean bool = atomicReference.get();
        if (bool != null) {
            saveDisableAdId(bool.booleanValue());
        } else {
            Boolean bool2 = filePreferences2.getBoolean(Cookie.COPPA_DISABLE_AD_ID);
            if (bool2 != null) {
                atomicReference.set(bool2);
            }
        }
        String str = gdprConsent;
        long j10 = 0;
        if (str != null) {
            String str2 = gdprConsentSource;
            if (str2 == null) {
                str2 = "";
            }
            String str3 = str2;
            String str4 = gdprConsentMessageVersion;
            if (str4 == null) {
                str4 = "";
            }
            String str5 = str4;
            Long l10 = gdprConsentTimestamp;
            if (l10 != null) {
                j10 = l10.longValue();
            }
            saveGdprConsent(str, str3, str5, j10);
        } else {
            String string = filePreferences2.getString(Cookie.GDPR_CONSENT_STATUS);
            PrivacyConsent privacyConsent = PrivacyConsent.OPT_IN;
            if (Intrinsics.areEqual(string, privacyConsent.getValue())) {
                string = privacyConsent.getValue();
            } else {
                PrivacyConsent privacyConsent2 = PrivacyConsent.OPT_OUT;
                if (Intrinsics.areEqual(string, privacyConsent2.getValue())) {
                    string = privacyConsent2.getValue();
                }
            }
            gdprConsent = string;
            gdprConsentSource = filePreferences2.getString(Cookie.GDPR_CONSENT_SOURCE);
            gdprConsentMessageVersion = filePreferences2.getString(Cookie.GDPR_CONSENT_MESSAGE_VERSION);
            gdprConsentTimestamp = Long.valueOf(filePreferences2.getLong(Cookie.GDPR_CONSENT_TIMESTAMP, 0L));
        }
        PrivacyConsent privacyConsent3 = ccpaConsent;
        if (privacyConsent3 != null) {
            saveCcpaConsent(privacyConsent3);
        } else {
            String string2 = filePreferences2.getString(Cookie.CCPA_CONSENT_STATUS);
            PrivacyConsent privacyConsent4 = PrivacyConsent.OPT_OUT;
            if (!Intrinsics.areEqual(privacyConsent4.getValue(), string2)) {
                privacyConsent4 = PrivacyConsent.OPT_IN;
            }
            ccpaConsent = privacyConsent4;
        }
        AtomicReference<Boolean> atomicReference2 = coppaStatus;
        Boolean bool3 = atomicReference2.get();
        if (bool3 != null) {
            saveCoppaConsent(bool3.booleanValue());
        } else {
            Boolean bool4 = filePreferences2.getBoolean(Cookie.COPPA_STATUS_KEY);
            if (bool4 != null) {
                atomicReference2.set(bool4);
            }
        }
        atomicBoolean.set(true);
    }

    @VisibleForTesting
    public final void saveDisableAdId(boolean z10) {
        FilePreferences put;
        FilePreferences filePreferences2 = filePreferences;
        if (filePreferences2 != null && (put = filePreferences2.put(Cookie.COPPA_DISABLE_AD_ID, z10)) != null) {
            put.apply();
        }
    }

    public final void setPreviousTcfToken(@Nullable String str) {
        FilePreferences filePreferences2;
        FilePreferences put;
        if (str != null && str.length() != 0 && (filePreferences2 = filePreferences) != null && (put = filePreferences2.put("previous_tcf_token", str)) != null) {
            put.apply();
        }
    }

    public final void setSharedPreferences(@Nullable SharedPreferences sharedPreferences2) {
        sharedPreferences = sharedPreferences2;
    }

    public final boolean shouldReturnTrueForLegacy$vungle_ads_release() {
        String iABTCFString = getIABTCFString();
        if (!Intrinsics.areEqual(getPreviousTcfToken(), iABTCFString)) {
            setPreviousTcfToken(iABTCFString);
            return true;
        }
        return false;
    }

    public final boolean shouldSendAdIds() {
        int i10 = WhenMappings.$EnumSwitchMapping$0[allowDeviceIDFromTCF().ordinal()];
        if (i10 == 1) {
            return false;
        }
        if (i10 != 2 && i10 != 3) {
            throw new NoWhenBranchMatchedException();
        }
        Boolean disableAdId$vungle_ads_release = getDisableAdId$vungle_ads_release();
        if (disableAdId$vungle_ads_release == null || disableAdId$vungle_ads_release.booleanValue()) {
            return false;
        }
        return true;
    }

    public final boolean shouldSendTCFString() {
        int i10;
        if (Intrinsics.areEqual(getGdprAppliesFromPreferences(), Boolean.TRUE)) {
            ConfigPayload.IABSettings.TcfStatus tcfStatus = ConfigManager.INSTANCE.getTcfStatus();
            if (tcfStatus == null) {
                i10 = -1;
            } else {
                i10 = WhenMappings.$EnumSwitchMapping$1[tcfStatus.ordinal()];
            }
            if (i10 != -1) {
                if (i10 == 1 || i10 == 2) {
                    return true;
                }
                if (i10 != 3) {
                    throw new NoWhenBranchMatchedException();
                }
            }
            return shouldReturnTrueForLegacy$vungle_ads_release();
        }
        return false;
    }

    public final void updateCcpaConsent(@NotNull PrivacyConsent consent) {
        Intrinsics.checkNotNullParameter(consent, "consent");
        ccpaConsent = consent;
        saveCcpaConsent(consent);
    }

    public final void updateCoppaConsent(boolean z10) {
        coppaStatus.set(Boolean.valueOf(z10));
        saveCoppaConsent(z10);
    }

    public final void updateDisableAdId(boolean z10) {
        disableAdId.set(Boolean.valueOf(z10));
        saveDisableAdId(z10);
    }

    public final void updateGdprConsent(@NotNull String consent, @NotNull String source, @Nullable String str) {
        Intrinsics.checkNotNullParameter(consent, "consent");
        Intrinsics.checkNotNullParameter(source, "source");
        gdprConsent = consent;
        gdprConsentSource = source;
        gdprConsentMessageVersion = str;
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        gdprConsentTimestamp = Long.valueOf(currentTimeMillis);
        String str2 = gdprConsentMessageVersion;
        if (str2 == null) {
            str2 = "";
        }
        saveGdprConsent(consent, source, str2, currentTimeMillis);
    }
}
