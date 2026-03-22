package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzefn implements zzdgn {
    final /* synthetic */ zzedp zza;
    final /* synthetic */ zzfca zzb;
    final /* synthetic */ zzefo zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzefn(zzefo zzefoVar, zzedp zzedpVar, zzfca zzfcaVar) {
        this.zza = zzedpVar;
        this.zzb = zzfcaVar;
        Objects.requireNonNull(zzefoVar);
        this.zzc = zzefoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgn
    @Nullable
    public final zzfca zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzdgn
    public final void zzb(boolean z10, Context context, @Nullable zzcwl zzcwlVar) throws zzdgm {
        VersionInfoParcel versionInfoParcel;
        try {
            zzfdu zzfduVar = (zzfdu) this.zza.zzb;
            zzfduVar.zzv(z10);
            versionInfoParcel = this.zzc.zzc;
            if (versionInfoParcel.clientJarVersion < ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzaW)).intValue()) {
                zzfduVar.zzx();
            } else {
                zzfduVar.zzy(context);
            }
        } catch (zzfdd e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Cannot show interstitial.");
            throw new zzdgm(e10.getCause());
        }
    }
}
