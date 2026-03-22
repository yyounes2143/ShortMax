package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
final class zzhaj implements zzhaq {
    private final zzhaq[] zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhaj(zzhaq... zzhaqVarArr) {
        this.zza = zzhaqVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final zzhap zzb(Class cls) {
        for (int i10 = 0; i10 < 2; i10++) {
            zzhaq zzhaqVar = this.zza[i10];
            if (zzhaqVar.zzc(cls)) {
                return zzhaqVar.zzb(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final boolean zzc(Class cls) {
        for (int i10 = 0; i10 < 2; i10++) {
            if (this.zza[i10].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}
