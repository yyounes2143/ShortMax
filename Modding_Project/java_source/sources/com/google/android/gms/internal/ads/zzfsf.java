package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfsf extends zzfsd {
    private static zzfsf zzd;

    private zzfsf(Context context) {
        super(context, "paidv2_id", "paidv2_creation_time", "PaidV2LifecycleImpl");
    }

    public static final zzfsf zzi(Context context) {
        zzfsf zzfsfVar;
        synchronized (zzfsf.class) {
            try {
                if (zzd == null) {
                    zzd = new zzfsf(context);
                }
                zzfsfVar = zzd;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return zzfsfVar;
    }

    public final zzfsa zzh(long j10, boolean z10) throws IOException {
        synchronized (zzfsf.class) {
            try {
                if (!this.zzc.zzd()) {
                    return new zzfsa();
                }
                return zzb(null, null, j10, z10);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void zzj() throws IOException {
        synchronized (zzfsf.class) {
            try {
                if (zzg(false)) {
                    zzf(false);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
