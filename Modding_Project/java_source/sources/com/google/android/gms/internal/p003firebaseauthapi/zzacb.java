package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import java.util.List;
import java.util.Objects;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzacb  reason: invalid package */
/* loaded from: classes4.dex */
final class zzacb implements zzafv<zzahl> {
    private final /* synthetic */ zzafv zza;
    private final /* synthetic */ zzael zzb;
    private final /* synthetic */ zzahv zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzacb(zzacc zzaccVar, zzafv zzafvVar, zzael zzaelVar, zzahv zzahvVar) {
        this.zza = zzafvVar;
        this.zzb = zzaelVar;
        this.zzc = zzahvVar;
        Objects.requireNonNull(zzaccVar);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafs
    public final void zza(@Nullable String str) {
        this.zza.zza(str);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafv
    public final /* synthetic */ void zza(zzahl zzahlVar) {
        List<zzahk> zza = zzahlVar.zza();
        if (zza != null && !zza.isEmpty()) {
            this.zzb.zza(this.zzc, zza.get(0));
        } else {
            this.zza.zza("No users");
        }
    }
}
