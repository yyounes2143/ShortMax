package com.huawei.hms.core.aidl;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes5.dex */
public class DataBuffer implements Parcelable {
    public static final Parcelable.Creator<DataBuffer> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public String f22105a;

    /* renamed from: b  reason: collision with root package name */
    public Bundle f22106b;

    /* renamed from: c  reason: collision with root package name */
    private int f22107c;

    /* renamed from: d  reason: collision with root package name */
    private Bundle f22108d;

    /* loaded from: classes5.dex */
    class a implements Parcelable.Creator<DataBuffer> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public DataBuffer createFromParcel(Parcel parcel) {
            return new DataBuffer(parcel, (a) null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public DataBuffer[] newArray(int i10) {
            return new DataBuffer[i10];
        }
    }

    /* synthetic */ DataBuffer(Parcel parcel, a aVar) {
        this(parcel);
    }

    private static ClassLoader a(Class cls) {
        return cls.getClassLoader();
    }

    private void b(Parcel parcel) {
        this.f22107c = parcel.readInt();
        this.f22105a = parcel.readString();
        this.f22106b = parcel.readBundle(a(Bundle.class));
        this.f22108d = parcel.readBundle(a(Bundle.class));
    }

    public DataBuffer c(Bundle bundle) {
        this.f22108d = bundle;
        return this;
    }

    public Bundle d() {
        return this.f22108d;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int e() {
        if (this.f22108d == null) {
            return 0;
        }
        return 1;
    }

    public int f() {
        return this.f22107c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        if (parcel == null) {
            return;
        }
        parcel.writeInt(this.f22107c);
        parcel.writeString(this.f22105a);
        parcel.writeBundle(this.f22106b);
        parcel.writeBundle(this.f22108d);
    }

    private DataBuffer(Parcel parcel) {
        this.f22106b = null;
        this.f22107c = 1;
        this.f22108d = null;
        b(parcel);
    }

    public DataBuffer() {
        this.f22106b = null;
        this.f22107c = 1;
        this.f22108d = null;
    }

    public DataBuffer(String str, int i10) {
        this.f22106b = null;
        this.f22108d = null;
        this.f22105a = str;
        this.f22107c = i10;
    }
}
