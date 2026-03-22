package com.facebook.soloader;

import android.content.Context;
import android.os.StrictMode;
import java.io.File;
import java.io.IOException;
/* compiled from: ApplicationSoSource.java */
/* loaded from: classes2.dex */
public class a extends w implements s {

    /* renamed from: a  reason: collision with root package name */
    private final int f16832a;

    /* renamed from: b  reason: collision with root package name */
    private f f16833b;

    public a(Context context, int i10) {
        this.f16832a = i10;
        this.f16833b = new f(f(context), i10);
    }

    private static File f(Context context) {
        return new File(context.getApplicationInfo().nativeLibraryDir);
    }

    @Override // com.facebook.soloader.s
    public w b(Context context) {
        this.f16833b = new f(f(context), this.f16832a | 1);
        return this;
    }

    @Override // com.facebook.soloader.w
    public String c() {
        return "ApplicationSoSource";
    }

    @Override // com.facebook.soloader.w
    public int d(String str, int i10, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        return this.f16833b.d(str, i10, threadPolicy);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.soloader.w
    public void e(int i10) throws IOException {
        this.f16833b.e(i10);
    }

    @Override // com.facebook.soloader.w
    public String toString() {
        return c() + "[" + this.f16833b.toString() + "]";
    }
}
