package com.google.android.gms.internal.ads;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.ss.texturerender.TextureRenderKeys;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzbkb implements zzbkf {
    @Override // com.google.android.gms.internal.ads.zzbkf
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcfg zzcfgVar = (zzcfg) obj;
        String str = (String) map.get(TextureRenderKeys.KEY_IS_ACTION);
        if (CampaignEx.JSON_NATIVE_VIDEO_PAUSE.equals(str)) {
            zzcfgVar.zzdg();
        } else if (CampaignEx.JSON_NATIVE_VIDEO_RESUME.equals(str)) {
            zzcfgVar.zzdh();
        }
    }
}
