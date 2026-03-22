package com.google.android.gms.internal.ads;

import android.view.View;
import androidx.annotation.Nullable;
import com.mbridge.msdk.MBridgeConstans;
import com.ss.texturerender.TextureRenderKeys;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdjv {
    private final zzdsj zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdjv(zzdsj zzdsjVar) {
        this.zza = zzdsjVar;
    }

    public final void zza(@Nullable View view, zzfca zzfcaVar) {
        String str;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zznn)).booleanValue() && view != null) {
            if (true != com.google.android.gms.ads.internal.util.zzac.zza(view)) {
                str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
            } else {
                str = "1";
            }
            zzdsi zza = this.zza.zza();
            zza.zzb(TextureRenderKeys.KEY_IS_ACTION, "hcp");
            zza.zzb("hcp", str);
            zza.zzc(zzfcaVar);
            zza.zzj();
        }
    }
}
