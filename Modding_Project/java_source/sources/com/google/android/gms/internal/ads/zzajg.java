package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzajg {
    public static String zza(List list) {
        Iterator it = list.iterator();
        String str = null;
        boolean z10 = false;
        while (it.hasNext()) {
            String str2 = ((zzajs) it.next()).zza.zzg.zzo;
            if (zzay.zzj(str2)) {
                return MimeTypes.VIDEO_MP4;
            }
            if (zzay.zzh(str2)) {
                z10 = true;
            } else if (zzay.zzi(str2)) {
                if (Objects.equals(str2, "image/heic")) {
                    str = "image/heif";
                } else if (Objects.equals(str2, "image/avif")) {
                    str = "image/avif";
                }
            }
        }
        if (z10) {
            return MimeTypes.AUDIO_MP4;
        }
        if (str != null) {
            return str;
        }
        return MimeTypes.APPLICATION_MP4;
    }
}
