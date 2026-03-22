package com.huawei.hms.support.api.entity.hwid;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes5.dex */
public class LabelInfo implements Parcelable {
    public static final Parcelable.Creator<LabelInfo> CREATOR = new Parcelable.Creator<LabelInfo>() { // from class: com.huawei.hms.support.api.entity.hwid.LabelInfo.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public LabelInfo createFromParcel(Parcel parcel) {
            return new LabelInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public LabelInfo[] newArray(int i10) {
            return new LabelInfo[i10];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private int f22255a;

    /* renamed from: b  reason: collision with root package name */
    private String f22256b;

    public LabelInfo() {
        this.f22255a = -1;
        this.f22256b = "";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getLabelName() {
        return this.f22256b;
    }

    public int getLabelType() {
        return this.f22255a;
    }

    public boolean isEquals(LabelInfo labelInfo) {
        if (labelInfo != null && getLabelType() == labelInfo.getLabelType() && getLabelName().equals(labelInfo.getLabelName())) {
            return true;
        }
        return false;
    }

    public void setLabelName(String str) {
        this.f22256b = str;
    }

    public void setLabelType(int i10) {
        this.f22255a = i10;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f22255a);
        parcel.writeString(this.f22256b);
    }

    protected LabelInfo(Parcel parcel) {
        this.f22255a = parcel.readInt();
        this.f22256b = parcel.readString();
    }
}
