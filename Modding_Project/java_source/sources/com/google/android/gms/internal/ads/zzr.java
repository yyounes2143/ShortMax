package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Objects;
import java.util.UUID;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzr implements Parcelable {
    public static final Parcelable.Creator<zzr> CREATOR = new zzq();
    public final UUID zza;
    @Nullable
    public final String zzb;
    public final String zzc;
    @Nullable
    public final byte[] zzd;
    private int zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzr(Parcel parcel) {
        this.zza = new UUID(parcel.readLong(), parcel.readLong());
        this.zzb = parcel.readString();
        String readString = parcel.readString();
        String str = zzex.zza;
        this.zzc = readString;
        this.zzd = parcel.createByteArray();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof zzr)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        zzr zzrVar = (zzr) obj;
        if (!Objects.equals(this.zzb, zzrVar.zzb) || !Objects.equals(this.zzc, zzrVar.zzc) || !Objects.equals(this.zza, zzrVar.zza) || !Arrays.equals(this.zzd, zzrVar.zzd)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode;
        int i10 = this.zze;
        if (i10 == 0) {
            int hashCode2 = this.zza.hashCode() * 31;
            String str = this.zzb;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int hashCode3 = ((((hashCode2 + hashCode) * 31) + this.zzc.hashCode()) * 31) + Arrays.hashCode(this.zzd);
            this.zze = hashCode3;
            return hashCode3;
        }
        return i10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        UUID uuid = this.zza;
        parcel.writeLong(uuid.getMostSignificantBits());
        parcel.writeLong(uuid.getLeastSignificantBits());
        parcel.writeString(this.zzb);
        parcel.writeString(this.zzc);
        parcel.writeByteArray(this.zzd);
    }

    public zzr(UUID uuid, @Nullable String str, String str2, @Nullable byte[] bArr) {
        uuid.getClass();
        this.zza = uuid;
        this.zzb = null;
        this.zzc = zzay.zze(str2);
        this.zzd = bArr;
    }
}
