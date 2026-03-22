package com.google.android.exoplayer2.metadata.flac;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import b7.g0;
import b7.s0;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.z0;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import h7.c;
import java.util.Arrays;
/* loaded from: classes4.dex */
public final class PictureFrame implements Metadata.Entry {
    public static final Parcelable.Creator<PictureFrame> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final int f18013a;

    /* renamed from: b  reason: collision with root package name */
    public final String f18014b;

    /* renamed from: c  reason: collision with root package name */
    public final String f18015c;

    /* renamed from: d  reason: collision with root package name */
    public final int f18016d;

    /* renamed from: e  reason: collision with root package name */
    public final int f18017e;

    /* renamed from: f  reason: collision with root package name */
    public final int f18018f;

    /* renamed from: g  reason: collision with root package name */
    public final int f18019g;

    /* renamed from: h  reason: collision with root package name */
    public final byte[] f18020h;

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<PictureFrame> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public PictureFrame createFromParcel(Parcel parcel) {
            return new PictureFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public PictureFrame[] newArray(int i10) {
            return new PictureFrame[i10];
        }
    }

    public PictureFrame(int i10, String str, String str2, int i11, int i12, int i13, int i14, byte[] bArr) {
        this.f18013a = i10;
        this.f18014b = str;
        this.f18015c = str2;
        this.f18016d = i11;
        this.f18017e = i12;
        this.f18018f = i13;
        this.f18019g = i14;
        this.f18020h = bArr;
    }

    public static PictureFrame a(g0 g0Var) {
        int n10 = g0Var.n();
        String B = g0Var.B(g0Var.n(), c.f52593a);
        String A = g0Var.A(g0Var.n());
        int n11 = g0Var.n();
        int n12 = g0Var.n();
        int n13 = g0Var.n();
        int n14 = g0Var.n();
        int n15 = g0Var.n();
        byte[] bArr = new byte[n15];
        g0Var.j(bArr, 0, n15);
        return new PictureFrame(n10, B, A, n11, n12, n13, n14, bArr);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || PictureFrame.class != obj.getClass()) {
            return false;
        }
        PictureFrame pictureFrame = (PictureFrame) obj;
        if (this.f18013a == pictureFrame.f18013a && this.f18014b.equals(pictureFrame.f18014b) && this.f18015c.equals(pictureFrame.f18015c) && this.f18016d == pictureFrame.f18016d && this.f18017e == pictureFrame.f18017e && this.f18018f == pictureFrame.f18018f && this.f18019g == pictureFrame.f18019g && Arrays.equals(this.f18020h, pictureFrame.f18020h)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((((((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f18013a) * 31) + this.f18014b.hashCode()) * 31) + this.f18015c.hashCode()) * 31) + this.f18016d) * 31) + this.f18017e) * 31) + this.f18018f) * 31) + this.f18019g) * 31) + Arrays.hashCode(this.f18020h);
    }

    public String toString() {
        return "Picture: mimeType=" + this.f18014b + ", description=" + this.f18015c;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public void u(z0.b bVar) {
        bVar.G(this.f18020h, this.f18013a);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f18013a);
        parcel.writeString(this.f18014b);
        parcel.writeString(this.f18015c);
        parcel.writeInt(this.f18016d);
        parcel.writeInt(this.f18017e);
        parcel.writeInt(this.f18018f);
        parcel.writeInt(this.f18019g);
        parcel.writeByteArray(this.f18020h);
    }

    PictureFrame(Parcel parcel) {
        this.f18013a = parcel.readInt();
        this.f18014b = (String) s0.j(parcel.readString());
        this.f18015c = (String) s0.j(parcel.readString());
        this.f18016d = parcel.readInt();
        this.f18017e = parcel.readInt();
        this.f18018f = parcel.readInt();
        this.f18019g = parcel.readInt();
        this.f18020h = (byte[]) s0.j(parcel.createByteArray());
    }
}
