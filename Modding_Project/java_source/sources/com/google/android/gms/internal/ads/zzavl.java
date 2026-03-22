package com.google.android.gms.internal.ads;

import com.ss.ttvideoengine.DataLoaderHelper;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzavl implements Runnable {
    final /* synthetic */ zzavm zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzavl(zzavm zzavmVar) {
        this.zza = zzavmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z10;
        zzfoi zzfoiVar;
        Object obj2;
        zzavm zzavmVar = this.zza;
        obj = zzavmVar.zzo;
        synchronized (obj) {
            z10 = zzavmVar.zzp;
            if (!z10) {
                zzavmVar.zzp = true;
                try {
                    zzavm.zzj(zzavmVar);
                } catch (Exception e10) {
                    zzfoiVar = this.zza.zzh;
                    zzfoiVar.zzc(DataLoaderHelper.DATALOADER_KEY_INT_OPTIMIZE_RANGE, -1L, e10);
                }
                zzavm zzavmVar2 = this.zza;
                obj2 = zzavmVar2.zzo;
                synchronized (obj2) {
                    zzavmVar2.zzp = false;
                }
            }
        }
    }
}
