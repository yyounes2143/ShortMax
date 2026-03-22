package tn;

import ao.o0;
import cn.r;
import io.bidmachine.media3.exoplayer.source.f0;
import tn.f;
/* compiled from: BaseMediaChunkOutput.java */
/* loaded from: classes8.dex */
public final class c implements f.b {

    /* renamed from: a  reason: collision with root package name */
    private final int[] f67437a;

    /* renamed from: b  reason: collision with root package name */
    private final f0[] f67438b;

    public c(int[] iArr, f0[] f0VarArr) {
        this.f67437a = iArr;
        this.f67438b = f0VarArr;
    }

    public int[] a() {
        int[] iArr = new int[this.f67438b.length];
        int i10 = 0;
        while (true) {
            f0[] f0VarArr = this.f67438b;
            if (i10 < f0VarArr.length) {
                iArr[i10] = f0VarArr[i10].J();
                i10++;
            } else {
                return iArr;
            }
        }
    }

    public void b(long j10) {
        for (f0 f0Var : this.f67438b) {
            f0Var.d0(j10);
        }
    }

    @Override // tn.f.b
    public o0 track(int i10, int i11) {
        int i12 = 0;
        while (true) {
            int[] iArr = this.f67437a;
            if (i12 < iArr.length) {
                if (i11 == iArr[i12]) {
                    return this.f67438b[i12];
                }
                i12++;
            } else {
                r.c("BaseMediaChunkOutput", "Unmatched track of type: " + i11);
                return new ao.m();
            }
        }
    }
}
