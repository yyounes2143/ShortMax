package com.adjust.sdk.meta;
/* loaded from: classes2.dex */
public class MetaInstallReferrerResult {
    public String error;
    public MetaInstallReferrerDetails metaInstallReferrerDetails;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MetaInstallReferrerResult(MetaInstallReferrerDetails metaInstallReferrerDetails) {
        this.metaInstallReferrerDetails = metaInstallReferrerDetails;
    }

    public MetaInstallReferrerResult(String str) {
        this.error = str;
    }
}
