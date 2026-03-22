package n6;

import com.google.android.exoplayer2.source.b0;
/* compiled from: CompositeSequenceableLoader.java */
/* loaded from: classes4.dex */
public class c implements b0 {

    /* renamed from: a  reason: collision with root package name */
    protected final b0[] f62770a;

    public c(b0[] b0VarArr) {
        this.f62770a = b0VarArr;
    }

    @Override // com.google.android.exoplayer2.source.b0
    public boolean continueLoading(long j10) {
        b0[] b0VarArr;
        boolean z10;
        boolean z11;
        boolean z12 = false;
        do {
            long nextLoadPositionUs = getNextLoadPositionUs();
            if (nextLoadPositionUs == Long.MIN_VALUE) {
                break;
            }
            z10 = false;
            for (b0 b0Var : this.f62770a) {
                long nextLoadPositionUs2 = b0Var.getNextLoadPositionUs();
                if (nextLoadPositionUs2 != Long.MIN_VALUE && nextLoadPositionUs2 <= j10) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                if (nextLoadPositionUs2 == nextLoadPositionUs || z11) {
                    z10 |= b0Var.continueLoading(j10);
                }
            }
            z12 |= z10;
        } while (z10);
        return z12;
    }

    @Override // com.google.android.exoplayer2.source.b0
    public final long getBufferedPositionUs() {
        long j10 = Long.MAX_VALUE;
        for (b0 b0Var : this.f62770a) {
            long bufferedPositionUs = b0Var.getBufferedPositionUs();
            if (bufferedPositionUs != Long.MIN_VALUE) {
                j10 = Math.min(j10, bufferedPositionUs);
            }
        }
        if (j10 == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j10;
    }

    @Override // com.google.android.exoplayer2.source.b0
    public final long getNextLoadPositionUs() {
        long j10 = Long.MAX_VALUE;
        for (b0 b0Var : this.f62770a) {
            long nextLoadPositionUs = b0Var.getNextLoadPositionUs();
            if (nextLoadPositionUs != Long.MIN_VALUE) {
                j10 = Math.min(j10, nextLoadPositionUs);
            }
        }
        if (j10 == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j10;
    }

    @Override // com.google.android.exoplayer2.source.b0
    public boolean isLoading() {
        for (b0 b0Var : this.f62770a) {
            if (b0Var.isLoading()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.source.b0
    public final void reevaluateBuffer(long j10) {
        for (b0 b0Var : this.f62770a) {
            b0Var.reevaluateBuffer(j10);
        }
    }
}
