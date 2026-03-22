package com.bytedance.adsdk.ugeno.so;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3.dex */
public abstract class oJ implements Parcelable {
    private final Parcelable ZYk;
    public static final oJ oJ = new oJ() { // from class: com.bytedance.adsdk.ugeno.so.oJ.1
    };
    public static final Parcelable.Creator<oJ> CREATOR = new Parcelable.ClassLoaderCreator<oJ>() { // from class: com.bytedance.adsdk.ugeno.so.oJ.2
        @Override // android.os.Parcelable.Creator
        /* renamed from: oJ */
        public oJ createFromParcel(Parcel parcel) {
            return createFromParcel(parcel, null);
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        /* renamed from: oJ */
        public oJ createFromParcel(Parcel parcel, ClassLoader classLoader) {
            if (parcel.readParcelable(classLoader) == null) {
                return oJ.oJ;
            }
            throw new IllegalStateException("superState must be null");
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: oJ */
        public oJ[] newArray(int i10) {
            return new oJ[i10];
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final Parcelable oJ() {
        return this.ZYk;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(this.ZYk, i10);
    }

    private oJ() {
        this.ZYk = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public oJ(Parcelable parcelable) {
        if (parcelable != null) {
            this.ZYk = parcelable == oJ ? null : parcelable;
            return;
        }
        throw new IllegalArgumentException("superState must not be null");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public oJ(Parcel parcel, ClassLoader classLoader) {
        Parcelable readParcelable = parcel.readParcelable(classLoader);
        this.ZYk = readParcelable == null ? oJ : readParcelable;
    }
}
