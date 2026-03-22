package com.huawei.hms.framework.common;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import android.util.Log;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.io.IOException;
import java.util.Arrays;
import java.util.IllegalFormatException;
import org.json.JSONException;
/* loaded from: classes5.dex */
public class Logger {

    /* renamed from: a  reason: collision with root package name */
    private static ExtLogger f22133a = null;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f22134b = true;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class ThrowableWrapper extends Throwable {

        /* renamed from: a  reason: collision with root package name */
        private String f22135a;

        /* renamed from: b  reason: collision with root package name */
        private Throwable f22136b;

        /* renamed from: c  reason: collision with root package name */
        private Throwable f22137c;

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void b(Throwable th2) {
            this.f22136b = th2;
        }

        @Override // java.lang.Throwable
        public synchronized Throwable getCause() {
            Throwable th2;
            th2 = this.f22136b;
            if (th2 == this) {
                th2 = null;
            }
            return th2;
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            return this.f22135a;
        }

        public void setMessage(String str) {
            this.f22135a = str;
        }

        @Override // java.lang.Throwable
        public String toString() {
            Throwable th2 = this.f22137c;
            if (th2 == null) {
                return "";
            }
            String name = th2.getClass().getName();
            if (this.f22135a != null) {
                String str = name + ": ";
                if (this.f22135a.startsWith(str)) {
                    return this.f22135a;
                }
                return str + this.f22135a;
            }
            return name;
        }

        private ThrowableWrapper(Throwable th2) {
            this.f22137c = th2;
            StackTraceElement[] stackTrace = th2.getStackTrace();
            int i10 = ((th2 instanceof IOException) || (th2 instanceof JSONException)) ? 8 : 20;
            if (stackTrace.length > i10) {
                setStackTrace((StackTraceElement[]) Arrays.copyOf(stackTrace, i10));
            } else {
                setStackTrace(stackTrace);
            }
            setMessage(StringUtils.anonymizeMessage(th2.getMessage()));
        }
    }

    private static String a(String str) {
        return "NetworkSdk_" + str;
    }

    private static String b(String str, int i10) {
        if (!TextUtils.isEmpty(str)) {
            return g(i10) + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + str;
        }
        return g(i10);
    }

    private static String c(String str) {
        return "NetworkKit_" + str;
    }

    @SuppressLint({"LogTagMismatch"})
    public static void d(String str, Object obj) {
        println(3, str, obj);
    }

    public static void e(String str, Object obj) {
        println(6, str, obj);
    }

    private static void f(int i10, String str, String str2) {
        if (i10 != 2) {
            if (i10 != 3) {
                if (i10 != 4) {
                    if (i10 != 5) {
                        if (i10 == 6) {
                            f22133a.e(str, str2);
                            return;
                        }
                        return;
                    }
                    f22133a.w(str, str2);
                    return;
                }
                f22133a.i(str, str2);
                return;
            }
            f22133a.d(str, str2);
            return;
        }
        f22133a.v(str, str2);
    }

    private static String g(int i10) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace.length > i10) {
            StackTraceElement stackTraceElement = stackTrace[i10];
            return Thread.currentThread().getName() + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + stackTraceElement.getFileName() + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + stackTraceElement.getClassName() + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + stackTraceElement.getMethodName() + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + stackTraceElement.getLineNumber();
        }
        return "";
    }

    private static Throwable h(Throwable th2) {
        if (isLoggable(3)) {
            return th2;
        }
        if (th2 == null) {
            return null;
        }
        ThrowableWrapper throwableWrapper = new ThrowableWrapper(th2);
        Throwable cause = th2.getCause();
        ThrowableWrapper throwableWrapper2 = throwableWrapper;
        while (cause != null) {
            ThrowableWrapper throwableWrapper3 = new ThrowableWrapper(cause);
            throwableWrapper2.b(throwableWrapper3);
            cause = cause.getCause();
            throwableWrapper2 = throwableWrapper3;
        }
        return throwableWrapper;
    }

    @SuppressLint({"LogTagMismatch"})
    public static void i(String str, Object obj) {
        println(4, str, obj);
    }

    public static boolean isLoggable(int i10) {
        return Log.isLoggable("NetworkKit_", i10);
    }

    private static boolean j(int i10) {
        if (f22133a != null && i10 >= 3) {
            return true;
        }
        return false;
    }

    private static boolean k(int i10) {
        if (f22134b && isLoggable(i10)) {
            return true;
        }
        return false;
    }

    private static int l(int i10, String str, String str2) {
        if (j(i10)) {
            f(i10, a(str), b(str2, 7));
        }
        if (k(i10)) {
            return Log.println(i10, c(str), b(str2, 7));
        }
        return 1;
    }

    public static void println(int i10, String str, Object obj) {
        if (i10 < 3) {
            return;
        }
        l(i10, str, obj == null ? "null" : obj.toString());
    }

    public static void setExtLogger(ExtLogger extLogger, boolean z10) {
        f22133a = extLogger;
        f22134b = z10;
        i("NetworkKit_Logger", "logger = " + extLogger + z10);
    }

    public static void v(String str, String str2, Object... objArr) {
        println(2, str, str2, objArr);
    }

    public static void w(String str, Object obj) {
        println(5, str, obj);
    }

    @SuppressLint({"LogTagMismatch"})
    public static void d(String str, String str2, Object... objArr) {
        println(3, str, str2, objArr);
    }

    public static void e(String str, String str2, Object... objArr) {
        println(6, str, str2, objArr);
    }

    @SuppressLint({"LogTagMismatch"})
    public static void i(String str, String str2, Object... objArr) {
        println(4, str, str2, objArr);
    }

    public static void println(int i10, String str, String str2, Object... objArr) {
        if (i10 < 3) {
            return;
        }
        if (str2 == null) {
            Log.w("NetworkKit_Logger", "format is null, not log");
            return;
        }
        try {
            l(i10, str, StringUtils.format(str2, objArr));
        } catch (IllegalFormatException e10) {
            w("NetworkKit_Logger", "log format error" + str2, e10);
        }
    }

    public static void v(String str, Object obj) {
        println(2, str, obj);
    }

    public static void w(String str, String str2, Object... objArr) {
        println(5, str, str2, objArr);
    }

    public static void e(String str, String str2, Throwable th2) {
        if (j(6)) {
            f22133a.e(a(str), b(str2, 5), h(th2));
        }
        if (f22134b) {
            Log.e(c(str), b(str2, 5), h(th2));
        }
    }

    public static void w(String str, String str2, Throwable th2) {
        if (j(5)) {
            f22133a.w(a(str), b(str2, 5), h(th2));
        }
        if (f22134b) {
            Log.w(c(str), b(str2, 5), h(th2));
        }
    }
}
