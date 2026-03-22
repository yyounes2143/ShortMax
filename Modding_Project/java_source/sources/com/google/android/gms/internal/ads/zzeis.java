package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdError;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzeis implements zzcxh {
    boolean zza;
    final /* synthetic */ zzedp zzb;
    final /* synthetic */ zzcak zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeis(zzeit zzeitVar, zzedp zzedpVar, zzcak zzcakVar) {
        this.zzb = zzedpVar;
        this.zzc = zzcakVar;
        Objects.requireNonNull(zzeitVar);
        this.zza = false;
    }

    private final synchronized void zze(com.google.android.gms.ads.internal.client.zze zzeVar) {
        int i10 = 1;
        if (true == ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfO)).booleanValue()) {
            i10 = 3;
        }
        this.zzc.zzd(new zzedq(i10, zzeVar));
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final synchronized void zza(int i10) {
        if (this.zza) {
            return;
        }
        this.zza = true;
        zze(new com.google.android.gms.ads.internal.client.zze(i10, zzeit.zze(this.zzb.zza, i10), AdError.UNDEFINED_DOMAIN, null, null));
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final synchronized void zzb(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (this.zza) {
            return;
        }
        this.zza = true;
        zze(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final synchronized void zzc(int i10, @Nullable String str) {
        try {
            if (this.zza) {
                return;
            }
            this.zza = true;
            if (str == null) {
                str = zzeit.zze(this.zzb.zza, i10);
            }
            zze(new com.google.android.gms.ads.internal.client.zze(i10, str, AdError.UNDEFINED_DOMAIN, null, null));
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final synchronized void zzd() {
        this.zzc.zzc(null);
    }
}
