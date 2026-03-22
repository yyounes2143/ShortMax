package ro;

import cn.b0;
import cn.h0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: SpliceInsertCommand.java */
/* loaded from: classes8.dex */
public final class d extends ro.b {

    /* renamed from: a  reason: collision with root package name */
    public final long f65918a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f65919b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f65920c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f65921d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f65922e;

    /* renamed from: f  reason: collision with root package name */
    public final long f65923f;

    /* renamed from: g  reason: collision with root package name */
    public final long f65924g;

    /* renamed from: h  reason: collision with root package name */
    public final List<b> f65925h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f65926i;

    /* renamed from: j  reason: collision with root package name */
    public final long f65927j;

    /* renamed from: k  reason: collision with root package name */
    public final int f65928k;

    /* renamed from: l  reason: collision with root package name */
    public final int f65929l;

    /* renamed from: m  reason: collision with root package name */
    public final int f65930m;

    /* compiled from: SpliceInsertCommand.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f65931a;

        /* renamed from: b  reason: collision with root package name */
        public final long f65932b;

        /* renamed from: c  reason: collision with root package name */
        public final long f65933c;

        private b(int i10, long j10, long j11) {
            this.f65931a = i10;
            this.f65932b = j10;
            this.f65933c = j11;
        }
    }

    private d(long j10, boolean z10, boolean z11, boolean z12, boolean z13, long j11, long j12, List<b> list, boolean z14, long j13, int i10, int i11, int i12) {
        this.f65918a = j10;
        this.f65919b = z10;
        this.f65920c = z11;
        this.f65921d = z12;
        this.f65922e = z13;
        this.f65923f = j11;
        this.f65924g = j12;
        this.f65925h = Collections.unmodifiableList(list);
        this.f65926i = z14;
        this.f65927j = j13;
        this.f65928k = i10;
        this.f65929l = i11;
        this.f65930m = i12;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d b(b0 b0Var, long j10, h0 h0Var) {
        boolean z10;
        List list;
        boolean z11;
        boolean z12;
        long j11;
        boolean z13;
        long j12;
        int i10;
        int i11;
        int i12;
        boolean z14;
        boolean z15;
        boolean z16;
        boolean z17;
        boolean z18;
        long j13;
        boolean z19;
        long j14;
        boolean z20;
        long j15;
        long J = b0Var.J();
        if ((b0Var.H() & 128) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        List emptyList = Collections.emptyList();
        if (!z10) {
            int H = b0Var.H();
            if ((H & 128) != 0) {
                z15 = true;
            } else {
                z15 = false;
            }
            if ((H & 64) != 0) {
                z16 = true;
            } else {
                z16 = false;
            }
            if ((H & 32) != 0) {
                z17 = true;
            } else {
                z17 = false;
            }
            if ((H & 16) != 0) {
                z18 = true;
            } else {
                z18 = false;
            }
            if (z16 && !z18) {
                j13 = g.c(b0Var, j10);
            } else {
                j13 = -9223372036854775807L;
            }
            if (!z16) {
                int H2 = b0Var.H();
                ArrayList arrayList = new ArrayList(H2);
                for (int i13 = 0; i13 < H2; i13++) {
                    int H3 = b0Var.H();
                    if (!z18) {
                        j15 = g.c(b0Var, j10);
                    } else {
                        j15 = -9223372036854775807L;
                    }
                    arrayList.add(new b(H3, j15, h0Var.b(j15)));
                }
                emptyList = arrayList;
            }
            if (z17) {
                long H4 = b0Var.H();
                if ((128 & H4) != 0) {
                    z20 = true;
                } else {
                    z20 = false;
                }
                j14 = ((((H4 & 1) << 32) | b0Var.J()) * 1000) / 90;
                z19 = z20;
            } else {
                z19 = false;
                j14 = -9223372036854775807L;
            }
            i10 = b0Var.P();
            z14 = z16;
            i11 = b0Var.H();
            i12 = b0Var.H();
            list = emptyList;
            long j16 = j13;
            z13 = z19;
            j12 = j14;
            z12 = z18;
            z11 = z15;
            j11 = j16;
        } else {
            list = emptyList;
            z11 = false;
            z12 = false;
            j11 = -9223372036854775807L;
            z13 = false;
            j12 = -9223372036854775807L;
            i10 = 0;
            i11 = 0;
            i12 = 0;
            z14 = false;
        }
        return new d(J, z10, z11, z14, z12, j11, h0Var.b(j11), list, z13, j12, i10, i11, i12);
    }

    @Override // ro.b
    public String toString() {
        return "SCTE-35 SpliceInsertCommand { programSplicePts=" + this.f65923f + ", programSplicePlaybackPositionUs= " + this.f65924g + " }";
    }
}
