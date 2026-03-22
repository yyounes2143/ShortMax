package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.media.MediaCodecInfo;
import android.os.Build;
import android.util.Pair;
import androidx.annotation.CheckResult;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@SuppressLint({"InlinedApi"})
/* loaded from: classes4.dex */
public final class zzuc {
    public static final /* synthetic */ int zza = 0;
    @GuardedBy("MediaCodecUtil.class")
    private static final HashMap zzb = new HashMap();

    @Nullable
    public static zzti zza() throws zztw {
        List zzd = zzd(MimeTypes.AUDIO_RAW, false, false);
        if (zzd.isEmpty()) {
            return null;
        }
        return (zzti) zzd.get(0);
    }

    @Nullable
    public static String zzb(zzz zzzVar) {
        Pair zza2;
        String str = zzzVar.zzo;
        if (MimeTypes.AUDIO_E_AC3_JOC.equals(str)) {
            return MimeTypes.AUDIO_E_AC3;
        }
        if ("video/dolby-vision".equals(str) && (zza2 = zzdk.zza(zzzVar)) != null) {
            int intValue = ((Integer) zza2.first).intValue();
            if (intValue != 16 && intValue != 256) {
                if (intValue == 512) {
                    return "video/avc";
                }
                if (intValue == 1024) {
                    return com.unity3d.services.core.device.MimeTypes.VIDEO_AV1;
                }
            } else {
                return "video/hevc";
            }
        }
        if (!"video/mv-hevc".equals(str)) {
            return null;
        }
        return "video/hevc";
    }

    public static List zzc(zztr zztrVar, zzz zzzVar, boolean z10, boolean z11) throws zztw {
        String zzb2 = zzb(zzzVar);
        if (zzb2 == null) {
            return zzfyq.zzn();
        }
        return zztrVar.zza(zzb2, z10, z11);
    }

