package com.google.android.gms.internal.common;
/* compiled from: com.google.android.gms:play-services-basement@@18.8.0 */
/* loaded from: classes4.dex */
final class zzae extends zzz {
    private final zzah zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzae(zzah zzahVar, int i10) {
        super(zzahVar.size(), i10);
        this.zza = zzahVar;
    }

    @Override // com.google.android.gms.internal.common.zzz
    protected final Object zza(int i10) {
        return this.zza.get(i10);
    }
}
