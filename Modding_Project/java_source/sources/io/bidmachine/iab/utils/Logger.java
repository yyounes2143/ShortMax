package io.bidmachine.iab.utils;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes7.dex */
public class Logger {
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static LogLevel f54683c = LogLevel.error;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final String f54684a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final List<b> f54685b = new CopyOnWriteArrayList();

    /* loaded from: classes7.dex */
    public enum LogLevel {
        debug(1),
        info(2),
        warning(3),
        error(4),
        none(5);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f54686a;

        LogLevel(int i10) {
            this.f54686a = i10;
        }

        public int getValue() {
            return this.f54686a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f54687a;

        static {
            int[] iArr = new int[LogLevel.values().length];
            f54687a = iArr;
            try {
                iArr[LogLevel.debug.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f54687a[LogLevel.error.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f54687a[LogLevel.warning.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public Logger(@NonNull String str) {
        this.f54684a = str;
    }

    @NonNull
    private static String a(@NonNull String str, @NonNull String str2) {
        return String.format("[%s] %s", str, str2);
    }

    @NonNull
    private static String b(@NonNull String str, @NonNull String str2, @Nullable Object... objArr) {
        String a10 = a(str, str2);
        if (objArr != null) {
            if (objArr.length != 0) {
                try {
                } catch (Throwable unused) {
                    return a10;
                }
            }
            return String.format(a10, objArr);
        }
        return a10;
    }

    private void c(@NonNull LogLevel logLevel, @NonNull String str) {
        int i10 = a.f54687a[logLevel.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    Log.w(this.f54684a, str);
                    return;
                }
                return;
            }
            Log.e(this.f54684a, str);
            return;
        }
        Log.d(this.f54684a, str);
    }

    private void d(@NonNull LogLevel logLevel, @NonNull String str, @Nullable String str2, @Nullable Object... objArr) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        boolean h10 = h(logLevel);
        boolean e10 = e();
        if (!h10 && !e10) {
            return;
        }
        String b10 = b(str, str2, objArr);
        if (h10) {
            c(logLevel, b10);
        }
        if (e10) {
            g(logLevel, b10);
        }
    }

    private boolean e() {
        return !this.f54685b.isEmpty();
    }

    private boolean f(@NonNull LogLevel logLevel) {
        if (!h(logLevel) && !e()) {
            return false;
        }
        return true;
    }

    private void g(@NonNull LogLevel logLevel, @NonNull String str) {
        for (b bVar : this.f54685b) {
            bVar.a(logLevel, this.f54684a, str);
        }
    }

    private boolean h(@NonNull LogLevel logLevel) {
        LogLevel logLevel2 = f54683c;
        if (logLevel2 != null && logLevel2.getValue() <= logLevel.getValue()) {
            return true;
        }
        return false;
    }

    public boolean i() {
        return f(LogLevel.debug);
    }

    public boolean j() {
        return f(LogLevel.error);
    }

    public void k(@NonNull String str, @Nullable String str2, @Nullable Object... objArr) {
        d(LogLevel.debug, str, str2, objArr);
    }

    public void l(@NonNull String str, @Nullable String str2, @Nullable Object... objArr) {
        d(LogLevel.error, str, str2, objArr);
    }

    public void m(@NonNull String str, @NonNull Throwable th2) {
        d(LogLevel.error, str, th2.toString(), new Object[0]);
    }

    @Nullable
    public LogLevel n() {
        return f54683c;
    }

    public void o(@Nullable LogLevel logLevel) {
        Log.d(this.f54684a, String.format("Changing logging level. From: %s, To: %s", f54683c, logLevel));
        f54683c = logLevel;
    }

    public void p(@NonNull String str, @Nullable String str2, @Nullable Object... objArr) {
        d(LogLevel.warning, str, str2, objArr);
    }
}
