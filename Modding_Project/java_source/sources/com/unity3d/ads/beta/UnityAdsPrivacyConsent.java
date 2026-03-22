package com.unity3d.ads.beta;

import kotlin.Metadata;
/* compiled from: UnityAdsPrivacy.kt */
@Metadata
/* loaded from: classes7.dex */
public enum UnityAdsPrivacyConsent {
    GDPR_CONSENT(0),
    PRIVACY_CONSENT(1),
    PIPL_CONSENT(2);
    
    private final int value;

    UnityAdsPrivacyConsent(int i10) {
        this.value = i10;
    }

    public final int getValue() {
        return this.value;
    }
}
