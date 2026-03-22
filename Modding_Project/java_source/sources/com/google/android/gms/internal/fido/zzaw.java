package com.google.android.gms.internal.fido;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-fido@@20.1.0 */
/* loaded from: classes4.dex */
public final class zzaw extends zzar {
    private final zzaz zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaw(zzaz zzazVar, int i10) {
        super(zzazVar.size(), i10);
        this.zza = zzazVar;
    }

    @Override // com.google.android.gms.internal.fido.zzar
    protected final Object zza(int i10) {
        return this.zza.get(i10);
    }
}
