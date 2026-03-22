package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgiu {
    private zzgiw zza;
    private String zzb;
    private zzgiv zzc;
    private zzgga zzd;

    private zzgiu() {
        throw null;
    }

    public final zzgiu zza(zzgga zzggaVar) {
        this.zzd = zzggaVar;
        return this;
    }

    public final zzgiu zzb(zzgiv zzgivVar) {
        this.zzc = zzgivVar;
        return this;
    }

    public final zzgiu zzc(String str) {
        this.zzb = str;
        return this;
    }

    public final zzgiu zzd(zzgiw zzgiwVar) {
        this.zza = zzgiwVar;
        return this;
    }

    public final zzgiy zze() throws GeneralSecurityException {
        if (this.zza == null) {
            this.zza = zzgiw.zzb;
        }
        if (this.zzb != null) {
            zzgiv zzgivVar = this.zzc;
            if (zzgivVar != null) {
                zzgga zzggaVar = this.zzd;
                if (zzggaVar != null) {
                    if (!zzggaVar.zza()) {
                        if ((zzgivVar.equals(zzgiv.zza) && (zzggaVar instanceof zzghm)) || ((zzgivVar.equals(zzgiv.zzc) && (zzggaVar instanceof zzgid)) || ((zzgivVar.equals(zzgiv.zzb) && (zzggaVar instanceof zzgka)) || ((zzgivVar.equals(zzgiv.zzd) && (zzggaVar instanceof zzggr)) || ((zzgivVar.equals(zzgiv.zze) && (zzggaVar instanceof zzghb)) || (zzgivVar.equals(zzgiv.zzf) && (zzggaVar instanceof zzghx))))))) {
                            return new zzgiy(this.zza, this.zzb, this.zzc, this.zzd, null);
                        }
                        String zzgivVar2 = this.zzc.toString();
                        String valueOf = String.valueOf(this.zzd);
                        throw new GeneralSecurityException("Cannot use parsing strategy " + zzgivVar2 + " when new keys are picked according to " + valueOf + ".");
                    }
                    throw new GeneralSecurityException("dekParametersForNewKeys must not have ID Requirements");
                }
                throw new GeneralSecurityException("dekParametersForNewKeys must be set");
            }
            throw new GeneralSecurityException("dekParsingStrategy must be set");
        }
        throw new GeneralSecurityException("kekUri must be set");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgiu(zzgix zzgixVar) {
    }
}
