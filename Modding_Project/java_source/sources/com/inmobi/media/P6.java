package com.inmobi.media;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class P6 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        boolean z10;
        String str7;
        String str8;
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        long readLong = parcel.readLong();
        String readString = parcel.readString();
        if (readString == null) {
            str = "";
        } else {
            str = readString;
        }
        String readString2 = parcel.readString();
        if (readString2 == null) {
            str2 = "";
        } else {
            str2 = readString2;
        }
        String readString3 = parcel.readString();
        if (readString3 == null) {
            str3 = "";
        } else {
            str3 = readString3;
        }
        String readString4 = parcel.readString();
        if (readString4 == null) {
            str4 = "";
        } else {
            str4 = readString4;
        }
        String readString5 = parcel.readString();
        if (readString5 == null) {
            str5 = "";
        } else {
            str5 = readString5;
        }
        String readString6 = parcel.readString();
        if (readString6 == null) {
            str6 = "";
        } else {
            str6 = readString6;
        }
        if (parcel.readByte() != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        boolean z11 = z10;
        String readString7 = parcel.readString();
        if (readString7 == null) {
            str7 = "";
        } else {
            str7 = readString7;
        }
        S6 s62 = new S6(readLong, str, str2, str3, str4, str5, str6, z11, str7);
        String readString8 = parcel.readString();
        if (readString8 == null) {
            str8 = "";
        } else {
            str8 = readString8;
        }
        R6 r62 = new R6(s62, str8, parcel.readInt(), parcel.readLong());
        r62.f24065f = parcel.readInt();
        r62.f24066g = parcel.readString();
        return r62;
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i10) {
        return new R6[i10];
    }
}
