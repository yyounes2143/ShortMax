package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcdc implements zzbkf {
    @Override // com.google.android.gms.internal.ads.zzbkf
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        float parseFloat;
        zzccb zzccbVar = (zzccb) obj;
        zzcgi zzq = zzccbVar.zzq();
        if (zzq == null) {
            try {
                zzcgi zzcgiVar = new zzcgi(zzccbVar, Float.parseFloat((String) map.get("duration")), "1".equals(map.get("customControlsAllowed")), "1".equals(map.get("clickToExpandAllowed")));
                zzccbVar.zzC(zzcgiVar);
                zzq = zzcgiVar;
            } catch (NullPointerException e10) {
                e = e10;
                int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to parse videoMeta message.", e);
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "VideoMetaGmsgHandler.onGmsg");
                return;
            } catch (NumberFormatException e11) {
                e = e11;
                int i102 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to parse videoMeta message.", e);
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "VideoMetaGmsgHandler.onGmsg");
                return;
            }
        }
        float parseFloat2 = Float.parseFloat((String) map.get("duration"));
        boolean equals = "1".equals(map.get("muted"));
        float parseFloat3 = Float.parseFloat((String) map.get("currentTime"));
        int parseInt = Integer.parseInt((String) map.get("playbackState"));
        int i11 = 0;
        if (parseInt >= 0 && parseInt <= 3) {
            i11 = parseInt;
        }
        String str = (String) map.get(InMobiNetworkValues.ASPECT_RATIO);
        if (TextUtils.isEmpty(str)) {
            parseFloat = 0.0f;
        } else {
            parseFloat = Float.parseFloat(str);
        }
        float f10 = parseFloat;
        if (com.google.android.gms.ads.internal.util.client.zzo.zzm(3)) {
            com.google.android.gms.ads.internal.util.client.zzo.zze("Video Meta GMSG: currentTime : " + parseFloat3 + " , duration : " + parseFloat2 + " , isMuted : " + equals + " , playbackState : " + i11 + " , aspectRatio : " + str);
        }
        zzq.zzr(parseFloat3, parseFloat2, i11, equals, f10);
    }
}
