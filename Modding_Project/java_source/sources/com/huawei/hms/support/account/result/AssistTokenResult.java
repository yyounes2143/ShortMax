package com.huawei.hms.support.account.result;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes5.dex */
public class AssistTokenResult implements Parcelable {
    public static final Parcelable.Creator<AssistTokenResult> CREATOR = new Parcelable.Creator<AssistTokenResult>() { // from class: com.huawei.hms.support.account.result.AssistTokenResult.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AssistTokenResult createFromParcel(Parcel parcel) {
            return new AssistTokenResult(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AssistTokenResult[] newArray(int i10) {
            return new AssistTokenResult[i10];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private String f22219a;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAssistToken() {
        return this.f22219a;
    }

    public void setAssistToken(String str) {
        this.f22219a = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f22219a);
    }

    public AssistTokenResult() {
    }

    private AssistTokenResult(Parcel parcel) {
        this.f22219a = parcel.readString();
    }
}
