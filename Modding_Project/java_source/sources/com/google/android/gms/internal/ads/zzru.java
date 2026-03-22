package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.Pair;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.applovin.sdk.AppLovinEventTypes;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzru extends zztp implements zzlb {
    private final Context zzb;
    private final zzqg zzc;
    private final zzqo zzd;
    @Nullable
    private final zztb zze;
    private int zzf;
    private boolean zzg;
    private boolean zzh;
    @Nullable
    private zzz zzi;
    @Nullable
    private zzz zzj;
    private long zzk;
    private boolean zzl;
    private boolean zzm;
    private boolean zzn;
    private int zzo;
    private boolean zzp;
    private long zzq;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzru(Context context, zztd zztdVar, zztr zztrVar, boolean z10, @Nullable Handler handler, @Nullable zzqh zzqhVar, zzqo zzqoVar) {
        super(1, zztdVar, zztrVar, false, 44100.0f);
        zztb zztbVar;
        if (Build.VERSION.SDK_INT >= 35) {
            zztbVar = new zztb(zzta.zza);
        } else {
            zztbVar = null;
        }
        this.zzb = context.getApplicationContext();
        this.zzd = zzqoVar;
        this.zze = zztbVar;
        this.zzo = -1000;
        this.zzc = new zzqg(handler, zzqhVar);
        this.zzq = -9223372036854775807L;
        zzqoVar.zzr(new zzrs(this, null));
    }

    public static /* bridge */ /* synthetic */ zzqg zzah(zzru zzruVar) {
        return zzruVar.zzc;
    }

    public static /* bridge */ /* synthetic */ zztb zzai(zzru zzruVar) {
        return zzruVar.zze;
    }

    public static /* bridge */ /* synthetic */ void zzal(zzru zzruVar, boolean z10) {
        zzruVar.zzn = true;
    }

    public static /* synthetic */ void zzam(zzru zzruVar) {
        zzruVar.zzC();
    }

    private final int zzba(zzti zztiVar, zzz zzzVar) {
        "OMX.google.raw.decoder".equals(zztiVar.zza);
        return zzzVar.zzp;
    }

    private static List zzbb(zztr zztrVar, zzz zzzVar, boolean z10, zzqo zzqoVar) throws zztw {
        zzti zza;
        if (zzzVar.zzo == null) {
            return zzfyq.zzn();
        }
        if (zzqoVar.zzB(zzzVar) && (zza = zzuc.zza()) != null) {
            return zzfyq.zzo(zza);
        }
        return zzuc.zze(zztrVar, zzzVar, false, false);
    }

    private final void zzbc() {
        long zzc = this.zzd.zzc(zzX());
        if (zzc != Long.MIN_VALUE) {
            if (!this.zzl) {
                zzc = Math.max(this.zzk, zzc);
            }
            this.zzk = zzc;
            this.zzl = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zztp, com.google.android.gms.internal.ads.zzic
    public final void zzA(long j10, boolean z10) throws zzin {
        super.zzA(j10, z10);
        this.zzd.zzg();
        this.zzk = j10;
        this.zzq = -9223372036854775807L;
        this.zzn = false;
        this.zzl = true;
    }

    @Override // com.google.android.gms.internal.ads.zzic
    protected final void zzB() {
        zztb zztbVar;
        this.zzd.zzl();
        if (Build.VERSION.SDK_INT >= 35 && (zztbVar = this.zze) != null) {
            zztbVar.zzb();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zztp, com.google.android.gms.internal.ads.zzic
    public final void zzD() {
        this.zzn = false;
        this.zzq = -9223372036854775807L;
        try {
            super.zzD();
            if (this.zzm) {
                this.zzm = false;
                this.zzd.zzm();
            }
        } catch (Throwable th2) {
            if (this.zzm) {
                this.zzm = false;
                this.zzd.zzm();
            }
            throw th2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzic
    protected final void zzE() {
        this.zzd.zzj();
        this.zzp = true;
    }

    @Override // com.google.android.gms.internal.ads.zzic
    protected final void zzF() {
        zzbc();
        this.zzp = false;
        this.zzd.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzma, com.google.android.gms.internal.ads.zzmd
    public final String zzV() {
        return "MediaCodecAudioRenderer";
    }

    @Override // com.google.android.gms.internal.ads.zztp, com.google.android.gms.internal.ads.zzma
    public final boolean zzX() {
        if (super.zzX() && this.zzd.zzA()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zztp, com.google.android.gms.internal.ads.zzma
    public final boolean zzY() {
        if (!this.zzd.zzz() && !super.zzY()) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final long zza() {
        if (zzcU() == 2) {
            zzbc();
        }
        return this.zzk;
    }

    @Override // com.google.android.gms.internal.ads.zztp
    protected final float zzaa(float f10, zzz zzzVar, zzz[] zzzVarArr) {
        int i10 = -1;
        for (zzz zzzVar2 : zzzVarArr) {
            int i11 = zzzVar2.zzH;
            if (i11 != -1) {
                i10 = Math.max(i10, i11);
            }
        }
        if (i10 == -1) {
            return -1.0f;
        }
        return i10 * f10;
    }

    @Override // com.google.android.gms.internal.ads.zztp
    protected final int zzab(zztr zztrVar, zzz zzzVar) throws zztw {
        int i10;
        boolean z10;
        int i11;
        int i12;
        String str = zzzVar.zzo;
        int i13 = 128;
        if (!zzay.zzh(str)) {
            return 128;
        }
        int i14 = zzzVar.zzN;
        boolean zzaY = zztp.zzaY(zzzVar);
        int i15 = 1;
        if (!zzaY || (i14 != 0 && zzuc.zza() == null)) {
            i10 = 0;
        } else {
            zzqo zzqoVar = this.zzd;
            zzps zze = zzqoVar.zze(zzzVar);
            if (!zze.zzb) {
                i10 = 0;
            } else {
                if (true != zze.zzc) {
                    i10 = 512;
                } else {
                    i10 = 1536;
                }
                if (zze.zzd) {
                    i10 |= 2048;
                }
            }
            if (zzqoVar.zzB(zzzVar)) {
                return i10 | 172;
            }
        }
        if (!MimeTypes.AUDIO_RAW.equals(str) || this.zzd.zzB(zzzVar)) {
            zzqo zzqoVar2 = this.zzd;
            if (zzqoVar2.zzB(zzex.zzA(2, zzzVar.zzG, zzzVar.zzH))) {
                List zzbb = zzbb(zztrVar, zzzVar, false, zzqoVar2);
                if (!zzbb.isEmpty()) {
                    if (!zzaY) {
                        i15 = 2;
                    } else {
                        zzti zztiVar = (zzti) zzbb.get(0);
                        boolean zzf = zztiVar.zzf(zzzVar);
                        if (!zzf) {
                            for (int i16 = 1; i16 < zzbb.size(); i16++) {
                                zzti zztiVar2 = (zzti) zzbb.get(i16);
                                if (zztiVar2.zzf(zzzVar)) {
                                    z10 = false;
                                    zzf = true;
                                    zztiVar = zztiVar2;
                                    break;
                                }
                            }
                        }
                        z10 = true;
                        if (true != zzf) {
                            i11 = 3;
                        } else {
                            i11 = 4;
                        }
                        int i17 = 8;
                        if (zzf && zztiVar.zzg(zzzVar)) {
                            i17 = 16;
                        }
                        if (true != zztiVar.zzg) {
                            i12 = 0;
                        } else {
                            i12 = 64;
                        }
                        if (true != z10) {
                            i13 = 0;
                        }
                        return i11 | i17 | 32 | i12 | i13 | i10;
                    }
                }
            }
        }
        return i15 | 128;
    }

    @Override // com.google.android.gms.internal.ads.zztp
    protected final long zzac(long j10, long j11, boolean z10) {
        float f10;
        if (this.zzq != -9223372036854775807L) {
            long zzb = this.zzd.zzb();
            if (zzb != -9223372036854775807L) {
                float min = (float) Math.min(zzb, this.zzq - j10);
                if (zzc() != null) {
                    f10 = zzc().zzb;
                } else {
                    f10 = 1.0f;
                }
                long j12 = (min / f10) / 2.0f;
                if (this.zzp) {
                    j12 -= zzex.zzs(zzcX().zzb()) - j11;
                }
                return Math.max(10000L, j12);
            }
        }
        return 10000L;
    }

    @Override // com.google.android.gms.internal.ads.zztp
    protected final zzie zzad(zzti zztiVar, zzz zzzVar, zzz zzzVar2) {
        int i10;
        int i11;
        zzie zzc = zztiVar.zzc(zzzVar, zzzVar2);
        int i12 = zzc.zze;
        if (zzaS(zzzVar2)) {
            i12 |= 32768;
        }
        if (zzba(zztiVar, zzzVar2) > this.zzf) {
            i12 |= 64;
        }
        String str = zztiVar.zza;
        if (i12 != 0) {
            i11 = i12;
            i10 = 0;
        } else {
            i10 = zzc.zzd;
            i11 = 0;
        }
        return new zzie(str, zzzVar, zzzVar2, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zztp
    @Nullable
    public final zzie zzae(zzkv zzkvVar) throws zzin {
        zzz zzzVar = zzkvVar.zza;
        zzzVar.getClass();
        this.zzi = zzzVar;
        zzie zzae = super.zzae(zzkvVar);
        this.zzc.zzw(zzzVar, zzae);
        return zzae;
    }

    @Override // com.google.android.gms.internal.ads.zztp
    protected final zztc zzaj(zzti zztiVar, zzz zzzVar, @Nullable MediaCrypto mediaCrypto, float f10) {
        boolean z10;
        zzz zzzVar2;
        zzz[] zzU = zzU();
        int length = zzU.length;
        int zzba = zzba(zztiVar, zzzVar);
        if (length != 1) {
            for (zzz zzzVar3 : zzU) {
                if (zztiVar.zzc(zzzVar, zzzVar3).zzd != 0) {
                    zzba = Math.max(zzba, zzba(zztiVar, zzzVar3));
                }
            }
        }
        this.zzf = zzba;
        String str = zztiVar.zza;
        int i10 = Build.VERSION.SDK_INT;
        this.zzg = false;
        if (str.equals("OMX.google.opus.decoder") || str.equals("c2.android.opus.decoder") || str.equals("OMX.google.vorbis.decoder") || str.equals("c2.android.vorbis.decoder")) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.zzh = z10;
        String str2 = zztiVar.zzc;
        int i11 = this.zzf;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str2);
        int i12 = zzzVar.zzG;
        mediaFormat.setInteger(com.ss.ttm.player.MediaFormat.KEY_CHANNEL_COUNT, i12);
        int i13 = zzzVar.zzH;
        mediaFormat.setInteger(com.ss.ttm.player.MediaFormat.KEY_SAMPLE_RATE, i13);
        zzed.zzb(mediaFormat, zzzVar.zzr);
        zzed.zza(mediaFormat, "max-input-size", i11);
        mediaFormat.setInteger(HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, 0);
        if (f10 != -1.0f) {
            mediaFormat.setFloat("operating-rate", f10);
        }
        String str3 = zzzVar.zzo;
        if ("audio/ac4".equals(str3)) {
            Pair zza = zzdk.zza(zzzVar);
            if (zza != null) {
                zzed.zza(mediaFormat, "profile", ((Integer) zza.first).intValue());
                zzed.zza(mediaFormat, AppLovinEventTypes.USER_COMPLETED_LEVEL, ((Integer) zza.second).intValue());
            }
            if (i10 <= 28) {
                mediaFormat.setInteger("ac4-is-sync", 1);
            }
        }
        if (this.zzd.zza(zzex.zzA(4, i12, i13)) == 2) {
            mediaFormat.setInteger("pcm-encoding", 4);
        }
        if (i10 >= 32) {
            mediaFormat.setInteger("max-output-channel-count", 99);
        }
        if (i10 >= 35) {
            mediaFormat.setInteger("importance", Math.max(0, -this.zzo));
        }
        if (MimeTypes.AUDIO_RAW.equals(zztiVar.zzb) && !MimeTypes.AUDIO_RAW.equals(str3)) {
            zzzVar2 = zzzVar;
        } else {
            zzzVar2 = null;
        }
        this.zzj = zzzVar2;
        return zztc.zza(zztiVar, mediaFormat, zzzVar, null, this.zze);
    }

    @Override // com.google.android.gms.internal.ads.zztp
    protected final List zzak(zztr zztrVar, zzz zzzVar, boolean z10) throws zztw {
        return zzuc.zzf(zzbb(zztrVar, zzzVar, false, this.zzd), zzzVar);
    }

    @Override // com.google.android.gms.internal.ads.zztp
    protected final void zzan(zzhs zzhsVar) {
        zzz zzzVar;
        if (Build.VERSION.SDK_INT >= 29 && (zzzVar = zzhsVar.zza) != null && Objects.equals(zzzVar.zzo, MimeTypes.AUDIO_OPUS) && zzaR()) {
            ByteBuffer byteBuffer = zzhsVar.zzf;
            byteBuffer.getClass();
            zzz zzzVar2 = zzhsVar.zza;
            zzzVar2.getClass();
            int i10 = zzzVar2.zzJ;
            if (byteBuffer.remaining() == 8) {
                this.zzd.zzs(i10, (int) ((byteBuffer.order(ByteOrder.LITTLE_ENDIAN).getLong() * 48000) / 1000000000));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zztp
    protected final void zzao(Exception exc) {
        zzea.zzd("MediaCodecAudioRenderer", "Audio codec error", exc);
        this.zzc.zzn(exc);
    }

    @Override // com.google.android.gms.internal.ads.zztp
    protected final void zzap(String str, zztc zztcVar, long j10, long j11) {
        this.zzc.zzs(str, j10, j11);
    }

    @Override // com.google.android.gms.internal.ads.zztp
    protected final void zzaq(String str) {
        this.zzc.zzt(str);
    }

    @Override // com.google.android.gms.internal.ads.zztp
    protected final void zzar(zzz zzzVar, @Nullable MediaFormat mediaFormat) throws zzin {
        int i10;
        int i11;
        zzz zzzVar2 = this.zzj;
        int[] iArr = null;
        boolean z10 = true;
        if (zzzVar2 != null) {
            zzzVar = zzzVar2;
        } else if (zzaF() != null) {
            mediaFormat.getClass();
            if (MimeTypes.AUDIO_RAW.equals(zzzVar.zzo)) {
                i10 = zzzVar.zzI;
            } else if (mediaFormat.containsKey("pcm-encoding")) {
                i10 = mediaFormat.getInteger("pcm-encoding");
            } else if (mediaFormat.containsKey("v-bits-per-sample")) {
                i10 = zzex.zzn(mediaFormat.getInteger("v-bits-per-sample"), ByteOrder.LITTLE_ENDIAN);
            } else {
                i10 = 2;
            }
            zzx zzxVar = new zzx();
            zzxVar.zzah(MimeTypes.AUDIO_RAW);
            zzxVar.zzab(i10);
            zzxVar.zzM(zzzVar.zzJ);
            zzxVar.zzN(zzzVar.zzK);
            zzxVar.zzaa(zzzVar.zzl);
            zzxVar.zzS(zzzVar.zza);
            zzxVar.zzU(zzzVar.zzb);
            zzxVar.zzV(zzzVar.zzc);
            zzxVar.zzW(zzzVar.zzd);
            zzxVar.zzaj(zzzVar.zze);
            zzxVar.zzaf(zzzVar.zzf);
            zzxVar.zzD(mediaFormat.getInteger(com.ss.ttm.player.MediaFormat.KEY_CHANNEL_COUNT));
            zzxVar.zzai(mediaFormat.getInteger(com.ss.ttm.player.MediaFormat.KEY_SAMPLE_RATE));
            zzz zzan = zzxVar.zzan();
            if (this.zzg && zzan.zzG == 6 && (i11 = zzzVar.zzG) < 6) {
                iArr = new int[i11];
                for (int i12 = 0; i12 < i11; i12++) {
                    iArr[i12] = i12;
                }
            } else if (this.zzh) {
                int i13 = zzan.zzG;
                if (i13 == 3) {
                    iArr = new int[]{0, 2, 1};
                } else if (i13 == 5) {
                    iArr = new int[]{0, 2, 1, 3, 4};
                } else if (i13 == 6) {
                    iArr = new int[]{0, 2, 1, 5, 3, 4};
                } else if (i13 == 7) {
                    iArr = new int[]{0, 2, 1, 6, 5, 3, 4};
                } else if (i13 == 8) {
                    iArr = new int[]{0, 2, 1, 7, 5, 6, 3, 4};
                }
            }
            zzzVar = zzan;
        }
        try {
            int i14 = Build.VERSION.SDK_INT;
            if (i14 >= 29) {
                if (zzaR()) {
                    zzo();
                }
                if (i14 < 29) {
                    z10 = false;
                }
                zzdd.zzf(z10);
            }
            this.zzd.zzf(zzzVar, 0, iArr);
        } catch (zzqj e10) {
            throw zzk(e10, e10.zza, false, 5001);
        }
    }

    @CallSuper
    public final void zzas() {
        this.zzl = true;
    }

    @Override // com.google.android.gms.internal.ads.zztp
    protected final void zzat() {
        this.zzd.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zztp
    protected final void zzau() throws zzin {
        int i10;
        try {
            this.zzd.zzk();
            if (zzaz() != -9223372036854775807L) {
                this.zzq = zzaz();
            }
        } catch (zzqn e10) {
            if (true != zzaR()) {
                i10 = 5002;
            } else {
                i10 = 5003;
            }
            throw zzk(e10, e10.zzc, e10.zzb, i10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zztp
    protected final boolean zzav(long j10, long j11, @Nullable zztf zztfVar, @Nullable ByteBuffer byteBuffer, int i10, int i11, int i12, long j12, boolean z10, boolean z11, zzz zzzVar) throws zzin {
        byteBuffer.getClass();
        this.zzq = -9223372036854775807L;
        if (this.zzj != null && (i11 & 2) != 0) {
            zztfVar.getClass();
            zztfVar.zzo(i10, false);
            return true;
        } else if (z10) {
            if (zztfVar != null) {
                zztfVar.zzo(i10, false);
            }
            ((zztp) this).zza.zzf += i12;
            this.zzd.zzh();
            return true;
        } else {
            try {
                if (this.zzd.zzy(byteBuffer, j12, i12)) {
                    if (zztfVar != null) {
                        zztfVar.zzo(i10, false);
                    }
                    ((zztp) this).zza.zze += i12;
                    return true;
                }
                this.zzq = j12;
                return false;
            } catch (zzqk e10) {
                zzz zzzVar2 = this.zzi;
                if (zzaR()) {
                    zzo();
                }
                throw zzk(e10, zzzVar2, e10.zzb, 5001);
            } catch (zzqn e11) {
                if (zzaR()) {
                    zzo();
                }
                throw zzk(e11, zzzVar, e11.zzb, 5002);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zztp
    protected final boolean zzaw(zzz zzzVar) {
        zzo();
        return this.zzd.zzB(zzzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final zzbb zzc() {
        return this.zzd.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final void zzg(zzbb zzbbVar) {
        this.zzd.zzt(zzbbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final boolean zzj() {
        boolean z10 = this.zzn;
        this.zzn = false;
        return z10;
    }

    @Override // com.google.android.gms.internal.ads.zztp, com.google.android.gms.internal.ads.zzic, com.google.android.gms.internal.ads.zzlv
    public final void zzv(int i10, @Nullable Object obj) throws zzin {
        zztb zztbVar;
        if (i10 != 2) {
            if (i10 != 3) {
                if (i10 != 6) {
                    if (i10 != 12) {
                        if (i10 != 16) {
                            if (i10 != 9) {
                                if (i10 != 10) {
                                    super.zzv(i10, obj);
                                    return;
                                }
                                obj.getClass();
                                int intValue = ((Integer) obj).intValue();
                                this.zzd.zzo(intValue);
                                if (Build.VERSION.SDK_INT >= 35 && (zztbVar = this.zze) != null) {
                                    zztbVar.zzd(intValue);
                                    return;
                                }
                                return;
                            }
                            zzqo zzqoVar = this.zzd;
                            obj.getClass();
                            zzqoVar.zzw(((Boolean) obj).booleanValue());
                            return;
                        }
                        obj.getClass();
                        this.zzo = ((Integer) obj).intValue();
                        zztf zzaF = zzaF();
                        if (zzaF != null && Build.VERSION.SDK_INT >= 35) {
                            Bundle bundle = new Bundle();
                            bundle.putInt("importance", Math.max(0, -this.zzo));
                            zzaF.zzq(bundle);
                            return;
                        }
                        return;
                    }
                    this.zzd.zzv((AudioDeviceInfo) obj);
                    return;
                }
                zzf zzfVar = (zzf) obj;
                zzqo zzqoVar2 = this.zzd;
                zzfVar.getClass();
                zzqoVar2.zzp(zzfVar);
                return;
            }
            zze zzeVar = (zze) obj;
            zzqo zzqoVar3 = this.zzd;
            zzeVar.getClass();
            zzqoVar3.zzn(zzeVar);
            return;
        }
        zzqo zzqoVar4 = this.zzd;
        obj.getClass();
        zzqoVar4.zzx(((Float) obj).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zztp, com.google.android.gms.internal.ads.zzic
    public final void zzy() {
        this.zzm = true;
        this.zzi = null;
        this.zzq = -9223372036854775807L;
        try {
            this.zzd.zzg();
            super.zzy();
        } finally {
            this.zzc.zzu(((zztp) this).zza);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zztp, com.google.android.gms.internal.ads.zzic
    public final void zzz(boolean z10, boolean z11) throws zzin {
        super.zzz(z10, z11);
        this.zzc.zzv(((zztp) this).zza);
        zzo();
        zzqo zzqoVar = this.zzd;
        zzqoVar.zzu(zzp());
        zzqoVar.zzq(zzcX());
    }

    @Override // com.google.android.gms.internal.ads.zzic, com.google.android.gms.internal.ads.zzma
    @Nullable
    public final zzlb zzm() {
        return this;
    }
}
