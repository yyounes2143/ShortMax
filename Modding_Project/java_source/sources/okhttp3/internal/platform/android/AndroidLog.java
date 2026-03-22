package okhttp3.internal.platform.android;

import android.util.Log;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.OkHttpClient;
import okhttp3.internal.SuppressSignatureCheck;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http2.Http2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidLog.kt */
@SuppressSignatureCheck
@Metadata
/* loaded from: classes8.dex */
public final class AndroidLog {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final AndroidLog f64135a = new AndroidLog();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final CopyOnWriteArraySet<Logger> f64136b = new CopyOnWriteArraySet<>();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final Map<String, String> f64137c;

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
        linkedHashMap.put("okhttp3.mockwebserver.MockWebServer", "okhttp.MockWebServer");
        f64137c = p0.x(linkedHashMap);
    }

    private AndroidLog() {
    }

    private final void c(String str, String str2) {
        Level level;
        Logger logger = Logger.getLogger(str);
        if (f64136b.add(logger)) {
            logger.setUseParentHandlers(false);
            if (Log.isLoggable(str2, 3)) {
                level = Level.FINE;
            } else if (Log.isLoggable(str2, 4)) {
                level = Level.INFO;
            } else {
                level = Level.WARNING;
            }
            logger.setLevel(level);
            logger.addHandler(AndroidLogHandler.f64138a);
        }
    }

    private final String d(String str) {
        String str2 = f64137c.get(str);
        if (str2 == null) {
            return StringsKt.I1(str, 23);
        }
        return str2;
    }

    public final void a(@NotNull String loggerName, int i10, @NotNull String message, @Nullable Throwable th2) {
        int min;
        Intrinsics.checkNotNullParameter(loggerName, "loggerName");
        Intrinsics.checkNotNullParameter(message, "message");
        String d10 = d(loggerName);
        if (Log.isLoggable(d10, i10)) {
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
                    Log.println(i10, d10, substring);
                    if (min >= p02) {
                        break;
                    }
                    i11 = min;
                }
                i11 = min + 1;
            }
        }
    }

    public final void b() {
        for (Map.Entry<String, String> entry : f64137c.entrySet()) {
            c(entry.getKey(), entry.getValue());
        }
    }
}
