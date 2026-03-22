package com.unity3d.ads.beta;

import kotlin.Metadata;
/* compiled from: UnityAdsPrivacy.kt */
@Metadata
/* loaded from: classes7.dex */
public enum UnityAdsPrivacyConsentValue {
    NOT_SET(0),
    CONSENT(1),
    NO_CONSENT(2);
    
    private final int value;

    UnityAdsPrivacyConsentValue(int i10) {
        this.value = i10;
    }

    public final int getValue() {
        return this.value;
    }
}
