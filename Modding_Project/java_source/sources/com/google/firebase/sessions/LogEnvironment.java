package com.google.firebase.sessions;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: ApplicationInfo.kt */
@Metadata
/* loaded from: classes5.dex */
public final class LogEnvironment implements r8.f {
    private static final /* synthetic */ ss.a $ENTRIES;
    private static final /* synthetic */ LogEnvironment[] $VALUES;
    private final int number;
    public static final LogEnvironment LOG_ENVIRONMENT_UNKNOWN = new LogEnvironment("LOG_ENVIRONMENT_UNKNOWN", 0, 0);
    public static final LogEnvironment LOG_ENVIRONMENT_AUTOPUSH = new LogEnvironment("LOG_ENVIRONMENT_AUTOPUSH", 1, 1);
    public static final LogEnvironment LOG_ENVIRONMENT_STAGING = new LogEnvironment("LOG_ENVIRONMENT_STAGING", 2, 2);
    public static final LogEnvironment LOG_ENVIRONMENT_PROD = new LogEnvironment("LOG_ENVIRONMENT_PROD", 3, 3);

    private static final /* synthetic */ LogEnvironment[] $values() {
        return new LogEnvironment[]{LOG_ENVIRONMENT_UNKNOWN, LOG_ENVIRONMENT_AUTOPUSH, LOG_ENVIRONMENT_STAGING, LOG_ENVIRONMENT_PROD};
    }

    static {
        LogEnvironment[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
    }

    private LogEnvironment(String str, int i10, int i11) {
        this.number = i11;
    }

    @NotNull
    public static ss.a<LogEnvironment> getEntries() {
        return $ENTRIES;
    }

    public static LogEnvironment valueOf(String str) {
        return (LogEnvironment) Enum.valueOf(LogEnvironment.class, str);
    }

    public static LogEnvironment[] values() {
        return (LogEnvironment[]) $VALUES.clone();
    }

    @Override // r8.f
    public int getNumber() {
        return this.number;
    }
}
