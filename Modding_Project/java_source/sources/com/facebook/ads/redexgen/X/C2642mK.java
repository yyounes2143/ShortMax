package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Handler;
import com.facebook.ads.androidx.media3.extractor.metadata.icy.IcyHeaders;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.List;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.mK */
/* loaded from: assets/audience_network.dex */
public final class C2642mK implements InterfaceC1351Ej, CD {
    public static String[] A0E = {"SSDELygzudefytBtRYlDWoyFfpg", "4SEnazR2Nu4dPKZqq", "4H9jqKlT7lQdtxWBQl9xa6akogWkCWsp", "Wknx73gM1GoPE2GN1snRYal1oMjUwY3P", "7txELYcTJwThSLRxJ5dUM1K4qPQ", "gA7GGJKubAjwOro28", "9KdodW4K4GXGszeM7wnefptXiT4TjY3", ""};
    public long A00;
    public AnonymousClass56 A01;
    public H1 A02;
    public boolean A04;
    public final Uri A06;
    public final C3W A07;
    public final C12159b A08;
    public final InterfaceC1291Cb A09;
    public final GY A0A;
    public volatile boolean A0C;
    public final /* synthetic */ C9A A0D;
    public final C1413Gt A0B = new C1413Gt();
    public boolean A03 = true;
    public final long A05 = CE.A00();

    public C2642mK(C9A c9a, Uri uri, InterfaceC2731nl interfaceC2731nl, InterfaceC1291Cb interfaceC1291Cb, GY gy, C3W c3w) {
        this.A0D = c9a;
        this.A06 = uri;
        this.A08 = new C12159b(interfaceC2731nl);
        this.A09 = interfaceC1291Cb;
        this.A0A = gy;
        this.A07 = c3w;
    }

    public static /* synthetic */ long A00(C2642mK c2642mK) {
        return c2642mK.A05;
    }

    public static /* synthetic */ long A01(C2642mK c2642mK) {
        return c2642mK.A00;
    }

    public static /* synthetic */ AnonymousClass56 A02(C2642mK c2642mK) {
        return c2642mK.A01;
    }

    public static /* synthetic */ C12159b A03(C2642mK c2642mK) {
        return c2642mK.A08;
    }

    public void A04(long j10, long j11) {
        this.A0B.A00 = j10;
        this.A00 = j11;
        this.A03 = true;
        this.A04 = false;
    }

