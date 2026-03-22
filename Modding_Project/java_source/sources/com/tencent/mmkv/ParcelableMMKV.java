package com.tencent.mmkv;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
import org.jetbrains.annotations.Contract;
/* loaded from: classes7.dex */
public final class ParcelableMMKV implements Parcelable {
    public static final Parcelable.Creator<ParcelableMMKV> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    private final String f49488a;

    /* renamed from: b  reason: collision with root package name */
    private int f49489b;

    /* renamed from: c  reason: collision with root package name */
    private int f49490c;

    /* renamed from: d  reason: collision with root package name */
    private String f49491d;

    /* loaded from: classes7.dex */
    class a implements Parcelable.Creator<ParcelableMMKV> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @Nullable
        /* renamed from: a */
        public ParcelableMMKV createFromParcel(@NonNull Parcel parcel) {
            String readString = parcel.readString();
            Parcelable.Creator creator = ParcelFileDescriptor.CREATOR;
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) creator.createFromParcel(parcel);
            ParcelFileDescriptor parcelFileDescriptor2 = (ParcelFileDescriptor) creator.createFromParcel(parcel);
            String readString2 = parcel.readString();
            if (parcelFileDescriptor != null && parcelFileDescriptor2 != null) {
                return new ParcelableMMKV(readString, parcelFileDescriptor.detachFd(), parcelFileDescriptor2.detachFd(), readString2, null);
            }
            return null;
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        @Contract(pure = true, value = "_ -> new")
        /* renamed from: b */
        public ParcelableMMKV[] newArray(int i10) {
            return new ParcelableMMKV[i10];
        }
    }

    /* synthetic */ ParcelableMMKV(String str, int i10, int i11, String str2, a aVar) {
        this(str, i10, i11, str2);
    }

    @Nullable
    public MMKV a() {
        int i10;
        int i11 = this.f49489b;
        if (i11 >= 0 && (i10 = this.f49490c) >= 0) {
            return MMKV.mmkvWithAshmemFD(this.f49488a, i11, i10, this.f49491d);
        }
        return null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 1;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        try {
            parcel.writeString(this.f49488a);
            ParcelFileDescriptor fromFd = ParcelFileDescriptor.fromFd(this.f49489b);
            ParcelFileDescriptor fromFd2 = ParcelFileDescriptor.fromFd(this.f49490c);
            int i11 = i10 | 1;
            fromFd.writeToParcel(parcel, i11);
            fromFd2.writeToParcel(parcel, i11);
            String str = this.f49491d;
            if (str != null) {
                parcel.writeString(str);
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    public ParcelableMMKV(@NonNull MMKV mmkv) {
        this.f49489b = -1;
        this.f49490c = -1;
        this.f49491d = null;
        this.f49488a = mmkv.mmapID();
        this.f49489b = mmkv.ashmemFD();
        this.f49490c = mmkv.ashmemMetaFD();
        this.f49491d = mmkv.cryptKey();
    }

    private ParcelableMMKV(String str, int i10, int i11, String str2) {
        this.f49488a = str;
        this.f49489b = i10;
        this.f49490c = i11;
        this.f49491d = str2;
    }
}
