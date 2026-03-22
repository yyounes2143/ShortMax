package com.facebook.ads.internal.util.parcelable;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
/* loaded from: classes3.dex */
public class WrappedParcelable implements Parcelable {
    public static final Parcelable.Creator<WrappedParcelable> CREATOR = new a();
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f14920a;

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<WrappedParcelable> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public WrappedParcelable createFromParcel(Parcel parcel) {
            return new WrappedParcelable(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public WrappedParcelable[] newArray(int i10) {
            return new WrappedParcelable[i10];
        }
    }

    protected WrappedParcelable(Parcel parcel) {
        this.f14920a = parcel.createByteArray();
    }

    public static byte[] marshallParcelable(Parcelable parcelable) {
        Parcel obtain = Parcel.obtain();
        obtain.writeParcelable(parcelable, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        return marshall;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Nullable
    public Parcelable unwrap(ClassLoader classLoader) {
        Parcel obtain = Parcel.obtain();
        byte[] bArr = this.f14920a;
        if (bArr != null) {
            obtain.unmarshall(bArr, 0, bArr.length);
            obtain.setDataPosition(0);
            Parcelable readParcelable = obtain.readParcelable(classLoader);
            obtain.recycle();
            return readParcelable;
        }
        return null;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeByteArray(this.f14920a);
    }

    public WrappedParcelable(Parcelable parcelable) {
        this.f14920a = marshallParcelable(parcelable);
    }

    public WrappedParcelable(@Nullable byte[] bArr) {
        this.f14920a = bArr;
    }
}
