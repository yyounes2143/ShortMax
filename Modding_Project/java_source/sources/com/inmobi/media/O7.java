package com.inmobi.media;

import android.view.View;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class O7 implements ef {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ T7 f23943a;

    public O7(T7 t72) {
        this.f23943a = t72;
    }

    @Override // com.inmobi.media.ef
    public final void a(View view, boolean z10) {
        C2879b1 c2879b1;
        Intrinsics.checkNotNullParameter(view, "view");
        T7 t72 = this.f23943a;
        if (z10) {
            t72.p();
            return;
        }
        D8 h10 = t72.h();
        if (h10 != null && (c2879b1 = h10.f23581l) != null) {
            c2879b1.a();
        }
    }
}
