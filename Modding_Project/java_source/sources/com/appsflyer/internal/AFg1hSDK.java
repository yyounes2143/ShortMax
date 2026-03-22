package com.appsflyer.internal;

import android.util.Log;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes2.dex */
public final class AFg1hSDK extends AFh1ySDK {
    @NotNull
    public static final AFa1zSDK AFa1zSDK = new AFa1zSDK(null);

    /* loaded from: classes2.dex */
    public /* synthetic */ class AFa1vSDK {
        public static final /* synthetic */ int[] getRevenue;

        static {
            int[] iArr = new int[AFLogger.LogLevel.values().length];
            try {
                iArr[AFLogger.LogLevel.DEBUG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AFLogger.LogLevel.INFO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AFLogger.LogLevel.WARNING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AFLogger.LogLevel.VERBOSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[AFLogger.LogLevel.ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[AFLogger.LogLevel.NONE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            getRevenue = iArr;
        }
    }

    @Metadata
    /* loaded from: classes2.dex */
    public static final class AFa1zSDK {
        private AFa1zSDK() {
        }

        public /* synthetic */ AFa1zSDK(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final void getRevenue(AFLogger.LogLevel logLevel, AFg1cSDK aFg1cSDK, String str, Throwable th2) {
        if (getRevenue(logLevel)) {
            String mediationNetwork = getMediationNetwork(str, aFg1cSDK);
            int i10 = AFa1vSDK.getRevenue[logLevel.ordinal()];
            if (i10 == 1) {
                Log.d("AppsFlyer_6.17.5", mediationNetwork);
            } else if (i10 == 2) {
                Log.i("AppsFlyer_6.17.5", mediationNetwork);
            } else if (i10 == 3) {
                Log.w("AppsFlyer_6.17.5", mediationNetwork);
            } else if (i10 == 4) {
                Log.v("AppsFlyer_6.17.5", mediationNetwork);
            } else if (i10 != 5) {
            } else {
                Log.e("AppsFlyer_6.17.5", mediationNetwork, th2);
            }
        }
    }

    @Override // com.appsflyer.internal.AFh1ySDK
    public final void d(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str, boolean z10) {
        Intrinsics.checkNotNullParameter(aFg1cSDK, "");
        Intrinsics.checkNotNullParameter(str, "");
        getRevenue(AFLogger.LogLevel.DEBUG, aFg1cSDK, str, null);
    }

    @Override // com.appsflyer.internal.AFh1ySDK
    public final void e(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str, @NotNull Throwable th2, boolean z10, boolean z11, boolean z12, boolean z13) {
        Intrinsics.checkNotNullParameter(aFg1cSDK, "");
        Intrinsics.checkNotNullParameter(str, "");
        Intrinsics.checkNotNullParameter(th2, "");
        if (z11) {
            getRevenue(AFLogger.LogLevel.ERROR, aFg1cSDK, str, th2);
        } else if (z10) {
            getRevenue(AFLogger.LogLevel.DEBUG, aFg1cSDK, str, null);
        }
    }

    @Override // com.appsflyer.internal.AFh1ySDK
    public final void force(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str) {
        Intrinsics.checkNotNullParameter(aFg1cSDK, "");
        Intrinsics.checkNotNullParameter(str, "");
        if (!AppsFlyerProperties.getInstance().isLogsDisabledCompletely()) {
            Log.d("AppsFlyer_6.17.5", withTag$SDK_prodRelease(str, aFg1cSDK));
        }
    }

    @Override // com.appsflyer.internal.AFh1ySDK
    public final boolean getShouldExtendMsg() {
        if (AFLogger.LogLevel.VERBOSE.getLevel() <= AppsFlyerProperties.getInstance().getLogLevel()) {
            return true;
        }
        return false;
    }

    @Override // com.appsflyer.internal.AFh1ySDK
    public final void i(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str, boolean z10) {
        Intrinsics.checkNotNullParameter(aFg1cSDK, "");
        Intrinsics.checkNotNullParameter(str, "");
        getRevenue(AFLogger.LogLevel.INFO, aFg1cSDK, str, null);
    }

    @Override // com.appsflyer.internal.AFh1ySDK
    public final void v(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str, boolean z10) {
        Intrinsics.checkNotNullParameter(aFg1cSDK, "");
        Intrinsics.checkNotNullParameter(str, "");
        getRevenue(AFLogger.LogLevel.VERBOSE, aFg1cSDK, str, null);
    }

    @Override // com.appsflyer.internal.AFh1ySDK
    public final void w(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str, boolean z10) {
        Intrinsics.checkNotNullParameter(aFg1cSDK, "");
        Intrinsics.checkNotNullParameter(str, "");
        getRevenue(AFLogger.LogLevel.WARNING, aFg1cSDK, str, null);
    }

    private static boolean getRevenue(AFLogger.LogLevel logLevel) {
        return logLevel.getLevel() <= AppsFlyerProperties.getInstance().getLogLevel();
    }
}
