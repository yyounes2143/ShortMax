package com.google.android.gms.internal.p003firebaseauthapi;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaa  reason: invalid package */
/* loaded from: classes4.dex */
abstract class zzaa extends zzd<String> {
    final CharSequence zza;
    private final zzf zzb;
    private final boolean zzc;
    private int zzd = 0;
    private int zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaa(zzt zztVar, CharSequence charSequence) {
        zzf zzfVar;
        int i10;
        zzfVar = zztVar.zza;
        this.zzb = zzfVar;
        this.zzc = false;
        i10 = zztVar.zzc;
        this.zze = i10;
        this.zza = charSequence;
    }

    abstract int zza(int i10);

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzd
    protected final /* synthetic */ String zza() {
        int i10 = this.zzd;
        while (true) {
            int i11 = this.zzd;
            if (i11 != -1) {
                int zzb = zzb(i11);
                if (zzb == -1) {
                    zzb = this.zza.length();
                    this.zzd = -1;
                } else {
                    this.zzd = zza(zzb);
                }
                int i12 = this.zzd;
                if (i12 == i10) {
                    int i13 = i12 + 1;
                    this.zzd = i13;
                    if (i13 > this.zza.length()) {
                        this.zzd = -1;
                    }
                } else {
                    while (i10 < zzb && this.zzb.zza(this.zza.charAt(i10))) {
                        i10++;
                    }
                    while (zzb > i10 && this.zzb.zza(this.zza.charAt(zzb - 1))) {
                        zzb--;
                    }
                    int i14 = this.zze;
                    if (i14 == 1) {
                        zzb = this.zza.length();
                        this.zzd = -1;
                        while (zzb > i10 && this.zzb.zza(this.zza.charAt(zzb - 1))) {
                            zzb--;
                        }
                    } else {
                        this.zze = i14 - 1;
                    }
                    return this.zza.subSequence(i10, zzb).toString();
                }
            } else {
                zzb();
                return null;
            }
        }
    }

    abstract int zzb(int i10);
}
