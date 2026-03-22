package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import b7.s0;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
/* loaded from: classes4.dex */
public final class GeobFrame extends Id3Frame {
    public static final Parcelable.Creator<GeobFrame> CREATOR = new a();

    /* renamed from: b  reason: collision with root package name */
    public final String f18051b;

    /* renamed from: c  reason: collision with root package name */
    public final String f18052c;

    /* renamed from: d  reason: collision with root package name */
    public final String f18053d;

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f18054e;

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<GeobFrame> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public GeobFrame createFromParcel(Parcel parcel) {
            return new GeobFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public GeobFrame[] newArray(int i10) {
            return new GeobFrame[i10];
        }
    }

    public GeobFrame(String str, String str2, String str3, byte[] bArr) {
        super(com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.GeobFrame.ID);
        this.f18051b = str;
        this.f18052c = str2;
        this.f18053d = str3;
        this.f18054e = bArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || GeobFrame.class != obj.getClass()) {
            return false;
        }
        GeobFrame geobFrame = (GeobFrame) obj;
        if (s0.c(this.f18051b, geobFrame.f18051b) && s0.c(this.f18052c, geobFrame.f18052c) && s0.c(this.f18053d, geobFrame.f18053d) && Arrays.equals(this.f18054e, geobFrame.f18054e)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11;
        String str = this.f18051b;
        int i12 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i13 = (TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + i10) * 31;
        String str2 = this.f18052c;
        if (str2 != null) {
            i11 = str2.hashCode();
        } else {
            i11 = 0;
        }
        int i14 = (i13 + i11) * 31;
        String str3 = this.f18053d;
        if (str3 != null) {
            i12 = str3.hashCode();
        }
        return ((i14 + i12) * 31) + Arrays.hashCode(this.f18054e);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f18055a + ": mimeType=" + this.f18051b + ", filename=" + this.f18052c + ", description=" + this.f18053d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f18051b);
        parcel.writeString(this.f18052c);
        parcel.writeString(this.f18053d);
        parcel.writeByteArray(this.f18054e);
    }

    GeobFrame(Parcel parcel) {
        super(com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.GeobFrame.ID);
        this.f18051b = (String) s0.j(parcel.readString());
        this.f18052c = (String) s0.j(parcel.readString());
        this.f18053d = (String) s0.j(parcel.readString());
        this.f18054e = (byte[]) s0.j(parcel.createByteArray());
    }
}
