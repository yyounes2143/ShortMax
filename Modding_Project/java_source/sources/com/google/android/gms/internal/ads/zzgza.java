package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgza implements zzhaq {
    private static final zzgza zza = new zzgza();

    private zzgza() {
    }

    public static zzgza zza() {
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final zzhap zzb(Class cls) {
        if (zzgzh.class.isAssignableFrom(cls)) {
            try {
                return (zzhap) zzgzh.zzbh(cls.asSubclass(zzgzh.class)).zzbO();
            } catch (Exception e10) {
                throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e10);
            }
        }
        throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final boolean zzc(Class cls) {
        return zzgzh.class.isAssignableFrom(cls);
    }
}
