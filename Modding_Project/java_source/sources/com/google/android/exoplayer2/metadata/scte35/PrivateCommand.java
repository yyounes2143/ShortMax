package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import b7.g0;
import b7.s0;
/* loaded from: classes4.dex */
public final class PrivateCommand extends SpliceCommand {
    public static final Parcelable.Creator<PrivateCommand> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final long f18086a;

    /* renamed from: b  reason: collision with root package name */
    public final long f18087b;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f18088c;

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<PrivateCommand> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public PrivateCommand createFromParcel(Parcel parcel) {
            return new PrivateCommand(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public PrivateCommand[] newArray(int i10) {
            return new PrivateCommand[i10];
        }
    }

    /* synthetic */ PrivateCommand(Parcel parcel, a aVar) {
        this(parcel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PrivateCommand a(g0 g0Var, int i10, long j10) {
        long F = g0Var.F();
        int i11 = i10 - 4;
        byte[] bArr = new byte[i11];
        g0Var.j(bArr, 0, i11);
        return new PrivateCommand(F, bArr, j10);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.f18086a);
        parcel.writeLong(this.f18087b);
        parcel.writeByteArray(this.f18088c);
    }

    private PrivateCommand(long j10, byte[] bArr, long j11) {
        this.f18086a = j11;
        this.f18087b = j10;
        this.f18088c = bArr;
    }

    private PrivateCommand(Parcel parcel) {
        this.f18086a = parcel.readLong();
        this.f18087b = parcel.readLong();
        this.f18088c = (byte[]) s0.j(parcel.createByteArray());
    }
}
