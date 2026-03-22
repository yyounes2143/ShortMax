package com.google.android.gms.internal.p003firebaseauthapi;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzpl  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzpl<P> {
    private static final zzaaj zza = zzaaj.zza(new byte[0]);
    private final Map<zzaaj, List<P>> zzb;

    public final Iterable<P> zza(byte[] bArr) {
        List<P> list;
        List<P> list2 = this.zzb.get(zza);
        if (bArr.length >= 5) {
            list = this.zzb.get(zzaaj.zza(bArr, 0, 5));
        } else {
            list = null;
        }
        if (list2 == null && list == null) {
            return new ArrayList();
        }
        if (list2 == null) {
            return list;
        }
        if (list == null) {
            return list2;
        }
        return new zzpo(this, list, list2);
    }

    private zzpl(Map<zzaaj, List<P>> map) {
        this.zzb = map;
    }
}
