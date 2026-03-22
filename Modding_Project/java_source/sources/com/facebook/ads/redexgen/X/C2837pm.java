package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Rect;
import android.os.Handler;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.pm  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2837pm {
    public static String[] A0E = {"hvB6Y5lFyDpOUo5WE2d6RBuRXgbY5ZUm", "NE", "ywY8EvofFV55395JkJDayoeTErGWKbkG", "zJ8LsRBLLSys8CPHp", "gH0zTalybZGhm0qBmcsXdCP28l4r1an9", "kduBCn7ltQGfodptcqURcnO6EcdnH0I2", "cBbzau3JoVbeDspRwe3LG6GIj8yddyUH", "tX"};
    public InterfaceC2840pp A00;
    public boolean A01;
    public final Rect A02;
    public final Rect A03;
    public final Handler A04;
    public final InterfaceC2293gK A05;
    public final InterfaceC2848px A06;
    public final A7 A07;
    public final C2839po A08;
    public final A6 A09;
    public final Runnable A0A;
    public final List<Rect> A0B;
    public final List<InterfaceC2825pa> A0C;
    public final List<C2845pu<?, ?>> A0D;

    public C2837pm(A7 a72, InterfaceC2848px interfaceC2848px, InterfaceC2293gK interfaceC2293gK, A6 a62, C2839po c2839po, Handler handler) {
        this(a72, interfaceC2848px, interfaceC2293gK, a62, c2839po, handler, 100);
    }

    public C2837pm(A7 a72, InterfaceC2848px interfaceC2848px, InterfaceC2293gK interfaceC2293gK, A6 a62, C2839po c2839po, Handler handler, int i10) {
        this.A03 = new Rect();
        this.A02 = new Rect();
        this.A0C = new ArrayList();
        this.A0D = new ArrayList();
        this.A0B = new ArrayList();
        this.A01 = false;
        this.A07 = a72;
        this.A06 = interfaceC2848px;
        this.A05 = interfaceC2293gK;
        this.A09 = a62;
        this.A08 = c2839po;
        this.A04 = handler;
        this.A0A = new RunnableC2838pn(this, i10, new Exception());
    }

    public static Activity A00(Context context) {
        while (context instanceof ContextWrapper) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return null;
    }

    private void A04(long j10) {
        if (this.A0C.isEmpty()) {
            this.A06.A9R(this.A0B);
            this.A09.A4Z(j10, this.A0B);
            this.A09.A6H(null);
            return;
        }
        throw new IllegalStateException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A05(long j10) {
        this.A06.A9R(this.A0B);
        this.A09.A4Z(j10, this.A0B);
        if (this.A0C.isEmpty()) {
            if (this.A0D.isEmpty()) {
                this.A08.A0A(this.A0C, this.A0D);
                for (final InterfaceC2825pa interfaceC2825pa : this.A0C) {
                    if (this.A07.A00) {
                        this.A08.A09(interfaceC2825pa, new InterfaceC12359v() { // from class: com.facebook.ads.redexgen.X.1I
                            @Override // com.facebook.ads.redexgen.X.InterfaceC12359v
                            public final Object AAB(Object obj) {
                                return C2837pm.this.A0B(interfaceC2825pa, (C2845pu) obj);
                            }
                        });
                    } else {
                        A07(interfaceC2825pa, this.A08.A04(interfaceC2825pa));
                    }
                }
                A6 a62 = this.A09;
                String[] strArr = A0E;
                if (strArr[6].charAt(3) == strArr[4].charAt(3)) {
                    String[] strArr2 = A0E;
                    strArr2[2] = "nrcH38GFR0AnNATGilmIDxGLEfq4UsQc";
                    strArr2[5] = "6vipxWZV3AO1VWKwqmDQLGTjEEAJtLqC";
                    a62.A6H(this.A0D);
                    if (this.A00 != null) {
                        this.A00.AF8();
                    }
                    this.A0C.clear();
                    if (A0E[0].charAt(13) != 'n') {
                        A0E[0] = "FnmTy5Nmh2EcYtYiSa9Vz9TfA3yApsYC";
                        this.A0D.clear();
                        return;
                    }
                }
                throw new RuntimeException();
            }
            throw new IllegalStateException();
        }
        throw new IllegalStateException();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.pu != com.instagram.common.viewpoint.core.ViewpointData<?, ?> */
    private void A07(InterfaceC2825pa interfaceC2825pa, C2845pu<?, ?> c2845pu) {
        for (Rect rect : this.A0B) {
            Rect containerRect = this.A03;
            if (interfaceC2825pa.A9Q(containerRect, this.A02, rect) && c2845pu != C2845pu.A0B) {
                A6 a62 = this.A09;
                Rect rect2 = this.A03;
                Rect rect3 = this.A02;
                A7 a72 = this.A07;
                String[] strArr = A0E;
                if (strArr[6].charAt(3) != strArr[4].charAt(3)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0E;
                strArr2[1] = "vG";
                strArr2[7] = "kB";
                a62.A3y(c2845pu, rect2, rect3, a72.A01);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A08() {
        Context context = this.A06.A7M();
        if (context == null) {
            return true;
        }
        Activity A00 = A00(context);
        if (A00 != null) {
            boolean isDestroyed = A00.isDestroyed();
            if (A0E[3].length() != 17) {
                throw new RuntimeException();
            }
            String[] strArr = A0E;
            strArr[2] = "bz230dZZFwB5VtBTUF6Wd1FYETvWTo5q";
            strArr[5] = "SaD2YYriklneEcKSamPXZGVrEiYqxj4X";
            if (isDestroyed) {
                return true;
            }
        }
        return false;
    }

    public final /* synthetic */ C2819pL A0B(InterfaceC2825pa interfaceC2825pa, C2845pu c2845pu) {
        A07(interfaceC2825pa, c2845pu);
        return null;
    }

    public final void A0C() {
        if (this.A00 != null) {
            this.A00.AF8();
        }
        if (this.A01) {
            this.A04.removeCallbacks(this.A0A);
            A04(this.A05.AC6());
        }
        this.A01 = false;
    }

    public final void A0D() {
        if (!this.A01) {
            this.A01 = true;
            this.A04.post(this.A0A);
        }
    }

    public final void A0E(InterfaceC2842pr interfaceC2842pr) {
        this.A09.AJA(interfaceC2842pr);
    }

    public final void A0F(InterfaceC2840pp interfaceC2840pp) {
        this.A00 = interfaceC2840pp;
    }
}
