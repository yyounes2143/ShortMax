package com.adjust.sdk;
/* loaded from: classes2.dex */
public class LicenseData {
    private final int responseCode;
    private final String signature;
    private final String signedData;

    public LicenseData(String str, String str2, int i10) {
        this.signedData = str;
        this.signature = str2;
        this.responseCode = i10;
    }

    public int getResponseCode() {
        return this.responseCode;
    }

    public String getSignature() {
        return this.signature;
    }

    public String getSignedData() {
        return this.signedData;
    }

    public boolean isValid() {
        String str = this.signedData;
        if (str == null || this.signature == null || str.isEmpty() || this.signature.isEmpty()) {
            return false;
        }
        return true;
    }
}
