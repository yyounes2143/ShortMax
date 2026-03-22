package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.ix  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2449ix implements InterfaceC11194w {
    public static String[] A08 = {"FmqEYLEjOBovlIuvu7xTusZ6GIuR3pge", "QeU0DUuOAkxor0HSqOzEAO6P6r4bp110", "WNDsEfwHyCZVTn6rYNycLV5FNYvDeUGR", "", "9kl6sBOZXnbWpCxdvxnR8wYz13jzyZGc", "QdIGCZBZzwjOBdbigrYBFiKU6cV", "ZYM92CzuhlmQLmzBChoRToTytAMTrYW0", "W1yocJmlBB3ILJesLtmFt5l7ilHzoTT3"};
    public int A00;
    public int A01;
    public InterfaceC11164t A02;
    public InterfaceC11194w A04;
    public InterfaceC1536Ln A05;
    public boolean A07;
    public InterfaceC11194w A03 = new C2727nh();
    public InterfaceC1545Lw A06 = InterfaceC1545Lw.A00;

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.InterfaceC11194w
    /* renamed from: A00 */
    public final C7S A5A() {
        return A01(this.A04 != null ? this.A04.A5A() : null, this.A00, this.A01);
    }

    private C7S A01(InterfaceC2731nl interfaceC2731nl, int i10, int i11) {
        C2450iy c2450iy;
        InterfaceC1536Ln interfaceC1536Ln = (InterfaceC1536Ln) C3M.A01(this.A05);
        if (this.A07 || interfaceC2731nl == null) {
            c2450iy = null;
        } else if (this.A02 != null) {
            InterfaceC11164t interfaceC11164t = this.A02;
            String[] strArr = A08;
            if (strArr[6].charAt(29) == strArr[7].charAt(29)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A08;
            strArr2[0] = "BsDku37cs2h0edzjFuAGMntAOCTwp5qB";
            strArr2[1] = "0s0KxP1bBIf3QxkhX8XEl0TpXhOFUtvY";
            c2450iy = interfaceC11164t.A59();
        } else {
            c2450iy = new C2451iz().A00(interfaceC1536Ln).A59();
        }
        return new C7S(interfaceC1536Ln, interfaceC2731nl, this.A03.A5A(), c2450iy, this.A06, i10, null, i11, null);
    }

    public final AnonymousClass31 A02() {
        return null;
    }

    public final C2449ix A03(int i10) {
        this.A00 = i10;
        return this;
    }

    public final C2449ix A04(InterfaceC11194w interfaceC11194w) {
        this.A03 = interfaceC11194w;
        return this;
    }

    public final C2449ix A05(InterfaceC11194w interfaceC11194w) {
        this.A04 = interfaceC11194w;
        return this;
    }

    public final C2449ix A06(InterfaceC1536Ln interfaceC1536Ln) {
        this.A05 = interfaceC1536Ln;
        return this;
    }

    public final C7S A07() {
        return A01(this.A04 != null ? this.A04.A5A() : null, this.A00 | 1, -1000);
    }
}
