package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.unity3d.services.core.di.ServiceProvider;
import java.util.HashMap;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzij implements zzkx {
    private final zzzm zza;
    private final long zzb;
    private final long zzc;
    private final long zzd;
    private final long zze;
    private final long zzf;
    private final HashMap zzg;
    private long zzh;

    public zzij() {
        zzzm zzzmVar = new zzzm(true, 65536);
        zzl(1000, 0, "bufferForPlaybackMs", MBridgeConstans.ENDCARD_URL_TYPE_PL);
        zzl(2000, 0, "bufferForPlaybackAfterRebufferMs", MBridgeConstans.ENDCARD_URL_TYPE_PL);
        zzl(50000, 1000, "minBufferMs", "bufferForPlaybackMs");
        zzl(50000, 2000, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        zzl(50000, 50000, "maxBufferMs", "minBufferMs");
        zzl(0, 0, "backBufferDurationMs", MBridgeConstans.ENDCARD_URL_TYPE_PL);
        this.zza = zzzmVar;
        this.zzb = zzex.zzs(ServiceProvider.SCAR_SIGNALS_FETCH_TIMEOUT);
        this.zzc = zzex.zzs(ServiceProvider.SCAR_SIGNALS_FETCH_TIMEOUT);
        this.zzd = zzex.zzs(1000L);
        this.zze = zzex.zzs(2000L);
        this.zzf = zzex.zzs(0L);
        this.zzg = new HashMap();
        this.zzh = -1L;
    }

    private static void zzl(int i10, int i11, String str, String str2) {
        boolean z10;
        String str3 = str + " cannot be less than " + str2;
        if (i10 >= i11) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zze(z10, str3);
    }

    private final void zzm(zzph zzphVar) {
        if (this.zzg.remove(zzphVar) != null) {
            zzn();
        }
    }

    private final void zzn() {
        if (this.zzg.isEmpty()) {
            this.zza.zze();
        } else {
            this.zza.zzf(zza());
        }
    }

    @VisibleForTesting
    final int zza() {
        int i10 = 0;
        for (zzih zzihVar : this.zzg.values()) {
            i10 += zzihVar.zzb;
        }
        return i10;
    }

    @Override // com.google.android.gms.internal.ads.zzkx
    public final long zzb(zzph zzphVar) {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzkx
    public final void zzc(zzph zzphVar) {
        long id2 = Thread.currentThread().getId();
        long j10 = this.zzh;
        boolean z10 = true;
        if (j10 != -1 && j10 != id2) {
            z10 = false;
        }
        zzdd.zzg(z10, "Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper).");
        this.zzh = id2;
        HashMap hashMap = this.zzg;
        if (!hashMap.containsKey(zzphVar)) {
            hashMap.put(zzphVar, new zzih(null));
        }
        zzih zzihVar = (zzih) hashMap.get(zzphVar);
        zzihVar.getClass();
        zzihVar.zzb = C.DEFAULT_VIDEO_BUFFER_SIZE;
        zzihVar.zza = false;
    }

    @Override // com.google.android.gms.internal.ads.zzkx
    public final void zzd(zzph zzphVar) {
        zzm(zzphVar);
        if (this.zzg.isEmpty()) {
            this.zzh = -1L;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkx
    public final void zze(zzph zzphVar) {
        zzm(zzphVar);
    }

    @Override // com.google.android.gms.internal.ads.zzkx
    public final void zzf(zzkw zzkwVar, zzxk zzxkVar, zzyw[] zzywVarArr) {
        zzih zzihVar = (zzih) this.zzg.get(zzkwVar.zza);
        zzihVar.getClass();
        int length = zzywVarArr.length;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int i12 = C.DEFAULT_VIDEO_BUFFER_SIZE;
            if (i10 < length) {
                zzyw zzywVar = zzywVarArr[i10];
                if (zzywVar != null) {
                    switch (zzywVar.zzc().zzc) {
                        case -1:
                        case 1:
                            break;
                        case 0:
                            i12 = 144310272;
                            break;
                        case 2:
                            i12 = 131072000;
                            break;
                        case 3:
                        case 5:
                        default:
                            i12 = 131072;
                            break;
                        case 4:
                            i12 = 26214400;
                            break;
                    }
                    i11 += i12;
                }
                i10++;
            } else {
                zzihVar.zzb = Math.max((int) C.DEFAULT_VIDEO_BUFFER_SIZE, i11);
                zzn();
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkx
    public final boolean zzg(zzph zzphVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzkx
    public final boolean zzh(zzkw zzkwVar) {
        zzih zzihVar = (zzih) this.zzg.get(zzkwVar.zza);
        zzihVar.getClass();
        int zza = this.zza.zza();
        int zza2 = zza();
        long j10 = this.zzb;
        float f10 = zzkwVar.zzc;
        if (f10 > 1.0f) {
            j10 = Math.min(zzex.zzq(j10, f10), this.zzc);
        }
        long j11 = zzkwVar.zzb;
        int i10 = (j11 > Math.max(j10, 500000L) ? 1 : (j11 == Math.max(j10, 500000L) ? 0 : -1));
        boolean z10 = false;
        if (i10 < 0) {
            if (zza < zza2) {
                z10 = true;
            }
            zzihVar.zza = z10;
            if (!z10 && j11 < 500000) {
                zzea.zzf("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j11 >= this.zzc || zza >= zza2) {
            zzihVar.zza = false;
        }
        return zzihVar.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzkx
    public final boolean zzi(zzbl zzblVar, zzvh zzvhVar, long j10) {
        for (zzih zzihVar : this.zzg.values()) {
            if (zzihVar.zza) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzkx
    public final boolean zzj(zzkw zzkwVar) {
        long j10;
        boolean z10 = zzkwVar.zzd;
        long zzr = zzex.zzr(zzkwVar.zzb, zzkwVar.zzc);
        if (z10) {
            j10 = this.zze;
        } else {
            j10 = this.zzd;
        }
        long j11 = zzkwVar.zze;
        if (j11 != -9223372036854775807L) {
            j10 = Math.min(j11 / 2, j10);
        }
        if (j10 > 0 && zzr < j10 && this.zza.zza() < zza()) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzkx
    public final zzzm zzk() {
        return this.zza;
    }
}
