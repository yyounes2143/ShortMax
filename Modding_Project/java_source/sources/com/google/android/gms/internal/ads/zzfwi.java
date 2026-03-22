package com.google.android.gms.internal.ads;

import java.io.Serializable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfwi implements Serializable, zzfwh {
    final zzfwh zza;
    volatile transient boolean zzb;
    transient Object zzc;
    private final transient zzfwo zzd = new zzfwo();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfwi(zzfwh zzfwhVar) {
        this.zza = zzfwhVar;
    }

    public final String toString() {
        Object obj;
        if (this.zzb) {
            obj = "<supplier that returned " + String.valueOf(this.zzc) + ">";
        } else {
            obj = this.zza;
        }
        return "Suppliers.memoize(" + obj.toString() + ")";
    }

    @Override // com.google.android.gms.internal.ads.zzfwh
    public final Object zza() {
        if (!this.zzb) {
            synchronized (this.zzd) {
                try {
                    if (!this.zzb) {
                        Object zza = this.zza.zza();
                        this.zzc = zza;
                        this.zzb = true;
                        return zza;
                    }
                } finally {
                }
            }
        }
        return this.zzc;
    }
}