    public static synchronized List zzd(String str, boolean z10, boolean z11) throws zztw {
        synchronized (zzuc.class) {
            try {
                zztv zztvVar = new zztv(str, z10, z11);
                HashMap hashMap = zzb;
                List list = (List) hashMap.get(zztvVar);
                if (list != null) {
                    return list;
                }
                ArrayList zzg = zzg(zztvVar, new zztz(z10, z11, str.equals("video/mv-hevc")));
                if (z10) {
                    zzg.isEmpty();
                }
                if (MimeTypes.AUDIO_RAW.equals(str)) {
                    if (Build.VERSION.SDK_INT < 26 && Build.DEVICE.equals("R9") && zzg.size() == 1 && ((zzti) zzg.get(0)).zza.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                        zzg.add(zzti.zzd("OMX.google.raw.decoder", MimeTypes.AUDIO_RAW, MimeTypes.AUDIO_RAW, null, false, true, false, false, false));
                    }
                    zzh(zzg, new zzua() { // from class: com.google.android.gms.internal.ads.zztt
                        @Override // com.google.android.gms.internal.ads.zzua
                        public final int zza(Object obj) {
                            int i10 = zzuc.zza;
                            String str2 = ((zzti) obj).zza;
                            if (str2.startsWith("OMX.google") || str2.startsWith("c2.android")) {
                                return 1;
                            }
                            if (Build.VERSION.SDK_INT >= 26 || !str2.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                                return 0;
                            }
                            return -1;
                        }
                    });
                }
                if (Build.VERSION.SDK_INT < 32 && zzg.size() > 1 && "OMX.qti.audio.decoder.flac".equals(((zzti) zzg.get(0)).zza)) {
                    zzg.add((zzti) zzg.remove(0));
                }
                zzfyq zzl = zzfyq.zzl(zzg);
                hashMap.put(zztvVar, zzl);
                return zzl;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static List zze(zztr zztrVar, zzz zzzVar, boolean z10, boolean z11) throws zztw {
        List zza2 = zztrVar.zza(zzzVar.zzo, z10, z11);
        List zzc = zzc(zztrVar, zzzVar, z10, z11);
        int i10 = zzfyq.zzd;
        zzfyn zzfynVar = new zzfyn();
        zzfynVar.zzh(zza2);
        zzfynVar.zzh(zzc);
        return zzfynVar.zzi();
    }

    @CheckResult
    public static List zzf(List list, final zzz zzzVar) {
        ArrayList arrayList = new ArrayList(list);
        zzh(arrayList, new zzua() { // from class: com.google.android.gms.internal.ads.zztu
            @Override // com.google.android.gms.internal.ads.zzua
            public final int zza(Object obj) {
                int i10 = zzuc.zza;
                if (((zzti) obj).zze(zzz.this)) {
                    return 1;
                }
                return 0;
            }
        });
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x0189, code lost:
        r2 = new java.lang.StringBuilder();
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x018e, code lost:
        r3 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0190, code lost:
        r2.append(r3);
        r2.append(".secure");
        r5.add(com.google.android.gms.internal.ads.zzti.zzd(r2.toString(), r15, r4, r9, r0, r20, r1, false, true));
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01aa, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x01ab, code lost:
        r1 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x002b, code lost:
        if (r7 != false) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x010f A[Catch: Exception -> 0x0114, TryCatch #3 {Exception -> 0x0114, blocks: (B:59:0x00df, B:65:0x00f6, B:71:0x0109, B:73:0x010f, B:80:0x0122, B:82:0x012a, B:83:0x012f, B:85:0x013f, B:87:0x0147, B:76:0x0118), top: B:125:0x00df }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0118 A[Catch: Exception -> 0x0114, TryCatch #3 {Exception -> 0x0114, blocks: (B:59:0x00df, B:65:0x00f6, B:71:0x0109, B:73:0x010f, B:80:0x0122, B:82:0x012a, B:83:0x012f, B:85:0x013f, B:87:0x0147, B:76:0x0118), top: B:125:0x00df }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x012a A[Catch: Exception -> 0x0114, TryCatch #3 {Exception -> 0x0114, blocks: (B:59:0x00df, B:65:0x00f6, B:71:0x0109, B:73:0x010f, B:80:0x0122, B:82:0x012a, B:83:0x012f, B:85:0x013f, B:87:0x0147, B:76:0x0118), top: B:125:0x00df }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x012f A[Catch: Exception -> 0x0114, TryCatch #3 {Exception -> 0x0114, blocks: (B:59:0x00df, B:65:0x00f6, B:71:0x0109, B:73:0x010f, B:80:0x0122, B:82:0x012a, B:83:0x012f, B:85:0x013f, B:87:0x0147, B:76:0x0118), top: B:125:0x00df }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0159  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.ArrayList zzg(com.google.android.gms.internal.ads.zztv r23, com.google.android.gms.internal.ads.zztx r24) throws com.google.android.gms.internal.ads.zztw {
        /*
            Method dump skipped, instructions count: 487
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzuc.zzg(com.google.android.gms.internal.ads.zztv, com.google.android.gms.internal.ads.zztx):java.util.ArrayList");
    }

    private static void zzh(List list, final zzua zzuaVar) {
        Collections.sort(list, new Comparator() { // from class: com.google.android.gms.internal.ads.zzts
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int i10 = zzuc.zza;
                zzua zzuaVar2 = zzua.this;
                return zzuaVar2.zza(obj2) - zzuaVar2.zza(obj);
            }
        });
    }

    private static boolean zzi(MediaCodecInfo mediaCodecInfo, String str) {
        boolean isSoftwareOnly;
        if (Build.VERSION.SDK_INT >= 29) {
            isSoftwareOnly = mediaCodecInfo.isSoftwareOnly();
            return isSoftwareOnly;
        } else if (zzay.zzh(str)) {
            return true;
        } else {
            String zza2 = zzfuv.zza(mediaCodecInfo.getName());
            if (zza2.startsWith("arc.")) {
                return false;
            }
            if (zza2.startsWith("omx.google.") || zza2.startsWith("omx.ffmpeg.")) {
                return true;
            }
            if ((zza2.startsWith("omx.sec.") && zza2.contains(".sw.")) || zza2.equals("omx.qcom.video.decoder.hevcswvdec") || zza2.startsWith("c2.android.") || zza2.startsWith("c2.google.")) {
                return true;
            }
            if (!zza2.startsWith("omx.") && !zza2.startsWith("c2.")) {
                return true;
            }
            return false;
        }
    }
}
