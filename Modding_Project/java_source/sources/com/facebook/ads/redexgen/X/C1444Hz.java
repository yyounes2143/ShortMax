package com.facebook.ads.redexgen.X;

import android.os.Parcel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.Hz */
/* loaded from: assets/audience_network.dex */
public final class C1444Hz {
    public static String[] A0B = {"nEg82cXZVYZFfZdDmhKyBuPXw98CjCqr", "lWWNRS3KueXb9Tbf73wyUq3w1CVt7zYo", "9i1TifP67Pthfk8s9WN", "2Mfz8aUpVuODbM0LRRY7IzxNE33rrKDp", "lWmgQQDKaNBy8Pu2POQEfpeN2vAsVVBR", "WAUg7lL5KFyy4cAmNpLa1cxU0cT6TIeS", "jMg6XDLnbUHNrmDX3ZR", "RwGxvdCbKX59SF6mGNLLwZG43nCYkk8W"};
    public final int A00;
    public final int A01;
    public final int A02;
    public final long A03;
    public final long A04;
    public final long A05;
    public final List<C1443Hy> A06;
    public final boolean A07;
    public final boolean A08;
    public final boolean A09;
    public final boolean A0A;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static C1444Hz A02(C4J c4j) {
        long A0Q = c4j.A0Q();
        boolean z10 = (c4j.A0I() & 128) != 0;
        boolean z11 = false;
        boolean z12 = false;
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        boolean z13 = false;
        long j10 = -9223372036854775807L;
        if (!z10) {
            int A0I = c4j.A0I();
            z11 = (A0I & 128) != 0;
            z12 = (A0I & 64) != 0;
            if (A0B[3].charAt(19) != '7') {
                throw new RuntimeException();
            }
            String[] strArr = A0B;
            strArr[0] = "nLO0WJRxYuU9qthfzcYyP1P8ccIGaxOi";
            strArr[1] = "OIpoqKTSq2Ia2FsBUXzy5KxMNemzaoxr";
            boolean z14 = (A0I & 32) != 0;
            r14 = z12 ? c4j.A0Q() : -9223372036854775807L;
            if (!z12) {
                int A0I2 = c4j.A0I();
                arrayList = new ArrayList(A0I2);
                for (int i13 = 0; i13 < A0I2; i13++) {
                    arrayList.add(new C1443Hy(c4j.A0I(), c4j.A0Q(), null));
                }
                if (A0B[3].charAt(19) == '7') {
                    A0B[4] = "ZIJV8CxCO5lc3X0ct1XMotdLhBio9GzL";
                }
            }
            if (z14) {
                long A0I3 = c4j.A0I();
                z13 = (128 & A0I3) != 0;
                j10 = (1000 * (((1 & A0I3) << 32) | c4j.A0Q())) / 90;
            }
            i10 = c4j.A0M();
            i11 = c4j.A0I();
            i12 = c4j.A0I();
        }
        return new C1444Hz(A0Q, z10, z11, z12, arrayList, r14, z13, j10, i10, i11, i12);
    }

    public C1444Hz(long j10, boolean z10, boolean z11, boolean z12, List<C1443Hy> list, long j11, boolean z13, long j12, int i10, int i11, int i12) {
        this.A04 = j10;
        this.A0A = z10;
        this.A08 = z11;
        this.A09 = z12;
        this.A06 = Collections.unmodifiableList(list);
        this.A05 = j11;
        this.A07 = z13;
        this.A03 = j12;
        this.A02 = i10;
        this.A00 = i11;
        this.A01 = i12;
    }

    public C1444Hz(Parcel parcel) {
        C1443Hy A00;
        this.A04 = parcel.readLong();
        this.A0A = parcel.readByte() == 1;
        this.A08 = parcel.readByte() == 1;
        this.A09 = parcel.readByte() == 1;
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i10 = 0; i10 < readInt; i10++) {
            A00 = C1443Hy.A00(parcel);
            arrayList.add(A00);
        }
        this.A06 = Collections.unmodifiableList(arrayList);
        this.A05 = parcel.readLong();
        int componentSpliceListLength = parcel.readByte();
        this.A07 = componentSpliceListLength == 1;
        this.A03 = parcel.readLong();
        int componentSpliceListLength2 = parcel.readInt();
        this.A02 = componentSpliceListLength2;
        int componentSpliceListLength3 = parcel.readInt();
        this.A00 = componentSpliceListLength3;
        int componentSpliceListLength4 = parcel.readInt();
        this.A01 = componentSpliceListLength4;
    }

    public static C1444Hz A00(Parcel parcel) {
        return new C1444Hz(parcel);
    }

    public static /* synthetic */ C1444Hz A01(Parcel parcel) {
        return A00(parcel);
    }

    public static /* synthetic */ C1444Hz A03(C4J c4j) {
        return A02(c4j);
    }

    public void A04(Parcel parcel) {
        parcel.writeLong(this.A04);
        parcel.writeByte(this.A0A ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.A08 ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.A09 ? (byte) 1 : (byte) 0);
        int size = this.A06.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            this.A06.get(i10).A02(parcel);
        }
        parcel.writeLong(this.A05);
        parcel.writeByte(this.A07 ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.A03);
        int componentSpliceListSize = this.A02;
        parcel.writeInt(componentSpliceListSize);
        int componentSpliceListSize2 = this.A00;
        parcel.writeInt(componentSpliceListSize2);
        int componentSpliceListSize3 = this.A01;
        parcel.writeInt(componentSpliceListSize3);
    }

    public static /* synthetic */ void A05(C1444Hz c1444Hz, Parcel parcel) {
        c1444Hz.A04(parcel);
    }
}
