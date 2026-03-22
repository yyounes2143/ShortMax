package com.google.android.play.core.integrity;

import android.content.Context;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
final class q implements x {

    /* renamed from: a  reason: collision with root package name */
    private Context f19938a;

    private q() {
        throw null;
    }

    public final q a(Context context) {
        context.getClass();
        this.f19938a = context;
        return this;
    }

    @Override // com.google.android.play.core.integrity.x
    public final s b() {
        com.google.android.play.integrity.internal.v.a(this.f19938a, Context.class);
        return new s(this.f19938a, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ q(p pVar) {
    }
}
