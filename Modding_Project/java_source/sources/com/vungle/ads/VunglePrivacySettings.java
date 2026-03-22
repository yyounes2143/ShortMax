package com.vungle.ads;

import com.vungle.ads.internal.privacy.PrivacyConsent;
import com.vungle.ads.internal.privacy.PrivacyManager;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: VunglePrivacySettings.kt */
@Metadata
/* loaded from: classes7.dex */
public final class VunglePrivacySettings {
    @NotNull
    public static final VunglePrivacySettings INSTANCE = new VunglePrivacySettings();

    private VunglePrivacySettings() {
    }

    @NotNull
    public static final String getCCPAStatus() {
        return PrivacyManager.INSTANCE.getCcpaStatus();
    }

    @NotNull
    public static final String getCOPPAStatus() {
        return PrivacyManager.INSTANCE.getCoppaStatus().name();
    }

    @NotNull
    public static final String getGDPRMessageVersion() {
        return PrivacyManager.INSTANCE.getConsentMessageVersion();
    }

    @NotNull
    public static final String getGDPRSource() {
        return PrivacyManager.INSTANCE.getConsentSource();
    }

    @NotNull
    public static final String getGDPRStatus() {
        return PrivacyManager.INSTANCE.getConsentStatus();
    }

    public static final long getGDPRTimestamp() {
        return PrivacyManager.INSTANCE.getConsentTimestamp();
    }

    public static final void setCCPAStatus(boolean z10) {
        PrivacyConsent privacyConsent;
        if (z10) {
            privacyConsent = PrivacyConsent.OPT_IN;
        } else {
            privacyConsent = PrivacyConsent.OPT_OUT;
        }
        PrivacyManager.INSTANCE.updateCcpaConsent(privacyConsent);
    }

    public static final void setCOPPAStatus(boolean z10) {
        PrivacyManager.INSTANCE.updateCoppaConsent(z10);
    }

    public static final void setGDPRStatus(boolean z10, @Nullable String str) {
        String value;
        if (z10) {
            value = PrivacyConsent.OPT_IN.getValue();
        } else {
            value = PrivacyConsent.OPT_OUT.getValue();
        }
        PrivacyManager.INSTANCE.updateGdprConsent(value, "publisher", str);
    }
}
