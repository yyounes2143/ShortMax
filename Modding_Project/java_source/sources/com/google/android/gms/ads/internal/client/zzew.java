package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.internal.ads.zzbmj;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
final class zzew extends zzbmj {
    final /* synthetic */ zzey zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzew(zzey zzeyVar, zzex zzexVar) {
        Objects.requireNonNull(zzeyVar);
        this.zza = zzeyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbmk
    public final void zzb(List list) throws RemoteException {
        int i10;
        ArrayList arrayList;
        zzey zzeyVar = this.zza;
        synchronized (zzey.zzi(zzeyVar)) {
            zzey.zzo(zzeyVar, false);
            zzey.zzn(zzeyVar, true);
            arrayList = new ArrayList(zzey.zzk(zzeyVar));
            zzey.zzk(zzeyVar).clear();
        }
        InitializationStatus zzd = zzey.zzd(list);
        int size = arrayList.size();
        for (i10 = 0; i10 < size; i10++) {
            ((OnInitializationCompleteListener) arrayList.get(i10)).onInitializationComplete(zzd);
        }
    }
}
