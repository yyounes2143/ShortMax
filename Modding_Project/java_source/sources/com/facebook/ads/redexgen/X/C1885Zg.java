package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.webkit.JavascriptInterface;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.ads.redexgen.X.Zg  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1885Zg {
    public static String[] A07 = {"MaUhfef1XHChQSOAsPU", "01oMUC4JT554rhL", "9TYVZPZrh7WqyaB", "ShOi1FYvFM9bF84GqYiu0GZZ4HOF35Af", "s", "YvdeaQsxQHJ3CZVDgFIjqRdATcpqYXuO", "b384kAccrLIUxrnk6NdGu", "f4PnsWwvvRSNWXAtteJ0H"};
    public final String A00 = C1885Zg.class.getSimpleName();
    public final WeakReference<AtomicBoolean> A01;
    public final WeakReference<AtomicBoolean> A02;
    public final WeakReference<LH> A03;
    public final WeakReference<InterfaceC1886Zh> A04;
    public final WeakReference<C2184eX> A05;
    public final WeakReference<C1505Ki> A06;

    public C1885Zg(C1505Ki c1505Ki, InterfaceC1886Zh interfaceC1886Zh, C2184eX c2184eX, AtomicBoolean atomicBoolean, AtomicBoolean atomicBoolean2, C2111dL c2111dL) {
        this.A06 = new WeakReference<>(c1505Ki);
        this.A04 = new WeakReference<>(interfaceC1886Zh);
        this.A05 = new WeakReference<>(c2184eX);
        this.A01 = new WeakReference<>(atomicBoolean);
        this.A02 = new WeakReference<>(atomicBoolean2);
        this.A03 = new WeakReference<>(c2111dL.A0F());
    }

    private LH A00() {
        LH funnel = this.A03.get();
        if (funnel == null) {
            return new C2455j3();
        }
        return funnel;
    }

    @JavascriptInterface
    public void alert(String str) {
        Log.e(this.A00, str);
    }

    @JavascriptInterface
    public String getAnalogInfo() {
        return AbstractC1818Wr.A01(T5.A02());
    }

    @JavascriptInterface
    public void logFunnel(int i10, String str) {
        A00().AK6(i10, str);
    }

    @JavascriptInterface
    public void onMainAssetLoaded() {
        A00().AK7();
        if (this.A06.get() != null && this.A01.get() != null && this.A02.get() != null && this.A02.get().get()) {
            this.A01.get().set(true);
            A00().AK8();
            if (this.A06.get().isShown()) {
                A00().AK9();
                new Handler(Looper.getMainLooper()).post(new C1511Ko(this.A05));
            }
            InterfaceC1886Zh interfaceC1886Zh = this.A04.get();
            if (interfaceC1886Zh != null) {
                new Handler(Looper.getMainLooper()).post(new RunnableC1884Zf(this, interfaceC1886Zh));
            }
        }
    }

    @JavascriptInterface
    public void onPageInitialized() {
        C1505Ki webView = this.A06.get();
        if (webView == null || webView.A0J()) {
            A00().AKA(true);
            return;
        }
        InterfaceC1886Zh interfaceC1886Zh = this.A04.get();
        if (interfaceC1886Zh == null) {
            A00().AKA(true);
            return;
        }
        LH A00 = A00();
        String[] strArr = A07;
        if (strArr[3].charAt(2) == strArr[5].charAt(2)) {
            throw new RuntimeException();
        }
        A07[6] = "MExJxptNjWm815DyzsGP1";
        A00.AKA(false);
        interfaceC1886Zh.AET();
    }
}
