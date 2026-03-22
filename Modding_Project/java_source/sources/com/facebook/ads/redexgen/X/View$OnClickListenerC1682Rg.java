package com.facebook.ads.redexgen.X;

import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import java.util.Arrays;
import java.util.Map;
import kotlin.jvm.internal.ByteCompanionObject;
/* renamed from: com.facebook.ads.redexgen.X.Rg  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1682Rg implements View.OnClickListener, View.OnLongClickListener, View.OnTouchListener, SM {
    public static byte[] A02;
    public static String[] A03 = {"2Mr7WzO4XT19fyb3DHhbNTMzGWXczG8b", "vf19oH1ZBxP9VPI3JVFDPhemIBzJ7OC4", "PwSJ9ELrmEQEpkj", "NKBqcIyQCWq", "qemkSyFbN3a9gQ2aUzusWvKKRIknTA5w", "Z", "UIuvCrnGUlyr13fhGKhlPOBYvJPgs1Zm", "jOlkEqTUPEoF6L4suBriQ9wTaVLjQjL5"};
    public final C2111dL A00;
    public final /* synthetic */ C1652Qc A01;

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i10, i10 + i11);
        int i13 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A03[7].charAt(17) == 't') {
                throw new RuntimeException();
            }
            A03[6] = "LYjyLl4kg8CHjw2beKSdtMq0XfNpXvKm";
            if (i13 >= length) {
                return new String(copyOfRange);
            }
            byte b10 = (byte) ((copyOfRange[i13] ^ i12) ^ 40);
            String[] strArr = A03;
            if (strArr[3].length() == strArr[5].length()) {
                throw new RuntimeException();
            }
            A03[6] = "YSbRSDMNs4CLdH15XbZL4GcvXcpOIsjI";
            copyOfRange[i13] = b10;
            i13++;
        }
    }

    public static void A02() {
        A02 = new byte[]{101, 64, 4, 71, 69, 74, 74, 75, 80, 4, 70, 65, 4, 71, 72, 77, 71, 79, 65, 64, 4, 70, 65, 66, 75, 86, 65, 4, 77, 80, 4, 77, 87, 4, 82, 77, 65, 83, 65, 64, 10, 42, 5, 0, 10, 2, 26, 73, 1, 8, 25, 25, 12, 7, 12, 13, 73, 29, 6, 6, 73, 15, 8, 26, 29, 71, 13, 9, 10, 62, 47, 34, 46, 37, 40, 46, 5, 46, 63, 60, 36, 57, 32, 24, 57, 118, 34, 57, 35, 53, 62, 118, 50, 55, 34, 55, 118, 36, 51, 53, 57, 36, 50, 51, 50, 122, 118, 38, 58, 51, 55, 37, 51, 118, 51, 56, 37, 35, 36, 51, 118, 34, 57, 35, 53, 62, 118, 51, 32, 51, 56, 34, 37, 118, 36, 51, 55, 53, 62, 118, 34, 62, 51, 118, 55, 50, 118, 0, 63, 51, 33, 118, 52, 47, 118, 36, 51, 34, 35, 36, 56, 63, 56, 49, 118, 48, 55, 58, 37, 51, 118, 63, 48, 118, 47, 57, 35, 118, 63, 56, 34, 51, 36, 53, 51, 38, 34, 118, 34, 62, 51, 118, 51, 32, 51, 56, 34, 120, 13, 11, 16, 120, 98, ByteCompanionObject.MAX_VALUE};
    }

    static {
        A02();
    }

    public View$OnClickListenerC1682Rg(C1652Qc c1652Qc, C2111dL c2111dL) {
        this.A01 = c1652Qc;
        this.A00 = c2111dL;
    }

    public /* synthetic */ View$OnClickListenerC1682Rg(C1652Qc c1652Qc, C2111dL c2111dL, TB tb2) {
        this(c1652Qc, c2111dL);
    }

    private Map<String, String> A01() {
        C2184eX c2184eX;
        XH xh2;
        EnumC1770Us enumC1770Us;
        boolean z10;
        boolean z11;
        EnumC1770Us enumC1770Us2;
        C1894Zp c1894Zp = new C1894Zp();
        c2184eX = this.A01.A0R;
        C1894Zp A032 = c1894Zp.A03(c2184eX);
        xh2 = this.A01.A0f;
        Map<String, String> A05 = A032.A02(xh2).A05();
        enumC1770Us = this.A01.A0I;
        if (enumC1770Us != null) {
            enumC1770Us2 = this.A01.A0I;
            A05.put(A00(201, 3, 62), String.valueOf(enumC1770Us2.A05()));
        }
        z10 = this.A01.A0W;
        if (z10) {
            z11 = this.A01.A0W;
            A05.put(A00(198, 3, 75), String.valueOf(z11));
        }
        return A05;
    }

    private void A03(Map<String, String> extraData) {
        if (this.A01.A0a != null) {
            this.A01.A0a.A0M(extraData);
        }
    }

    @Override // com.facebook.ads.redexgen.X.SM
    public final C2111dL A6e() {
        return this.A00;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        XH xh2;
        C2111dL c2111dL;
        XH xh3;
        C2111dL c2111dL2;
        XH xh4;
        XH xh5;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            xh2 = this.A01.A0f;
            boolean A08 = xh2.A08();
            String A00 = A00(66, 17, 99);
            if (!A08) {
                Log.e(A00, A00(83, 115, 126));
            }
            c2111dL = this.A01.A0c;
            int minimumElapsedTime = U7.A0K(c2111dL);
            if (minimumElapsedTime >= 0) {
                xh4 = this.A01.A0f;
                if (xh4.A03() < minimumElapsedTime) {
                    xh5 = this.A01.A0f;
                    if (!xh5.A07()) {
                        Log.e(A00, A00(0, 41, 12));
                        return;
                    } else {
                        Log.e(A00, A00(41, 25, 65));
                        return;
                    }
                }
            }
            xh3 = this.A01.A0f;
            c2111dL2 = this.A01.A0c;
            if (xh3.A09(c2111dL2)) {
                if (this.A01.A0a != null) {
                    this.A01.A0a.A0N(A01());
                    return;
                }
                return;
            }
            A03(A01());
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
            String[] strArr = A03;
            if (strArr[1].charAt(15) != strArr[0].charAt(15)) {
                throw new RuntimeException();
            }
            A03[7] = "EqeSsMwGTYaeKofhe8hU7ULkNSCE0y6O";
        }
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        View view2;
        C1891Zm c1891Zm;
        C1891Zm c1891Zm2;
        View view3;
        View view4;
        C1891Zm c1891Zm3;
        C1891Zm c1891Zm4;
        view2 = this.A01.A04;
        if (view2 != null) {
            c1891Zm = this.A01.A0L;
            if (c1891Zm != null) {
                c1891Zm2 = this.A01.A0L;
                view3 = this.A01.A04;
                int width = view3.getWidth();
                view4 = this.A01.A04;
                c1891Zm2.setBounds(0, 0, width, view4.getHeight());
                c1891Zm3 = this.A01.A0L;
                c1891Zm4 = this.A01.A0L;
                c1891Zm3.A0D(!c1891Zm4.A0E());
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        XH xh2;
        C2111dL c2111dL;
        View view2;
        View.OnTouchListener onTouchListener;
        View.OnTouchListener onTouchListener2;
        xh2 = this.A01.A0f;
        c2111dL = this.A01.A0c;
        view2 = this.A01.A04;
        xh2.A06(c2111dL, motionEvent, view2, view);
        onTouchListener = this.A01.A02;
        if (onTouchListener != null) {
            onTouchListener2 = this.A01.A02;
            if (A03[2].length() == 9) {
                throw new RuntimeException();
            }
            String[] strArr = A03;
            strArr[1] = "w4fxh8qGKfQUI633kdvfD6D1dPFrXVB8";
            strArr[0] = "m7FEgH87ot2vGtV3LgABw7ULf2zod61Q";
            if (onTouchListener2.onTouch(view, motionEvent)) {
                return true;
            }
        }
        return false;
    }
}
