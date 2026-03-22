package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import b7.s0;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* loaded from: classes4.dex */
public final class InternalFrame extends Id3Frame {
    public static final Parcelable.Creator<InternalFrame> CREATOR = new a();

    /* renamed from: b  reason: collision with root package name */
    public final String f18056b;

    /* renamed from: c  reason: collision with root package name */
    public final String f18057c;

    /* renamed from: d  reason: collision with root package name */
    public final String f18058d;

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<InternalFrame> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public InternalFrame createFromParcel(Parcel parcel) {
            return new InternalFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public InternalFrame[] newArray(int i10) {
            return new InternalFrame[i10];
        }
    }

    public InternalFrame(String str, String str2, String str3) {
        super(com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.InternalFrame.ID);
        this.f18056b = str;
        this.f18057c = str2;
        this.f18058d = str3;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || InternalFrame.class != obj.getClass()) {
            return false;
        }
        InternalFrame internalFrame = (InternalFrame) obj;
        if (s0.c(this.f18057c, internalFrame.f18057c) && s0.c(this.f18056b, internalFrame.f18056b) && s0.c(this.f18058d, internalFrame.f18058d)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11;
        String str = this.f18056b;
        int i12 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i13 = (TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + i10) * 31;
        String str2 = this.f18057c;
        if (str2 != null) {
            i11 = str2.hashCode();
        } else {
            i11 = 0;
        }
        int i14 = (i13 + i11) * 31;
        String str3 = this.f18058d;
        if (str3 != null) {
            i12 = str3.hashCode();
        }
        return i14 + i12;
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f18055a + ": domain=" + this.f18056b + ", description=" + this.f18057c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f18055a);
        parcel.writeString(this.f18056b);
        parcel.writeString(this.f18058d);
    }

    InternalFrame(Parcel parcel) {
        super(com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.InternalFrame.ID);
        this.f18056b = (String) s0.j(parcel.readString());
        this.f18057c = (String) s0.j(parcel.readString());
        this.f18058d = (String) s0.j(parcel.readString());
    }
}
