package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
abstract class zzfwc extends zzfuu {
    final CharSequence zzb;
    int zzc = 0;
    int zzd = Integer.MAX_VALUE;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzfwc(zzfwe zzfweVar, CharSequence charSequence) {
        this.zzb = charSequence;
    }

    @Override // com.google.android.gms.internal.ads.zzfuu
    protected final /* bridge */ /* synthetic */ Object zza() {
        int zzc;
        int i10 = this.zzc;
        while (true) {
            int i11 = this.zzc;
            if (i11 != -1) {
                int zzd = zzd(i11);
                if (zzd == -1) {
                    zzd = this.zzb.length();
                    this.zzc = -1;
                    zzc = -1;
                } else {
                    zzc = zzc(zzd);
                    this.zzc = zzc;
                }
                if (zzc == i10) {
                    int i12 = zzc + 1;
                    this.zzc = i12;
                    if (i12 > this.zzb.length()) {
                        this.zzc = -1;
                    }
                } else {
                    if (i10 < zzd) {
                        this.zzb.charAt(i10);
                    }
                    if (i10 < zzd) {
                        this.zzb.charAt(zzd - 1);
                    }
                    int i13 = this.zzd;
                    if (i13 == 1) {
                        CharSequence charSequence = this.zzb;
                        int length = charSequence.length();
                        this.zzc = -1;
                        if (length > i10) {
                            charSequence.charAt(length - 1);
                        }
                        zzd = length;
                    } else {
                        this.zzd = i13 - 1;
                    }
                    return this.zzb.subSequence(i10, zzd).toString();
                }
            } else {
                zzb();
                return null;
            }
        }
    }

    abstract int zzc(int i10);

    abstract int zzd(int i10);
}
