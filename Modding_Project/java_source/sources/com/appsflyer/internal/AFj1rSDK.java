package com.appsflyer.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.database.Cursor;
import com.adjust.sdk.Constants;
import com.appsflyer.AFLogger;
import java.util.concurrent.ExecutorService;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes2.dex */
public final class AFj1rSDK extends AFi1cSDK {
    @NotNull
    private final ExecutorService getMonetizationNetwork;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFj1rSDK(@NotNull ExecutorService executorService, @NotNull AFc1oSDK aFc1oSDK, @NotNull Runnable runnable) {
        super("preload", Constants.REFERRER_API_SAMSUNG, aFc1oSDK, runnable);
        Intrinsics.checkNotNullParameter(executorService, "");
        Intrinsics.checkNotNullParameter(aFc1oSDK, "");
        Intrinsics.checkNotNullParameter(runnable, "");
        this.getMonetizationNetwork = executorService;
    }

    private static boolean C_(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("RESULT");
        if (columnIndex != -1) {
            return Boolean.parseBoolean(cursor.getString(columnIndex));
        }
        AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.SAMSUNG_PRELOAD_REFERRER, "No such column", false, 4, null);
        return false;
    }

    private static boolean getCurrencyIso4217Code(Context context) {
        if (context.getPackageManager().resolveContentProvider("com.samsung.android.mapsagent.providers.apptracking", 0) == null) {
            return false;
        }
        return true;
    }

    private final boolean getMediationNetwork(Context context) {
        if (!getRevenue()) {
            AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.SAMSUNG_PRELOAD_REFERRER, "Referrer collection disallowed by counter.", false, 4, null);
            return false;
        } else if (!getCurrencyIso4217Code(context)) {
            AFh1ySDK.d$default(AFLogger.INSTANCE, AFg1cSDK.SAMSUNG_PRELOAD_REFERRER, "Referrer collection disallowed by missing content provider.", false, 4, null);
            return false;
        } else {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0108, code lost:
        if (r3 != null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x010a, code lost:
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x011f, code lost:
        if (r3 != null) goto L14;
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0134 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0139 A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void getRevenue(com.appsflyer.internal.AFj1rSDK r11, android.content.Context r12) {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFj1rSDK.getRevenue(com.appsflyer.internal.AFj1rSDK, android.content.Context):void");
    }

    @Override // com.appsflyer.internal.AFj1tSDK
    @SuppressLint({"NewApi"})
    public final void getMonetizationNetwork(@NotNull final Context context) {
        Intrinsics.checkNotNullParameter(context, "");
        if (!getMediationNetwork(context)) {
            return;
        }
        this.getMonetizationNetwork.execute(new Runnable() { // from class: com.appsflyer.internal.e0
            @Override // java.lang.Runnable
            public final void run() {
                AFj1rSDK.getRevenue(AFj1rSDK.this, context);
            }
        });
    }

    @Override // com.appsflyer.internal.AFj1tSDK
    protected final void AFAdRevenueData() {
    }
}
