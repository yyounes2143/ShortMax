package com.google.android.exoplayer2.offline;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
/* loaded from: classes4.dex */
public final class StreamKey implements Comparable<StreamKey>, Parcelable {
    public static final Parcelable.Creator<StreamKey> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final int f18155a;

    /* renamed from: b  reason: collision with root package name */
    public final int f18156b;

    /* renamed from: c  reason: collision with root package name */
    public final int f18157c;
    @Deprecated

    /* renamed from: d  reason: collision with root package name */
    public final int f18158d;

    /* loaded from: classes4.dex */
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

    StreamKey(Parcel parcel) {
        this.f18155a = parcel.readInt();
        this.f18156b = parcel.readInt();
        int readInt = parcel.readInt();
        this.f18157c = readInt;
        this.f18158d = readInt;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(StreamKey streamKey) {
        int i10 = this.f18155a - streamKey.f18155a;
        if (i10 == 0) {
            int i11 = this.f18156b - streamKey.f18156b;
            if (i11 == 0) {
                return this.f18157c - streamKey.f18157c;
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
        if (this.f18155a == streamKey.f18155a && this.f18156b == streamKey.f18156b && this.f18157c == streamKey.f18157c) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((this.f18155a * 31) + this.f18156b) * 31) + this.f18157c;
    }

    public String toString() {
        return this.f18155a + "." + this.f18156b + "." + this.f18157c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f18155a);
        parcel.writeInt(this.f18156b);
        parcel.writeInt(this.f18157c);
    }
}
