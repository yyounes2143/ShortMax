package com.google.android.play.core.integrity;

import android.content.Context;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
final class u implements av {

    /* renamed from: a  reason: collision with root package name */
    private Context f19944a;

    private u() {
        throw null;
    }

    public final u a(Context context) {
        context.getClass();
        this.f19944a = context;
        return this;
    }

    @Override // com.google.android.play.core.integrity.av
    public final aw b() {
        com.google.android.play.integrity.internal.v.a(this.f19944a, Context.class);
        return new w(this.f19944a, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ u(t tVar) {
    }
}
