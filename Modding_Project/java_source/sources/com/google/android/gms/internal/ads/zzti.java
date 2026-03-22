package com.google.android.gms.internal.ads;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.os.Build;
import android.util.Pair;
import android.util.Range;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.ss.texturerender.TextureRenderKeys;
import com.unity3d.services.core.device.MimeTypes;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzti {
    public final String zza;
    public final String zzb;
    public final String zzc;
    @Nullable
    public final MediaCodecInfo.CodecCapabilities zzd;
    public final boolean zze;
    public final boolean zzf;
    public final boolean zzg;
    public final boolean zzh;
    private final boolean zzi;
    private int zzj;
    private int zzk;
    private float zzl;

    @VisibleForTesting
    zzti(String str, String str2, String str3, @Nullable MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16) {
        str.getClass();
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = codecCapabilities;
        this.zzg = z10;
        this.zze = z13;
        this.zzf = z15;
        this.zzh = z16;
        this.zzi = zzay.zzj(str2);
        this.zzl = -3.4028235E38f;
        this.zzj = -1;
        this.zzk = -1;
    }

    public static zzti zzd(String str, String str2, String str3, @Nullable MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        boolean z15;
        boolean z16;
        boolean z17;
        boolean z18;
        if (codecCapabilities != null && codecCapabilities.isFeatureSupported("adaptive-playback")) {
            z15 = true;
        } else {
            z15 = false;
        }
        if (codecCapabilities != null && codecCapabilities.isFeatureSupported("tunneled-playback")) {
            z16 = true;
        } else {
            z16 = false;
        }
        if (z14 || (codecCapabilities != null && codecCapabilities.isFeatureSupported("secure-playback"))) {
            z17 = true;
        } else {
            z17 = false;
        }
        if (Build.VERSION.SDK_INT >= 35 && codecCapabilities != null && codecCapabilities.isFeatureSupported("detached-surface")) {
            String str4 = Build.MANUFACTURER;
            if (!str4.equals("Xiaomi") && !str4.equals("OPPO") && !str4.equals("realme")) {
                z18 = true;
                return new zzti(str, str2, str3, codecCapabilities, z10, z11, z12, z15, z16, z17, z18);
            }
        }
        z18 = false;
        return new zzti(str, str2, str3, codecCapabilities, z10, z11, z12, z15, z16, z17, z18);
    }

    private static Point zzj(MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        String str = zzex.zza;
        return new Point((((i10 + widthAlignment) - 1) / widthAlignment) * widthAlignment, (((i11 + heightAlignment) - 1) / heightAlignment) * heightAlignment);
    }

    private final void zzk(String str) {
        String str2 = zzex.zza;
        zzea.zzb(com.mbridge.msdk.playercommon.exoplayer2.mediacodec.MediaCodecInfo.TAG, "NoSupport [" + str + "] [" + this.zza + ", " + this.zzb + "] [" + str2 + "]");
    }

    private static boolean zzl(MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11, double d10) {
        Point zzj = zzj(videoCapabilities, i10, i11);
        int i12 = zzj.x;
        int i13 = zzj.y;
        if (d10 != -1.0d && d10 >= 1.0d) {
            double floor = Math.floor(d10);
            if (!videoCapabilities.areSizeAndRateSupported(i12, i13, floor)) {
                return false;
            }
            Range<Double> achievableFrameRatesFor = videoCapabilities.getAchievableFrameRatesFor(i12, i13);
            if (achievableFrameRatesFor != null && floor > achievableFrameRatesFor.getUpper().doubleValue()) {
                return false;
            }
            return true;
        }
        return videoCapabilities.isSizeSupported(i12, i13);
    }

    private final boolean zzm(zzz zzzVar, boolean z10) {
        MediaCodecInfo.CodecProfileLevel[] zzi;
        int i10 = zzuc.zza;
        Pair zza = zzdk.zza(zzzVar);
        String str = zzzVar.zzo;
        char c10 = 65535;
        if (str != null && str.equals("video/mv-hevc")) {
            String zze = zzay.zze(this.zzc);
            if (!zze.equals("video/mv-hevc")) {
                if (zze.equals("video/hevc")) {
                    String zzh = zzfv.zzh(zzzVar.zzr);
                    if (zzh == null) {
                        zza = null;
                    } else {
                        String trim = zzh.trim();
                        String str2 = zzex.zza;
                        zza = zzdk.zzb(zzh, trim.split("\\.", -1), zzzVar.zzE);
                    }
                }
            }
            return true;
        }
        if (zza != null) {
            int intValue = ((Integer) zza.first).intValue();
            int intValue2 = ((Integer) zza.second).intValue();
            if ("video/dolby-vision".equals(str)) {
                String str3 = this.zzb;
                int hashCode = str3.hashCode();
                if (hashCode != -1662735862) {
                    if (hashCode != -1662541442) {
                        if (hashCode == 1331836730 && str3.equals("video/avc")) {
                            c10 = 0;
                        }
                    } else if (str3.equals("video/hevc")) {
                        c10 = 1;
                    }
                } else if (str3.equals(MimeTypes.VIDEO_AV1)) {
                    c10 = 2;
                }
                if (c10 != 0) {
                    if (c10 == 1 || c10 == 2) {
                        intValue = 2;
                    }
                } else {
                    intValue = 8;
                }
                intValue2 = 0;
            }
            if (!this.zzi) {
                if (intValue == 42) {
                    intValue = 42;
                }
            }
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : zzi()) {
                if (codecProfileLevel.profile == intValue && (codecProfileLevel.level >= intValue2 || !z10)) {
                    if ("video/hevc".equals(this.zzb) && intValue == 2) {
                        String str4 = Build.DEVICE;
                        if (!"sailfish".equals(str4) && !"marlin".equals(str4)) {
                        }
                    }
                }
            }
            zzk("codec.profileLevel, " + zzzVar.zzk + ", " + this.zzc);
            return false;
        }
        return true;
    }

    private final boolean zzn(zzz zzzVar) {
        if (Objects.equals(zzzVar.zzo, com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes.AUDIO_FLAC) && zzzVar.zzI == 22 && Build.VERSION.SDK_INT < 34 && this.zza.equals("c2.android.flac.decoder")) {
            return false;
        }
        return true;
    }

    private final boolean zzo(zzz zzzVar) {
        String str = this.zzb;
        if (!str.equals(zzzVar.zzo) && !str.equals(zzuc.zzb(zzzVar))) {
            return false;
        }
        return true;
    }

    public final String toString() {
        return this.zza;
    }

    public final float zza(int i10, int i11) {
        if (!this.zzi) {
            return -3.4028235E38f;
        }
        float f10 = this.zzl;
        if (f10 != -3.4028235E38f && this.zzj == i10 && this.zzk == i11) {
            return f10;
        }
        float f11 = 1024.0f;
        if (!zzh(i10, i11, 1024.0d)) {
            float f12 = 0.0f;
            while (true) {
                float f13 = f11 - f12;
                if (Math.abs(f13) <= 5.0f) {
                    break;
                }
                float f14 = (f13 / 2.0f) + f12;
                boolean zzh = zzh(i10, i11, f14);
                if (true == zzh) {
                    f12 = f14;
                }
                if (true != zzh) {
                    f11 = f14;
                }
            }
            f11 = f12;
        }
        this.zzl = f11;
        this.zzj = i10;
        this.zzk = i11;
        return f11;
    }

    @Nullable
    public final Point zzb(int i10, int i11) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
        if (codecCapabilities != null && (videoCapabilities = codecCapabilities.getVideoCapabilities()) != null) {
            return zzj(videoCapabilities, i10, i11);
        }
        return null;
    }

    public final zzie zzc(zzz zzzVar, zzz zzzVar2) {
        int i10;
        int i11;
        int i12 = 2;
        boolean z10 = false;
        if (true != Objects.equals(zzzVar.zzo, zzzVar2.zzo)) {
            i10 = 8;
        } else {
            i10 = 0;
        }
        if (this.zzi) {
            if (zzzVar.zzA != zzzVar2.zzA) {
                i10 |= 1024;
            }
            if (zzzVar.zzv != zzzVar2.zzv || zzzVar.zzw != zzzVar2.zzw) {
                z10 = true;
            }
            if (!this.zze && z10) {
                i10 |= 512;
            }
            zzk zzkVar = zzzVar.zzE;
            if ((!zzk.zzg(zzkVar) || !zzk.zzg(zzzVar2.zzE)) && !Objects.equals(zzkVar, zzzVar2.zzE)) {
                i10 |= 2048;
            }
            String str = this.zza;
            if (Build.MODEL.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str) && !zzzVar.zzd(zzzVar2)) {
                i10 |= 2;
            }
            int i13 = zzzVar.zzx;
            if (i13 != -1 && (i11 = zzzVar.zzy) != -1 && i13 == zzzVar2.zzx && i11 == zzzVar2.zzy && z10) {
                i10 |= 2;
            }
            if (i10 == 0) {
                if (true == zzzVar.zzd(zzzVar2)) {
                    i12 = 3;
                }
                return new zzie(str, zzzVar, zzzVar2, i12, 0);
            }
        } else {
            if (zzzVar.zzG != zzzVar2.zzG) {
                i10 |= 4096;
            }
            if (zzzVar.zzH != zzzVar2.zzH) {
                i10 |= 8192;
            }
            if (zzzVar.zzI != zzzVar2.zzI) {
                i10 |= 16384;
            }
            if (i10 == 0 && com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes.AUDIO_AAC.equals(this.zzb)) {
                int i14 = zzuc.zza;
                Pair zza = zzdk.zza(zzzVar);
                Pair zza2 = zzdk.zza(zzzVar2);
                if (zza != null && zza2 != null) {
                    int intValue = ((Integer) zza.first).intValue();
                    int intValue2 = ((Integer) zza2.first).intValue();
                    if (intValue == 42 && intValue2 == 42) {
                        return new zzie(this.zza, zzzVar, zzzVar2, 3, 0);
                    }
                }
            }
            if (!zzzVar.zzd(zzzVar2)) {
                i10 |= 32;
            }
            if (com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes.AUDIO_OPUS.equals(this.zzb)) {
                i10 |= 2;
            }
            if (i10 == 0) {
                return new zzie(this.zza, zzzVar, zzzVar2, 1, 0);
            }
        }
        return new zzie(this.zza, zzzVar, zzzVar2, 0, i10);
    }

    public final boolean zze(zzz zzzVar) {
        if (!zzo(zzzVar) || !zzm(zzzVar, false) || !zzn(zzzVar)) {
            return false;
        }
        return true;
    }

    public final boolean zzf(zzz zzzVar) throws zztw {
        int i10;
        int i11;
        if (!zzo(zzzVar) || !zzm(zzzVar, true) || !zzn(zzzVar)) {
            return false;
        }
        if (this.zzi) {
            int i12 = zzzVar.zzv;
            if (i12 <= 0 || (i11 = zzzVar.zzw) <= 0) {
                return true;
            }
            return zzh(i12, i11, zzzVar.zzz);
        }
        int i13 = zzzVar.zzH;
        if (i13 != -1) {
            MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
            if (codecCapabilities == null) {
                zzk("sampleRate.caps");
                return false;
            }
            MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
            if (audioCapabilities == null) {
                zzk("sampleRate.aCaps");
                return false;
            } else if (!audioCapabilities.isSampleRateSupported(i13)) {
                zzk("sampleRate.support, " + i13);
                return false;
            }
        }
        int i14 = zzzVar.zzG;
        if (i14 == -1) {
            return true;
        }
        MediaCodecInfo.CodecCapabilities codecCapabilities2 = this.zzd;
        if (codecCapabilities2 == null) {
            zzk("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities2 = codecCapabilities2.getAudioCapabilities();
        if (audioCapabilities2 == null) {
            zzk("channelCount.aCaps");
            return false;
        }
        String str = this.zza;
        String str2 = this.zzb;
        int maxInputChannelCount = audioCapabilities2.getMaxInputChannelCount();
        if (maxInputChannelCount <= 1 && ((Build.VERSION.SDK_INT < 26 || maxInputChannelCount <= 0) && !com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes.AUDIO_MPEG.equals(str2) && !com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes.AUDIO_AMR_NB.equals(str2) && !com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes.AUDIO_AMR_WB.equals(str2) && !com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes.AUDIO_AAC.equals(str2) && !com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes.AUDIO_VORBIS.equals(str2) && !com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes.AUDIO_OPUS.equals(str2) && !com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes.AUDIO_RAW.equals(str2) && !com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes.AUDIO_FLAC.equals(str2) && !com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes.AUDIO_ALAW.equals(str2) && !com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes.AUDIO_MLAW.equals(str2) && !com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes.AUDIO_MSGSM.equals(str2))) {
            if (com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes.AUDIO_AC3.equals(str2)) {
                i10 = 6;
            } else if (com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes.AUDIO_E_AC3.equals(str2)) {
                i10 = 16;
            } else {
                i10 = 30;
            }
            zzea.zzf(com.mbridge.msdk.playercommon.exoplayer2.mediacodec.MediaCodecInfo.TAG, "AssumedMaxChannelAdjustment: " + str + ", [" + maxInputChannelCount + " to " + i10 + "]");
            maxInputChannelCount = i10;
        }
        if (maxInputChannelCount >= i14) {
            return true;
        }
        zzk("channelCount.support, " + i14);
        return false;
    }

    public final boolean zzg(zzz zzzVar) {
        if (this.zzi) {
            return this.zze;
        }
        int i10 = zzuc.zza;
        Pair zza = zzdk.zza(zzzVar);
        if (zza != null && ((Integer) zza.first).intValue() == 42) {
            return true;
        }
        return false;
    }

    public final boolean zzh(int i10, int i11, double d10) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
        if (codecCapabilities == null) {
            zzk("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            zzk("sizeAndRate.vCaps");
            return false;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            int zza = zztk.zza(videoCapabilities, i10, i11, d10);
            if (zza != 2) {
                if (zza == 1) {
                    zzk("sizeAndRate.cover, " + i10 + TextureRenderKeys.KEY_IS_X + i11 + "@" + d10);
                    return false;
                }
            }
            return true;
        }
        if (!zzl(videoCapabilities, i10, i11, d10)) {
            if (i10 < i11) {
                String str = this.zza;
                if ((!"OMX.MTK.VIDEO.DECODER.HEVC".equals(str) || !"mcv5a".equals(Build.DEVICE)) && zzl(videoCapabilities, i11, i10, d10)) {
                    zzea.zzb(com.mbridge.msdk.playercommon.exoplayer2.mediacodec.MediaCodecInfo.TAG, "AssumedSupport [" + ("sizeAndRate.rotated, " + i10 + TextureRenderKeys.KEY_IS_X + i11 + "@" + d10) + "] [" + str + ", " + this.zzb + "] [" + zzex.zza + "]");
                }
            }
            zzk("sizeAndRate.support, " + i10 + TextureRenderKeys.KEY_IS_X + i11 + "@" + d10);
            return false;
        }
        return true;
    }

    public final MediaCodecInfo.CodecProfileLevel[] zzi() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
        if (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) {
            return new MediaCodecInfo.CodecProfileLevel[0];
        }
        return codecProfileLevelArr;
    }
}
