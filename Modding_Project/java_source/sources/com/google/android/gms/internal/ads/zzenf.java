package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzenf implements zzeuc {
    private final Context zza;
    private final zzgdy zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzenf(zzgdy zzgdyVar, Context context) {
        this.zzb = zzgdyVar;
        this.zza = context;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final int zza() {
        return 61;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final com.google.common.util.concurrent.e zzb() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zznm)).booleanValue()) {
            return zzgdn.zzh(new zzeng(null, false));
        }
        final ContentResolver contentResolver = this.zza.getContentResolver();
        if (contentResolver == null) {
            return zzgdn.zzh(new zzeng(null, false));
        }
        return this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzene
            @Override // java.util.concurrent.Callable
            public final Object call() {
                ContentResolver contentResolver2 = contentResolver;
                String string = Settings.Secure.getString(contentResolver2, "advertising_id");
                boolean z10 = false;
                if (Settings.Secure.getInt(contentResolver2, "limit_ad_tracking", 0) == 1) {
                    z10 = true;
                }
                return new zzeng(string, z10);
            }
        });
    }
}
