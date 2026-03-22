package com.vungle.ads.internal.util;

import android.util.Log;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
/* compiled from: Logger.kt */
@Metadata
/* loaded from: classes7.dex */
public final class Logger {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static boolean enabled;

    /* compiled from: Logger.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int d(@NotNull String tag, @NotNull String message) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(message, "message");
            if (!Logger.enabled) {
                return -1;
            }
            return Log.d(tag, eraseSensitiveData(message));
        }

        public final int e(@NotNull String tag, @NotNull String message) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(message, "message");
            if (Logger.enabled) {
                return Log.e(tag, eraseSensitiveData(message));
            }
            return -1;
        }

        public final void enable(boolean z10) {
            Logger.enabled = z10;
        }

        @NotNull
        public final String eraseSensitiveData(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            Pattern compile = Pattern.compile("[\\d]{1,3}\\.[\\d]{1,3}\\.[\\d]{1,3}\\.[\\d]{1,3}");
            Intrinsics.checkNotNullExpressionValue(compile, "compile(\"[\\\\d]{1,3}\\\\.[\\…[\\\\d]{1,3}\\\\.[\\\\d]{1,3}\")");
            return new Regex(compile).replace(str, "xxx.xxx.xxx.xxx");
        }

        public final int i(@NotNull String tag, @NotNull String message) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(message, "message");
            if (Logger.enabled) {
                return Log.i(tag, eraseSensitiveData(message));
            }
            return -1;
        }

        public final int w(@NotNull String tag, @NotNull String message) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(message, "message");
            if (Logger.enabled) {
                return Log.w(tag, eraseSensitiveData(message));
            }
            return -1;
        }

        private Companion() {
        }

        public final int e(@NotNull String tag, @NotNull String message, @NotNull Throwable throwable) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(message, "message");
            Intrinsics.checkNotNullParameter(throwable, "throwable");
            if (Logger.enabled) {
                return Log.e(tag, eraseSensitiveData(message) + "; error: " + throwable.getLocalizedMessage());
            }
            return -1;
        }

        public final int i(@NotNull String tag, @NotNull String message, @NotNull Throwable throwable) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(message, "message");
            Intrinsics.checkNotNullParameter(throwable, "throwable");
            if (Logger.enabled) {
                return Log.i(tag, eraseSensitiveData(message) + "; error: " + throwable.getLocalizedMessage());
            }
            return -1;
        }

        public final int w(@NotNull String tag, @NotNull String message, @NotNull Throwable throwable) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(message, "message");
            Intrinsics.checkNotNullParameter(throwable, "throwable");
            if (Logger.enabled) {
                return Log.w(tag, eraseSensitiveData(message) + "; error: " + throwable.getLocalizedMessage());
            }
            return -1;
        }
    }

    public static final int d(@NotNull String str, @NotNull String str2) {
        return Companion.d(str, str2);
    }

    public static final int e(@NotNull String str, @NotNull String str2) {
        return Companion.e(str, str2);
    }

    public static final int i(@NotNull String str, @NotNull String str2) {
        return Companion.i(str, str2);
    }

    public static final int w(@NotNull String str, @NotNull String str2) {
        return Companion.w(str, str2);
    }

    public static final int e(@NotNull String str, @NotNull String str2, @NotNull Throwable th2) {
        return Companion.e(str, str2, th2);
    }

    public static final int i(@NotNull String str, @NotNull String str2, @NotNull Throwable th2) {
        return Companion.i(str, str2, th2);
    }

    public static final int w(@NotNull String str, @NotNull String str2, @NotNull Throwable th2) {
        return Companion.w(str, str2, th2);
    }
}
