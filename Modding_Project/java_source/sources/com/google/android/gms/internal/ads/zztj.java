package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import androidx.annotation.RequiresApi;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@RequiresApi(29)
/* loaded from: classes4.dex */
public final class zztj {
    /* JADX WARN: Removed duplicated region for block: B:25:0x004e A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int zza(android.media.MediaCodecInfo.VideoCapabilities r2, int r3, int r4, double r5) {
        /*
            java.util.List r2 = f6.e.a(r2)
            r0 = 0
            if (r2 == 0) goto L50
            boolean r1 = r2.isEmpty()
            if (r1 == 0) goto Le
            goto L50
        Le:
            int r5 = (int) r5
            android.media.MediaCodecInfo$VideoCapabilities$PerformancePoint r3 = f6.c.a(r3, r4, r5)
            int r2 = zzc(r2, r3)
            r3 = 1
            if (r2 != r3) goto L4f
            java.lang.Boolean r4 = com.google.android.gms.internal.ads.zztk.zzb()
            if (r4 != 0) goto L4f
            int r4 = android.os.Build.VERSION.SDK_INT
            r5 = 35
            if (r4 < r5) goto L28
        L26:
            r3 = r0
            goto L3d
        L28:
            int r4 = zzb(r0)
            int r5 = zzb(r3)
            if (r4 != 0) goto L33
            goto L3d
        L33:
            r6 = 2
            if (r5 != 0) goto L39
            if (r4 == r6) goto L26
            goto L3d
        L39:
            if (r4 != r6) goto L3d
            if (r5 == r6) goto L26
        L3d:
            java.lang.Boolean r3 = java.lang.Boolean.valueOf(r3)
            com.google.android.gms.internal.ads.zztk.zzc(r3)
            java.lang.Boolean r3 = com.google.android.gms.internal.ads.zztk.zzb()
            boolean r3 = r3.booleanValue()
            if (r3 == 0) goto L4f
            return r0
        L4f:
            return r2
        L50:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zztj.zza(android.media.MediaCodecInfo$VideoCapabilities, int, int, double):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0038, code lost:
        r2 = r2.getSupportedPerformancePoints();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int zzb(boolean r4) {
        /*
            r0 = 0
            com.google.android.gms.internal.ads.zzx r1 = new com.google.android.gms.internal.ads.zzx     // Catch: com.google.android.gms.internal.ads.zztw -> L59
            r1.<init>()     // Catch: com.google.android.gms.internal.ads.zztw -> L59
            java.lang.String r2 = "video/avc"
            r1.zzah(r2)     // Catch: com.google.android.gms.internal.ads.zztw -> L59
            com.google.android.gms.internal.ads.zzz r1 = r1.zzan()     // Catch: com.google.android.gms.internal.ads.zztw -> L59
            java.lang.String r2 = r1.zzo     // Catch: com.google.android.gms.internal.ads.zztw -> L59
            if (r2 == 0) goto L59
            com.google.android.gms.internal.ads.zztr r2 = com.google.android.gms.internal.ads.zztr.zza     // Catch: com.google.android.gms.internal.ads.zztw -> L59
            java.util.List r4 = com.google.android.gms.internal.ads.zzuc.zze(r2, r1, r4, r0)     // Catch: com.google.android.gms.internal.ads.zztw -> L59
            r1 = r0
        L1a:
            int r2 = r4.size()     // Catch: com.google.android.gms.internal.ads.zztw -> L59
            if (r1 >= r2) goto L59
            java.lang.Object r2 = r4.get(r1)     // Catch: com.google.android.gms.internal.ads.zztw -> L59
            com.google.android.gms.internal.ads.zzti r2 = (com.google.android.gms.internal.ads.zzti) r2     // Catch: com.google.android.gms.internal.ads.zztw -> L59
            android.media.MediaCodecInfo$CodecCapabilities r2 = r2.zzd     // Catch: com.google.android.gms.internal.ads.zztw -> L59
            if (r2 == 0) goto L56
            java.lang.Object r2 = r4.get(r1)     // Catch: com.google.android.gms.internal.ads.zztw -> L59
            com.google.android.gms.internal.ads.zzti r2 = (com.google.android.gms.internal.ads.zzti) r2     // Catch: com.google.android.gms.internal.ads.zztw -> L59
            android.media.MediaCodecInfo$CodecCapabilities r2 = r2.zzd     // Catch: com.google.android.gms.internal.ads.zztw -> L59
            android.media.MediaCodecInfo$VideoCapabilities r2 = r2.getVideoCapabilities()     // Catch: com.google.android.gms.internal.ads.zztw -> L59
            if (r2 == 0) goto L56
            java.util.List r2 = f6.e.a(r2)     // Catch: com.google.android.gms.internal.ads.zztw -> L59
            if (r2 == 0) goto L56
            boolean r3 = r2.isEmpty()     // Catch: com.google.android.gms.internal.ads.zztw -> L59
            if (r3 != 0) goto L56
            f6.d.a()     // Catch: com.google.android.gms.internal.ads.zztw -> L59
            r4 = 720(0x2d0, float:1.009E-42)
            r1 = 60
            r3 = 1280(0x500, float:1.794E-42)
            android.media.MediaCodecInfo$VideoCapabilities$PerformancePoint r4 = f6.c.a(r3, r4, r1)     // Catch: com.google.android.gms.internal.ads.zztw -> L59
            int r4 = zzc(r2, r4)     // Catch: com.google.android.gms.internal.ads.zztw -> L59
            return r4
        L56:
            int r1 = r1 + 1
            goto L1a
        L59:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zztj.zzb(boolean):int");
    }

    private static int zzc(List list, MediaCodecInfo.VideoCapabilities.PerformancePoint performancePoint) {
        boolean covers;
        for (int i10 = 0; i10 < list.size(); i10++) {
            covers = f6.f.a(list.get(i10)).covers(performancePoint);
            if (covers) {
                return 2;
            }
        }
        return 1;
    }
}
