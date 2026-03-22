package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.metrics.LogSessionId;
import android.media.metrics.MediaMetricsManager;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackSession;
import android.media.metrics.TrackChangeEvent;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.huawei.hms.support.api.entity.auth.AuthCode;
import java.io.IOException;
import java.util.HashMap;
import java.util.Objects;
import java.util.concurrent.Executor;
import p5.i3;
import p5.m2;
import p5.m3;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@RequiresApi(31)
/* loaded from: classes4.dex */
public final class zzpd implements zzmr, zzpe {
    private boolean zzA;
    private final Context zza;
    private final zzpf zzc;
    private final PlaybackSession zzd;
    @Nullable
    private String zzj;
    @Nullable
    private PlaybackMetrics.Builder zzk;
    private int zzl;
    @Nullable
    private zzba zzo;
    @Nullable
    private zzpc zzp;
    @Nullable
    private zzpc zzq;
    @Nullable
    private zzpc zzr;
    @Nullable
    private zzz zzs;
    @Nullable
    private zzz zzt;
    @Nullable
    private zzz zzu;
    private boolean zzv;
    private boolean zzw;
    private int zzx;
    private int zzy;
    private int zzz;
    private final Executor zzb = zzde.zza();
    private final zzbk zzf = new zzbk();
    private final zzbj zzg = new zzbj();
    private final HashMap zzi = new HashMap();
    private final HashMap zzh = new HashMap();
    private final long zze = SystemClock.elapsedRealtime();
    private int zzm = 0;
    private int zzn = 0;

    private zzpd(Context context, PlaybackSession playbackSession) {
        this.zza = context.getApplicationContext();
        this.zzd = playbackSession;
        zzow zzowVar = new zzow(zzow.zza);
        this.zzc = zzowVar;
        zzowVar.zzh(this);
    }

    private final void zzA(zzbl zzblVar, @Nullable zzvh zzvhVar) {
        int zza;
        PlaybackMetrics.Builder builder = this.zzk;
        if (zzvhVar != null && (zza = zzblVar.zza(zzvhVar.zza)) != -1) {
            zzbj zzbjVar = this.zzg;
            int i10 = 0;
            zzblVar.zzd(zza, zzbjVar, false);
            zzbk zzbkVar = this.zzf;
            zzblVar.zze(zzbjVar.zzc, zzbkVar, 0L);
            zzak zzakVar = zzbkVar.zzd.zzb;
            int i11 = 2;
            if (zzakVar != null) {
                int zzo = zzex.zzo(zzakVar.zza);
                if (zzo != 0) {
                    if (zzo != 1) {
                        if (zzo != 2) {
                            i10 = 1;
                        } else {
                            i10 = 4;
                        }
                    } else {
                        i10 = 5;
                    }
                } else {
                    i10 = 3;
                }
            }
            builder.setStreamType(i10);
            long j10 = zzbkVar.zzm;
            if (j10 != -9223372036854775807L && !zzbkVar.zzk && !zzbkVar.zzi && !zzbkVar.zzb()) {
                builder.setMediaDurationMillis(zzex.zzv(j10));
            }
            if (true != zzbkVar.zzb()) {
                i11 = 1;
            }
            builder.setPlaybackType(i11);
            this.zzA = true;
        }
    }

    private final void zzB(long j10, @Nullable zzz zzzVar, int i10) {
        int i11;
        if (Objects.equals(this.zzs, zzzVar)) {
            return;
        }
        if (this.zzs == null) {
            i11 = 1;
        } else {
            i11 = 0;
        }
        int i12 = i11;
        this.zzs = zzzVar;
        zzC(1, j10, zzzVar, i12);
    }

