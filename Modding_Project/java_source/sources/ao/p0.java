package ao;

import androidx.annotation.Nullable;
import ao.o0;
import java.io.IOException;
/* compiled from: TrueHdSampleRechunker.java */
/* loaded from: classes8.dex */
public final class p0 {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f1918a = new byte[10];

    /* renamed from: b  reason: collision with root package name */
    private boolean f1919b;

    /* renamed from: c  reason: collision with root package name */
    private int f1920c;

    /* renamed from: d  reason: collision with root package name */
    private long f1921d;

    /* renamed from: e  reason: collision with root package name */
    private int f1922e;

    /* renamed from: f  reason: collision with root package name */
    private int f1923f;

    /* renamed from: g  reason: collision with root package name */
    private int f1924g;

    public void a(o0 o0Var, @Nullable o0.a aVar) {
        if (this.f1920c > 0) {
            o0Var.c(this.f1921d, this.f1922e, this.f1923f, this.f1924g, aVar);
            this.f1920c = 0;
        }
    }

    public void b() {
        this.f1919b = false;
        this.f1920c = 0;
    }

    public void c(o0 o0Var, long j10, int i10, int i11, int i12, @Nullable o0.a aVar) {
        boolean z10;
        if (this.f1924g <= i11 + i12) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.h(z10, "TrueHD chunk samples must be contiguous in the sample queue.");
        if (!this.f1919b) {
            return;
        }
        int i13 = this.f1920c;
        int i14 = i13 + 1;
        this.f1920c = i14;
        if (i13 == 0) {
            this.f1921d = j10;
            this.f1922e = i10;
            this.f1923f = 0;
        }
        this.f1923f += i11;
        this.f1924g = i12;
        if (i14 >= 16) {
            a(o0Var, aVar);
        }
    }

    public void d(q qVar) throws IOException {
        if (this.f1919b) {
            return;
        }
        qVar.peekFully(this.f1918a, 0, 10);
        qVar.resetPeekPosition();
        if (b.j(this.f1918a) == 0) {
            return;
        }
        this.f1919b = true;
    }
}
