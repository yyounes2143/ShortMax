package com.google.android.exoplayer2.metadata.icy;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.z0;
import java.util.Arrays;
/* loaded from: classes4.dex */
public final class IcyInfo implements Metadata.Entry {
    public static final Parcelable.Creator<IcyInfo> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final byte[] f18029a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f18030b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f18031c;

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<IcyInfo> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public IcyInfo createFromParcel(Parcel parcel) {
            return new IcyInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public IcyInfo[] newArray(int i10) {
            return new IcyInfo[i10];
        }
    }

    public IcyInfo(byte[] bArr, @Nullable String str, @Nullable String str2) {
        this.f18029a = bArr;
        this.f18030b = str;
        this.f18031c = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && IcyInfo.class == obj.getClass()) {
            return Arrays.equals(this.f18029a, ((IcyInfo) obj).f18029a);
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f18029a);
    }

    public String toString() {
        return String.format("ICY: title=\"%s\", url=\"%s\", rawMetadata.length=\"%s\"", this.f18030b, this.f18031c, Integer.valueOf(this.f18029a.length));
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public void u(z0.b bVar) {
        String str = this.f18030b;
        if (str != null) {
            bVar.i0(str);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeByteArray(this.f18029a);
        parcel.writeString(this.f18030b);
        parcel.writeString(this.f18031c);
    }

    IcyInfo(Parcel parcel) {
        this.f18029a = (byte[]) b7.a.e(parcel.createByteArray());
        this.f18030b = parcel.readString();
        this.f18031c = parcel.readString();
    }
}
