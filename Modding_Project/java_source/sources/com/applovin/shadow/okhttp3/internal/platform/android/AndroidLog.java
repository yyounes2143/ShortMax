package com.applovin.shadow.okhttp3.internal.platform.android;

import android.util.Log;
import com.applovin.shadow.okhttp3.OkHttpClient;
import com.applovin.shadow.okhttp3.internal.SuppressSignatureCheck;
import com.applovin.shadow.okhttp3.internal.concurrent.TaskRunner;
import com.applovin.shadow.okhttp3.internal.http2.Http2;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidLog.kt */
@SuppressSignatureCheck
@Metadata
/* loaded from: classes2.dex */
public final class AndroidLog {
    private static final int MAX_LOG_LENGTH = 4000;
    @NotNull
    private static final Map<String, String> knownLoggers;
    @NotNull
    public static final AndroidLog INSTANCE = new AndroidLog();
    @NotNull
    private static final CopyOnWriteArraySet<Logger> configuredLoggers = new CopyOnWriteArraySet<>();

    static {
        String str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Package r22 = OkHttpClient.class.getPackage();
        if (r22 != null) {
            str = r22.getName();
        } else {
            str = null;
        }
        if (str != null) {
            linkedHashMap.put(str, "OkHttp");
        }
        String name = OkHttpClient.class.getName();
        Intrinsics.checkNotNullExpressionValue(name, "OkHttpClient::class.java.name");
        linkedHashMap.put(name, "okhttp.OkHttpClient");
        String name2 = Http2.class.getName();
        Intrinsics.checkNotNullExpressionValue(name2, "Http2::class.java.name");
        linkedHashMap.put(name2, "okhttp.Http2");
        String name3 = TaskRunner.class.getName();
        Intrinsics.checkNotNullExpressionValue(name3, "TaskRunner::class.java.name");
        linkedHashMap.put(name3, "okhttp.TaskRunner");
        linkedHashMap.put("com.applovin.shadow.okhttp3.mockwebserver.MockWebServer", "okhttp.MockWebServer");
        knownLoggers = p0.x(linkedHashMap);
    }

    private AndroidLog() {
    }

    private final void enableLogging(String str, String str2) {
        Level level;
        Logger logger = Logger.getLogger(str);
        if (configuredLoggers.add(logger)) {
            logger.setUseParentHandlers(false);
            if (Log.isLoggable(str2, 3)) {
                level = Level.FINE;
            } else if (Log.isLoggable(str2, 4)) {
                level = Level.INFO;
            } else {
                level = Level.WARNING;
            }
            logger.setLevel(level);
            logger.addHandler(AndroidLogHandler.INSTANCE);
        }
    }

    private final String loggerTag(String str) {
        String str2 = knownLoggers.get(str);
        if (str2 == null) {
            return StringsKt.I1(str, 23);
        }
        return str2;
    }

    public final void androidLog$okhttp(@NotNull String loggerName, int i10, @NotNull String message, @Nullable Throwable th2) {
        int min;
        Intrinsics.checkNotNullParameter(loggerName, "loggerName");
        Intrinsics.checkNotNullParameter(message, "message");
        String loggerTag = loggerTag(loggerName);
        if (Log.isLoggable(loggerTag, i10)) {
            if (th2 != null) {
                message = message + '\n' + Log.getStackTraceString(th2);
            }
            int length = message.length();
            int i11 = 0;
            while (i11 < length) {
                int p02 = StringsKt.p0(message, '\n', i11, false, 4, null);
                if (p02 == -1) {
                    p02 = length;
                }
                while (true) {
                    min = Math.min(p02, i11 + 4000);
                    String substring = message.substring(i11, min);
                    Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                    Log.println(i10, loggerTag, substring);
                    if (min >= p02) {
                        break;
                    }
                    i11 = min;
                }
                i11 = min + 1;
            }
        }
    }

    public final void enable() {
        for (Map.Entry<String, String> entry : knownLoggers.entrySet()) {
            enableLogging(entry.getKey(), entry.getValue());
        }
    }
}
