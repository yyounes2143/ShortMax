package com.google.android.gms.internal.ads;

import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgne extends zzgfm {
    private final zzgoy zza;

    public zzgne(zzgoy zzgoyVar) {
        this.zza = zzgoyVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgne)) {
            return false;
        }
        zzgoy zzgoyVar = ((zzgne) obj).zza;
        zzgoy zzgoyVar2 = this.zza;
        if (!zzgoyVar2.zzc().zzg().equals(zzgoyVar.zzc().zzg()) || !zzgoyVar2.zzc().zzi().equals(zzgoyVar.zzc().zzi()) || !zzgoyVar2.zzc().zzh().equals(zzgoyVar.zzc().zzh())) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        zzgoy zzgoyVar = this.zza;
        return Objects.hash(zzgoyVar.zzc(), zzgoyVar.zzd());
    }

    public final String toString() {
        String str;
        zzgoy zzgoyVar = this.zza;
        String zzi = zzgoyVar.zzc().zzi();
        int ordinal = zzgoyVar.zzc().zzg().ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
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
        return String.format("(typeUrl=%s, outputPrefixType=%s)", zzi, str);
    }

    @Override // com.google.android.gms.internal.ads.zzgfm
    public final boolean zza() {
        if (this.zza.zzc().zzg() != zzgvf.RAW) {
            return true;
        }
        return false;
    }

    public final zzgoy zzb() {
        return this.zza;
    }
}
