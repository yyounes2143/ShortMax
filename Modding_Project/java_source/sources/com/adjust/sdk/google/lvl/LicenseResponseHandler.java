package com.adjust.sdk.google.lvl;

import com.adjust.sdk.ILogger;
/* loaded from: classes2.dex */
public class LicenseResponseHandler {
    private static final int ERROR_CONTACTING_SERVER = 257;
    private static final int ERROR_INVALID_PACKAGE_NAME = 258;
    private static final int ERROR_NON_MATCHING_UID = 259;
    private static final int ERROR_NOT_MARKET_MANAGED = 3;
    private static final int ERROR_OVER_QUOTA = 5;
    private static final int ERROR_SERVER_FAILURE = 4;
    private static final int LICENSED = 0;
    private static final int LICENSED_OLD_KEY = 2;
    private static final int NOT_LICENSED = 1;
    private final LicenseRawCallback callback;
    private final ILogger logger;
    private final int maxRetries;

    public LicenseResponseHandler(LicenseRawCallback licenseRawCallback, ILogger iLogger, int i10) {
        this.callback = licenseRawCallback;
        this.logger = iLogger;
        this.maxRetries = i10;
    }

    public boolean handleResponse(int i10, String str, String str2, int i11) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4 && i10 != 5) {
                            switch (i10) {
                                case 257:
                                    break;
                                case 258:
                                case 259:
                                    break;
                                default:
                                    this.logger.error("LVL unexpected response code: ", Integer.valueOf(i10));
                                    this.callback.onError(i10);
                                    return false;
                            }
                        }
                        if (i11 < this.maxRetries) {
                            ILogger iLogger = this.logger;
                            iLogger.warn("LVL retry attempt [" + (i11 + 1) + "]: ", Integer.valueOf(i10));
                            return true;
                        }
                        ILogger iLogger2 = this.logger;
                        iLogger2.error("LVL retry attempt [" + i11 + "] failed after max retries: ", Integer.valueOf(i10));
                        this.callback.onError(i10);
                        return false;
                    }
                }
            }
            ILogger iLogger3 = this.logger;
            iLogger3.warn("LVL license check failed: " + i10, new Object[0]);
            this.callback.onError(i10);
            return false;
        }
        if (str != null && str2 != null) {
            this.callback.onLicenseDataReceived(i10, str, str2);
        } else {
            this.logger.error("LVL missing signed data or signature", new Object[0]);
            this.callback.onError(i10);
        }
        return false;
    }
}
