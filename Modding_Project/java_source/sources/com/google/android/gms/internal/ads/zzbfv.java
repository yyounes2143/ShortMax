package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbfv {
    private static final AtomicReference zza = new AtomicReference();
    private static final AtomicReference zzb = new AtomicReference();

    static {
        new AtomicBoolean();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzbft zza() {
        return (zzbft) zza.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzbfu zzb() {
        return (zzbfu) zzb.get();
    }

    public static void zzc(zzbft zzbftVar) {
        zza.set(zzbftVar);
    }
}
