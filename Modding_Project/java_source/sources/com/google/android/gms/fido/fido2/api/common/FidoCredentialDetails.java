package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import com.mbridge.msdk.MBridgeConstans;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-fido@@20.1.0 */
@SafeParcelable.Class(creator = "FidoCredentialDetailsCreator")
/* loaded from: classes4.dex */
public class FidoCredentialDetails extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<FidoCredentialDetails> CREATOR = new zzy();
    @Nullable
    @SafeParcelable.Field(getter = "getUserName", id = 1)
    private final String zza;
    @Nullable
    @SafeParcelable.Field(getter = "getUserDisplayName", id = 2)
    private final String zzb;
    @Nullable
    @SafeParcelable.Field(getter = "getUserId", id = 3)
    private final byte[] zzc;
    @NonNull
    @SafeParcelable.Field(getter = "getCredentialId", id = 4)
    private final byte[] zzd;
    @SafeParcelable.Field(getter = "getIsDiscoverable", id = 5)
    private final boolean zze;
    @SafeParcelable.Field(getter = "getIsPaymentCredential", id = 6)
    private final boolean zzf;
    @SafeParcelable.Field(defaultValue = MBridgeConstans.ENDCARD_URL_TYPE_PL, getter = "getLastUsedTime", id = 7)
    private final long zzg;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public FidoCredentialDetails(@Nullable @SafeParcelable.Param(id = 1) String str, @Nullable @SafeParcelable.Param(id = 2) String str2, @Nullable @SafeParcelable.Param(id = 3) byte[] bArr, @NonNull @SafeParcelable.Param(id = 4) byte[] bArr2, @SafeParcelable.Param(id = 5) boolean z10, @SafeParcelable.Param(id = 6) boolean z11, @SafeParcelable.Param(id = 7) long j10) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = bArr;
        this.zzd = bArr2;
        this.zze = z10;
        this.zzf = z11;
        this.zzg = j10;
    }

    @NonNull
    public static FidoCredentialDetails deserializeFromBytes(@NonNull byte[] bArr) {
        return (FidoCredentialDetails) SafeParcelableSerializer.deserializeFromBytes(bArr, CREATOR);
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof FidoCredentialDetails)) {
            return false;
        }
        FidoCredentialDetails fidoCredentialDetails = (FidoCredentialDetails) obj;
        if (!Objects.equal(this.zza, fidoCredentialDetails.zza) || !Objects.equal(this.zzb, fidoCredentialDetails.zzb) || !Arrays.equals(this.zzc, fidoCredentialDetails.zzc) || !Arrays.equals(this.zzd, fidoCredentialDetails.zzd) || this.zze != fidoCredentialDetails.zze || this.zzf != fidoCredentialDetails.zzf || this.zzg != fidoCredentialDetails.zzg) {
            return false;
        }
        return true;
    }

    @NonNull
    public byte[] getCredentialId() {
        return this.zzd;
    }

    public boolean getIsDiscoverable() {
        return this.zze;
    }

    public boolean getIsPaymentCredential() {
        return this.zzf;
    }

    public long getLastUsedTime() {
        return this.zzg;
    }

    @Nullable
    public String getUserDisplayName() {
        return this.zzb;
    }

    @Nullable
    public byte[] getUserId() {
        return this.zzc;
    }

    @Nullable
    public String getUserName() {
        return this.zza;
    }

    public int hashCode() {
        return Objects.hashCode(this.zza, this.zzb, this.zzc, this.zzd, Boolean.valueOf(this.zze), Boolean.valueOf(this.zzf), Long.valueOf(this.zzg));
    }

    @NonNull
    public byte[] serializeToBytes() {
        return SafeParcelableSerializer.serializeToBytes(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, getUserName(), false);
        SafeParcelWriter.writeString(parcel, 2, getUserDisplayName(), false);
        SafeParcelWriter.writeByteArray(parcel, 3, getUserId(), false);
        SafeParcelWriter.writeByteArray(parcel, 4, getCredentialId(), false);
        SafeParcelWriter.writeBoolean(parcel, 5, getIsDiscoverable());
        SafeParcelWriter.writeBoolean(parcel, 6, getIsPaymentCredential());
        SafeParcelWriter.writeLong(parcel, 7, getLastUsedTime());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
