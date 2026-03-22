package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzcjk implements zzfbt {
    private final zzcio zza;
    private Context zzb;
    private String zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzcjk(zzcio zzcioVar, zzcjs zzcjsVar) {
        this.zza = zzcioVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfbt
    public final /* synthetic */ zzfbt zza(@Nullable String str) {
        this.zzc = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfbt
    public final /* bridge */ /* synthetic */ zzfbt zzb(Context context) {
        context.getClass();
        this.zzb = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfbt
    public final zzfbu zzc() {
        zzhgz.zzc(this.zzb, Context.class);
        return new zzcjl(this.zza, this.zzb, this.zzc);
    }
}
