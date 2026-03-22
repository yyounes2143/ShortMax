package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.lang.reflect.Constructor;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzadp {
    private final zzado zza;
    private final AtomicBoolean zzb = new AtomicBoolean(false);

    public zzadp(zzado zzadoVar) {
        this.zza = zzadoVar;
    }

    @Nullable
    public final zzadv zza(Object... objArr) {
        Constructor zza;
        AtomicBoolean atomicBoolean = this.zzb;
        synchronized (atomicBoolean) {
            if (!atomicBoolean.get()) {
                try {
                    zza = this.zza.zza();
                } catch (ClassNotFoundException unused) {
                    this.zzb.set(true);
                } catch (Exception e10) {
                    throw new RuntimeException("Error instantiating extension", e10);
                }
            }
            zza = null;
        }
        if (zza == null) {
            return null;
        }
        try {
            return (zzadv) zza.newInstance(objArr);
        } catch (Exception e11) {
            throw new IllegalStateException("Unexpected error creating extractor", e11);
        }
    }
}
