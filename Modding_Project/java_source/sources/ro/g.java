package ro;

import cn.b0;
import cn.h0;
/* compiled from: TimeSignalCommand.java */
/* loaded from: classes8.dex */
public final class g extends b {

    /* renamed from: a  reason: collision with root package name */
    public final long f65948a;

    /* renamed from: b  reason: collision with root package name */
    public final long f65949b;

    private g(long j10, long j11) {
        this.f65948a = j10;
        this.f65949b = j11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static g b(b0 b0Var, long j10, h0 h0Var) {
        long c10 = c(b0Var, j10);
        return new g(c10, h0Var.b(c10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long c(b0 b0Var, long j10) {
        long H = b0Var.H();
        if ((128 & H) != 0) {
            return 8589934591L & ((((H & 1) << 32) | b0Var.J()) + j10);
        }
        return -9223372036854775807L;
    }

    @Override // ro.b
    public String toString() {
        return "SCTE-35 TimeSignalCommand { ptsTime=" + this.f65948a + ", playbackPositionUs= " + this.f65949b + " }";
    }
}
