package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import h7.n;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzpr implements n {
    private static final zzpr zza = new zzpr();
    private final n zzb = Suppliers.b(new zzpt());

    public static boolean zza() {
        zza.get().zza();
        return true;
    }

    public static boolean zzb() {
        return zza.get().zzb();
    }

    public static boolean zzc() {
        return zza.get().zzc();
    }

    @Override // h7.n
    /* renamed from: zzd */
    public final zzps get() {
        return (zzps) this.zzb.get();
    }
}
