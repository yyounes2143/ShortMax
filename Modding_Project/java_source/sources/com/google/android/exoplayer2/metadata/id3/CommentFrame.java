package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import b7.s0;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* loaded from: classes4.dex */
public final class CommentFrame extends Id3Frame {
    public static final Parcelable.Creator<CommentFrame> CREATOR = new a();

    /* renamed from: b  reason: collision with root package name */
    public final String f18048b;

    /* renamed from: c  reason: collision with root package name */
    public final String f18049c;

    /* renamed from: d  reason: collision with root package name */
    public final String f18050d;

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<CommentFrame> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public CommentFrame createFromParcel(Parcel parcel) {
            return new CommentFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public CommentFrame[] newArray(int i10) {
            return new CommentFrame[i10];
        }
    }

    public CommentFrame(String str, String str2, String str3) {
        super(com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.CommentFrame.ID);
        this.f18048b = str;
        this.f18049c = str2;
        this.f18050d = str3;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || CommentFrame.class != obj.getClass()) {
            return false;
        }
        CommentFrame commentFrame = (CommentFrame) obj;
        if (s0.c(this.f18049c, commentFrame.f18049c) && s0.c(this.f18048b, commentFrame.f18048b) && s0.c(this.f18050d, commentFrame.f18050d)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11;
        String str = this.f18048b;
        int i12 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i13 = (TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + i10) * 31;
        String str2 = this.f18049c;
        if (str2 != null) {
            i11 = str2.hashCode();
        } else {
            i11 = 0;
        }
        int i14 = (i13 + i11) * 31;
        String str3 = this.f18050d;
        if (str3 != null) {
            i12 = str3.hashCode();
        }
        return i14 + i12;
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f18055a + ": language=" + this.f18048b + ", description=" + this.f18049c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f18055a);
        parcel.writeString(this.f18048b);
        parcel.writeString(this.f18050d);
    }

    CommentFrame(Parcel parcel) {
        super(com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.CommentFrame.ID);
        this.f18048b = (String) s0.j(parcel.readString());
        this.f18049c = (String) s0.j(parcel.readString());
        this.f18050d = (String) s0.j(parcel.readString());
    }
}
