package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.dynamic.ObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzefm implements zzdgn {
    private final zzfca zza;
    private final zzbrp zzb;
    private final AdFormat zzc;
    @Nullable
    private zzcwq zzd = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzefm(zzfca zzfcaVar, zzbrp zzbrpVar, AdFormat adFormat) {
        this.zza = zzfcaVar;
        this.zzb = zzbrpVar;
        this.zzc = adFormat;
    }

    @Override // com.google.android.gms.internal.ads.zzdgn
    @Nullable
    public final zzfca zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzdgn
    public final void zzb(boolean z10, Context context, @Nullable zzcwl zzcwlVar) throws zzdgm {
        boolean zzs;
        try {
            AdFormat adFormat = AdFormat.BANNER;
            int ordinal = this.zzc.ordinal();
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal == 5) {
                        zzs = this.zzb.zzr(ObjectWrapper.wrap(context));
                    }
                    throw new zzdgm("Adapter failed to show.");
                }
                zzs = this.zzb.zzt(ObjectWrapper.wrap(context));
            } else {
                zzs = this.zzb.zzs(ObjectWrapper.wrap(context));
            }
            if (zzs) {
                zzcwq zzcwqVar = this.zzd;
                if (zzcwqVar != null) {
                    if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzbI)).booleanValue() && this.zza.zzY == 2) {
                        zzcwqVar.zza();
                        return;
                    }
                    return;
                }
                return;
            }
            throw new zzdgm("Adapter failed to show.");
        } catch (Throwable th2) {
            throw new zzdgm(th2);
        }
    }

    public final void zzc(zzcwq zzcwqVar) {
        this.zzd = zzcwqVar;
    }
}
