package p9;
/* compiled from: BinaryShiftToken.java */
/* loaded from: classes5.dex */
final class b extends g {

    /* renamed from: c  reason: collision with root package name */
    private final short f64824c;

    /* renamed from: d  reason: collision with root package name */
    private final short f64825d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(g gVar, int i10, int i11) {
        super(gVar);
        this.f64824c = (short) i10;
        this.f64825d = (short) i11;
    }

    @Override // p9.g
    public void c(q9.a aVar, byte[] bArr) {
        int i10 = 0;
        while (true) {
            short s10 = this.f64825d;
            if (i10 < s10) {
                if (i10 == 0 || (i10 == 31 && s10 <= 62)) {
                    aVar.c(31, 5);
                    short s11 = this.f64825d;
                    if (s11 > 62) {
                        aVar.c(s11 - 31, 16);
                    } else if (i10 == 0) {
                        aVar.c(Math.min((int) s11, 31), 5);
                    } else {
                        aVar.c(s11 - 31, 5);
                    }
                }
                aVar.c(bArr[this.f64824c + i10], 8);
                i10++;
            } else {
                return;
            }
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("<");
        sb2.append((int) this.f64824c);
        sb2.append("::");
        sb2.append((this.f64824c + this.f64825d) - 1);
        sb2.append('>');
        return sb2.toString();
    }
}
