package com.google.android.play.integrity.internal;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
final class o extends n {

    /* renamed from: c  reason: collision with root package name */
    private final ar f20010c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(ar arVar, int i10) {
        super(arVar.size(), i10);
        this.f20010c = arVar;
    }

    @Override // com.google.android.play.integrity.internal.n
    protected final Object a(int i10) {
        return this.f20010c.get(i10);
    }
}
