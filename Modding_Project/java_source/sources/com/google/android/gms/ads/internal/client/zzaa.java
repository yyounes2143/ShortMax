package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbpq;
import com.google.android.gms.internal.ads.zzbxh;
import com.vungle.ads.internal.Constants;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaa extends zzba {
    final /* synthetic */ Context zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzbpq zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaa(zzaz zzazVar, Context context, String str, zzbpq zzbpqVar) {
        this.zza = context;
        this.zzb = str;
        this.zzc = zzbpqVar;
        Objects.requireNonNull(zzazVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    protected final /* bridge */ /* synthetic */ Object zza() {
        zzaz.zzv(this.zza, Constants.PLACEMENT_TYPE_REWARDED);
        return new zzfs();
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final /* bridge */ /* synthetic */ Object zzb(zzcr zzcrVar) throws RemoteException {
        return zzcrVar.zzp(ObjectWrapper.wrap(this.zza), this.zzb, this.zzc, ModuleDescriptor.MODULE_VERSION);
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final /* bridge */ /* synthetic */ Object zzc() throws RemoteException {
        return zzbxh.zza(this.zza, this.zzb, this.zzc);
    }
}
