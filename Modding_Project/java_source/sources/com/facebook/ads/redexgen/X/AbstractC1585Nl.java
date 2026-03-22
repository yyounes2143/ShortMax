package com.facebook.ads.redexgen.X;

import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.Nullable;
/* renamed from: com.facebook.ads.redexgen.X.Nl  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1585Nl {
    @Nullable
    public static HandlerC1584Nk A00;
    public static final AtomicBoolean A01 = new AtomicBoolean();

    public static HandlerC1584Nk A00(C2085cu c2085cu) {
        if (A00 == null) {
            A00 = new HandlerC1584Nk(c2085cu);
        }
        return A00;
    }

    public static void A01(C2085cu c2085cu) {
        if (UA.A0F(c2085cu)) {
            A03(c2085cu);
        }
    }

    public static void A02(C2085cu c2085cu) {
        if (UA.A0E(c2085cu)) {
            A03(c2085cu);
        }
    }

    public static void A03(C2085cu c2085cu) {
        if (A01.compareAndSet(false, true)) {
            XJ.A01.execute(new C2321go(c2085cu));
        }
    }
}
