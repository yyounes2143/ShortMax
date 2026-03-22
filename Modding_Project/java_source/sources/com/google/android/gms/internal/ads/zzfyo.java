package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfyo extends zzfwp {
    private final zzfyq zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfyo(zzfyq zzfyqVar, int i10) {
        super(zzfyqVar.size(), i10);
        this.zza = zzfyqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwp
    protected final Object zza(int i10) {
        return this.zza.get(i10);
    }
}
