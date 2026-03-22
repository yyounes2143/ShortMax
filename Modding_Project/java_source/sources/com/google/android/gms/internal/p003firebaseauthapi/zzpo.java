package com.google.android.gms.internal.p003firebaseauthapi;

import java.util.Iterator;
import java.util.List;
import java.util.Objects;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzpo  reason: invalid package */
/* loaded from: classes4.dex */
final class zzpo implements Iterable {
    private final /* synthetic */ List zza;
    private final /* synthetic */ List zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzpo(zzpl zzplVar, List list, List list2) {
        this.zza = list;
        this.zzb = list2;
        Objects.requireNonNull(zzplVar);
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new zzpq(this.zza.iterator(), this.zzb.iterator());
    }
}
