package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import b7.g0;
import b7.o0;
/* loaded from: classes4.dex */
public final class TimeSignalCommand extends SpliceCommand {
    public static final Parcelable.Creator<TimeSignalCommand> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final long f18119a;

    /* renamed from: b  reason: collision with root package name */
    public final long f18120b;

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<TimeSignalCommand> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public TimeSignalCommand createFromParcel(Parcel parcel) {
            return new TimeSignalCommand(parcel.readLong(), parcel.readLong(), null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public TimeSignalCommand[] newArray(int i10) {
            return new TimeSignalCommand[i10];
        }
    }

    /* synthetic */ TimeSignalCommand(long j10, long j11, a aVar) {
        this(j10, j11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static TimeSignalCommand a(g0 g0Var, long j10, o0 o0Var) {
        long b10 = b(g0Var, j10);
        return new TimeSignalCommand(b10, o0Var.b(b10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long b(g0 g0Var, long j10) {
        long D = g0Var.D();
        if ((128 & D) != 0) {
            return 8589934591L & ((((D & 1) << 32) | g0Var.F()) + j10);
        }
        return -9223372036854775807L;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.f18119a);
        parcel.writeLong(this.f18120b);
    }

    private TimeSignalCommand(long j10, long j11) {
        this.f18119a = j10;
        this.f18120b = j11;
    }
}
