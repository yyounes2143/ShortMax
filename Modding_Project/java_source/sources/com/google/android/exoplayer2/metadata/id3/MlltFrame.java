package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import b7.s0;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
/* loaded from: classes4.dex */
public final class MlltFrame extends Id3Frame {
    public static final Parcelable.Creator<MlltFrame> CREATOR = new a();

    /* renamed from: b  reason: collision with root package name */
    public final int f18059b;

    /* renamed from: c  reason: collision with root package name */
    public final int f18060c;

    /* renamed from: d  reason: collision with root package name */
    public final int f18061d;

    /* renamed from: e  reason: collision with root package name */
    public final int[] f18062e;

    /* renamed from: f  reason: collision with root package name */
    public final int[] f18063f;

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<MlltFrame> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public MlltFrame createFromParcel(Parcel parcel) {
            return new MlltFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public MlltFrame[] newArray(int i10) {
            return new MlltFrame[i10];
        }
    }

    public MlltFrame(int i10, int i11, int i12, int[] iArr, int[] iArr2) {
        super("MLLT");
        this.f18059b = i10;
        this.f18060c = i11;
        this.f18061d = i12;
        this.f18062e = iArr;
        this.f18063f = iArr2;
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || MlltFrame.class != obj.getClass()) {
            return false;
        }
        MlltFrame mlltFrame = (MlltFrame) obj;
        if (this.f18059b == mlltFrame.f18059b && this.f18060c == mlltFrame.f18060c && this.f18061d == mlltFrame.f18061d && Arrays.equals(this.f18062e, mlltFrame.f18062e) && Arrays.equals(this.f18063f, mlltFrame.f18063f)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f18059b) * 31) + this.f18060c) * 31) + this.f18061d) * 31) + Arrays.hashCode(this.f18062e)) * 31) + Arrays.hashCode(this.f18063f);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f18059b);
        parcel.writeInt(this.f18060c);
        parcel.writeInt(this.f18061d);
        parcel.writeIntArray(this.f18062e);
        parcel.writeIntArray(this.f18063f);
    }

    MlltFrame(Parcel parcel) {
        super("MLLT");
        this.f18059b = parcel.readInt();
        this.f18060c = parcel.readInt();
        this.f18061d = parcel.readInt();
        this.f18062e = (int[]) s0.j(parcel.createIntArray());
        this.f18063f = (int[]) s0.j(parcel.createIntArray());
    }
}
