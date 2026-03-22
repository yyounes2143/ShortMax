package com.google.android.gms.internal.p003firebaseauthapi;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.Objects;
import v7.j;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzabr  reason: invalid package */
/* loaded from: classes4.dex */
final class zzabr implements zzafv<zzajl> {
    private final /* synthetic */ zzael zza;
    private final /* synthetic */ zzabs zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzabr(zzabs zzabsVar, zzael zzaelVar) {
        this.zza = zzaelVar;
        Objects.requireNonNull(zzabsVar);
        this.zzb = zzabsVar;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafs
    public final void zza(@Nullable String str) {
        this.zza.zza(j.a(str));
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafv
    public final /* synthetic */ void zza(zzajl zzajlVar) {
        zzajl zzajlVar2 = zzajlVar;
        if (!TextUtils.isEmpty(zzajlVar2.zza()) && !TextUtils.isEmpty(zzajlVar2.zzb())) {
            this.zzb.zza.zza(new zzahv(zzajlVar2.zzb(), zzajlVar2.zza(), Long.valueOf(zzahx.zza(zzajlVar2.zza())), "Bearer"), null, null, Boolean.FALSE, null, this.zza, this);
            return;
        }
        this.zza.zza(j.a("INTERNAL_SUCCESS_SIGN_OUT"));
    }
}
