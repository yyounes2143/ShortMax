package io.bidmachine.media3.exoplayer.offline;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import cn.m0;
import io.bidmachine.media3.common.StreamKey;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes8.dex */
public final class DownloadRequest implements Parcelable {
    public static final Parcelable.Creator<DownloadRequest> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final String f56635a;

    /* renamed from: b  reason: collision with root package name */
    public final Uri f56636b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f56637c;

    /* renamed from: d  reason: collision with root package name */
    public final List<StreamKey> f56638d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f56639e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final String f56640f;

    /* renamed from: g  reason: collision with root package name */
    public final byte[] f56641g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public final ByteRange f56642h;

    /* loaded from: classes8.dex */
    public static class UnsupportedRequestException extends IOException {
    }

    /* loaded from: classes8.dex */
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
        this.f56635a = (String) m0.i(parcel.readString());
        this.f56636b = Uri.parse((String) m0.i(parcel.readString()));
        this.f56637c = parcel.readString();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i10 = 0; i10 < readInt; i10++) {
            arrayList.add((StreamKey) parcel.readParcelable(StreamKey.class.getClassLoader()));
        }
        this.f56638d = Collections.unmodifiableList(arrayList);
        this.f56639e = parcel.createByteArray();
        this.f56640f = parcel.readString();
        this.f56641g = (byte[]) m0.i(parcel.createByteArray());
        this.f56642h = (ByteRange) parcel.readParcelable(ByteRange.class.getClassLoader());
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
        if (!this.f56635a.equals(downloadRequest.f56635a) || !this.f56636b.equals(downloadRequest.f56636b) || !Objects.equals(this.f56637c, downloadRequest.f56637c) || !this.f56638d.equals(downloadRequest.f56638d) || !Arrays.equals(this.f56639e, downloadRequest.f56639e) || !Objects.equals(this.f56640f, downloadRequest.f56640f) || !Arrays.equals(this.f56641g, downloadRequest.f56641g) || !Objects.equals(this.f56642h, downloadRequest.f56642h)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i10;
        int i11;
        int hashCode = ((this.f56635a.hashCode() * 961) + this.f56636b.hashCode()) * 31;
        String str = this.f56637c;
        int i12 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int hashCode2 = (((((hashCode + i10) * 31) + this.f56638d.hashCode()) * 31) + Arrays.hashCode(this.f56639e)) * 31;
        String str2 = this.f56640f;
        if (str2 != null) {
            i11 = str2.hashCode();
        } else {
            i11 = 0;
        }
        int hashCode3 = (((hashCode2 + i11) * 31) + Arrays.hashCode(this.f56641g)) * 31;
        ByteRange byteRange = this.f56642h;
        if (byteRange != null) {
            i12 = byteRange.hashCode();
        }
        return hashCode3 + i12;
    }

    public String toString() {
        return this.f56637c + ":" + this.f56635a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f56635a);
        parcel.writeString(this.f56636b.toString());
        parcel.writeString(this.f56637c);
        parcel.writeInt(this.f56638d.size());
        for (int i11 = 0; i11 < this.f56638d.size(); i11++) {
            parcel.writeParcelable(this.f56638d.get(i11), 0);
        }
        parcel.writeByteArray(this.f56639e);
        parcel.writeString(this.f56640f);
        parcel.writeByteArray(this.f56641g);
        parcel.writeParcelable(this.f56642h, 0);
    }

    /* loaded from: classes8.dex */
    public static final class ByteRange implements Parcelable {
        public static final Parcelable.Creator<ByteRange> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        public final long f56643a;

        /* renamed from: b  reason: collision with root package name */
        public final long f56644b;

        /* loaded from: classes8.dex */
        class a implements Parcelable.Creator<ByteRange> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public ByteRange createFromParcel(Parcel parcel) {
                return new ByteRange(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public ByteRange[] newArray(int i10) {
                return new ByteRange[i10];
            }
        }

        ByteRange(long j10, long j11) {
            boolean z10 = false;
            cn.a.a(j10 >= 0);
            cn.a.a((j11 >= 0 || j11 == -1) ? true : z10);
            this.f56643a = j10;
            this.f56644b = j11;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (!(obj instanceof ByteRange)) {
                return false;
            }
            ByteRange byteRange = (ByteRange) obj;
            if (this.f56643a != byteRange.f56643a || this.f56644b != byteRange.f56644b) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (((int) this.f56643a) * 961) + ((int) this.f56644b);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeLong(this.f56643a);
            parcel.writeLong(this.f56644b);
        }

        ByteRange(Parcel parcel) {
            this(parcel.readLong(), parcel.readLong());
        }
    }
}
