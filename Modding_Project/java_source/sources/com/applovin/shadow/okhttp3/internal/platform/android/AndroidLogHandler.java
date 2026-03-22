package com.applovin.shadow.okhttp3.internal.platform.android;

import java.util.logging.Handler;
import java.util.logging.LogRecord;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidLog.kt */
@Metadata
/* loaded from: classes2.dex */
public final class AndroidLogHandler extends Handler {
    @NotNull
    public static final AndroidLogHandler INSTANCE = new AndroidLogHandler();

    private AndroidLogHandler() {
    }

    @Override // java.util.logging.Handler
    public void publish(@NotNull LogRecord record) {
        int androidLevel;
        Intrinsics.checkNotNullParameter(record, "record");
        AndroidLog androidLog = AndroidLog.INSTANCE;
        String loggerName = record.getLoggerName();
        Intrinsics.checkNotNullExpressionValue(loggerName, "record.loggerName");
        androidLevel = AndroidLogKt.getAndroidLevel(record);
        String message = record.getMessage();
        Intrinsics.checkNotNullExpressionValue(message, "record.message");
        androidLog.androidLog$okhttp(loggerName, androidLevel, message, record.getThrown());
    }

    @Override // java.util.logging.Handler
    public void close() {
    }

    @Override // java.util.logging.Handler
    public void flush() {
    }
}
