package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import b7.s0;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* loaded from: classes4.dex */
public final class UrlLinkFrame extends Id3Frame {
    public static final Parcelable.Creator<UrlLinkFrame> CREATOR = new a();
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f18068b;

    /* renamed from: c  reason: collision with root package name */
    public final String f18069c;

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<UrlLinkFrame> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public UrlLinkFrame createFromParcel(Parcel parcel) {
            return new UrlLinkFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public UrlLinkFrame[] newArray(int i10) {
            return new UrlLinkFrame[i10];
        }
    }

    public UrlLinkFrame(String str, @Nullable String str2, String str3) {
        super(str);
        this.f18068b = str2;
        this.f18069c = str3;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || UrlLinkFrame.class != obj.getClass()) {
            return false;
        }
        UrlLinkFrame urlLinkFrame = (UrlLinkFrame) obj;
        if (this.f18055a.equals(urlLinkFrame.f18055a) && s0.c(this.f18068b, urlLinkFrame.f18068b) && s0.c(this.f18069c, urlLinkFrame.f18069c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int hashCode = (TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f18055a.hashCode()) * 31;
        String str = this.f18068b;
        int i11 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = (hashCode + i10) * 31;
        String str2 = this.f18069c;
        if (str2 != null) {
            i11 = str2.hashCode();
        }
        return i12 + i11;
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f18055a + ": url=" + this.f18069c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f18055a);
        parcel.writeString(this.f18068b);
        parcel.writeString(this.f18069c);
    }

    UrlLinkFrame(Parcel parcel) {
        super((String) s0.j(parcel.readString()));
        this.f18068b = parcel.readString();
        this.f18069c = (String) s0.j(parcel.readString());
    }
}
