package com.google.android.gms.internal.p002authapi;

import android.os.BadParcelableException;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* compiled from: com.google.android.gms:play-services-auth@@21.4.0 */
/* renamed from: com.google.android.gms.internal.auth-api.zbc  reason: invalid package */
/* loaded from: classes4.dex */
public final class zbc {
    static {
        zbc.class.getClassLoader();
    }

    private zbc() {
    }

    public static Parcelable zba(Parcel parcel, Parcelable.Creator creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return (Parcelable) creator.createFromParcel(parcel);
    }

    public static void zbb(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }

    public static void zbc(Parcel parcel, IInterface iInterface) {
        parcel.writeStrongBinder(iInterface.asBinder());
    }

    public static void zbd(Parcel parcel) {
        int dataAvail = parcel.dataAvail();
        if (dataAvail <= 0) {
            return;
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(dataAvail).length() + 45);
        sb2.append("Parcel data not fully consumed, unread size: ");
        sb2.append(dataAvail);
        throw new BadParcelableException(sb2.toString());
    }
}
