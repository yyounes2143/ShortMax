package t9;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: X12Encoder.java */
/* loaded from: classes5.dex */
public final class m extends c {
    @Override // t9.c, t9.g
    public void a(h hVar) {
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            if (!hVar.i()) {
                break;
            }
            char c10 = hVar.c();
            hVar.f67228f++;
            c(c10, sb2);
            if (sb2.length() % 3 == 0) {
                c.g(hVar, sb2);
                if (j.n(hVar.d(), hVar.f67228f, e()) != e()) {
                    hVar.o(0);
                    break;
                }
            }
        }
        f(hVar, sb2);
    }

    @Override // t9.c
    int c(char c10, StringBuilder sb2) {
        if (c10 != '\r') {
            if (c10 != ' ') {
                if (c10 != '*') {
                    if (c10 != '>') {
                        if (c10 >= '0' && c10 <= '9') {
                            sb2.append((char) (c10 - ','));
                        } else if (c10 >= 'A' && c10 <= 'Z') {
                            sb2.append((char) (c10 - '3'));
                        } else {
                            j.e(c10);
                        }
                    } else {
                        sb2.append((char) 2);
                    }
                } else {
                    sb2.append((char) 1);
                }
            } else {
                sb2.append((char) 3);
            }
        } else {
            sb2.append((char) 0);
        }
        return 1;
    }

    @Override // t9.c
    public int e() {
        return 3;
    }

    @Override // t9.c
    void f(h hVar, StringBuilder sb2) {
        hVar.p();
        int a10 = hVar.g().a() - hVar.a();
        hVar.f67228f -= sb2.length();
        if (hVar.f() > 1 || a10 > 1 || hVar.f() != a10) {
            hVar.r((char) 254);
        }
        if (hVar.e() < 0) {
            hVar.o(0);
        }
    }
}
