package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzalf;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaku  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzaku {
    static final zzaku zza = new zzaku(true);
    private static volatile boolean zzb = false;
    private final Map<zzakt, zzalf.zzf<?, ?>> zzc;

    zzaku() {
        this.zzc = new HashMap();
    }

    public static zzaku zza() {
        return zza;
    }

    public final <ContainingType extends zzamm> zzalf.zzf<ContainingType, ?> zza(ContainingType containingtype, int i10) {
        return (zzalf.zzf<ContainingType, ?>) this.zzc.get(new zzakt(containingtype, i10));
    }

    private zzaku(boolean z10) {
        this.zzc = Collections.emptyMap();
    }
}
