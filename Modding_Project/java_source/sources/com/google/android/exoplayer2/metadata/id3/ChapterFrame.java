package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import b7.s0;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
/* loaded from: classes4.dex */
public final class ChapterFrame extends Id3Frame {
    public static final Parcelable.Creator<ChapterFrame> CREATOR = new a();

    /* renamed from: b  reason: collision with root package name */
    public final String f18037b;

    /* renamed from: c  reason: collision with root package name */
    public final int f18038c;

    /* renamed from: d  reason: collision with root package name */
    public final int f18039d;

    /* renamed from: e  reason: collision with root package name */
    public final long f18040e;

    /* renamed from: f  reason: collision with root package name */
    public final long f18041f;

    /* renamed from: g  reason: collision with root package name */
    private final Id3Frame[] f18042g;

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<ChapterFrame> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ChapterFrame createFromParcel(Parcel parcel) {
            return new ChapterFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public ChapterFrame[] newArray(int i10) {
            return new ChapterFrame[i10];
        }
    }

    public ChapterFrame(String str, int i10, int i11, long j10, long j11, Id3Frame[] id3FrameArr) {
        super(com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.ChapterFrame.ID);
        this.f18037b = str;
        this.f18038c = i10;
        this.f18039d = i11;
        this.f18040e = j10;
        this.f18041f = j11;
        this.f18042g = id3FrameArr;
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ChapterFrame.class != obj.getClass()) {
            return false;
        }
        ChapterFrame chapterFrame = (ChapterFrame) obj;
        if (this.f18038c == chapterFrame.f18038c && this.f18039d == chapterFrame.f18039d && this.f18040e == chapterFrame.f18040e && this.f18041f == chapterFrame.f18041f && s0.c(this.f18037b, chapterFrame.f18037b) && Arrays.equals(this.f18042g, chapterFrame.f18042g)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11 = (((((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f18038c) * 31) + this.f18039d) * 31) + ((int) this.f18040e)) * 31) + ((int) this.f18041f)) * 31;
        String str = this.f18037b;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        return i11 + i10;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f18037b);
        parcel.writeInt(this.f18038c);
        parcel.writeInt(this.f18039d);
        parcel.writeLong(this.f18040e);
        parcel.writeLong(this.f18041f);
        parcel.writeInt(this.f18042g.length);
        for (Id3Frame id3Frame : this.f18042g) {
            parcel.writeParcelable(id3Frame, 0);
        }
    }

    ChapterFrame(Parcel parcel) {
        super(com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.ChapterFrame.ID);
        this.f18037b = (String) s0.j(parcel.readString());
        this.f18038c = parcel.readInt();
        this.f18039d = parcel.readInt();
        this.f18040e = parcel.readLong();
        this.f18041f = parcel.readLong();
        int readInt = parcel.readInt();
        this.f18042g = new Id3Frame[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            this.f18042g[i10] = (Id3Frame) parcel.readParcelable(Id3Frame.class.getClassLoader());
        }
    }
}
