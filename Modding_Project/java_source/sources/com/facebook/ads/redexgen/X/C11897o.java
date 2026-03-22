package com.facebook.ads.redexgen.X;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
/* renamed from: com.facebook.ads.redexgen.X.7o  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C11897o {
    public static final AudioAttributes A00 = new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(0).build();

    public static int A00(int i10, int i11) {
        for (int i12 = 8; i12 > 0; i12--) {
            AudioFormat.Builder sampleRate = new AudioFormat.Builder().setEncoding(i10).setSampleRate(i11);
            int channelCount = AbstractC10974a.A01(i12);
            AudioFormat audioFormat = sampleRate.setChannelMask(channelCount).build();
            if (AudioTrack.isDirectPlaybackSupported(audioFormat, A00)) {
                return i12;
            }
        }
        return 0;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1h != com.google.common.collect.ImmutableList$Builder<java.lang.Integer> */
    public static int[] A01() {
        AbstractC2667mj abstractC2667mj;
        C10281h A01 = AbstractC1252Am.A01();
        abstractC2667mj = C11907p.A06;
        AbstractC2831pg A0N = abstractC2667mj.keySet().A0N();
        while (A0N.hasNext()) {
            int encoding = ((Integer) A0N.next()).intValue();
            if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(encoding).setSampleRate(48000).build(), A00)) {
                A01.A04(Integer.valueOf(encoding));
            }
        }
        A01.A04(2);
        return AD.A0C(A01.A05());
    }
}
