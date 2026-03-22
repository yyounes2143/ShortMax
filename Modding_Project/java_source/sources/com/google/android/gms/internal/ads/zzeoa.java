package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzeoa implements zzeuc {
    private final zzgdy zza;
    private final VersionInfoParcel zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeoa(VersionInfoParcel versionInfoParcel, zzgdy zzgdyVar) {
        this.zzb = versionInfoParcel;
        this.zza = zzgdyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final int zza() {
        return 54;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final com.google.common.util.concurrent.e zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzenz
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzeob zzc;
                zzc = zzeob.zzc(zzeoa.this.zzb);
                return zzc;
            }
        });
    }
}
