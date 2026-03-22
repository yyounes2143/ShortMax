package com.facebook.ads.redexgen.X;

import com.ss.ttvideoengine.log.IVideoEventLogger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: assets/audience_network.dex */
public abstract class SP {
    public static String[] A00 = {"WfUJfZecOVcHzzrBpx92ELEjWhu2m", "ABQQ5taiOepRv8Mi5iWio7B3aVpn", "lqinWbZDhv0Ny2jUIa5P6Phm3DGMmF2T", "dPu2X3zgdKacWkfyqxYrIyrhes", "b2oe8Nr0EFLLItrmCHMxvIgMHIYOeqfq", "h", "yKBaB64vFuTn7zYoCnuYBPVEHVJ9GNEq", ""};
    public static final AtomicReference<C2085cu> A01 = new AtomicReference<>();

    public static C2085cu A00() {
        AtomicReference<C2085cu> atomicReference = A01;
        if (A00[2].charAt(13) != '2') {
            throw new RuntimeException();
        }
        A00[3] = IVideoEventLogger.LOG_CALLBACK_TIME;
        return atomicReference.get();
    }

    public static void A01(C2085cu c2085cu) {
        if (c2085cu == null) {
            return;
        }
        AB.A00(A01, null, c2085cu);
    }
}
