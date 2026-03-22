package com.adjust.sdk.google.lvl;

import android.content.Context;
import com.adjust.sdk.ILogger;
import com.adjust.sdk.LicenseData;
/* loaded from: classes2.dex */
public class Util {
    public static synchronized LicenseData getLicenseRequiredData(Context context, ILogger iLogger, long j10) {
        LicenseData fetchLicenseDate;
        synchronized (Util.class) {
            fetchLicenseDate = AdjustLicenseVerification.fetchLicenseDate(context, iLogger, j10);
        }
        return fetchLicenseDate;
    }
}
