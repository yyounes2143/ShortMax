package com.huawei.hms.support.account.result;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes5.dex */
public class AccountIcon implements Parcelable {
    public static final Parcelable.Creator<AccountIcon> CREATOR = new Parcelable.Creator<AccountIcon>() { // from class: com.huawei.hms.support.account.result.AccountIcon.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AccountIcon createFromParcel(Parcel parcel) {
            return new AccountIcon(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AccountIcon[] newArray(int i10) {
            return new AccountIcon[i10];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private String f22217a;

    /* renamed from: b  reason: collision with root package name */
    private Bitmap f22218b;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getDescription() {
        return this.f22217a;
    }

    public Bitmap getIcon() {
        return this.f22218b;
    }

    public void setDescription(String str) {
        this.f22217a = str;
    }

    public void setIcon(Bitmap bitmap) {
        this.f22218b = bitmap;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f22217a);
        parcel.writeParcelable(this.f22218b, i10);
    }

    public AccountIcon() {
    }

    private AccountIcon(Parcel parcel) {
        this.f22217a = parcel.readString();
        this.f22218b = (Bitmap) parcel.readParcelable(Bitmap.class.getClassLoader());
    }

    public AccountIcon(String str, Bitmap bitmap) {
        this.f22217a = str;
        this.f22218b = bitmap;
    }
}
