package com.adjust.sdk.meta;

import android.content.Context;
import com.adjust.sdk.ILogger;
import com.adjust.sdk.ReferrerDetails;
/* loaded from: classes2.dex */
public class Util {
    public static synchronized ReferrerDetails getMetaInstallReferrerDetails(Context context, String str, ILogger iLogger) {
        synchronized (Util.class) {
            if (!AdjustMetaReferrer.shouldReadMetaReferrer) {
                return null;
            }
            iLogger.info("getMetaInstallReferrerDetails invoked", new Object[0]);
            MetaInstallReferrerResult metaInstallReferrer = MetaReferrerClient.getMetaInstallReferrer(context, str, iLogger, true);
            if (metaInstallReferrer == null) {
                return null;
            }
            MetaInstallReferrerDetails metaInstallReferrerDetails = metaInstallReferrer.metaInstallReferrerDetails;
            if (metaInstallReferrerDetails == null) {
                return null;
            }
            return new ReferrerDetails(metaInstallReferrerDetails.installReferrer, metaInstallReferrerDetails.actualTimestampInSec, Boolean.valueOf(metaInstallReferrerDetails.isClick));
        }
    }
}
