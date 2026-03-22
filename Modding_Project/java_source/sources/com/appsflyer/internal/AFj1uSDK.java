package com.appsflyer.internal;

import android.content.ContentProviderClient;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.appsflyer.AFLogger;
/* loaded from: classes2.dex */
public final class AFj1uSDK extends AFj1tSDK {
    final ProviderInfo getCurrencyIso4217Code;
    private final AFd1zSDK getMonetizationNetwork;

    public AFj1uSDK(ProviderInfo providerInfo, Runnable runnable, AFd1zSDK aFd1zSDK) {
        super("af_referrer", providerInfo.authority, runnable);
        this.getMonetizationNetwork = aFd1zSDK;
        this.getCurrencyIso4217Code = providerInfo;
    }

    @Nullable
    @VisibleForTesting
    public static ContentProviderClient B_(Context context, Uri uri) {
        try {
            return context.getContentResolver().acquireUnstableContentProviderClient(uri);
        } catch (SecurityException e10) {
            AFLogger.INSTANCE.e(AFg1cSDK.PREINSTALL, "Failed to acquire unstable content providerClient due to SecurityException", e10, false, true, false);
            return null;
        } catch (Throwable th2) {
            AFLogger.INSTANCE.e(AFg1cSDK.PREINSTALL, "Failed to acquire unstable content providerClient due to unexpected throwable", th2, false, true, false);
            return null;
        }
    }

    @Override // com.appsflyer.internal.AFj1tSDK
    public final void getMonetizationNetwork(final Context context) {
        this.getMonetizationNetwork.getMonetizationNetwork().execute(new Runnable() { // from class: com.appsflyer.internal.AFj1uSDK.5
            /* JADX WARN: Removed duplicated region for block: B:24:0x0097  */
            /* JADX WARN: Removed duplicated region for block: B:35:0x00df  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() {
                /*
                    Method dump skipped, instructions count: 289
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFj1uSDK.AnonymousClass5.run():void");
            }
        });
    }
}
