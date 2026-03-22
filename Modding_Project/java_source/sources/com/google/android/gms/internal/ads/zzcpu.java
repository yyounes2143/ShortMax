package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.MBridgeConstans;
import com.ss.texturerender.TextureRenderKeys;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcpu implements zzcws {
    @Nullable
    private final zzcfg zza;
    private final zzdsj zzb;
    private final zzfca zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcpu(@Nullable zzcfg zzcfgVar, zzdsj zzdsjVar, zzfca zzfcaVar) {
        this.zza = zzcfgVar;
        this.zzb = zzdsjVar;
        this.zzc = zzfcaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcws
    public final void zzt() {
        zzcfg zzcfgVar;
        String str;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zznn)).booleanValue() && (zzcfgVar = this.zza) != null) {
            if (true != com.google.android.gms.ads.internal.util.zzac.zza(zzcfgVar.zzF())) {
                str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
            } else {
                str = "1";
            }
            zzdsi zza = this.zzb.zza();
            zza.zzb(TextureRenderKeys.KEY_IS_ACTION, "hcp");
            zza.zzb("hcp", str);
            zza.zzc(this.zzc);
            zza.zzj();
        }
    }
}
