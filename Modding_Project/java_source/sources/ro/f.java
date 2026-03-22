package ro;

import cn.b0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: SpliceScheduleCommand.java */
/* loaded from: classes8.dex */
public final class f extends ro.b {

    /* renamed from: a  reason: collision with root package name */
    public final List<c> f65934a;

    /* compiled from: SpliceScheduleCommand.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f65935a;

        /* renamed from: b  reason: collision with root package name */
        public final long f65936b;

        private b(int i10, long j10) {
            this.f65935a = i10;
            this.f65936b = j10;
        }
    }

    /* compiled from: SpliceScheduleCommand.java */
    /* loaded from: classes8.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final long f65937a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f65938b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f65939c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f65940d;

        /* renamed from: e  reason: collision with root package name */
        public final long f65941e;

        /* renamed from: f  reason: collision with root package name */
        public final List<b> f65942f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f65943g;

        /* renamed from: h  reason: collision with root package name */
        public final long f65944h;

        /* renamed from: i  reason: collision with root package name */
        public final int f65945i;

        /* renamed from: j  reason: collision with root package name */
        public final int f65946j;

        /* renamed from: k  reason: collision with root package name */
        public final int f65947k;

        private c(long j10, boolean z10, boolean z11, boolean z12, List<b> list, long j11, boolean z13, long j12, int i10, int i11, int i12) {
            this.f65937a = j10;
            this.f65938b = z10;
            this.f65939c = z11;
            this.f65940d = z12;
            this.f65942f = Collections.unmodifiableList(list);
            this.f65941e = j11;
            this.f65943g = z13;
            this.f65944h = j12;
            this.f65945i = i10;
            this.f65946j = i11;
            this.f65947k = i12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static c b(b0 b0Var) {
            boolean z10;
            ArrayList arrayList;
            boolean z11;
            long j10;
            boolean z12;
            long j11;
            int i10;
            int i11;
            int i12;
            boolean z13;
            boolean z14;
            boolean z15;
            boolean z16;
            long j12;
            boolean z17;
            long j13;
            boolean z18;
            long J = b0Var.J();
            if ((b0Var.H() & 128) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            ArrayList arrayList2 = new ArrayList();
            if (!z10) {
                int H = b0Var.H();
                if ((H & 128) != 0) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                if ((H & 64) != 0) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                if ((H & 32) != 0) {
                    z16 = true;
                } else {
                    z16 = false;
                }
                if (z15) {
                    j12 = b0Var.J();
                } else {
                    j12 = -9223372036854775807L;
                }
                if (!z15) {
                    int H2 = b0Var.H();
                    ArrayList arrayList3 = new ArrayList(H2);
                    for (int i13 = 0; i13 < H2; i13++) {
                        arrayList3.add(new b(b0Var.H(), b0Var.J()));
                    }
                    arrayList2 = arrayList3;
                }
                if (z16) {
                    long H3 = b0Var.H();
                    if ((128 & H3) != 0) {
                        z18 = true;
                    } else {
                        z18 = false;
                    }
                    j13 = ((((H3 & 1) << 32) | b0Var.J()) * 1000) / 90;
                    z17 = z18;
                } else {
                    z17 = false;
                    j13 = -9223372036854775807L;
                }
                int P = b0Var.P();
                int H4 = b0Var.H();
                z13 = z15;
                i12 = b0Var.H();
                j11 = j13;
                arrayList = arrayList2;
                long j14 = j12;
                i10 = P;
                i11 = H4;
                j10 = j14;
                boolean z19 = z14;
                z12 = z17;
                z11 = z19;
            } else {
                arrayList = arrayList2;
                z11 = false;
                j10 = -9223372036854775807L;
                z12 = false;
                j11 = -9223372036854775807L;
                i10 = 0;
                i11 = 0;
                i12 = 0;
                z13 = false;
            }
            return new c(J, z10, z11, z13, arrayList, j10, z12, j11, i10, i11, i12);
        }
    }

    private f(List<c> list) {
        this.f65934a = Collections.unmodifiableList(list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static f b(b0 b0Var) {
        int H = b0Var.H();
        ArrayList arrayList = new ArrayList(H);
        for (int i10 = 0; i10 < H; i10++) {
            arrayList.add(c.b(b0Var));
        }
        return new f(arrayList);
    }
}
