package com.google.android.exoplayer2.metadata.dvbsi;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.metadata.Metadata;
/* loaded from: classes4.dex */
public final class AppInfoTable implements Metadata.Entry {
    public static final Parcelable.Creator<AppInfoTable> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final int f18003a;

    /* renamed from: b  reason: collision with root package name */
    public final String f18004b;

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<AppInfoTable> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AppInfoTable createFromParcel(Parcel parcel) {
            return new AppInfoTable(parcel.readInt(), (String) b7.a.e(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public AppInfoTable[] newArray(int i10) {
            return new AppInfoTable[i10];
        }
    }

    public AppInfoTable(int i10, String str) {
        this.f18003a = i10;
        this.f18004b = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "Ait(controlCode=" + this.f18003a + ",url=" + this.f18004b + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f18004b);
        parcel.writeInt(this.f18003a);
    }
}
