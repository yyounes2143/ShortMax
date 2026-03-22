package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import b7.s0;
import com.google.android.exoplayer2.z0;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
/* loaded from: classes4.dex */
public final class ApicFrame extends Id3Frame {
    public static final Parcelable.Creator<ApicFrame> CREATOR = new a();

    /* renamed from: b  reason: collision with root package name */
    public final String f18032b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f18033c;

    /* renamed from: d  reason: collision with root package name */
    public final int f18034d;

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f18035e;

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<ApicFrame> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ApicFrame createFromParcel(Parcel parcel) {
            return new ApicFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public ApicFrame[] newArray(int i10) {
            return new ApicFrame[i10];
        }
    }

    public ApicFrame(String str, @Nullable String str2, int i10, byte[] bArr) {
        super(com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.ApicFrame.ID);
        this.f18032b = str;
        this.f18033c = str2;
        this.f18034d = i10;
        this.f18035e = bArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ApicFrame.class != obj.getClass()) {
            return false;
        }
        ApicFrame apicFrame = (ApicFrame) obj;
        if (this.f18034d == apicFrame.f18034d && s0.c(this.f18032b, apicFrame.f18032b) && s0.c(this.f18033c, apicFrame.f18033c) && Arrays.equals(this.f18035e, apicFrame.f18035e)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11 = (TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f18034d) * 31;
        String str = this.f18032b;
        int i12 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i13 = (i11 + i10) * 31;
        String str2 = this.f18033c;
        if (str2 != null) {
            i12 = str2.hashCode();
        }
        return ((i13 + i12) * 31) + Arrays.hashCode(this.f18035e);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f18055a + ": mimeType=" + this.f18032b + ", description=" + this.f18033c;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public void u(z0.b bVar) {
        bVar.G(this.f18035e, this.f18034d);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f18032b);
        parcel.writeString(this.f18033c);
        parcel.writeInt(this.f18034d);
        parcel.writeByteArray(this.f18035e);
    }

    ApicFrame(Parcel parcel) {
        super(com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.ApicFrame.ID);
        this.f18032b = (String) s0.j(parcel.readString());
        this.f18033c = parcel.readString();
        this.f18034d = parcel.readInt();
        this.f18035e = (byte[]) s0.j(parcel.createByteArray());
    }
}
