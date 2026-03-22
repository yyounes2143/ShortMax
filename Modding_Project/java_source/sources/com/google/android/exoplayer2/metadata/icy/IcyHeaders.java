package com.google.android.exoplayer2.metadata.icy;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import b7.s0;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.z0;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* loaded from: classes4.dex */
public final class IcyHeaders implements Metadata.Entry {
    public static final Parcelable.Creator<IcyHeaders> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final int f18023a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f18024b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f18025c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final String f18026d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f18027e;

    /* renamed from: f  reason: collision with root package name */
    public final int f18028f;

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<IcyHeaders> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public IcyHeaders createFromParcel(Parcel parcel) {
            return new IcyHeaders(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public IcyHeaders[] newArray(int i10) {
            return new IcyHeaders[i10];
        }
    }

    public IcyHeaders(int i10, @Nullable String str, @Nullable String str2, @Nullable String str3, boolean z10, int i11) {
        b7.a.a(i11 == -1 || i11 > 0);
        this.f18023a = i10;
        this.f18024b = str;
        this.f18025c = str2;
        this.f18026d = str3;
        this.f18027e = z10;
        this.f18028f = i11;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.metadata.icy.IcyHeaders a(java.util.Map<java.lang.String, java.util.List<java.lang.String>> r13) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.metadata.icy.IcyHeaders.a(java.util.Map):com.google.android.exoplayer2.metadata.icy.IcyHeaders");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || IcyHeaders.class != obj.getClass()) {
            return false;
        }
        IcyHeaders icyHeaders = (IcyHeaders) obj;
        if (this.f18023a == icyHeaders.f18023a && s0.c(this.f18024b, icyHeaders.f18024b) && s0.c(this.f18025c, icyHeaders.f18025c) && s0.c(this.f18026d, icyHeaders.f18026d) && this.f18027e == icyHeaders.f18027e && this.f18028f == icyHeaders.f18028f) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11;
        int i12 = (TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f18023a) * 31;
        String str = this.f18024b;
        int i13 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i14 = (i12 + i10) * 31;
        String str2 = this.f18025c;
        if (str2 != null) {
            i11 = str2.hashCode();
        } else {
            i11 = 0;
        }
        int i15 = (i14 + i11) * 31;
        String str3 = this.f18026d;
        if (str3 != null) {
            i13 = str3.hashCode();
        }
        return ((((i15 + i13) * 31) + (this.f18027e ? 1 : 0)) * 31) + this.f18028f;
    }

    public String toString() {
        return "IcyHeaders: name=\"" + this.f18025c + "\", genre=\"" + this.f18024b + "\", bitrate=" + this.f18023a + ", metadataInterval=" + this.f18028f;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public void u(z0.b bVar) {
        String str = this.f18025c;
        if (str != null) {
            bVar.g0(str);
        }
        String str2 = this.f18024b;
        if (str2 != null) {
            bVar.X(str2);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f18023a);
        parcel.writeString(this.f18024b);
        parcel.writeString(this.f18025c);
        parcel.writeString(this.f18026d);
        s0.R0(parcel, this.f18027e);
        parcel.writeInt(this.f18028f);
    }

    IcyHeaders(Parcel parcel) {
        this.f18023a = parcel.readInt();
        this.f18024b = parcel.readString();
        this.f18025c = parcel.readString();
        this.f18026d = parcel.readString();
        this.f18027e = s0.D0(parcel);
        this.f18028f = parcel.readInt();
    }
}
