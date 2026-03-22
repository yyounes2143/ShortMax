package com.google.android.exoplayer2.offline;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import b7.s0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes4.dex */
public final class DownloadRequest implements Parcelable {
    public static final Parcelable.Creator<DownloadRequest> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final String f18137a;

    /* renamed from: b  reason: collision with root package name */
    public final Uri f18138b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f18139c;

    /* renamed from: d  reason: collision with root package name */
    public final List<StreamKey> f18140d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f18141e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final String f18142f;

    /* renamed from: g  reason: collision with root package name */
    public final byte[] f18143g;

    /* loaded from: classes4.dex */
    public static class UnsupportedRequestException extends IOException {
    }

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<DownloadRequest> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public DownloadRequest createFromParcel(Parcel parcel) {
            return new DownloadRequest(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public DownloadRequest[] newArray(int i10) {
            return new DownloadRequest[i10];
        }
    }

    DownloadRequest(Parcel parcel) {
        this.f18137a = (String) s0.j(parcel.readString());
        this.f18138b = Uri.parse((String) s0.j(parcel.readString()));
        this.f18139c = parcel.readString();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i10 = 0; i10 < readInt; i10++) {
            arrayList.add((StreamKey) parcel.readParcelable(StreamKey.class.getClassLoader()));
        }
        this.f18140d = Collections.unmodifiableList(arrayList);
        this.f18141e = parcel.createByteArray();
        this.f18142f = parcel.readString();
        this.f18143g = (byte[]) s0.j(parcel.createByteArray());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof DownloadRequest)) {
            return false;
        }
        DownloadRequest downloadRequest = (DownloadRequest) obj;
        if (!this.f18137a.equals(downloadRequest.f18137a) || !this.f18138b.equals(downloadRequest.f18138b) || !s0.c(this.f18139c, downloadRequest.f18139c) || !this.f18140d.equals(downloadRequest.f18140d) || !Arrays.equals(this.f18141e, downloadRequest.f18141e) || !s0.c(this.f18142f, downloadRequest.f18142f) || !Arrays.equals(this.f18143g, downloadRequest.f18143g)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i10;
        int hashCode = ((this.f18137a.hashCode() * 961) + this.f18138b.hashCode()) * 31;
        String str = this.f18139c;
        int i11 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int hashCode2 = (((((hashCode + i10) * 31) + this.f18140d.hashCode()) * 31) + Arrays.hashCode(this.f18141e)) * 31;
        String str2 = this.f18142f;
        if (str2 != null) {
            i11 = str2.hashCode();
        }
        return ((hashCode2 + i11) * 31) + Arrays.hashCode(this.f18143g);
    }

    public String toString() {
        return this.f18139c + ":" + this.f18137a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f18137a);
        parcel.writeString(this.f18138b.toString());
        parcel.writeString(this.f18139c);
        parcel.writeInt(this.f18140d.size());
        for (int i11 = 0; i11 < this.f18140d.size(); i11++) {
            parcel.writeParcelable(this.f18140d.get(i11), 0);
        }
        parcel.writeByteArray(this.f18141e);
        parcel.writeString(this.f18142f);
        parcel.writeByteArray(this.f18143g);
    }
}
