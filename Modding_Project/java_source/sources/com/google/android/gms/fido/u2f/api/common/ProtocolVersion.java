package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.fido.u2f.api.common.ProtocolVersion;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import java.io.UnsupportedEncodingException;
/* compiled from: com.google.android.gms:play-services-fido@@20.1.0 */
@Deprecated
/* loaded from: classes4.dex */
public enum ProtocolVersion implements Parcelable {
    UNKNOWN(GrsBaseInfo.CountryCodeSource.UNKNOWN),
    V1("U2F_V1"),
    V2("U2F_V2");
    
    @NonNull
    public static final Parcelable.Creator<ProtocolVersion> CREATOR = new Parcelable.Creator() { // from class: com.google.android.gms.fido.u2f.api.common.zzf
        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
            try {
                return ProtocolVersion.fromString(parcel.readString());
            } catch (ProtocolVersion.UnsupportedProtocolException e10) {
                throw new RuntimeException(e10);
            }
        }

        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ Object[] newArray(int i10) {
            return new ProtocolVersion[i10];
        }
    };
    private final String zzb;

    /* compiled from: com.google.android.gms:play-services-fido@@20.1.0 */
    /* loaded from: classes4.dex */
    public static class UnsupportedProtocolException extends Exception {
        public UnsupportedProtocolException(@NonNull String str) {
            super(String.format("Protocol version %s not supported", str));
        }
    }

    ProtocolVersion(String str) {
        this.zzb = str;
    }

    @NonNull
    public static ProtocolVersion fromBytes(@NonNull byte[] bArr) throws UnsupportedProtocolException {
        try {
            return fromString(new String(bArr, "UTF-8"));
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException(e10);
        }
    }

    @NonNull
    public static ProtocolVersion fromString(@NonNull String str) throws UnsupportedProtocolException {
        ProtocolVersion[] values;
        if (str == null) {
            return UNKNOWN;
        }
        for (ProtocolVersion protocolVersion : values()) {
            if (str.equals(protocolVersion.zzb)) {
                return protocolVersion;
            }
        }
        throw new UnsupportedProtocolException(str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean isCompatible(@NonNull ProtocolVersion protocolVersion) {
        ProtocolVersion protocolVersion2 = UNKNOWN;
        if (!equals(protocolVersion2) && !protocolVersion.equals(protocolVersion2)) {
            return equals(protocolVersion);
        }
        return true;
    }

    @Override // java.lang.Enum
    @NonNull
    public String toString() {
        return this.zzb;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        parcel.writeString(this.zzb);
    }
}
