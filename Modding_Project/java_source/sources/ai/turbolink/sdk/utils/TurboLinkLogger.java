package ai.turbolink.sdk.utils;

import android.util.Log;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TurboLinkLogger.kt */
@Metadata
/* loaded from: classes.dex */
public final class TurboLinkLogger {
    @NotNull
    public static final TurboLinkLogger INSTANCE = new TurboLinkLogger();
    @NotNull
    private static final String TAG = "TurboLinkSDK";
    private static boolean logEnabled;

    private TurboLinkLogger() {
    }

    public static final void always(@NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (msg.length() > 0) {
            Log.i(TAG, msg);
        }
    }

    public static final void d(@NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (logEnabled && msg.length() > 0) {
            Log.d(TAG, msg);
        }
    }

    public static final void e(@NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (logEnabled && msg.length() > 0) {
            Log.e(TAG, msg);
        }
    }

    public static final boolean getLogEnabled() {
        return logEnabled;
    }

    public static final void i(@NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (logEnabled && msg.length() > 0) {
            Log.i(TAG, msg);
        }
    }

    public static final void loggerException(@NotNull String msg, @NotNull Exception e10) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(e10, "e");
        if (msg.length() > 0) {
            Log.e(TAG, msg, e10);
        }
    }

    public static final void setLogEnabled(boolean z10) {
        logEnabled = z10;
    }

    public static final void v(@NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (logEnabled && msg.length() > 0) {
            Log.v(TAG, msg);
        }
    }

    public static final void w(@NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (logEnabled && msg.length() > 0) {
            Log.w(TAG, msg);
        }
    }

    public static /* synthetic */ void getLogEnabled$annotations() {
    }
}
