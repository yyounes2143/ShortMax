package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.ss.texturerender.TextureRenderKeys;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbkx implements zzbkf {
    private final zzbkw zza;

    public zzbkx(zzbkw zzbkwVar) {
        this.zza = zzbkwVar;
    }

    public static void zzb(zzcfg zzcfgVar, zzbkw zzbkwVar) {
        zzcfgVar.zzag("/reward", new zzbkx(zzbkwVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbkf
    public final void zza(Object obj, Map map) {
        String str = (String) map.get(TextureRenderKeys.KEY_IS_ACTION);
        if ("grant".equals(str)) {
            zzbwo zzbwoVar = null;
            try {
                int parseInt = Integer.parseInt((String) map.get("amount"));
                String str2 = (String) map.get("type");
                if (!TextUtils.isEmpty(str2)) {
                    zzbwoVar = new zzbwo(str2, parseInt);
                }
            } catch (NumberFormatException e10) {
                int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Unable to parse reward amount.", e10);
            }
            this.zza.zza(zzbwoVar);
        } else if ("video_start".equals(str)) {
            this.zza.zzc();
        } else if ("video_complete".equals(str)) {
            this.zza.zzb();
        }
    }
}
