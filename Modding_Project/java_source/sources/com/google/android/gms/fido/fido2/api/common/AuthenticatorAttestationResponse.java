package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import com.google.android.gms.fido.u2f.api.common.SignResponseData;
import com.google.android.gms.internal.fido.zzch;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-fido@@20.1.0 */
@SafeParcelable.Class(creator = "AuthenticatorAttestationResponseCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes4.dex */
public class AuthenticatorAttestationResponse extends AuthenticatorResponse {
    @NonNull
    public static final Parcelable.Creator<AuthenticatorAttestationResponse> CREATOR = new zzk();
    @NonNull
    @SafeParcelable.Field(getter = "getKeyHandle", id = 2)
    private final byte[] zza;
    @NonNull
    @SafeParcelable.Field(getter = "getClientDataJSON", id = 3)
    private final byte[] zzb;
    @NonNull
    @SafeParcelable.Field(getter = "getAttestationObject", id = 4)
    private final byte[] zzc;
    @NonNull
    @SafeParcelable.Field(getter = "getTransports", id = 5)
    private final String[] zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public AuthenticatorAttestationResponse(@NonNull @SafeParcelable.Param(id = 2) byte[] bArr, @NonNull @SafeParcelable.Param(id = 3) byte[] bArr2, @NonNull @SafeParcelable.Param(id = 4) byte[] bArr3, @NonNull @SafeParcelable.Param(id = 5) String[] strArr) {
        this.zza = (byte[]) Preconditions.checkNotNull(bArr);
        this.zzb = (byte[]) Preconditions.checkNotNull(bArr2);
        this.zzc = (byte[]) Preconditions.checkNotNull(bArr3);
        this.zzd = (String[]) Preconditions.checkNotNull(strArr);
    }

    @NonNull
    public static AuthenticatorAttestationResponse deserializeFromBytes(@NonNull byte[] bArr) {
        return (AuthenticatorAttestationResponse) SafeParcelableSerializer.deserializeFromBytes(bArr, CREATOR);
    }

    public boolean equals(@NonNull Object obj) {
        if (!(obj instanceof AuthenticatorAttestationResponse)) {
            return false;
        }
        AuthenticatorAttestationResponse authenticatorAttestationResponse = (AuthenticatorAttestationResponse) obj;
        if (!Arrays.equals(this.zza, authenticatorAttestationResponse.zza) || !Arrays.equals(this.zzb, authenticatorAttestationResponse.zzb) || !Arrays.equals(this.zzc, authenticatorAttestationResponse.zzc)) {
            return false;
        }
        return true;
    }

    @NonNull
    public byte[] getAttestationObject() {
        return this.zzc;
    }

    @Override // com.google.android.gms.fido.fido2.api.common.AuthenticatorResponse
    @NonNull
    public byte[] getClientDataJSON() {
        return this.zzb;
    }

    @NonNull
    @Deprecated
    public byte[] getKeyHandle() {
        return this.zza;
    }

    @NonNull
    public String[] getTransports() {
        return this.zzd;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(Arrays.hashCode(this.zza)), Integer.valueOf(Arrays.hashCode(this.zzb)), Integer.valueOf(Arrays.hashCode(this.zzc)));
    }

    @Override // com.google.android.gms.fido.fido2.api.common.AuthenticatorResponse
    @NonNull
    public byte[] serializeToBytes() {
        return SafeParcelableSerializer.serializeToBytes(this);
    }

    @NonNull
    public String toString() {
        com.google.android.gms.internal.fido.zzam zza = com.google.android.gms.internal.fido.zzan.zza(this);
        zzch zzf = zzch.zzf();
        byte[] bArr = this.zza;
        zza.zzb(SignResponseData.JSON_RESPONSE_DATA_KEY_HANDLE, zzf.zzg(bArr, 0, bArr.length));
        zzch zzf2 = zzch.zzf();
        byte[] bArr2 = this.zzb;
        zza.zzb("clientDataJSON", zzf2.zzg(bArr2, 0, bArr2.length));
        zzch zzf3 = zzch.zzf();
        byte[] bArr3 = this.zzc;
        zza.zzb("attestationObject", zzf3.zzg(bArr3, 0, bArr3.length));
        zza.zzb("transports", Arrays.toString(this.zzd));
        return zza.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeByteArray(parcel, 2, getKeyHandle(), false);
        SafeParcelWriter.writeByteArray(parcel, 3, getClientDataJSON(), false);
        SafeParcelWriter.writeByteArray(parcel, 4, getAttestationObject(), false);
        SafeParcelWriter.writeStringArray(parcel, 5, getTransports(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    /* JADX WARN: Removed duplicated region for block: B:75:0x01ee A[Catch: JSONException -> 0x0015, TRY_LEAVE, TryCatch #1 {JSONException -> 0x0015, blocks: (B:3:0x0002, B:5:0x000b, B:8:0x0018, B:10:0x001c, B:11:0x0025, B:12:0x002c, B:14:0x0031, B:16:0x003f, B:18:0x004c, B:17:0x0045, B:19:0x004f, B:20:0x0056, B:21:0x005e, B:23:0x0070, B:24:0x0078, B:25:0x007c, B:27:0x008e, B:28:0x00ac, B:29:0x00c4, B:33:0x00ea, B:73:0x01da, B:75:0x01ee, B:39:0x0109, B:41:0x011b, B:46:0x012f, B:49:0x0151, B:51:0x0167, B:53:0x016d, B:56:0x0187, B:57:0x018c, B:58:0x018d, B:59:0x0192, B:64:0x019d, B:66:0x01ad, B:68:0x01bb, B:69:0x01ce, B:70:0x01d3, B:71:0x01d4, B:72:0x01d9, B:77:0x01f8, B:78:0x01fd, B:79:0x01fe, B:80:0x0205, B:81:0x0206, B:82:0x020b, B:86:0x020f, B:87:0x0216, B:90:0x0219, B:91:0x0220, B:92:0x0221, B:93:0x0228, B:96:0x022b, B:97:0x0232, B:98:0x0233, B:99:0x023a, B:103:0x023e, B:104:0x0245), top: B:108:0x0002, inners: #0, #2, #6 }] */
    @androidx.annotation.NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.json.JSONObject zza() {
        /*
            Method dump skipped, instructions count: 590
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.fido.fido2.api.common.AuthenticatorAttestationResponse.zza():org.json.JSONObject");
    }
}
