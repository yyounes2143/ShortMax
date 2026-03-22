package com.google.android.play.core.integrity;

import android.content.Context;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
final class w implements aw {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.play.integrity.internal.w f19945a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.play.integrity.internal.w f19946b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.play.integrity.internal.w f19947c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.play.integrity.internal.w f19948d;

    /* renamed from: e  reason: collision with root package name */
    private final com.google.android.play.integrity.internal.w f19949e;

    /* renamed from: f  reason: collision with root package name */
    private final com.google.android.play.integrity.internal.w f19950f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ w(Context context, v vVar) {
        bc bcVar;
        o oVar;
        o oVar2;
        com.google.android.play.integrity.internal.s b10 = com.google.android.play.integrity.internal.t.b(context);
        this.f19945a = b10;
        bcVar = bb.f19883a;
        com.google.android.play.integrity.internal.w b11 = com.google.android.play.integrity.internal.r.b(bcVar);
        this.f19946b = b11;
        oVar = n.f19937a;
        au auVar = new au(b10, oVar);
        this.f19947c = auVar;
        oVar2 = n.f19937a;
        com.google.android.play.integrity.internal.w b12 = com.google.android.play.integrity.internal.r.b(new bp(b10, b11, auVar, oVar2));
        this.f19948d = b12;
        com.google.android.play.integrity.internal.w b13 = com.google.android.play.integrity.internal.r.b(new bu(b12));
        this.f19949e = b13;
        this.f19950f = com.google.android.play.integrity.internal.r.b(new ba(b12, b13));
    }

    @Override // com.google.android.play.core.integrity.aw
    public final StandardIntegrityManager a() {
        return (StandardIntegrityManager) this.f19950f.a();
    }
}
