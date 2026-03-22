package com.google.android.gms.internal.p002authapi;
/* compiled from: com.google.android.gms:play-services-auth@@21.4.0 */
/* renamed from: com.google.android.gms.internal.auth-api.zbbg  reason: invalid package */
/* loaded from: classes4.dex */
final class zbbg extends zbbe {
    private final zbbi zba;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zbbg(zbbi zbbiVar, int i10) {
        super(zbbiVar.size(), i10);
        this.zba = zbbiVar;
    }

    @Override // com.google.android.gms.internal.p002authapi.zbbe
    protected final Object zba(int i10) {
        return this.zba.get(i10);
    }
}
