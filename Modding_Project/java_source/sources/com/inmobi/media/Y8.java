package com.inmobi.media;

import android.view.View;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Y8 implements ef {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C2870a9 f24403a;

    public Y8(C2870a9 c2870a9) {
        this.f24403a = c2870a9;
    }

    @Override // com.inmobi.media.ef
    public final void a(View view, boolean z10) {
        C2879b1 c2879b1;
        Intrinsics.checkNotNullParameter(view, "view");
        C2870a9 c2870a9 = this.f24403a;
        if (z10) {
            c2870a9.p();
        } else {
            D8 h10 = c2870a9.h();
            if (h10 != null && (c2879b1 = h10.f23581l) != null) {
                c2879b1.a();
            }
        }
        this.f24403a.a(view, z10);
    }
}
