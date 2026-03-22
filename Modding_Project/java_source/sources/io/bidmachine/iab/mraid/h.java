package io.bidmachine.iab.mraid;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.iab.utils.Logger;
/* loaded from: classes7.dex */
public class h {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f54611a = new Logger("MraidLog");

    public static boolean a() {
        return f54611a.i();
    }

    public static boolean b() {
        return f54611a.j();
    }

    public static void c(@NonNull String str, @Nullable String str2, @Nullable Object... objArr) {
        f54611a.k(str, str2, objArr);
    }

    public static void d(@NonNull String str, @Nullable String str2, @Nullable Object... objArr) {
        f54611a.l(str, str2, objArr);
    }

    public static void e(@NonNull String str, @NonNull Throwable th2) {
        f54611a.m(str, th2);
    }

    @Nullable
    public static Logger.LogLevel f() {
        return f54611a.n();
    }

    public static void g(@Nullable Logger.LogLevel logLevel) {
        f54611a.o(logLevel);
    }

    public static void h(@NonNull String str, @Nullable String str2, @Nullable Object... objArr) {
        f54611a.p(str, str2, objArr);
    }
}
