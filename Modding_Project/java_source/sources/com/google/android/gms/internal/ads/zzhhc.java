package com.google.android.gms.internal.ads;

import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzhhc {
    private final List zza;
    private final List zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzhhc(int i10, int i11, zzhhb zzhhbVar) {
        this.zza = zzhgo.zzc(i10);
        this.zzb = zzhgo.zzc(i11);
    }

    public final zzhhc zza(zzhha zzhhaVar) {
        this.zzb.add(zzhhaVar);
        return this;
    }

    public final zzhhc zzb(zzhha zzhhaVar) {
        this.zza.add(zzhhaVar);
        return this;
    }

    public final zzhhd zzc() {
        return new zzhhd(this.zza, this.zzb, null);
    }
}
