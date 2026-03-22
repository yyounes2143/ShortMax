package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.util.Log;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: com.google.android.gms:play-services-measurement-base@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzco extends zzct {
    private final AtomicReference zza = new AtomicReference();
    private boolean zzb;

    public static final Object zzf(Bundle bundle, Class cls) {
        Object obj;
        if (bundle == null || (obj = bundle.get("r")) == null) {
            return null;
        }
        try {
            return cls.cast(obj);
        } catch (ClassCastException e10) {
            Log.w("AM", String.format("Unexpected object type. Expected, Received: %s, %s", cls.getCanonicalName(), obj.getClass().getCanonicalName()), e10);
            throw e10;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcu
    public final void zzb(Bundle bundle) {
        AtomicReference atomicReference = this.zza;
        synchronized (atomicReference) {
            try {
                atomicReference.set(bundle);
                this.zzb = true;
                this.zza.notify();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final String zzc(long j10) {
        return (String) zzf(zze(j10), String.class);
    }

    public final Long zzd(long j10) {
        return (Long) zzf(zze(j10), Long.class);
    }

    public final Bundle zze(long j10) {
        Bundle bundle;
        AtomicReference atomicReference = this.zza;
        synchronized (atomicReference) {
            if (!this.zzb) {
                try {
                    atomicReference.wait(j10);
                } catch (InterruptedException unused) {
                    return null;
                }
            }
            bundle = (Bundle) this.zza.get();
        }
        return bundle;
    }
}
