package com.facebook.ads.redexgen.X;

import android.media.AudioAttributes;
/* renamed from: com.facebook.ads.redexgen.X.1N  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C1N {
    public final AudioAttributes A00;

    public C1N(C2802oy c2802oy) {
        AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(c2802oy.A02).setFlags(c2802oy.A03).setUsage(c2802oy.A05);
        if (AbstractC10974a.A02 >= 29) {
            C1L.A00(usage, c2802oy.A01);
        }
        if (AbstractC10974a.A02 >= 32) {
            C1M.A00(usage, c2802oy.A04);
        }
        this.A00 = usage.build();
    }
}
