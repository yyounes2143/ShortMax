package com.huawei.hms.base.log;

import android.os.Process;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface;
import java.text.SimpleDateFormat;
import java.util.Locale;
/* compiled from: LogRecord.java */
/* loaded from: classes5.dex */
public class e {

    /* renamed from: b  reason: collision with root package name */
    private String f21933b;

    /* renamed from: c  reason: collision with root package name */
    private String f21934c;

    /* renamed from: d  reason: collision with root package name */
    private int f21935d;

    /* renamed from: g  reason: collision with root package name */
    private String f21938g;

    /* renamed from: h  reason: collision with root package name */
    private int f21939h;

    /* renamed from: i  reason: collision with root package name */
    private int f21940i;

    /* renamed from: j  reason: collision with root package name */
    private int f21941j;

    /* renamed from: a  reason: collision with root package name */
    private final StringBuilder f21932a = new StringBuilder();

    /* renamed from: e  reason: collision with root package name */
    private long f21936e = 0;

    /* renamed from: f  reason: collision with root package name */
    private long f21937f = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(int i10, String str, int i11, String str2) {
        this.f21934c = "HMS";
        this.f21941j = i10;
        this.f21933b = str;
        this.f21935d = i11;
        if (str2 != null) {
            this.f21934c = str2;
        }
        d();
    }

    public static String a(int i10) {
        if (i10 != 3) {
            if (i10 != 4) {
                if (i10 != 5) {
                    if (i10 != 6) {
                        return String.valueOf(i10);
                    }
                    return ExifInterface.LONGITUDE_EAST;
                }
                return ExifInterface.LONGITUDE_WEST;
            }
            return "I";
        }
        return "D";
    }

    private StringBuilder b(StringBuilder sb2) {
        sb2.append(' ');
        sb2.append(this.f21932a.toString());
        return sb2;
    }

    private e d() {
        this.f21936e = System.currentTimeMillis();
        Thread currentThread = Thread.currentThread();
        this.f21937f = currentThread.getId();
        this.f21939h = Process.myPid();
        StackTraceElement[] stackTrace = currentThread.getStackTrace();
        int length = stackTrace.length;
        int i10 = this.f21941j;
        if (length > i10) {
            StackTraceElement stackTraceElement = stackTrace[i10];
            this.f21938g = stackTraceElement.getFileName();
            this.f21940i = stackTraceElement.getLineNumber();
        }
        return this;
    }

    private StringBuilder e(StringBuilder sb2) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.getDefault());
        sb2.append('[');
        sb2.append(simpleDateFormat.format(Long.valueOf(this.f21936e)));
        String a10 = a(this.f21935d);
        sb2.append(' ');
        sb2.append(a10);
        sb2.append('/');
        sb2.append(this.f21934c);
        sb2.append('/');
        sb2.append(this.f21933b);
        sb2.append(' ');
        sb2.append(this.f21939h);
        sb2.append(':');
        sb2.append(this.f21937f);
        sb2.append(' ');
        sb2.append(this.f21938g);
        sb2.append(':');
        sb2.append(this.f21940i);
        sb2.append(']');
        return sb2;
    }

    public String c() {
        StringBuilder sb2 = new StringBuilder();
        e(sb2);
        return sb2.toString();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        e(sb2);
        b(sb2);
        return sb2.toString();
    }

    public <T> e a(T t10) {
        this.f21932a.append(t10);
        return this;
    }

    public e a(Throwable th2) {
        a((e) '\n').a((e) Log.getStackTraceString(th2));
        return this;
    }

    public String a() {
        StringBuilder sb2 = new StringBuilder();
        b(sb2);
        return sb2.toString();
    }
}
