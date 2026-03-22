package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import b7.g0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes4.dex */
public final class SpliceScheduleCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceScheduleCommand> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final List<c> f18105a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements Parcelable.Creator<SpliceScheduleCommand> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public SpliceScheduleCommand createFromParcel(Parcel parcel) {
            return new SpliceScheduleCommand(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public SpliceScheduleCommand[] newArray(int i10) {
            return new SpliceScheduleCommand[i10];
        }
    }

    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f18106a;

        /* renamed from: b  reason: collision with root package name */
        public final long f18107b;

        /* synthetic */ b(int i10, long j10, a aVar) {
            this(i10, j10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b c(Parcel parcel) {
            return new b(parcel.readInt(), parcel.readLong());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d(Parcel parcel) {
            parcel.writeInt(this.f18106a);
            parcel.writeLong(this.f18107b);
        }

        private b(int i10, long j10) {
            this.f18106a = i10;
            this.f18107b = j10;
        }
    }

    /* synthetic */ SpliceScheduleCommand(Parcel parcel, a aVar) {
        this(parcel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SpliceScheduleCommand a(g0 g0Var) {
        int D = g0Var.D();
        ArrayList arrayList = new ArrayList(D);
        for (int i10 = 0; i10 < D; i10++) {
            arrayList.add(c.e(g0Var));
        }
        return new SpliceScheduleCommand(arrayList);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        int size = this.f18105a.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            this.f18105a.get(i11).f(parcel);
        }
    }

    private SpliceScheduleCommand(List<c> list) {
        this.f18105a = Collections.unmodifiableList(list);
    }

    private SpliceScheduleCommand(Parcel parcel) {
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i10 = 0; i10 < readInt; i10++) {
            arrayList.add(c.d(parcel));
        }
        this.f18105a = Collections.unmodifiableList(arrayList);
    }

    /* loaded from: classes4.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final long f18108a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f18109b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f18110c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f18111d;

        /* renamed from: e  reason: collision with root package name */
        public final long f18112e;

        /* renamed from: f  reason: collision with root package name */
        public final List<b> f18113f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f18114g;

        /* renamed from: h  reason: collision with root package name */
        public final long f18115h;

        /* renamed from: i  reason: collision with root package name */
        public final int f18116i;

        /* renamed from: j  reason: collision with root package name */
        public final int f18117j;

        /* renamed from: k  reason: collision with root package name */
        public final int f18118k;

        private c(long j10, boolean z10, boolean z11, boolean z12, List<b> list, long j11, boolean z13, long j12, int i10, int i11, int i12) {
            this.f18108a = j10;
            this.f18109b = z10;
            this.f18110c = z11;
            this.f18111d = z12;
            this.f18113f = Collections.unmodifiableList(list);
            this.f18112e = j11;
            this.f18114g = z13;
            this.f18115h = j12;
            this.f18116i = i10;
            this.f18117j = i11;
            this.f18118k = i12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static c d(Parcel parcel) {
            return new c(parcel);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static c e(g0 g0Var) {
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
            long F = g0Var.F();
            if ((g0Var.D() & 128) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            ArrayList arrayList2 = new ArrayList();
            if (!z10) {
                int D = g0Var.D();
                if ((D & 128) != 0) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                if ((D & 64) != 0) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                if ((D & 32) != 0) {
                    z16 = true;
                } else {
                    z16 = false;
                }
                if (z15) {
                    j12 = g0Var.F();
                } else {
                    j12 = -9223372036854775807L;
                }
                if (!z15) {
                    int D2 = g0Var.D();
                    ArrayList arrayList3 = new ArrayList(D2);
                    for (int i13 = 0; i13 < D2; i13++) {
                        arrayList3.add(new b(g0Var.D(), g0Var.F(), null));
                    }
                    arrayList2 = arrayList3;
                }
                if (z16) {
                    long D3 = g0Var.D();
                    if ((128 & D3) != 0) {
                        z18 = true;
                    } else {
                        z18 = false;
                    }
                    j13 = ((((D3 & 1) << 32) | g0Var.F()) * 1000) / 90;
                    z17 = z18;
                } else {
                    z17 = false;
                    j13 = -9223372036854775807L;
                }
                int J = g0Var.J();
                int D4 = g0Var.D();
                z13 = z15;
                i12 = g0Var.D();
                j11 = j13;
                arrayList = arrayList2;
                long j14 = j12;
                i10 = J;
                i11 = D4;
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
            return new c(F, z10, z11, z13, arrayList, j10, z12, j11, i10, i11, i12);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f(Parcel parcel) {
            parcel.writeLong(this.f18108a);
            parcel.writeByte(this.f18109b ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f18110c ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f18111d ? (byte) 1 : (byte) 0);
            int size = this.f18113f.size();
            parcel.writeInt(size);
            for (int i10 = 0; i10 < size; i10++) {
                this.f18113f.get(i10).d(parcel);
            }
            parcel.writeLong(this.f18112e);
            parcel.writeByte(this.f18114g ? (byte) 1 : (byte) 0);
            parcel.writeLong(this.f18115h);
            parcel.writeInt(this.f18116i);
            parcel.writeInt(this.f18117j);
            parcel.writeInt(this.f18118k);
        }

        private c(Parcel parcel) {
            this.f18108a = parcel.readLong();
            this.f18109b = parcel.readByte() == 1;
            this.f18110c = parcel.readByte() == 1;
            this.f18111d = parcel.readByte() == 1;
            int readInt = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt);
            for (int i10 = 0; i10 < readInt; i10++) {
                arrayList.add(b.c(parcel));
            }
            this.f18113f = Collections.unmodifiableList(arrayList);
            this.f18112e = parcel.readLong();
            this.f18114g = parcel.readByte() == 1;
            this.f18115h = parcel.readLong();
            this.f18116i = parcel.readInt();
            this.f18117j = parcel.readInt();
            this.f18118k = parcel.readInt();
        }
    }
}
