package com.google.android.gms.internal.ads;

import com.huawei.hms.framework.network.grs.GrsBaseInfo;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzgnb extends zzgfm {
    private final String zza;
    private final zzgvf zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgnb(String str, zzgvf zzgvfVar, zzgnc zzgncVar) {
        this.zza = str;
        this.zzb = zzgvfVar;
    }

    public final String toString() {
        String str;
        String str2 = this.zza;
        int ordinal = this.zzb.ordinal();
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
        return String.format("(typeUrl=%s, outputPrefixType=%s)", str2, str);
    }

    @Override // com.google.android.gms.internal.ads.zzgfm
    public final boolean zza() {
        if (this.zzb != zzgvf.RAW) {
            return true;
        }
        return false;
    }
}
