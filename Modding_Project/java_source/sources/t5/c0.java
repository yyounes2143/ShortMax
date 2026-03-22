package t5;

import androidx.annotation.Nullable;
import java.io.IOException;
import t5.b0;
/* compiled from: TrueHdSampleRechunker.java */
/* loaded from: classes4.dex */
public final class c0 {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f67110a = new byte[10];

    /* renamed from: b  reason: collision with root package name */
    private boolean f67111b;

    /* renamed from: c  reason: collision with root package name */
    private int f67112c;

    /* renamed from: d  reason: collision with root package name */
    private long f67113d;

    /* renamed from: e  reason: collision with root package name */
    private int f67114e;

    /* renamed from: f  reason: collision with root package name */
    private int f67115f;

    /* renamed from: g  reason: collision with root package name */
    private int f67116g;

    public void a(b0 b0Var, @Nullable b0.a aVar) {
        if (this.f67112c > 0) {
            b0Var.e(this.f67113d, this.f67114e, this.f67115f, this.f67116g, aVar);
            this.f67112c = 0;
        }
    }

    public void b() {
        this.f67111b = false;
        this.f67112c = 0;
    }

    public void c(b0 b0Var, long j10, int i10, int i11, int i12, @Nullable b0.a aVar) {
        boolean z10;
        if (this.f67116g <= i11 + i12) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.h(z10, "TrueHD chunk samples must be contiguous in the sample queue.");
        if (!this.f67111b) {
            return;
        }
        int i13 = this.f67112c;
        int i14 = i13 + 1;
        this.f67112c = i14;
        if (i13 == 0) {
            this.f67113d = j10;
            this.f67114e = i10;
            this.f67115f = 0;
        }
        this.f67115f += i11;
        this.f67116g = i12;
        if (i14 >= 16) {
            a(b0Var, aVar);
        }
    }

    public void d(l lVar) throws IOException {
        if (this.f67111b) {
            return;
        }
        lVar.peekFully(this.f67110a, 0, 10);
        lVar.resetPeekPosition();
        if (q5.b.i(this.f67110a) == 0) {
            return;
        }
        this.f67111b = true;
    }
}
