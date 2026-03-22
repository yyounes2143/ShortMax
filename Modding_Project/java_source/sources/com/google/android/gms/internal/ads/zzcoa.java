package com.google.android.gms.internal.ads;

import com.ss.texturerender.TextureRenderKeys;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcoa {
    private final zzdsj zza;
    private final zzfcn zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcoa(zzdsj zzdsjVar, zzfcn zzfcnVar) {
        this.zza = zzdsjVar;
        this.zzb = zzfcnVar;
    }

    public final void zza(long j10, int i10) {
        String str;
        zzdsi zza = this.zza.zza();
        zza.zzd(this.zzb.zzb.zzb);
        zza.zzb(TextureRenderKeys.KEY_IS_ACTION, "ad_closed");
        zza.zzb("show_time", String.valueOf(j10));
        zza.zzb("ad_format", "app_open_ad");
        int i11 = i10 - 1;
        if (i11 != 0) {
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 != 3) {
                        if (i11 != 4) {
                            str = "u";
                        } else {
                            str = "ac";
                        }
                    } else {
                        str = "cb";
                    }
                } else {
                    str = "cc";
                }
            } else {
                str = "bb";
            }
        } else {
            str = "h";
        }
        zza.zzb("acr", str);
        zza.zzj();
    }
}
