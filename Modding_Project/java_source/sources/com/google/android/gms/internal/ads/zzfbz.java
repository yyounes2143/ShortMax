package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.mbridge.msdk.MBridgeConstans;
import com.ss.texturerender.TextureRenderKeys;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfbz {
    private final Clock zza;
    private final zzdsj zzb;
    private final Object zzc = new Object();
    private volatile int zze = 1;
    private volatile long zzd = 0;

    public zzfbz(Clock clock, zzdsj zzdsjVar) {
        this.zza = clock;
        this.zzb = zzdsjVar;
    }

    private final void zze() {
        long currentTimeMillis = this.zza.currentTimeMillis();
        synchronized (this.zzc) {
            try {
                if (this.zze == 3) {
                    if (this.zzd + ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgj)).longValue() <= currentTimeMillis) {
                        this.zze = 1;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private final void zzf(int i10, int i11) {
        zze();
        Object obj = this.zzc;
        long currentTimeMillis = this.zza.currentTimeMillis();
        synchronized (obj) {
            try {
                if (this.zze != i10) {
                    return;
                }
                this.zze = i11;
                if (this.zze == 3) {
                    this.zzd = currentTimeMillis;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void zza() {
        zzf(2, 3);
    }

    public final void zzb(boolean z10) {
        String str;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zznv)).booleanValue()) {
            zzdsi zza = this.zzb.zza();
            zza.zzb(TextureRenderKeys.KEY_IS_ACTION, "mbs_state");
            if (true != z10) {
                str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
            } else {
                str = "1";
            }
            zza.zzb("mbs_state", str);
            zza.zzj();
        }
        if (z10) {
            zzf(1, 2);
        } else {
            zzf(2, 1);
        }
    }

    public final boolean zzc() {
        boolean z10;
        synchronized (this.zzc) {
            zze();
            if (this.zze == 3) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        return z10;
    }

    public final boolean zzd() {
        boolean z10;
        synchronized (this.zzc) {
            zze();
            if (this.zze == 2) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        return z10;
    }
}
