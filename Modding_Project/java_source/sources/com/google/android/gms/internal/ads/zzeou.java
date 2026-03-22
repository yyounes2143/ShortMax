package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.ss.texturerender.TextureRenderKeys;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzeou implements zzeuc {
    private final AtomicReference zza = new AtomicReference();
    private final AtomicReference zzb = new AtomicReference(Boolean.FALSE);
    private final Clock zzc;
    private final Executor zzd;
    private final zzeuc zze;
    private final long zzf;
    private final zzdsj zzg;

    public zzeou(zzeuc zzeucVar, long j10, Clock clock, Executor executor, zzdsj zzdsjVar) {
        this.zzc = clock;
        this.zze = zzeucVar;
        this.zzf = j10;
        this.zzd = executor;
        this.zzg = zzdsjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final int zza() {
        return this.zze.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final com.google.common.util.concurrent.e zzb() {
        zzeot zzeotVar;
        zzeot zzeotVar2;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzmj)).booleanValue()) {
            AtomicReference atomicReference = this.zza;
            zzeotVar = (zzeot) atomicReference.get();
            if (zzeotVar == null || zzeotVar.zza()) {
                zzeuc zzeucVar = this.zze;
                zzeotVar2 = new zzeot(zzeucVar.zzb(), this.zzf, this.zzc);
                atomicReference.set(zzeotVar2);
                zzeotVar = zzeotVar2;
            }
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzmi)).booleanValue() && !((Boolean) this.zzb.getAndSet(Boolean.TRUE)).booleanValue()) {
                ScheduledExecutorService scheduledExecutorService = zzcaf.zzd;
                Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzeor
                    @Override // java.lang.Runnable
                    public final void run() {
                        r0.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeos
                            @Override // java.lang.Runnable
                            public final void run() {
                                r0.zza.set(new zzeot(r0.zze.zzb(), r0.zzf, zzeou.this.zzc));
                            }
                        });
                    }
                };
                long j10 = this.zzf;
                scheduledExecutorService.scheduleWithFixedDelay(runnable, j10, j10, TimeUnit.MILLISECONDS);
            }
            synchronized (this) {
                try {
                    AtomicReference atomicReference2 = this.zza;
                    zzeotVar = (zzeot) atomicReference2.get();
                    if (zzeotVar == null) {
                        zzeot zzeotVar3 = new zzeot(this.zze.zzb(), this.zzf, this.zzc);
                        atomicReference2.set(zzeotVar3);
                        return zzeotVar3.zza;
                    } else if (!((Boolean) this.zzb.get()).booleanValue() && zzeotVar.zza()) {
                        com.google.common.util.concurrent.e eVar = zzeotVar.zza;
                        zzeuc zzeucVar2 = this.zze;
                        zzeotVar2 = new zzeot(zzeucVar2.zzb(), this.zzf, this.zzc);
                        this.zza.set(zzeotVar2);
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzmk)).booleanValue()) {
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzml)).booleanValue()) {
                                zzdsi zza = this.zzg.zza();
                                zza.zzb(TextureRenderKeys.KEY_IS_ACTION, "scs");
                                zza.zzb("sid", String.valueOf(zzeucVar2.zza()));
                                zza.zzj();
                            }
                            return eVar;
                        }
                        zzeotVar = zzeotVar2;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return zzeotVar.zza;
    }
}
