package com.facebook.ads.redexgen.X;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.widget.ImageView;
import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public final class D0 extends ImageView implements InterfaceC2128dc {
    public static byte[] A05;
    public static String[] A06 = {"4xWU9o1Qdv49zg4k19WdZrOQJ68qlBKJ", "QfpLWsUkij8dLfBb7Aagb5qXzjDoxZj6", "QolGMRpELvSET2", "SiemLW4oVdpf", "uXL2k0aAaj67psTeNQKHhn5IgBi2NdXT", "OArHsnP", "A54GrsZIV89x3qzJRphed5abiMfcDTpl", "7SQmPw6zIXtGY8y4ylHwiNNuEQdMSmlG"};
    public static final int A07;
    public static final int A08;
    public E1 A00;
    public final Paint A01;
    public final C2111dL A02;
    public final C1752Ua A03;
    public final DE A04;

    public static String A03(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A05, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 62);
        }
        return new String(copyOfRange);
    }

    public static void A06() {
        A05 = new byte[]{-100, -60, -61, -76, 111, -112, -77};
    }

    static {
        A06();
        A08 = (int) (AbstractC1812Wl.A02 * 40.0f);
        A07 = (int) (AbstractC1812Wl.A02 * 10.0f);
    }

    public D0(C2111dL c2111dL, C1752Ua c1752Ua) {
        super(c2111dL);
        this.A04 = new DE() { // from class: com.facebook.ads.redexgen.X.2q
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC1732Tf
            /* renamed from: A00 */
            public final void A03(DF df2) {
                D0.this.A09();
            }
        };
        this.A03 = c1752Ua;
        this.A02 = c2111dL;
        this.A01 = new Paint();
        this.A01.setColor(Integer.MIN_VALUE);
        setColorFilter(-1);
        setPadding(A07, A07, A07, A07);
        setContentDescription(A03(0, 7, 17));
        A05();
        setOnClickListener(new View$OnClickListenerC2145du(this));
    }

    private void A04() {
        setImageBitmap(XY.A01(XX.ICON_MUTE));
    }

    private void A05() {
        setImageBitmap(XY.A01(XX.ICON_UN_MUTE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A07() {
        return this.A00 != null && this.A00.getVolume() == 0.0f;
    }

    public final void A09() {
        if (this.A00 == null) {
            return;
        }
        boolean A072 = A07();
        if (A06[3].length() != 12) {
            throw new RuntimeException();
        }
        String[] strArr = A06;
        strArr[7] = "aX931uSfPaE8IiOHtPCxhipRkXbTn1t9";
        strArr[4] = "ET7wr0zhj8rUQx1GjBOUHwAZuNFVr5BQ";
        if (A072) {
            A04();
        } else {
            A05();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2128dc
    public final void AAm(E1 e12) {
        this.A00 = e12;
        if (this.A00 != null) {
            this.A00.getEventBus().A05(this.A04);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2128dc
    public final void AJk(E1 e12) {
        if (this.A00 != null) {
            C1731Te<AbstractC1732Tf, C1730Td> eventBus = this.A00.getEventBus();
            DE de2 = this.A04;
            String[] strArr = A06;
            if (strArr[2].length() == strArr[5].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A06;
            strArr2[6] = "f5V50lgekxKfxPRjN4EQZ5T7YD8zyqkA";
            strArr2[1] = "6bYokHrcutoPgrqwaKTDD5vNcVht1LGT";
            eventBus.A06(de2);
        }
        this.A00 = null;
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        int y10 = getWidth() / 2;
        int x10 = getHeight() / 2;
        canvas.drawCircle(y10, x10, Math.min(y10, x10), this.A01);
        super.onDraw(canvas);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int height = A08;
        int width = A08;
        setMeasuredDimension(height, width);
    }
}