    public static /* synthetic */ void A05(C2642mK c2642mK, long j10, long j11) {
        c2642mK.A04(j10, j11);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1351Ej
    public final void A4j() {
        this.A0C = true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1351Ej
    public final void AAi() throws IOException {
        String str;
        IcyHeaders icyHeaders;
        IcyHeaders icyHeaders2;
        long j10;
        Handler handler;
        Runnable runnable;
        IcyHeaders icyHeaders3;
        IcyHeaders icyHeaders4;
        C2796or c2796or;
        int i10 = 0;
        while (i10 == 0 && !this.A0C) {
            try {
                long j11 = this.A0B.A00;
                Uri uri = this.A06;
                str = this.A0D.A0b;
                this.A01 = new AnonymousClass56(uri, j11, -1L, str);
                long AFy = this.A08.AFy(this.A01);
                if (AFy != -1) {
                    AFy += j11;
                    this.A0D.A0G();
                }
                this.A0D.A09 = null;
                InterfaceC2731nl interfaceC2731nl = this.A08;
                icyHeaders = this.A0D.A09;
                if (icyHeaders != null) {
                    icyHeaders3 = this.A0D.A09;
                    if (icyHeaders3.A01 != -1) {
                        C12159b c12159b = this.A08;
                        icyHeaders4 = this.A0D.A09;
                        interfaceC2731nl = new InterfaceC2731nl(c12159b, icyHeaders4.A01, this) { // from class: com.facebook.ads.redexgen.X.9B
                            public int A00;
                            public final int A01;
                            public final InterfaceC2731nl A02;
                            public final CD A03;
                            public final byte[] A04;

                            {
                                C3M.A07(r4 > 0);
                                this.A02 = c12159b;
                                this.A01 = r4;
                                this.A03 = this;
                                this.A04 = new byte[1];
                                this.A00 = r4;
                            }

                            private boolean A00() throws IOException {
                                int bytesRead = this.A02.read(this.A04, 0, 1);
                                if (bytesRead == -1) {
                                    return false;
                                }
                                int bytesRead2 = this.A04[0];
                                int metadataLength = (bytesRead2 & 255) << 4;
                                if (metadataLength == 0) {
                                    return true;
                                }
                                int i11 = 0;
                                int i12 = metadataLength;
                                byte[] bArr = new byte[metadataLength];
                                while (i12 > 0) {
                                    int bytesRead3 = this.A02.read(bArr, i11, i12);
                                    if (bytesRead3 == -1) {
                                        return false;
                                    }
                                    i11 += bytesRead3;
                                    i12 -= bytesRead3;
                                }
                                while (metadataLength > 0) {
                                    int bytesRead4 = metadataLength - 1;
                                    if (bArr[bytesRead4] != 0) {
                                        break;
                                    }
                                    metadataLength--;
                                }
                                if (metadataLength > 0) {
                                    this.A03.ADR(new C4J(bArr, metadataLength));
                                }
                                return true;
                            }

                            @Override // com.facebook.ads.redexgen.X.InterfaceC2731nl
                            public final void A3v(C5H c5h) {
                                C3M.A01(c5h);
                                this.A02.A3v(c5h);
                            }

                            @Override // com.facebook.ads.redexgen.X.InterfaceC2731nl
                            public final Map<String, List<String>> A8l() {
                                return this.A02.A8l();
                            }

                            @Override // com.facebook.ads.redexgen.X.InterfaceC2731nl
                            public final Uri A9H() {
                                return this.A02.A9H();
                            }

                            @Override // com.facebook.ads.redexgen.X.InterfaceC2731nl
                            public final long AFy(AnonymousClass56 anonymousClass56) {
                                throw new UnsupportedOperationException();
                            }

                            @Override // com.facebook.ads.redexgen.X.InterfaceC2731nl
                            public final void close() {
                                throw new UnsupportedOperationException();
                            }

                            @Override // com.facebook.ads.redexgen.X.AnonymousClass20
                            public final int read(byte[] bArr, int i11, int i12) throws IOException {
                                if (this.A00 == 0) {
                                    if (!A00()) {
                                        return -1;
                                    }
                                    this.A00 = this.A01;
                                }
                                int read = this.A02.read(bArr, i11, Math.min(this.A00, i12));
                                if (read != -1) {
                                    int bytesRead = this.A00;
                                    this.A00 = bytesRead - read;
                                }
                                return read;
                            }
                        };
                        this.A02 = this.A0D.A0Z();
                        H1 h12 = this.A02;
                        c2796or = C9A.A0g;
                        h12.A6W(c2796or);
                    }
                }
                this.A09.AA3(interfaceC2731nl, this.A06, this.A08.A8l(), j11, AFy, this.A0A);
                icyHeaders2 = this.A0D.A09;
                if (icyHeaders2 != null) {
                    this.A09.A5q();
                }
                if (this.A03) {
                    this.A09.AIM(j11, this.A00);
                    this.A03 = false;
                }
                while (i10 == 0 && !this.A0C) {
                    try {
                        this.A07.A00();
                        i10 = this.A09.AGc(this.A0B);
                        long position = this.A09.A7S();
                        j10 = this.A0D.A0M;
                        if (position > j10 + j11) {
                            j11 = position;
                            this.A07.A02();
                            handler = this.A0D.A0O;
                            runnable = this.A0D.A0a;
                            handler.post(runnable);
                        }
                    } catch (InterruptedException unused) {
                        throw new InterruptedIOException();
                    }
                }
                if (i10 == 1) {
                    i10 = 0;
                } else {
                    long A7S = this.A09.A7S();
                    String[] strArr = A0E;
                    if (strArr[2].charAt(24) != strArr[3].charAt(24)) {
                        throw new RuntimeException();
                    }
                    A0E[6] = "OKjnlHtv3KbBLefZQYMpPe9SdH47QI1";
                    if (A7S != -1) {
                        this.A0B.A00 = this.A09.A7S();
                    }
                }
                AnonymousClass51.A00(this.A08);
            } catch (Throwable th2) {
                if (i10 != 1 && this.A09.A7S() != -1) {
                    this.A0B.A00 = this.A09.A7S();
                }
                AnonymousClass51.A00(this.A08);
                throw th2;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.CD
    public final void ADR(C4J c4j) {
        long A03;
        long max;
        if (this.A04) {
            A03 = this.A0D.A03(true);
            max = Math.max(A03, this.A00);
        } else {
            max = this.A00;
        }
        int A07 = c4j.A07();
        H1 h12 = (H1) C3M.A01(this.A02);
        h12.AI7(c4j, A07);
        h12.AIA(max, 1, A07, 0, null);
        this.A04 = true;
    }
}
