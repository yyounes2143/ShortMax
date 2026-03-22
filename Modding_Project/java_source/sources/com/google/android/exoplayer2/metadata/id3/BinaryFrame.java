package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import b7.s0;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
/* loaded from: classes4.dex */
public final class BinaryFrame extends Id3Frame {
    public static final Parcelable.Creator<BinaryFrame> CREATOR = new a();

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f18036b;

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<BinaryFrame> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public BinaryFrame createFromParcel(Parcel parcel) {
            return new BinaryFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public BinaryFrame[] newArray(int i10) {
            return new BinaryFrame[i10];
        }
    }

    public BinaryFrame(String str, byte[] bArr) {
        super(str);
        this.f18036b = bArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || BinaryFrame.class != obj.getClass()) {
            return false;
        }
        BinaryFrame binaryFrame = (BinaryFrame) obj;
        if (this.f18055a.equals(binaryFrame.f18055a) && Arrays.equals(this.f18036b, binaryFrame.f18036b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f18055a.hashCode()) * 31) + Arrays.hashCode(this.f18036b);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f18055a);
        parcel.writeByteArray(this.f18036b);
    }

    BinaryFrame(Parcel parcel) {
        super((String) s0.j(parcel.readString()));
        this.f18036b = (byte[]) s0.j(parcel.createByteArray());
    }
}
