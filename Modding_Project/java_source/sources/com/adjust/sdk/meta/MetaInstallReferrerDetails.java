package com.adjust.sdk.meta;
/* loaded from: classes2.dex */
public class MetaInstallReferrerDetails {
    public long actualTimestampInSec;
    public String installReferrer;
    public boolean isClick;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MetaInstallReferrerDetails(String str, long j10, boolean z10) {
        this.installReferrer = str;
        this.actualTimestampInSec = j10;
        this.isClick = z10;
    }

    public String toString() {
        return com.adjust.sdk.Util.formatString(" installReferrer : %s actualTimestampInSec : %d isClick : %b", this.installReferrer, Long.valueOf(this.actualTimestampInSec), Boolean.valueOf(this.isClick));
    }
}
