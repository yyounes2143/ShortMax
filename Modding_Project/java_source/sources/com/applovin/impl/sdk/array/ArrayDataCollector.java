package com.applovin.impl.sdk.array;

import androidx.annotation.Nullable;
import com.applovin.array.apphub.aidl.IAppHubService;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
/* loaded from: classes2.dex */
public class ArrayDataCollector {
    private static final String TAG = "ArrayService";
    private final o logger;
    private final k sdk;

    public ArrayDataCollector(k kVar) {
        this.sdk = kVar;
        this.logger = kVar.O();
    }

    public long collectAppHubVersionCode(IAppHubService iAppHubService) {
        try {
            return iAppHubService.getAppHubVersionCode();
        } catch (Throwable th2) {
            if (o.a()) {
                this.logger.a(TAG, "Failed to collect version code", th2);
                return -1L;
            }
            return -1L;
        }
    }

    @Nullable
    public Boolean collectDirectDownloadEnabled(IAppHubService iAppHubService) {
        try {
            return Boolean.valueOf(iAppHubService.getEnabledFeatures().getBoolean("DIRECT_DOWNLOAD"));
        } catch (Throwable th2) {
            if (o.a()) {
                this.logger.a(TAG, "Failed to collect enabled features", th2);
                return null;
            }
            return null;
        }
    }

    @Nullable
    public String collectRandomUserToken(IAppHubService iAppHubService) {
        try {
            return iAppHubService.getRandomUserToken();
        } catch (Throwable th2) {
            if (o.a()) {
                this.logger.a(TAG, "Failed to collect random user token", th2);
                return null;
            }
            return null;
        }
    }
}
