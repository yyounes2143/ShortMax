package com.google.android.play.core.integrity;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class au implements com.google.android.play.integrity.internal.s {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.play.integrity.internal.x f19872a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.play.integrity.internal.x f19873b;

    public au(com.google.android.play.integrity.internal.x xVar, com.google.android.play.integrity.internal.x xVar2) {
        this.f19872a = xVar;
        this.f19873b = xVar2;
    }

    @Override // com.google.android.play.integrity.internal.x
    /* renamed from: b */
    public final at a() {
        return new at(this.f19872a, this.f19873b);
    }
}