    private final void zzC(int i10, long j10, @Nullable zzz zzzVar, int i11) {
        TrackChangeEvent.Builder timeSinceCreatedMillis;
        final TrackChangeEvent build;
        int i12;
        String str;
        timeSinceCreatedMillis = m2.a(i10).setTimeSinceCreatedMillis(j10 - this.zze);
        if (zzzVar != null) {
            timeSinceCreatedMillis.setTrackState(1);
            if (i11 != 1) {
                i12 = 1;
            } else {
                i12 = 2;
            }
            timeSinceCreatedMillis.setTrackChangeReason(i12);
            String str2 = zzzVar.zzn;
            if (str2 != null) {
                timeSinceCreatedMillis.setContainerMimeType(str2);
            }
            String str3 = zzzVar.zzo;
            if (str3 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str3);
            }
            String str4 = zzzVar.zzk;
            if (str4 != null) {
                timeSinceCreatedMillis.setCodecName(str4);
            }
            int i13 = zzzVar.zzj;
            if (i13 != -1) {
                timeSinceCreatedMillis.setBitrate(i13);
            }
            int i14 = zzzVar.zzv;
            if (i14 != -1) {
                timeSinceCreatedMillis.setWidth(i14);
            }
            int i15 = zzzVar.zzw;
            if (i15 != -1) {
                timeSinceCreatedMillis.setHeight(i15);
            }
            int i16 = zzzVar.zzG;
            if (i16 != -1) {
                timeSinceCreatedMillis.setChannelCount(i16);
            }
            int i17 = zzzVar.zzH;
            if (i17 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i17);
            }
            String str5 = zzzVar.zzd;
            if (str5 != null) {
                String str6 = zzex.zza;
                String[] split = str5.split("-", -1);
                String str7 = split[0];
                if (split.length >= 2) {
                    str = split[1];
                } else {
                    str = null;
                }
                Pair create = Pair.create(str7, str);
                timeSinceCreatedMillis.setLanguage((String) create.first);
                Object obj = create.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f10 = zzzVar.zzz;
            if (f10 != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f10);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.zzA = true;
        build = timeSinceCreatedMillis.build();
        this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzox
            @Override // java.lang.Runnable
            public final void run() {
                zzpd.this.zzd.reportTrackChangeEvent(build);
            }
        });
    }

    private final boolean zzD(@Nullable zzpc zzpcVar) {
        if (zzpcVar != null) {
            if (zzpcVar.zzc.equals(this.zzc.zze())) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Nullable
    public static zzpd zzb(Context context) {
        PlaybackSession createPlaybackSession;
        MediaMetricsManager a10 = m3.a(context.getSystemService("media_metrics"));
        if (a10 != null) {
            createPlaybackSession = a10.createPlaybackSession();
            return new zzpd(context, createPlaybackSession);
        }
        return null;
    }

    @SuppressLint({"SwitchIntDef"})
    private static int zzw(int i10) {
        switch (zzex.zzl(i10)) {
            case 6002:
                return 24;
            case 6003:
                return 28;
            case AuthCode.StatusCode.PERMISSION_NOT_EXIST /* 6004 */:
                return 25;
            case AuthCode.StatusCode.PERMISSION_NOT_AUTHORIZED /* 6005 */:
                return 26;
            default:
                return 27;
        }
    }

    private final void zzx() {
        long longValue;
        long longValue2;
        int i10;
        final PlaybackMetrics build;
        PlaybackMetrics.Builder builder = this.zzk;
        if (builder != null && this.zzA) {
            builder.setAudioUnderrunCount(this.zzz);
            this.zzk.setVideoFramesDropped(this.zzx);
            this.zzk.setVideoFramesPlayed(this.zzy);
            Long l10 = (Long) this.zzh.get(this.zzj);
            PlaybackMetrics.Builder builder2 = this.zzk;
            if (l10 == null) {
                longValue = 0;
            } else {
                longValue = l10.longValue();
            }
            builder2.setNetworkTransferDurationMillis(longValue);
            Long l11 = (Long) this.zzi.get(this.zzj);
            PlaybackMetrics.Builder builder3 = this.zzk;
            if (l11 == null) {
                longValue2 = 0;
            } else {
                longValue2 = l11.longValue();
            }
            builder3.setNetworkBytesRead(longValue2);
            PlaybackMetrics.Builder builder4 = this.zzk;
            if (l11 != null && l11.longValue() > 0) {
                i10 = 1;
            } else {
                i10 = 0;
            }
            builder4.setStreamSource(i10);
            build = this.zzk.build();
            this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpa
                @Override // java.lang.Runnable
                public final void run() {
                    zzpd.this.zzd.reportPlaybackMetrics(build);
                }
            });
        }
        this.zzk = null;
        this.zzj = null;
        this.zzz = 0;
        this.zzx = 0;
        this.zzy = 0;
        this.zzs = null;
        this.zzt = null;
        this.zzu = null;
        this.zzA = false;
    }

    private final void zzy(long j10, @Nullable zzz zzzVar, int i10) {
        int i11;
        if (Objects.equals(this.zzt, zzzVar)) {
            return;
        }
        if (this.zzt == null) {
            i11 = 1;
        } else {
            i11 = 0;
        }
        int i12 = i11;
        this.zzt = zzzVar;
        zzC(0, j10, zzzVar, i12);
    }

    private final void zzz(long j10, @Nullable zzz zzzVar, int i10) {
        int i11;
        if (Objects.equals(this.zzu, zzzVar)) {
            return;
        }
        if (this.zzu == null) {
            i11 = 1;
        } else {
            i11 = 0;
        }
        int i12 = i11;
        this.zzu = zzzVar;
        zzC(2, j10, zzzVar, i12);
    }

    public final LogSessionId zza() {
        LogSessionId sessionId;
        sessionId = this.zzd.getSessionId();
        return sessionId;
    }

    @Override // com.google.android.gms.internal.ads.zzmr
    public final void zzf(zzmp zzmpVar, int i10, long j10, long j11) {
        long longValue;
        zzvh zzvhVar = zzmpVar.zzd;
        if (zzvhVar != null) {
            String zzf = this.zzc.zzf(zzmpVar.zzb, zzvhVar);
            HashMap hashMap = this.zzi;
            Long l10 = (Long) hashMap.get(zzf);
            HashMap hashMap2 = this.zzh;
            Long l11 = (Long) hashMap2.get(zzf);
            long j12 = 0;
            if (l10 == null) {
                longValue = 0;
            } else {
                longValue = l10.longValue();
            }
            hashMap.put(zzf, Long.valueOf(longValue + j10));
            if (l11 != null) {
                j12 = l11.longValue();
            }
            hashMap2.put(zzf, Long.valueOf(j12 + i10));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmr
    public final void zzg(zzmp zzmpVar, zzvd zzvdVar) {
        zzvh zzvhVar = zzmpVar.zzd;
        if (zzvhVar != null) {
            zzz zzzVar = zzvdVar.zzb;
            zzzVar.getClass();
            zzpc zzpcVar = new zzpc(zzzVar, 0, this.zzc.zzf(zzmpVar.zzb, zzvhVar));
            int i10 = zzvdVar.zza;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            return;
                        }
                        this.zzr = zzpcVar;
                        return;
                    }
                } else {
                    this.zzq = zzpcVar;
                    return;
                }
            }
            this.zzp = zzpcVar;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:135:0x01e8, code lost:
        if (r12 != 1) goto L144;
     */
    @Override // com.google.android.gms.internal.ads.zzmr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzi(com.google.android.gms.internal.ads.zzbh r20, com.google.android.gms.internal.ads.zzmq r21) {
        /*
            Method dump skipped, instructions count: 996
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpd.zzi(com.google.android.gms.internal.ads.zzbh, com.google.android.gms.internal.ads.zzmq):void");
    }

    @Override // com.google.android.gms.internal.ads.zzmr
    public final void zzl(zzmp zzmpVar, zzba zzbaVar) {
        this.zzo = zzbaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzmr
    public final void zzm(zzmp zzmpVar, zzbf zzbfVar, zzbf zzbfVar2, int i10) {
        if (i10 == 1) {
            this.zzv = true;
            i10 = 1;
        }
        this.zzl = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzmr
    public final void zzo(zzmp zzmpVar, zzid zzidVar) {
        this.zzx += zzidVar.zzg;
        this.zzy += zzidVar.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzmr
    public final void zzq(zzmp zzmpVar, zzcd zzcdVar) {
        zzpc zzpcVar = this.zzp;
        if (zzpcVar != null) {
            zzz zzzVar = zzpcVar.zza;
            if (zzzVar.zzw == -1) {
                zzx zzb = zzzVar.zzb();
                zzb.zzam(zzcdVar.zzb);
                zzb.zzQ(zzcdVar.zzc);
                this.zzp = new zzpc(zzb.zzan(), 0, zzpcVar.zzc);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpe
    public final void zzu(zzmp zzmpVar, String str) {
        PlaybackMetrics.Builder playerName;
        PlaybackMetrics.Builder playerVersion;
        zzvh zzvhVar = zzmpVar.zzd;
        if (zzvhVar != null && zzvhVar.zzb()) {
            return;
        }
        zzx();
        this.zzj = str;
        playerName = i3.a().setPlayerName("AndroidXMedia3");
        playerVersion = playerName.setPlayerVersion("1.8.0-alpha01");
        this.zzk = playerVersion;
        zzA(zzmpVar.zzb, zzvhVar);
    }

    @Override // com.google.android.gms.internal.ads.zzpe
    public final void zzv(zzmp zzmpVar, String str, boolean z10) {
        zzvh zzvhVar = zzmpVar.zzd;
        if ((zzvhVar == null || !zzvhVar.zzb()) && str.equals(this.zzj)) {
            zzx();
        }
        this.zzh.remove(str);
        this.zzi.remove(str);
    }

    @Override // com.google.android.gms.internal.ads.zzmr
    public final /* synthetic */ void zzk(zzmp zzmpVar, int i10) {
    }

    @Override // com.google.android.gms.internal.ads.zzmr
    public final /* synthetic */ void zze(zzmp zzmpVar, zzz zzzVar, zzie zzieVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzmr
    public final /* synthetic */ void zzh(zzmp zzmpVar, int i10, long j10) {
    }

    @Override // com.google.android.gms.internal.ads.zzmr
    public final /* synthetic */ void zzn(zzmp zzmpVar, Object obj, long j10) {
    }

    @Override // com.google.android.gms.internal.ads.zzmr
    public final /* synthetic */ void zzp(zzmp zzmpVar, zzz zzzVar, zzie zzieVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzmr
    public final void zzj(zzmp zzmpVar, zzuy zzuyVar, zzvd zzvdVar, IOException iOException, boolean z10) {
    }
}
