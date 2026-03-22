package com.google.android.gms.ads.nonagon.signalgeneration;

import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzbde;
import com.google.android.gms.internal.ads.zzbuf;
import com.google.android.gms.internal.ads.zzfjy;
import com.google.android.gms.internal.ads.zzgdj;
import java.util.List;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzas implements zzgdj {
    final /* synthetic */ zzbuf zza;
    final /* synthetic */ boolean zzb;
    final /* synthetic */ zzau zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzas(zzau zzauVar, zzbuf zzbufVar, boolean z10) {
        this.zza = zzbufVar;
        this.zzb = z10;
        Objects.requireNonNull(zzauVar);
        this.zzc = zzauVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zza(Throwable th2) {
        try {
            zzbuf zzbufVar = this.zza;
            String message = th2.getMessage();
            zzbufVar.zze("Internal error: " + message);
        } catch (RemoteException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        boolean z10;
        String str;
        Uri zzaa;
        zzfjy zzfjyVar;
        zzfjy zzfjyVar2;
        List<Uri> list = (List) obj;
        try {
            zzau zzauVar = this.zzc;
            zzau.zzJ(zzauVar, list);
            this.zza.zzf(list);
            z10 = zzauVar.zzs;
            if (!z10 && !this.zzb) {
                return;
            }
            for (Uri uri : list) {
                if (zzauVar.zzP(uri)) {
                    str = zzauVar.zzA;
                    zzaa = zzau.zzaa(uri, str, "1");
                    zzfjyVar = zzauVar.zzq;
                    zzfjyVar.zzd(zzaa.toString(), null, null, null);
                } else {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhJ)).booleanValue()) {
                        zzfjyVar2 = zzauVar.zzq;
                        zzfjyVar2.zzd(uri.toString(), null, null, null);
                    }
                }
            }
        } catch (RemoteException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
        }
    }
}
