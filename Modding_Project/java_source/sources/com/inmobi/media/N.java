package com.inmobi.media;

import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
/* loaded from: classes5.dex */
public final class N {

    /* renamed from: a  reason: collision with root package name */
    public final WeakReference f23865a;

    /* renamed from: b  reason: collision with root package name */
    public final String f23866b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f23867c;

    /* renamed from: d  reason: collision with root package name */
    public final AtomicBoolean f23868d;

    /* renamed from: e  reason: collision with root package name */
    public final String f23869e;

    /* renamed from: f  reason: collision with root package name */
    public InterfaceC3269z5 f23870f;

    public N(WeakReference adUnitEventListener, String adtype, boolean z10) {
        Intrinsics.checkNotNullParameter(adUnitEventListener, "adUnitEventListener");
        Intrinsics.checkNotNullParameter(adtype, "adtype");
        this.f23865a = adUnitEventListener;
        this.f23866b = adtype;
        this.f23867c = z10;
        this.f23868d = new AtomicBoolean(false);
        this.f23869e = String.valueOf(Reflection.getOrCreateKotlinClass(N.class).getSimpleName());
    }

    public final void a(Yd yd2) {
        Zd zd2;
        AtomicBoolean atomicBoolean;
        if (this.f23868d.getAndSet(true)) {
            InterfaceC3269z5 interfaceC3269z5 = this.f23870f;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).c(this.f23869e, "skipping as Impression is already Called");
            }
            if (yd2 != null) {
                U0 u02 = yd2.f24411a;
                if (u02 == null || (zd2 = u02.f24229b) == null || (atomicBoolean = zd2.f24466a) == null || !atomicBoolean.getAndSet(true)) {
                    yd2.a().put("networkType", L3.q());
                    yd2.a().put("errorCode", (short) 2179);
                    LinkedHashMap a10 = yd2.a();
                    Pd pd2 = Pd.f23988a;
                    Pd.b("AdImpressionSuccessful", a10, Td.f24224a);
                    return;
                }
                return;
            }
            return;
        }
        Zc zc2 = Zc.f24454a;
        String str = this.f23866b;
        Boolean valueOf = Boolean.valueOf(this.f23867c);
        zc2.getClass();
        Zc.a(str, valueOf);
        F0 f02 = (F0) this.f23865a.get();
        if (f02 == null) {
            if (yd2 != null) {
                yd2.c();
            }
        } else {
            f02.a(yd2);
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f23870f;
        if (interfaceC3269z52 != null) {
            ((A5) interfaceC3269z52).a(this.f23869e, "==== CHECKPOINT REACHED - IMPRESSION FIRED ====");
        }
        InterfaceC3269z5 interfaceC3269z53 = this.f23870f;
        if (interfaceC3269z53 != null) {
            ((A5) interfaceC3269z53).b();
        }
    }
}
