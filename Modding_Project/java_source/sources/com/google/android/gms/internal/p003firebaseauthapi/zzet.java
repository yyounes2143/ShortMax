package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzev;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzet  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzet extends zzcw {
    private final zzev zza;
    private final zzaaj zzb;
    private final Integer zzc;

    private zzet(zzev zzevVar, zzaaj zzaajVar, Integer num) {
        this.zza = zzevVar;
        this.zzb = zzaajVar;
        this.zzc = num;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzcw, com.google.android.gms.internal.p003firebaseauthapi.zzbi
    public final /* synthetic */ zzcb zza() {
        return (zzev) zza();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzbi
    public final Integer zzb() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzcw
    public final /* synthetic */ zzcy zzc() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzcw
    public final zzaaj zzd() {
        return this.zzb;
    }

    public static zzet zza(zzev zzevVar, Integer num) throws GeneralSecurityException {
        zzaaj zza;
        if (zzevVar.zzb() == zzev.zza.zza) {
            if (num != null) {
                zza = zzaaj.zza(ByteBuffer.allocate(5).put((byte) 1).putInt(num.intValue()).array());
            } else {
                throw new GeneralSecurityException("For given Variant TINK the value of idRequirement must be non-null");
            }
        } else if (zzevVar.zzb() != zzev.zza.zzb) {
            String valueOf = String.valueOf(zzevVar.zzb());
            throw new GeneralSecurityException("Unknown Variant: " + valueOf);
        } else if (num == null) {
            zza = zzaaj.zza(new byte[0]);
        } else {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        }
        return new zzet(zzevVar, zza, num);
    }
}
