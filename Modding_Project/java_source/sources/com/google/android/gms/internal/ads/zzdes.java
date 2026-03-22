package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdes extends zzdbt {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdes(Set set) {
        super(set);
    }

    public final synchronized void zza(@Nullable final com.google.android.gms.ads.nonagon.signalgeneration.zzbk zzbkVar) {
        zzq(new zzdbs() { // from class: com.google.android.gms.internal.ads.zzdeq
            @Override // com.google.android.gms.internal.ads.zzdbs
            public final void zza(Object obj) {
                ((zzdep) obj).zze(com.google.android.gms.ads.nonagon.signalgeneration.zzbk.this);
            }
        });
    }

    public final synchronized void zzb(@Nullable final String str) {
        zzq(new zzdbs() { // from class: com.google.android.gms.internal.ads.zzder
            @Override // com.google.android.gms.internal.ads.zzdbs
            public final void zza(Object obj) {
                ((zzdep) obj).zzf(str);
            }
        });
    }
}
