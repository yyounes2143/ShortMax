package com.google.android.play.core.integrity;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
final class b extends bq {

    /* renamed from: a  reason: collision with root package name */
    private String f19879a;

    /* renamed from: b  reason: collision with root package name */
    private y f19880b;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.integrity.bq
    public final bq a(y yVar) {
        this.f19880b = yVar;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.integrity.bq
    public final bq b(String str) {
        if (str != null) {
            this.f19879a = str;
            return this;
        }
        throw new NullPointerException("Null token");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.integrity.bq
    public final br c() {
        y yVar;
        String str = this.f19879a;
        if (str != null && (yVar = this.f19880b) != null) {
            return new br(str, yVar);
        }
        StringBuilder sb2 = new StringBuilder();
        if (this.f19879a == null) {
            sb2.append(" token");
        }
        if (this.f19880b == null) {
            sb2.append(" integrityDialogWrapper");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb2.toString()));
    }
}
