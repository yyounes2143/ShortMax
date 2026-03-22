package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import b7.s0;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
/* loaded from: classes4.dex */
public final class PrivFrame extends Id3Frame {
    public static final Parcelable.Creator<PrivFrame> CREATOR = new a();

    /* renamed from: b  reason: collision with root package name */
    public final String f18064b;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f18065c;

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<PrivFrame> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public PrivFrame createFromParcel(Parcel parcel) {
            return new PrivFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public PrivFrame[] newArray(int i10) {
            return new PrivFrame[i10];
        }
    }

    public PrivFrame(String str, byte[] bArr) {
        super(com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.PrivFrame.ID);
        this.f18064b = str;
        this.f18065c = bArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || PrivFrame.class != obj.getClass()) {
            return false;
        }
        PrivFrame privFrame = (PrivFrame) obj;
        if (s0.c(this.f18064b, privFrame.f18064b) && Arrays.equals(this.f18065c, privFrame.f18065c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        String str = this.f18064b;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        return ((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + i10) * 31) + Arrays.hashCode(this.f18065c);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f18055a + ": owner=" + this.f18064b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f18064b);
        parcel.writeByteArray(this.f18065c);
    }

    PrivFrame(Parcel parcel) {
        super(com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.PrivFrame.ID);
        this.f18064b = (String) s0.j(parcel.readString());
        this.f18065c = (byte[]) s0.j(parcel.createByteArray());
    }
}
