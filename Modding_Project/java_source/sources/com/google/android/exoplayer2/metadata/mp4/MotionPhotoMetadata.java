package com.google.android.exoplayer2.metadata.mp4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.common.primitives.f;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* loaded from: classes4.dex */
public final class MotionPhotoMetadata implements Metadata.Entry {
    public static final Parcelable.Creator<MotionPhotoMetadata> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final long f18074a;

    /* renamed from: b  reason: collision with root package name */
    public final long f18075b;

    /* renamed from: c  reason: collision with root package name */
    public final long f18076c;

    /* renamed from: d  reason: collision with root package name */
    public final long f18077d;

    /* renamed from: e  reason: collision with root package name */
    public final long f18078e;

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<MotionPhotoMetadata> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public MotionPhotoMetadata createFromParcel(Parcel parcel) {
            return new MotionPhotoMetadata(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public MotionPhotoMetadata[] newArray(int i10) {
            return new MotionPhotoMetadata[i10];
        }
    }

    /* synthetic */ MotionPhotoMetadata(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || MotionPhotoMetadata.class != obj.getClass()) {
            return false;
        }
        MotionPhotoMetadata motionPhotoMetadata = (MotionPhotoMetadata) obj;
        if (this.f18074a == motionPhotoMetadata.f18074a && this.f18075b == motionPhotoMetadata.f18075b && this.f18076c == motionPhotoMetadata.f18076c && this.f18077d == motionPhotoMetadata.f18077d && this.f18078e == motionPhotoMetadata.f18078e) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + f.a(this.f18074a)) * 31) + f.a(this.f18075b)) * 31) + f.a(this.f18076c)) * 31) + f.a(this.f18077d)) * 31) + f.a(this.f18078e);
    }

    public String toString() {
        return "Motion photo metadata: photoStartPosition=" + this.f18074a + ", photoSize=" + this.f18075b + ", photoPresentationTimestampUs=" + this.f18076c + ", videoStartPosition=" + this.f18077d + ", videoSize=" + this.f18078e;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.f18074a);
        parcel.writeLong(this.f18075b);
        parcel.writeLong(this.f18076c);
        parcel.writeLong(this.f18077d);
        parcel.writeLong(this.f18078e);
    }

    public MotionPhotoMetadata(long j10, long j11, long j12, long j13, long j14) {
        this.f18074a = j10;
        this.f18075b = j11;
        this.f18076c = j12;
        this.f18077d = j13;
        this.f18078e = j14;
    }

    private MotionPhotoMetadata(Parcel parcel) {
        this.f18074a = parcel.readLong();
        this.f18075b = parcel.readLong();
        this.f18076c = parcel.readLong();
        this.f18077d = parcel.readLong();
        this.f18078e = parcel.readLong();
    }
}
