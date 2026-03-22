package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.math.RoundingMode;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzaos implements zzaot {
    private static final int[] zza = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};
    private static final int[] zzb = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, 173, 190, 209, 230, 253, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS, 307, 337, 371, 408, 449, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_ABR, 544, 598, 658, 724, 796, 876, 963, MediaPlayer.MEDIA_PLAYER_OPTION_HURRY_INTERVAL, DataLoaderHelper.DATALOADER_KEY_ENABLE_LOADER_LOG_EXTRACT_URLS, 1282, TTVideoEngineInterface.PLAYER_STRATEGY_STRING_PLAY_RANGE_CONFIG, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_SELECT_USE_OBJECT, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};
    private final zzady zzc;
    private final zzafb zzd;
    private final zzaow zze;
    private final int zzf;
    private final byte[] zzg;
    private final zzen zzh;
    private final int zzi;
    private final zzz zzj;
    private int zzk;
    private long zzl;
    private int zzm;
    private long zzn;

    public zzaos(zzady zzadyVar, zzafb zzafbVar, zzaow zzaowVar) throws zzaz {
        this.zzc = zzadyVar;
        this.zzd = zzafbVar;
        this.zze = zzaowVar;
        int max = Math.max(1, zzaowVar.zzc / 10);
        this.zzi = max;
        zzen zzenVar = new zzen(zzaowVar.zzf);
        zzenVar.zzk();
        int zzk = zzenVar.zzk();
        this.zzf = zzk;
        int i10 = zzaowVar.zzb;
        int i11 = zzaowVar.zzd;
        int i12 = (((i11 - (i10 * 4)) * 8) / (zzaowVar.zze * i10)) + 1;
        if (zzk == i12) {
            String str = zzex.zza;
            int i13 = ((max + zzk) - 1) / zzk;
            this.zzg = new byte[i11 * i13];
            this.zzh = new zzen(i13 * (zzk + zzk) * i10);
            int i14 = ((zzaowVar.zzc * zzaowVar.zzd) * 8) / zzk;
            zzx zzxVar = new zzx();
            zzxVar.zzah(MimeTypes.AUDIO_RAW);
            zzxVar.zzC(i14);
            zzxVar.zzac(i14);
            zzxVar.zzX((max + max) * i10);
            zzxVar.zzD(zzaowVar.zzb);
            zzxVar.zzai(zzaowVar.zzc);
            zzxVar.zzab(2);
            this.zzj = zzxVar.zzan();
            return;
        }
        throw zzaz.zza("Expected frames per block: " + i12 + "; got: " + zzk, null);
    }

    private final int zzd(int i10) {
        int i11 = this.zze.zzb;
        return i10 / (i11 + i11);
    }

    private final int zze(int i10) {
        return (i10 + i10) * this.zze.zzb;
    }

    private final void zzf(int i10) {
        long zzu = this.zzl + zzex.zzu(this.zzn, 1000000L, this.zze.zzc, RoundingMode.DOWN);
        int zze = zze(i10);
        this.zzd.zzt(zzu, 1, zze, this.zzm - zze, null);
        this.zzn += i10;
        this.zzm -= zze;
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void zza(int i10, long j10) {
        zzaoz zzaozVar = new zzaoz(this.zze, this.zzf, i10, j10);
        this.zzc.zzP(zzaozVar);
        zzafb zzafbVar = this.zzd;
        zzafbVar.zzm(this.zzj);
        zzafbVar.zzl(zzaozVar.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void zzb(long j10) {
        this.zzk = 0;
        this.zzl = j10;
        this.zzm = 0;
        this.zzn = 0L;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0027  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x003d -> B:4:0x0022). Please submit an issue!!! */
    @Override // com.google.android.gms.internal.ads.zzaot
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzc(com.google.android.gms.internal.ads.zzadw r26, long r27) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaos.zzc(com.google.android.gms.internal.ads.zzadw, long):boolean");
    }
}
