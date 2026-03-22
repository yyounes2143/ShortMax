package com.google.android.gms.internal.p003firebaseauthapi;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzahn  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzahn {
    private List<zzahk> zza;

    public zzahn() {
        this.zza = new ArrayList();
    }

    public final List<zzahk> zza() {
        return this.zza;
    }

    public zzahn(List<zzahk> list) {
        this.zza = Collections.unmodifiableList(list);
    }
}
