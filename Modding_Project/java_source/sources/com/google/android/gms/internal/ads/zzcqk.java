package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcqk implements zzazd {
    @Nullable
    private final zzcfg zza;
    private final Executor zzb;
    private final AtomicReference zzc = new AtomicReference();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcqk(@Nullable zzcfg zzcfgVar, Executor executor) {
        this.zza = zzcfgVar;
        this.zzb = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzazd
    public final synchronized void zzdr(zzazc zzazcVar) {
        final zzcfg zzcfgVar = this.zza;
        if (zzcfgVar != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzmY)).booleanValue()) {
                if (zzazcVar.zzj) {
                    AtomicReference atomicReference = this.zzc;
                    Boolean bool = Boolean.TRUE;
                    if (!bool.equals(atomicReference.getAndSet(bool))) {
                        this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcqi
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzcfg.this.onResume();
                            }
                        });
                    }
                } else {
                    AtomicReference atomicReference2 = this.zzc;
                    Boolean bool2 = Boolean.FALSE;
                    if (!bool2.equals(atomicReference2.getAndSet(bool2))) {
                        this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcqj
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzcfg.this.onPause();
                            }
                        });
                    }
                }
            }
        }
    }
}
