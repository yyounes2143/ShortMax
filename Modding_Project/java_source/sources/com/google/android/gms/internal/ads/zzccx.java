package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzccx {
    private long zza;

    public final long zza(ByteBuffer byteBuffer) {
        zzart zzartVar;
        zzars zzarsVar;
        long j10 = this.zza;
        if (j10 > 0) {
            return j10;
        }
        try {
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.flip();
            Iterator it = new zzaro(new zzccw(duplicate), zzcda.zzb).zzd().iterator();
            while (true) {
                zzartVar = null;
                if (it.hasNext()) {
                    zzarq zzarqVar = (zzarq) it.next();
                    if (zzarqVar instanceof zzars) {
                        zzarsVar = (zzars) zzarqVar;
                        break;
                    }
                } else {
                    zzarsVar = null;
                    break;
                }
            }
            Iterator it2 = zzarsVar.zzd().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                zzarq zzarqVar2 = (zzarq) it2.next();
                if (zzarqVar2 instanceof zzart) {
                    zzartVar = (zzart) zzarqVar2;
                    break;
                }
            }
            long zzc = (zzartVar.zzc() * 1000) / zzartVar.zzd();
            this.zza = zzc;
            return zzc;
        } catch (IOException | RuntimeException unused) {
            return 0L;
        }
    }
}
