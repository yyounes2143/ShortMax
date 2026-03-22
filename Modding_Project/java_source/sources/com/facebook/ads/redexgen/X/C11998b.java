package com.facebook.ads.redexgen.X;

import android.media.AudioTrack;
import android.media.metrics.LogSessionId;
/* renamed from: com.facebook.ads.redexgen.X.8b  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C11998b {
    public static void A00(AudioTrack audioTrack, C11877m c11877m) {
        LogSessionId A00 = c11877m.A00();
        LogSessionId logSessionId = LogSessionId.LOG_SESSION_ID_NONE;
        if (!A00.equals(logSessionId)) {
            audioTrack.setLogSessionId(A00);
        }
    }
}
