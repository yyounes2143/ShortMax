package com.facebook.ads.redexgen.X;

import java.util.ArrayDeque;
import java.util.PriorityQueue;
/* renamed from: com.facebook.ads.redexgen.X.7h  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC11827h implements InterfaceC2535kN {
    public static String[] A06 = {"A1ZwXb6JdBVxSPYV1ZzpyUVQy2gRfJA9", "vkvPFBYHwcZnb4NzphHjmgFJFbjiYwSo", "W7sj7Up3ABI8RZFTAAZOEHe7srfTkl57", "fls3PiASqtk6GqNgTZFqwBZFoYeyHn2V", "1yDmXHBn42mad7W8CPx8A7RWKYn1BqT7", "CjPJSc8sfbO2R56Y3Yx9Z137FYjSqvlb", "2KSypf5DjPiLYF3nQ7brfSsHONTUzR5A", "k5ePLg8NJJ"};
    public long A00;
    public long A01;
    public C10140t A02;
    public final ArrayDeque<C10140t> A03 = new ArrayDeque<>();
    public final ArrayDeque<AbstractC11837i> A04;
    public final PriorityQueue<C10140t> A05;

    public abstract C2530kI A0Z();

    public abstract void A0b(C11847j c11847j);

    public abstract boolean A0d();

    public AbstractC11827h() {
        for (int i10 = 0; i10 < 10; i10++) {
            this.A03.add(new C10140t());
        }
        this.A04 = new ArrayDeque<>();
        for (int i11 = 0; i11 < 2; i11++) {
            ArrayDeque<AbstractC11837i> arrayDeque = this.A04;
            final C5S c5s = new C5S() { // from class: com.facebook.ads.redexgen.X.kL
                @Override // com.facebook.ads.redexgen.X.C5S
                public final void AGz(AbstractC2717nX abstractC2717nX) {
                    AbstractC11827h.this.A0c((C10130s) abstractC2717nX);
                }
            };
            arrayDeque.add(new AbstractC11837i(c5s) { // from class: com.facebook.ads.redexgen.X.0s
                public C5S<C10130s> A00;

                /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.5S != com.facebook.ads.androidx.media3.decoder.DecoderOutputBuffer$Owner<com.facebook.ads.androidx.media3.extractor.text.cea.CeaDecoder$CeaOutputBuffer> */
                {
                    this.A00 = c5s;
                }

                @Override // com.facebook.ads.redexgen.X.AbstractC11837i, com.facebook.ads.redexgen.X.AbstractC2717nX
                public final void A0B() {
                    this.A00.AGz(this);
                }
            });
        }
        this.A05 = new PriorityQueue<>();
    }

    private void A0U(C10140t c10140t) {
        c10140t.A0A();
        this.A03.add(c10140t);
    }

    public final long A0V() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.C5O
    /* renamed from: A0W */
    public C11847j A5j() throws C2534kM {
        C3M.A08(this.A02 == null);
        if (this.A03.isEmpty()) {
            return null;
        }
        this.A02 = this.A03.pollFirst();
        return this.A02;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00f7, code lost:
        return null;
     */
    @Override // com.facebook.ads.redexgen.X.C5O
    /* renamed from: A0X */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.facebook.ads.redexgen.X.AbstractC11837i A5l() throws com.facebook.ads.redexgen.X.C2534kM {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC11827h.A5l():com.facebook.ads.redexgen.X.7i");
    }

    public final AbstractC11837i A0Y() {
        return this.A04.pollFirst();
    }

    @Override // com.facebook.ads.redexgen.X.C5O
    /* renamed from: A0a */
    public void AGZ(C11847j c11847j) throws C2534kM {
        C3M.A07(c11847j == this.A02);
        C10140t c10140t = (C10140t) c11847j;
        if (c10140t.A04()) {
            A0U(c10140t);
        } else {
            long j10 = this.A01;
            this.A01 = 1 + j10;
            c10140t.A00 = j10;
            this.A05.add(c10140t);
        }
        if (A06[7].length() != 10) {
            throw new RuntimeException();
        }
        String[] strArr = A06;
        strArr[0] = "rj1eyhsOe6SuoM1rYy40tvsoNCkJE80J";
        strArr[1] = "ibYLffFAaVDMN4cD1vowu1tbJEM8Lkom";
        this.A02 = null;
    }

    public final void A0c(AbstractC11837i abstractC11837i) {
        abstractC11837i.A0A();
        this.A04.add(abstractC11837i);
    }

    @Override // com.facebook.ads.redexgen.X.C5O
    public void AGr() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2535kN
    public void AIx(long j10) {
        this.A00 = j10;
    }

    @Override // com.facebook.ads.redexgen.X.C5O
    public void flush() {
        this.A01 = 0L;
        this.A00 = 0L;
        while (!this.A05.isEmpty()) {
            A0U((C10140t) AbstractC10974a.A0f(this.A05.poll()));
        }
        if (this.A02 != null) {
            A0U(this.A02);
            this.A02 = null;
        }
    }
}
