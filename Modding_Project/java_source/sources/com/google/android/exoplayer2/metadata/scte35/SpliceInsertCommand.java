package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import b7.g0;
import b7.o0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes4.dex */
public final class SpliceInsertCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceInsertCommand> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final long f18089a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f18090b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f18091c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f18092d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f18093e;

    /* renamed from: f  reason: collision with root package name */
    public final long f18094f;

    /* renamed from: g  reason: collision with root package name */
    public final long f18095g;

    /* renamed from: h  reason: collision with root package name */
    public final List<b> f18096h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f18097i;

    /* renamed from: j  reason: collision with root package name */
    public final long f18098j;

    /* renamed from: k  reason: collision with root package name */
    public final int f18099k;

    /* renamed from: l  reason: collision with root package name */
    public final int f18100l;

    /* renamed from: m  reason: collision with root package name */
    public final int f18101m;

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<SpliceInsertCommand> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public SpliceInsertCommand createFromParcel(Parcel parcel) {
            return new SpliceInsertCommand(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public SpliceInsertCommand[] newArray(int i10) {
            return new SpliceInsertCommand[i10];
        }
    }

    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f18102a;

        /* renamed from: b  reason: collision with root package name */
        public final long f18103b;

        /* renamed from: c  reason: collision with root package name */
        public final long f18104c;

        /* synthetic */ b(int i10, long j10, long j11, a aVar) {
            this(i10, j10, j11);
        }

        public static b a(Parcel parcel) {
            return new b(parcel.readInt(), parcel.readLong(), parcel.readLong());
        }

        public void b(Parcel parcel) {
            parcel.writeInt(this.f18102a);
            parcel.writeLong(this.f18103b);
            parcel.writeLong(this.f18104c);
        }

        private b(int i10, long j10, long j11) {
            this.f18102a = i10;
            this.f18103b = j10;
            this.f18104c = j11;
        }
    }

    /* synthetic */ SpliceInsertCommand(Parcel parcel, a aVar) {
        this(parcel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SpliceInsertCommand a(g0 g0Var, long j10, o0 o0Var) {
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
        long F = g0Var.F();
        if ((g0Var.D() & 128) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        List emptyList = Collections.emptyList();
        if (!z10) {
            int D = g0Var.D();
            if ((D & 128) != 0) {
                z15 = true;
            } else {
                z15 = false;
            }
            if ((D & 64) != 0) {
                z16 = true;
            } else {
                z16 = false;
            }
            if ((D & 32) != 0) {
                z17 = true;
            } else {
                z17 = false;
            }
            if ((D & 16) != 0) {
                z18 = true;
            } else {
                z18 = false;
            }
            if (z16 && !z18) {
                j13 = TimeSignalCommand.b(g0Var, j10);
            } else {
                j13 = -9223372036854775807L;
            }
            if (!z16) {
                int D2 = g0Var.D();
                ArrayList arrayList = new ArrayList(D2);
                for (int i13 = 0; i13 < D2; i13++) {
                    int D3 = g0Var.D();
                    if (!z18) {
                        j15 = TimeSignalCommand.b(g0Var, j10);
                    } else {
                        j15 = -9223372036854775807L;
                    }
                    arrayList.add(new b(D3, j15, o0Var.b(j15), null));
                }
                emptyList = arrayList;
            }
            if (z17) {
                long D4 = g0Var.D();
                if ((128 & D4) != 0) {
                    z20 = true;
                } else {
                    z20 = false;
                }
                j14 = ((((D4 & 1) << 32) | g0Var.F()) * 1000) / 90;
                z19 = z20;
            } else {
                z19 = false;
                j14 = -9223372036854775807L;
            }
            i10 = g0Var.J();
            z14 = z16;
            i11 = g0Var.D();
            i12 = g0Var.D();
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
        return new SpliceInsertCommand(F, z10, z11, z14, z12, j11, o0Var.b(j11), list, z13, j12, i10, i11, i12);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.f18089a);
        parcel.writeByte(this.f18090b ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f18091c ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f18092d ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f18093e ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f18094f);
        parcel.writeLong(this.f18095g);
        int size = this.f18096h.size();
        parcel.writeInt(size);
        for (int i11 = 0; i11 < size; i11++) {
            this.f18096h.get(i11).b(parcel);
        }
        parcel.writeByte(this.f18097i ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f18098j);
        parcel.writeInt(this.f18099k);
        parcel.writeInt(this.f18100l);
        parcel.writeInt(this.f18101m);
    }

    private SpliceInsertCommand(long j10, boolean z10, boolean z11, boolean z12, boolean z13, long j11, long j12, List<b> list, boolean z14, long j13, int i10, int i11, int i12) {
        this.f18089a = j10;
        this.f18090b = z10;
        this.f18091c = z11;
        this.f18092d = z12;
        this.f18093e = z13;
        this.f18094f = j11;
        this.f18095g = j12;
        this.f18096h = Collections.unmodifiableList(list);
        this.f18097i = z14;
        this.f18098j = j13;
        this.f18099k = i10;
        this.f18100l = i11;
        this.f18101m = i12;
    }

    private SpliceInsertCommand(Parcel parcel) {
        this.f18089a = parcel.readLong();
        this.f18090b = parcel.readByte() == 1;
        this.f18091c = parcel.readByte() == 1;
        this.f18092d = parcel.readByte() == 1;
        this.f18093e = parcel.readByte() == 1;
        this.f18094f = parcel.readLong();
        this.f18095g = parcel.readLong();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i10 = 0; i10 < readInt; i10++) {
            arrayList.add(b.a(parcel));
        }
        this.f18096h = Collections.unmodifiableList(arrayList);
        this.f18097i = parcel.readByte() == 1;
        this.f18098j = parcel.readLong();
        this.f18099k = parcel.readInt();
        this.f18100l = parcel.readInt();
        this.f18101m = parcel.readInt();
    }
}
