package com.huawei.hms.base.log;

import android.content.Context;
import android.util.Log;
/* compiled from: LogAdaptor.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: b  reason: collision with root package name */
    private String f21929b;

    /* renamed from: a  reason: collision with root package name */
    private int f21928a = 4;

    /* renamed from: c  reason: collision with root package name */
    private d f21930c = new c();

    private e c(int i10, String str, String str2, Throwable th2) {
        e eVar = new e(8, this.f21929b, i10, str);
        eVar.a((e) str2);
        eVar.a(th2);
        return eVar;
    }

    private void d() {
        try {
            Log.e("HMSSDK_LogAdaptor", "log happened OOM error.");
        } catch (Throwable unused) {
        }
    }

    public void a(Context context, int i10, String str) {
        this.f21928a = i10;
        this.f21929b = str;
        this.f21930c.a(context, "HMSCore");
    }

    public void b(int i10, String str, String str2, Throwable th2) {
        try {
            if (a(i10)) {
                e c10 = c(i10, str, str2, th2);
                d dVar = this.f21930c;
                dVar.a(c10.c() + c10.a(), i10, str, str2 + '\n' + Log.getStackTraceString(th2));
            }
        } catch (OutOfMemoryError unused) {
            d();
        }
    }

    public d a() {
        return this.f21930c;
    }

    public void a(d dVar) {
        this.f21930c = dVar;
    }

    public boolean a(int i10) {
        return i10 >= this.f21928a;
    }

    public void a(int i10, String str, String str2) {
        try {
            if (a(i10)) {
                e c10 = c(i10, str, str2, null);
                this.f21930c.a(c10.c() + c10.a(), i10, str, str2);
            }
        } catch (OutOfMemoryError unused) {
            d();
        }
    }

    public void a(String str, String str2) {
        try {
            e c10 = c(4, str, str2, null);
            this.f21930c.a(c10.c() + '\n' + c10.a(), 4, str, str2);
        } catch (OutOfMemoryError unused) {
            d();
        }
    }
}
