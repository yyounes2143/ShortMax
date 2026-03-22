package com.google.android.play.core.integrity;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
final class a extends ap {

    /* renamed from: a  reason: collision with root package name */
    private String f19826a;

    /* renamed from: b  reason: collision with root package name */
    private y f19827b;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.integrity.ap
    public final ap a(y yVar) {
        this.f19827b = yVar;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.integrity.ap
    public final ap b(String str) {
        this.f19826a = str;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.integrity.ap
    public final aq c() {
        y yVar;
        String str = this.f19826a;
        if (str != null && (yVar = this.f19827b) != null) {
            return new aq(str, yVar);
        }
        StringBuilder sb2 = new StringBuilder();
        if (this.f19826a == null) {
            sb2.append(" token");
        }
        if (this.f19827b == null) {
            sb2.append(" integrityDialogWrapper");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb2.toString()));
    }
}
