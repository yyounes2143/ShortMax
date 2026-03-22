package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.nativead.NativeAd;
import java.util.ArrayList;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbsw extends NativeAd.AdChoicesInfo {
    private final List zza = new ArrayList();
    private String zzb;

    public zzbsw(zzbgi zzbgiVar) {
        zzbgp zzbgpVar;
        try {
            this.zzb = zzbgiVar.zzg();
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e10);
            this.zzb = "";
        }
        try {
            for (Object obj : zzbgiVar.zzh()) {
                if (obj instanceof IBinder) {
                    zzbgpVar = zzbgo.zzh((IBinder) obj);
                } else {
                    zzbgpVar = null;
                }
                if (zzbgpVar != null) {
                    this.zza.add(new zzbsy(zzbgpVar));
                }
            }
        } catch (RemoteException e11) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("", e11);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.AdChoicesInfo
    public final List<NativeAd.Image> getImages() {
        return this.zza;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.AdChoicesInfo
    public final CharSequence getText() {
        return this.zzb;
    }
}
