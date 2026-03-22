package com.google.android.gms.internal.play_billing;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
public final class zzfd implements zzgj {
    private static final zzfd zza = new zzfd();

    private zzfd() {
    }

    public static zzfd zza() {
        return zza;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgj
    public final zzgi zzb(Class cls) {
        if (zzfi.class.isAssignableFrom(cls)) {
            try {
                return (zzgi) zzfi.zzn(cls.asSubclass(zzfi.class)).zzb(3, null, null);
            } catch (Exception e10) {
                throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e10);
            }
        }
        throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.play_billing.zzgj
    public final boolean zzc(Class cls) {
        return zzfi.class.isAssignableFrom(cls);
    }
}
