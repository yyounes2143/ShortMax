package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzfqr extends zzfqy {
    private final String zzb;
    private final int zzc;
    private final int zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzfqr(String str, boolean z10, int i10, zzfqn zzfqnVar, zzfqo zzfqoVar, int i11, zzfqq zzfqqVar) {
        this.zzb = str;
        this.zzc = i10;
        this.zzd = i11;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfqy) {
            zzfqy zzfqyVar = (zzfqy) obj;
            if (this.zzb.equals(zzfqyVar.zzc())) {
                zzfqyVar.zzd();
                int i10 = this.zzc;
                int zze = zzfqyVar.zze();
                if (i10 != 0) {
                    if (i10 == zze) {
                        zzfqyVar.zza();
                        zzfqyVar.zzb();
                        int i11 = this.zzd;
                        int zzf = zzfqyVar.zzf();
                        if (i11 != 0) {
                            if (zzf == 1) {
                                return true;
                            }
                        } else {
                            throw null;
                        }
                    }
                } else {
                    throw null;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.zzb.hashCode() ^ 1000003;
        int i10 = this.zzc;
        if (i10 != 0) {
            int i11 = (((hashCode * 1000003) ^ 1237) * 1000003) ^ i10;
            if (this.zzd != 0) {
                return (i11 * 583896283) ^ 1;
            }
            throw null;
        }
        throw null;
    }

    public final String toString() {
        String str;
        int i10 = this.zzc;
        String str2 = "null";
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        str = "null";
                    } else {
                        str = "NO_CHECKS";
                    }
                } else {
                    str = "SKIP_SECURITY_CHECK";
                }
            } else {
                str = "SKIP_COMPLIANCE_CHECK";
            }
        } else {
            str = "ALL_CHECKS";
        }
        if (this.zzd == 1) {
            str2 = "READ_AND_WRITE";
        }
        String str3 = this.zzb;
        return "FileComplianceOptions{fileOwner=" + str3 + ", hasDifferentDmaOwner=false, fileChecks=" + str + ", dataForwardingNotAllowedResolver=null, multipleProductIdGroupsResolver=null, filePurpose=" + str2 + "}";
    }

    @Override // com.google.android.gms.internal.ads.zzfqy
    public final zzfqn zza() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzfqy
    public final zzfqo zzb() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzfqy
    public final String zzc() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfqy
    public final boolean zzd() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfqy
    public final int zze() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzfqy
    public final int zzf() {
        return this.zzd;
    }
}
