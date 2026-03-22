package com.inmobi.media;

import com.inmobi.media.Ce;
/* loaded from: classes5.dex */
public final class Ce implements InterfaceC2994i1 {
    public static final void b(boolean z10) {
        if (z10) {
            De.a(De.f23600a);
        } else {
            De.a();
        }
    }

    public final void a(final boolean z10) {
        Uc.a(z10);
        Uc.a(new Runnable() { // from class: ub.m
            @Override // java.lang.Runnable
            public final void run() {
                Ce.b(z10);
            }
        });
    }
}
