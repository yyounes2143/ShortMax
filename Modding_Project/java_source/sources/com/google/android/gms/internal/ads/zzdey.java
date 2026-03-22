package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdey extends zzdbt {
    private boolean zzb;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzdey(Set set) {
        super(set);
    }

    public final void zza() {
        zzq(new zzdbs() { // from class: com.google.android.gms.internal.ads.zzdev
            @Override // com.google.android.gms.internal.ads.zzdbs
            public final void zza(Object obj) {
                ((VideoController.VideoLifecycleCallbacks) obj).onVideoEnd();
            }
        });
    }

    public final void zzb() {
        zzq(new zzdbs() { // from class: com.google.android.gms.internal.ads.zzdeu
            @Override // com.google.android.gms.internal.ads.zzdbs
            public final void zza(Object obj) {
                ((VideoController.VideoLifecycleCallbacks) obj).onVideoPause();
            }
        });
    }

    public final synchronized void zzc() {
        try {
            if (!this.zzb) {
                zzq(new zzdew());
                this.zzb = true;
            }
            zzq(new zzdbs() { // from class: com.google.android.gms.internal.ads.zzdex
                @Override // com.google.android.gms.internal.ads.zzdbs
                public final void zza(Object obj) {
                    ((VideoController.VideoLifecycleCallbacks) obj).onVideoPlay();
                }
            });
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized void zzd() {
        zzq(new zzdew());
        this.zzb = true;
    }
}
