package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfsg {
    private static zzfsg zzb;
    final zzfsc zza;

    private zzfsg(Context context) {
        this.zza = zzfsc.zzb(context);
        zzfsb.zza(context);
    }

    public static final zzfsg zza(Context context) {
        zzfsg zzfsgVar;
        synchronized (zzfsg.class) {
            try {
                if (zzb == null) {
                    zzb = new zzfsg(context);
                }
                zzfsgVar = zzb;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return zzfsgVar;
    }

    public final void zzb(@Nullable zzfsa zzfsaVar) throws IOException {
        synchronized (zzfsg.class) {
            zzfsc zzfscVar = this.zza;
            zzfscVar.zze("vendor_scoped_gpid_v2_id");
            zzfscVar.zze("vendor_scoped_gpid_v2_creation_time");
        }
    }
}
