package l2;

import android.util.Log;
/* compiled from: FLogDefaultLoggingDelegate.java */
/* loaded from: classes3.dex */
public class b implements c {

    /* renamed from: c  reason: collision with root package name */
    public static final b f62074c = new b();

    /* renamed from: a  reason: collision with root package name */
    private String f62075a = "unknown";

    /* renamed from: b  reason: collision with root package name */
    private int f62076b = 5;

    private b() {
    }

    public static b f() {
        return f62074c;
    }

    private static String g(String str, Throwable th2) {
        return str + '\n' + h(th2);
    }

    private static String h(Throwable th2) {
        if (th2 == null) {
            return "";
        }
        return Log.getStackTraceString(th2);
    }

    private String i(String str) {
        if (this.f62075a != null) {
            return this.f62075a + ":" + str;
        }
        return str;
    }

    private void j(int i10, String str, String str2) {
        Log.println(i10, i(str), str2);
    }

    private void k(int i10, String str, String str2, Throwable th2) {
        Log.println(i10, i(str), g(str2, th2));
    }

    @Override // l2.c
    public void a(String str, String str2, Throwable th2) {
        k(3, str, str2, th2);
    }

    @Override // l2.c
    public void b(String str, String str2) {
        j(6, str, str2);
    }

    @Override // l2.c
    public void c(String str, String str2) {
        j(2, str, str2);
    }

    @Override // l2.c
    public void d(String str, String str2) {
        j(3, str, str2);
    }

    @Override // l2.c
    public boolean e(int i10) {
        return this.f62076b <= i10;
    }

    @Override // l2.c
    public void w(String str, String str2) {
        j(5, str, str2);
    }

    @Override // l2.c
    public void d(String str, String str2, Throwable th2) {
        k(6, str, str2, th2);
    }

    @Override // l2.c
    public void e(String str, String str2) {
        j(6, str, str2);
    }

    @Override // l2.c
    public void w(String str, String str2, Throwable th2) {
        k(5, str, str2, th2);
    }

    @Override // l2.c
    public void e(String str, String str2, Throwable th2) {
        k(6, str, str2, th2);
    }
}
