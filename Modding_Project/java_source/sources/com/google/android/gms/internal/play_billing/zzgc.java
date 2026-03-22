package com.google.android.gms.internal.play_billing;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
final class zzgc implements zzgj {
    private final zzgj[] zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgc(zzgj... zzgjVarArr) {
        this.zza = zzgjVarArr;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgj
    public final zzgi zzb(Class cls) {
        for (int i10 = 0; i10 < 2; i10++) {
            zzgj zzgjVar = this.zza[i10];
            if (zzgjVar.zzc(cls)) {
                return zzgjVar.zzb(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.play_billing.zzgj
    public final boolean zzc(Class cls) {
        for (int i10 = 0; i10 < 2; i10++) {
            if (this.zza[i10].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}
