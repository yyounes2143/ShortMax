package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.play.integrity.internal.o0;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class bp implements com.google.android.play.integrity.internal.s {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.play.integrity.internal.x f19915a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.play.integrity.internal.x f19916b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.play.integrity.internal.x f19917c;

    public bp(com.google.android.play.integrity.internal.x xVar, com.google.android.play.integrity.internal.x xVar2, com.google.android.play.integrity.internal.x xVar3, com.google.android.play.integrity.internal.x xVar4) {
        this.f19915a = xVar;
        this.f19916b = xVar2;
        this.f19917c = xVar3;
    }

    @Override // com.google.android.play.integrity.internal.x
    public final /* bridge */ /* synthetic */ Object a() {
        return new bn((Context) this.f19915a.a(), (o0) this.f19916b.a(), ((au) this.f19917c).a(), new j());
    }
}
