package com.mbridge.msdk.foundation.same.report;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes5.dex */
public class BatchReportMessage implements Parcelable {
    public static final Parcelable.Creator<BatchReportMessage> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    private String f27207a;

    /* renamed from: b  reason: collision with root package name */
    private long f27208b;

    /* renamed from: c  reason: collision with root package name */
    private String f27209c;

    /* loaded from: classes5.dex */
    class a implements Parcelable.Creator<BatchReportMessage> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public BatchReportMessage createFromParcel(Parcel parcel) {
            return new BatchReportMessage(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public BatchReportMessage[] newArray(int i10) {
            return new BatchReportMessage[i10];
        }
    }

    public BatchReportMessage(String str, String str2, long j10) {
        this.f27209c = str;
        this.f27207a = str2;
        this.f27208b = j10;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getReportMessage() {
        return this.f27207a;
    }

    public long getTimestamp() {
        return this.f27208b;
    }

    public String getUuid() {
        return this.f27209c;
    }

    public void setReportMessage(String str) {
        this.f27207a = str;
    }

    public void setTimestamp(long j10) {
        this.f27208b = j10;
    }

    public void setUuid(String str) {
        this.f27209c = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f27209c);
        parcel.writeString(this.f27207a);
        parcel.writeLong(this.f27208b);
    }

    protected BatchReportMessage(Parcel parcel) {
        this.f27209c = parcel.readString();
        this.f27207a = parcel.readString();
        this.f27208b = parcel.readLong();
    }
}
