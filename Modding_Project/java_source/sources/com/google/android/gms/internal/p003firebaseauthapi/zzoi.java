package com.google.android.gms.internal.p003firebaseauthapi;

import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import java.util.Objects;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzoi  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzoi extends zzcb {
    private final zzqe zza;

    public zzoi(zzqe zzqeVar) {
        this.zza = zzqeVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzoi)) {
            return false;
        }
        zzqe zzqeVar = ((zzoi) obj).zza;
        if (!this.zza.zza().zzd().equals(zzqeVar.zza().zzd()) || !this.zza.zza().zzf().equals(zzqeVar.zza().zzf()) || !this.zza.zza().zze().equals(zzqeVar.zza().zze())) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(this.zza.zza(), this.zza.zzc());
    }

    public final String toString() {
        String str;
        String zzf = this.zza.zza().zzf();
        int i10 = zzoh.zza[this.zza.zza().zzd().ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        str = GrsBaseInfo.CountryCodeSource.UNKNOWN;
                    } else {
                        str = "CRUNCHY";
                    }
                } else {
                    str = "RAW";
                }
            } else {
                str = "LEGACY";
            }
        } else {
            str = "TINK";
        }
        return String.format("(typeUrl=%s, outputPrefixType=%s)", zzf, str);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzcb
    public final boolean zza() {
        if (this.zza.zza().zzd() != zzxz.RAW) {
            return true;
        }
        return false;
    }

    public final zzqe zzb() {
        return this.zza;
    }
}
