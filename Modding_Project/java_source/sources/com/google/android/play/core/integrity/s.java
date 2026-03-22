package com.google.android.play.core.integrity;

import android.content.Context;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.play.integrity.internal.w f19939a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.play.integrity.internal.w f19940b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.play.integrity.internal.w f19941c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.play.integrity.internal.w f19942d;

    /* renamed from: e  reason: collision with root package name */
    private final com.google.android.play.integrity.internal.w f19943e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ s(Context context, r rVar) {
        ad adVar;
        m mVar;
        m mVar2;
        com.google.android.play.integrity.internal.s b10 = com.google.android.play.integrity.internal.t.b(context);
        this.f19939a = b10;
        adVar = ac.f19830a;
        com.google.android.play.integrity.internal.w b11 = com.google.android.play.integrity.internal.r.b(adVar);
        this.f19940b = b11;
        mVar = l.f19932a;
        au auVar = new au(b10, mVar);
        this.f19941c = auVar;
        mVar2 = l.f19932a;
        com.google.android.play.integrity.internal.w b12 = com.google.android.play.integrity.internal.r.b(new al(b10, b11, auVar, mVar2));
        this.f19942d = b12;
        this.f19943e = com.google.android.play.integrity.internal.r.b(new ab(b12));
    }

    public final IntegrityManager a() {
        return (IntegrityManager) this.f19943e.a();
    }
}
