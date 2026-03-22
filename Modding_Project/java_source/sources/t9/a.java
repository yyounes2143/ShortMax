package t9;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ASCIIEncoder.java */
/* loaded from: classes5.dex */
public final class a implements g {
    private static char b(char c10, char c11) {
        if (j.f(c10) && j.f(c11)) {
            return (char) (((c10 - '0') * 10) + (c11 - '0') + 130);
        }
        throw new IllegalArgumentException("not digits: " + c10 + c11);
    }

    @Override // t9.g
    public void a(h hVar) {
        if (j.a(hVar.d(), hVar.f67228f) >= 2) {
            hVar.r(b(hVar.d().charAt(hVar.f67228f), hVar.d().charAt(hVar.f67228f + 1)));
            hVar.f67228f += 2;
            return;
        }
        char c10 = hVar.c();
        int n10 = j.n(hVar.d(), hVar.f67228f, c());
        if (n10 != c()) {
            if (n10 != 1) {
                if (n10 != 2) {
                    if (n10 != 3) {
                        if (n10 != 4) {
                            if (n10 == 5) {
                                hVar.r((char) 231);
                                hVar.o(5);
                                return;
                            }
                            throw new IllegalStateException("Illegal mode: ".concat(String.valueOf(n10)));
                        }
                        hVar.r((char) 240);
                        hVar.o(4);
                        return;
                    }
                    hVar.r((char) 238);
                    hVar.o(3);
                    return;
                }
                hVar.r((char) 239);
                hVar.o(2);
                return;
            }
            hVar.r((char) 230);
            hVar.o(1);
        } else if (j.g(c10)) {
            hVar.r((char) 235);
            hVar.r((char) (c10 - 127));
            hVar.f67228f++;
        } else {
            hVar.r((char) (c10 + 1));
            hVar.f67228f++;
        }
    }

    public int c() {
        return 0;
    }
}
