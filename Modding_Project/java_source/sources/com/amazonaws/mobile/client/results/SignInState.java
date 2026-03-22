package com.amazonaws.mobile.client.results;

import com.huawei.hms.framework.network.grs.GrsBaseInfo;
/* loaded from: classes2.dex */
public enum SignInState {
    SMS_MFA("CONFIRMATION_CODE"),
    PASSWORD_VERIFIER("PASSWORD_VERIFIER"),
    CUSTOM_CHALLENGE("CUSTOM_CHALLENGE"),
    DEVICE_SRP_AUTH("DEVICE_SRP_AUTH"),
    DEVICE_PASSWORD_VERIFIER("DEVICE_PASSWORD_VERIFIER"),
    ADMIN_NO_SRP_AUTH("ADMIN_NO_SRP_AUTH"),
    NEW_PASSWORD_REQUIRED("NEW_PASSWORD_REQUIRED"),
    DONE("This means the flow is complete."),
    UNKNOWN(GrsBaseInfo.CountryCodeSource.UNKNOWN);
    
    private final String serviceText;

    SignInState(String str) {
        this.serviceText = str;
    }

    public boolean equals(String str) {
        return this.serviceText.equals(str);
    }
}
