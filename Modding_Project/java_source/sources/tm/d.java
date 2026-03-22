package tm;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.iab.utils.Logger;
/* loaded from: classes7.dex */
public class d {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f67414a = new Logger("VastLog");

    public static void a(@NonNull String str, @Nullable String str2, @Nullable Object... objArr) {
        f67414a.k(str, str2, objArr);
    }

    public static void b(@NonNull String str, @Nullable String str2, @Nullable Object... objArr) {
        f67414a.l(str, str2, objArr);
    }

    public static void c(@NonNull String str, @NonNull Throwable th2) {
        f67414a.m(str, th2);
    }

    public static void d(@Nullable Logger.LogLevel logLevel) {
        f67414a.o(logLevel);
    }
}
