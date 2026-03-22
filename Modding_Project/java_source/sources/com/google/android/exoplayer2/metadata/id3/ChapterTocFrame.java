package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import b7.s0;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
/* loaded from: classes4.dex */
public final class ChapterTocFrame extends Id3Frame {
    public static final Parcelable.Creator<ChapterTocFrame> CREATOR = new a();

    /* renamed from: b  reason: collision with root package name */
    public final String f18043b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f18044c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f18045d;

    /* renamed from: e  reason: collision with root package name */
    public final String[] f18046e;

    /* renamed from: f  reason: collision with root package name */
    private final Id3Frame[] f18047f;

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<ChapterTocFrame> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ChapterTocFrame createFromParcel(Parcel parcel) {
            return new ChapterTocFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public ChapterTocFrame[] newArray(int i10) {
            return new ChapterTocFrame[i10];
        }
    }

    public ChapterTocFrame(String str, boolean z10, boolean z11, String[] strArr, Id3Frame[] id3FrameArr) {
        super(com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.ChapterTocFrame.ID);
        this.f18043b = str;
        this.f18044c = z10;
        this.f18045d = z11;
        this.f18046e = strArr;
        this.f18047f = id3FrameArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ChapterTocFrame.class != obj.getClass()) {
            return false;
        }
        ChapterTocFrame chapterTocFrame = (ChapterTocFrame) obj;
        if (this.f18044c == chapterTocFrame.f18044c && this.f18045d == chapterTocFrame.f18045d && s0.c(this.f18043b, chapterTocFrame.f18043b) && Arrays.equals(this.f18046e, chapterTocFrame.f18046e) && Arrays.equals(this.f18047f, chapterTocFrame.f18047f)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11 = (((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + (this.f18044c ? 1 : 0)) * 31) + (this.f18045d ? 1 : 0)) * 31;
        String str = this.f18043b;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        return i11 + i10;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f18043b);
        parcel.writeByte(this.f18044c ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f18045d ? (byte) 1 : (byte) 0);
        parcel.writeStringArray(this.f18046e);
        parcel.writeInt(this.f18047f.length);
        for (Id3Frame id3Frame : this.f18047f) {
            parcel.writeParcelable(id3Frame, 0);
        }
    }

    ChapterTocFrame(Parcel parcel) {
        super(com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.ChapterTocFrame.ID);
        this.f18043b = (String) s0.j(parcel.readString());
        this.f18044c = parcel.readByte() != 0;
        this.f18045d = parcel.readByte() != 0;
        this.f18046e = (String[]) s0.j(parcel.createStringArray());
        int readInt = parcel.readInt();
        this.f18047f = new Id3Frame[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            this.f18047f[i10] = (Id3Frame) parcel.readParcelable(Id3Frame.class.getClassLoader());
        }
    }
}
