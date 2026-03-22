package io.bidmachine.media3.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import cn.m0;
/* loaded from: classes8.dex */
public final class StreamKey implements Comparable<StreamKey>, Parcelable {
    public static final Parcelable.Creator<StreamKey> CREATOR = new a();

    /* renamed from: d  reason: collision with root package name */
    private static final String f55128d = m0.C0(0);

    /* renamed from: e  reason: collision with root package name */
    private static final String f55129e = m0.C0(1);

    /* renamed from: f  reason: collision with root package name */
    private static final String f55130f = m0.C0(2);

    /* renamed from: a  reason: collision with root package name */
    public final int f55131a;

    /* renamed from: b  reason: collision with root package name */
    public final int f55132b;

    /* renamed from: c  reason: collision with root package name */
    public final int f55133c;

    /* loaded from: classes8.dex */
    class a implements Parcelable.Creator<StreamKey> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public StreamKey createFromParcel(Parcel parcel) {
            return new StreamKey(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public StreamKey[] newArray(int i10) {
            return new StreamKey[i10];
        }
    }

    public StreamKey(int i10, int i11, int i12) {
        this.f55131a = i10;
        this.f55132b = i11;
        this.f55133c = i12;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(StreamKey streamKey) {
        int i10 = this.f55131a - streamKey.f55131a;
        if (i10 == 0) {
            int i11 = this.f55132b - streamKey.f55132b;
            if (i11 == 0) {
                return this.f55133c - streamKey.f55133c;
            }
            return i11;
        }
        return i10;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || StreamKey.class != obj.getClass()) {
            return false;
        }
        StreamKey streamKey = (StreamKey) obj;
        if (this.f55131a == streamKey.f55131a && this.f55132b == streamKey.f55132b && this.f55133c == streamKey.f55133c) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((this.f55131a * 31) + this.f55132b) * 31) + this.f55133c;
    }

    public String toString() {
        return this.f55131a + "." + this.f55132b + "." + this.f55133c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f55131a);
        parcel.writeInt(this.f55132b);
        parcel.writeInt(this.f55133c);
    }

    StreamKey(Parcel parcel) {
        this.f55131a = parcel.readInt();
        this.f55132b = parcel.readInt();
        this.f55133c = parcel.readInt();
    }
}
