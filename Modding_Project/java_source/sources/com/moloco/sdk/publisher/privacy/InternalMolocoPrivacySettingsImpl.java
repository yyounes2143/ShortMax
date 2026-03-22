package com.moloco.sdk.publisher.privacy;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import androidx.compose.runtime.internal.StabilityInferred;
import com.google.ads.mediation.inmobi.InMobiNetworkKeys;
import com.moloco.sdk.publisher.privacy.MolocoPrivacy;
import com.vungle.ads.internal.model.Cookie;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes6.dex */
public final class InternalMolocoPrivacySettingsImpl implements InternalMolocoPrivacySettings {
    public static final int $stable = 8;
    @NotNull
    private final Context context;

    public InternalMolocoPrivacySettingsImpl(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    private final Boolean gdprApplies(Context context) {
        Boolean bool;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        if (!defaultSharedPreferences.contains(Cookie.IABTCF_GDPR_APPLIES)) {
            return null;
        }
        try {
            int i10 = defaultSharedPreferences.getInt(Cookie.IABTCF_GDPR_APPLIES, 0);
            if (i10 != 0) {
                if (i10 != 1) {
                    return null;
                }
                bool = Boolean.TRUE;
            } else {
                bool = Boolean.FALSE;
            }
            return bool;
        } catch (ClassCastException unused) {
            return Boolean.valueOf(defaultSharedPreferences.getBoolean(Cookie.IABTCF_GDPR_APPLIES, false));
        }
    }

    private final String getTCFConsent(Context context) {
        String string = PreferenceManager.getDefaultSharedPreferences(context).getString("IABTCF_TCString", null);
        if (string == null || StringsKt.t0(string)) {
            return null;
        }
        return string;
    }

    private final String getUSPrivacyConsentString(Context context, String str) {
        String string = PreferenceManager.getDefaultSharedPreferences(context).getString(InMobiNetworkKeys.IAB_US_PRIVACY_STRING, null);
        if (string != null && !StringsKt.t0(string)) {
            return string;
        }
        return str;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @Override // com.moloco.sdk.publisher.privacy.InternalMolocoPrivacySettings
    @NotNull
    public MolocoPrivacy.PrivacySettings getUpdatedPrivacySettings(@NotNull MolocoPrivacy.PrivacySettings privacySettings) {
        Intrinsics.checkNotNullParameter(privacySettings, "privacySettings");
        Boolean gdprApplies = gdprApplies(this.context);
        if (gdprApplies == null) {
            gdprApplies = privacySettings.isUserConsent();
        }
        return new MolocoPrivacy.PrivacySettings(gdprApplies, privacySettings.isAgeRestrictedUser(), privacySettings.isDoNotSell(), getTCFConsent(this.context), getUSPrivacyConsentString(this.context, privacySettings.getUsPrivacy()));
    }
}
