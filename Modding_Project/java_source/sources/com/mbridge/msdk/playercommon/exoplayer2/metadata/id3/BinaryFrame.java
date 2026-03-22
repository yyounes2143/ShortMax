package com.mbridge.msdk.playercommon.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
/* loaded from: classes6.dex */
public final class BinaryFrame extends Id3Frame {
    public static final Parcelable.Creator<BinaryFrame> CREATOR = new Parcelable.Creator<BinaryFrame>() { // from class: com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.BinaryFrame.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BinaryFrame createFromParcel(Parcel parcel) {
            return new BinaryFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BinaryFrame[] newArray(int i10) {
            return new BinaryFrame[i10];
        }
    };
    public final byte[] data;

    public BinaryFrame(String str, byte[] bArr) {
        super(str);
        this.data = bArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || BinaryFrame.class != obj.getClass()) {
            return false;
        }
        BinaryFrame binaryFrame = (BinaryFrame) obj;
        if (this.f28480id.equals(binaryFrame.f28480id) && Arrays.equals(this.data, binaryFrame.data)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((this.f28480id.hashCode() + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER) * 31) + Arrays.hashCode(this.data);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f28480id);
        parcel.writeByteArray(this.data);
    }

    BinaryFrame(Parcel parcel) {
        super(parcel.readString());
        this.data = parcel.createByteArray();
    }
}
