package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import com.facebook.ads.androidx.media3.exoplayer.offline.DownloadRequest;
import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Arrays;
import java.util.concurrent.Executors;
/* renamed from: com.facebook.ads.redexgen.X.eJ  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2170eJ {
    public static InterfaceC11094m A06;
    public static BT A07;
    public static InterfaceC1536Ln A08;
    public static C2170eJ A09;
    public static File A0A;
    public static byte[] A0B;
    public static String[] A0C = {"4y", "AwMrvrZaA3qCUMe4DaWf", "nMell2jjCxhf1iVkS1T4", "JoDZxKxhXC6KTCYPanywHJvOgx3oSz2Q", "c4TvbpAtmy9oRzm3BRhbekxSipSfphPN", "JNxty2uNXQJQugnl9tUmEGg4l4lnFcO6", "Bo5IZ2fGdsUyi7NqIQl4cfXztCU0TldF", "nOSbM9ZPEjvtyh7HAXbSWFPDuf7zpKmZ"};
    public boolean A00;
    public final C2085cu A04;
    public final Handler A01 = new Handler(Looper.getMainLooper());
    public final SparseArray<C2168eH> A02 = new SparseArray<>();
    public final Runnable A05 = new RunnableC2167eG(this);
    public final BS A03 = new CN(this);

    public static String A08(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A0B, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 5);
        }
        return new String(copyOfRange);
    }

    public static void A0D() {
        A0B = new byte[]{11, 6, 11, 73, 82, 95, 78, 88, 116, 79, 68, 92, 69, 71, 68, 74, 79, 78, 79, 17, 55, 58, 55, 103, 114, 101, 116, 114, 121, 99, 118, 112, 114, 55, 115, 120, 96, 121, 123, 120, 118, 115, 114, 115, 45, 123, 118, 123, 40, 47, 58, 47, 62, 97, 35, 65, 122, 119, 102, 112, 57, 35, 33, 99, 120, 117, 100, 114, 33, 4, 4, 4, 4, 9, 91, 76, 88, 92, 76, 90, 93, 96, 77, 19, 25, 50, 42, 51, 49, 50, 60, 57, 56, 57, 115, 125, 14, 41, 60, 41, 56, 103, 125, 62, 9, 9, 20, 9, 85, 91, 40, 15, 26, 15, 30, 65, 91, 110, 91, 73, 81, 126, 123, 113, 104, 50, 123, 112, 104, 113, 115, 112, 126, 123, 108, 37, 32, 55, 84, 86, 84, 95, 82};
    }

    static {
        A0D();
    }

    public C2170eJ(C2085cu c2085cu, BT bt2) {
        this.A04 = c2085cu;
        if (bt2 != null) {
            A07 = bt2;
            bt2.A0F(this.A03);
        }
        A03().A0E();
    }

    public static synchronized InterfaceC11094m A01(Context context) {
        InterfaceC11094m interfaceC11094m;
        synchronized (C2170eJ.class) {
            if (A06 == null) {
                A06 = new C2734no(context);
            }
            interfaceC11094m = A06;
        }
        return interfaceC11094m;
    }

    private C12239j A02() {
        return new C12239j().A01(A08(135, 3, 65)).A00(null);
    }

    private synchronized BT A03() {
        A0E();
        return A07;
    }

    public static synchronized InterfaceC1536Ln A04(Context context) {
        InterfaceC1536Ln interfaceC1536Ln;
        synchronized (C2170eJ.class) {
            if (A08 == null) {
                A08 = new C2443ir(new File(A07(context), A08(121, 14, 26)), new C7R(U7.A0T(context)));
            }
            interfaceC1536Ln = A08;
        }
        return interfaceC1536Ln;
    }

    public static C2449ix A05(C2730nk c2730nk, InterfaceC1536Ln interfaceC1536Ln) {
        return new C2449ix().A06(interfaceC1536Ln).A05(c2730nk).A04(new C2724ne()).A03(2);
    }

    public static synchronized C2170eJ A06(C2085cu c2085cu) {
        C2170eJ c2170eJ;
        synchronized (C2170eJ.class) {
            if (A09 == null) {
                A09 = new C2170eJ(c2085cu, null);
            }
            c2170eJ = A09;
        }
        return c2170eJ;
    }

    public static synchronized File A07(Context context) {
        File file;
        synchronized (C2170eJ.class) {
            if (A0A == null) {
                A0A = context.getCacheDir();
                if (A0A == null) {
                    A0A = context.getFilesDir();
                }
            }
            file = A0A;
        }
        return file;
    }

    public static String A09(C2085cu c2085cu, Uri uri) {
        try {
            if (!U7.A1r(c2085cu)) {
                return null;
            }
            return new URI(uri.getScheme(), uri.getAuthority(), uri.getPath(), null, uri.getFragment()).toString();
        } catch (URISyntaxException e10) {
            c2085cu.A08().AAy(A08(138, 5, 50), AbstractC1722Sv.A0u, new C1723Sw(e10));
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0A() {
        for (B8 b82 : A03().A0D()) {
            int requestId = b82.A07.A02.hashCode();
            C2168eH c2168eH = this.A02.get(requestId);
            boolean z10 = b82.A02 == 2 && b82.A01() > 0;
            String str = A08(69, 15, 44) + requestId + A08(20, 25, 18) + b82.A00() + A08(0, 20, 46) + b82.A01() + A08(45, 9, 94) + b82.A02;
            if (c2168eH != null) {
                int state = b82.A02;
                if (state != 3 && !z10 && b82.A00() < 100.0f) {
                    long A01 = b82.A01();
                    String[] strArr = A0C;
                    if (strArr[7].charAt(29) == strArr[4].charAt(29)) {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A0C;
                    strArr2[3] = "Dot6Q3Penl8IgXRyTYIqC6CBr4bXo7x7";
                    strArr2[6] = "9ocSvY8ybipVJ0ZgVUYrz9Eev0RZQ1px";
                    if (A01 <= c2168eH.A00) {
                        if (state == 4 || state == 1) {
                            String str2 = A08(103, 14, 126) + state;
                            c2168eH.A01.ADD(new Throwable(String.valueOf(b82.A01)));
                            this.A02.remove(requestId);
                        }
                    }
                }
                String str3 = A08(84, 19, 88) + state + A08(54, 8, 6) + b82.A01();
                c2168eH.A01.AD5(c2168eH.A02);
                this.A02.remove(requestId);
            }
            String str4 = A08(117, 4, 63) + requestId + A08(62, 7, 4) + b82.A01();
        }
    }

    private void A0B() {
        if (!this.A00) {
            this.A00 = true;
            this.A01.post(this.A05);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0C() {
        this.A01.removeCallbacks(this.A05);
        this.A00 = false;
    }

    private synchronized void A0E() {
        if (A07 == null) {
            A07 = new BT(this.A04, A01(this.A04), A04(this.A04), A0H(this.A04), Executors.newFixedThreadPool(6));
            A07.A0F(this.A03);
        }
    }

    public final InterfaceC11194w A0H(Context context) {
        return A05(new C2730nk(context, (C5H) null, A02()), A04(context));
    }

    public final void A0I(Uri uri, InterfaceC2169eI interfaceC2169eI, long j10) {
        String cacheKey = A09(this.A04, uri);
        if (cacheKey == null) {
            cacheKey = uri.toString();
        }
        boolean A0J = A0J(cacheKey);
        DownloadRequest A05 = new BW(uri.toString(), uri).A00(cacheKey).A05();
        A03().A0G(A05);
        this.A02.put(A05.A02.hashCode(), new C2168eH(interfaceC2169eI, j10, A0J, null));
        A0B();
    }

    public final boolean A0J(String str) {
        return A04(this.A04).A74(str, 0L, 1L) > 0;
    }
}
