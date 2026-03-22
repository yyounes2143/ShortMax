package com.inmobi.media;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
/* loaded from: classes5.dex */
public final class P3 {

    /* renamed from: a  reason: collision with root package name */
    public final Q3 f23970a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean[] f23971b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f23972c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ S3 f23973d;

    public P3(S3 s32, Q3 q32) {
        boolean[] zArr;
        this.f23973d = s32;
        this.f23970a = q32;
        if (q32.f24030c) {
            zArr = null;
        } else {
            zArr = new boolean[s32.f24113h];
        }
        this.f23971b = zArr;
    }

    public final OutputStream a(int i10) {
        FileOutputStream fileOutputStream;
        O3 o32;
        synchronized (this.f23973d) {
            try {
                Q3 q32 = this.f23970a;
                if (q32.f24031d == this) {
                    if (!q32.f24030c) {
                        this.f23971b[i10] = true;
                    }
                    File b10 = q32.b(i10);
                    try {
                        fileOutputStream = new FileOutputStream(b10);
                    } catch (FileNotFoundException unused) {
                        this.f23973d.f24106a.mkdirs();
                        try {
                            fileOutputStream = new FileOutputStream(b10);
                        } catch (FileNotFoundException unused2) {
                            return S3.f24105q;
                        }
                    }
                    o32 = new O3(this, fileOutputStream);
                } else {
                    throw new IllegalStateException();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return o32;
    }

    public final void a(String str, int i10) {
        OutputStreamWriter outputStreamWriter = null;
        try {
            OutputStreamWriter outputStreamWriter2 = new OutputStreamWriter(a(i10), Ge.f23690b);
            try {
                outputStreamWriter2.write(str);
                Ge.a(outputStreamWriter2);
            } catch (Throwable th2) {
                th = th2;
                outputStreamWriter = outputStreamWriter2;
                Ge.a(outputStreamWriter);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
