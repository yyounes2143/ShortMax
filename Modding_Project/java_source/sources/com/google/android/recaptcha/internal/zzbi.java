package com.google.android.recaptcha.internal;

import gt.d1;
import gt.g;
import gt.g0;
import gt.q0;
import java.util.concurrent.Executors;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzbi {
    @NotNull
    private final g0 zza = i.b();
    @NotNull
    private final g0 zzb;
    @NotNull
    private final g0 zzc;
    @NotNull
    private final g0 zzd;

    public zzbi() {
        g0 a10 = i.a(d1.c(Executors.newSingleThreadExecutor()));
        g.d(a10, null, null, new zzbh(null), 3, null);
        this.zzb = a10;
        this.zzc = i.a(q0.b());
        g0 a11 = i.a(d1.c(Executors.newSingleThreadExecutor()));
        g.d(a11, null, null, new zzbg(null), 3, null);
        this.zzd = a11;
    }

    @NotNull
    public final g0 zza() {
        return this.zzc;
    }

    @NotNull
    public final g0 zzb() {
        return this.zza;
    }

    @NotNull
    public final g0 zzc() {
        return this.zzd;
    }

    @NotNull
    public final g0 zzd() {
        return this.zzb;
    }
}
