package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfwk implements zzfwh {
    private static final zzfwh zza = new zzfwh() { // from class: com.google.android.gms.internal.ads.zzfwj
        @Override // com.google.android.gms.internal.ads.zzfwh
        public final Object zza() {
            throw new IllegalStateException();
        }
    };
    private final zzfwo zzb = new zzfwo();
    private volatile zzfwh zzc;
    private Object zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfwk(zzfwh zzfwhVar) {
        this.zzc = zzfwhVar;
    }

    public final String toString() {
        Object obj = this.zzc;
        if (obj == zza) {
            obj = "<supplier that returned " + String.valueOf(this.zzd) + ">";
        }
        return "Suppliers.memoize(" + String.valueOf(obj) + ")";
    }

    @Override // com.google.android.gms.internal.ads.zzfwh
    public final Object zza() {
        zzfwh zzfwhVar = this.zzc;
        zzfwh zzfwhVar2 = zza;
        if (zzfwhVar != zzfwhVar2) {
            synchronized (this.zzb) {
                try {
                    if (this.zzc != zzfwhVar2) {
                        Object zza2 = this.zzc.zza();
                        this.zzd = zza2;
                        this.zzc = zzfwhVar2;
                        return zza2;
                    }
                } finally {
                }
            }
        }
        return this.zzd;
    }
}
