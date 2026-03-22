package com.facebook.ads.redexgen.X;

import android.animation.ObjectAnimator;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.a2  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC1907a2 implements Runnable {
    public static byte[] A01;
    public final /* synthetic */ C11395q A00;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 45);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{12, 1, 29, 5, 12};
    }

    public RunnableC1907a2(C11395q c11395q) {
        this.A00 = c11395q;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String A00 = A00(0, 5, 64);
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A0T.A0F().AJx();
            ObjectAnimator.ofFloat(this.A00.A0Q, A00, 1.0f, 0.0f).setDuration(100L).start();
            ObjectAnimator.ofFloat(this.A00.A0P, A00, 1.0f, 0.0f).setDuration(100L).start();
            ObjectAnimator duration = ObjectAnimator.ofFloat(((AbstractC1900Zv) this.A00).A09, A00, 1.0f, 0.0f).setDuration(100L);
            duration.addListener(new C1906a1(this));
            duration.start();
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
