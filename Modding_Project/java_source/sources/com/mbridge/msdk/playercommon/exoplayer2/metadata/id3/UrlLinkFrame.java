package com.mbridge.msdk.playercommon.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* loaded from: classes6.dex */
public final class UrlLinkFrame extends Id3Frame {
    public static final Parcelable.Creator<UrlLinkFrame> CREATOR = new Parcelable.Creator<UrlLinkFrame>() { // from class: com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.UrlLinkFrame.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UrlLinkFrame createFromParcel(Parcel parcel) {
            return new UrlLinkFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UrlLinkFrame[] newArray(int i10) {
            return new UrlLinkFrame[i10];
        }
    };
    public final String description;
    public final String url;

    public UrlLinkFrame(String str, String str2, String str3) {
        super(str);
        this.description = str2;
        this.url = str3;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || UrlLinkFrame.class != obj.getClass()) {
            return false;
        }
        UrlLinkFrame urlLinkFrame = (UrlLinkFrame) obj;
        if (this.f28480id.equals(urlLinkFrame.f28480id) && Util.areEqual(this.description, urlLinkFrame.description) && Util.areEqual(this.url, urlLinkFrame.url)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int hashCode = (this.f28480id.hashCode() + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER) * 31;
        String str = this.description;
        int i11 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = (hashCode + i10) * 31;
        String str2 = this.url;
        if (str2 != null) {
            i11 = str2.hashCode();
        }
        return i12 + i11;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f28480id + ": url=" + this.url;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f28480id);
        parcel.writeString(this.description);
        parcel.writeString(this.url);
    }

    UrlLinkFrame(Parcel parcel) {
        super(parcel.readString());
        this.description = parcel.readString();
        this.url = parcel.readString();
    }
}
