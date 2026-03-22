package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import com.inmobi.ads.exceptions.VastException;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.media.C2976h;
import com.inmobi.media.Se;
import com.inmobi.media.Te;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ExecutorService;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
/* loaded from: classes5.dex */
public final class Se {

    /* renamed from: a  reason: collision with root package name */
    public static final Se f24161a = new Se();

    /* renamed from: b  reason: collision with root package name */
    public static final ms.i f24162b = kotlin.c.b(Re.f24073a);

    /* renamed from: c  reason: collision with root package name */
    public static final ms.i f24163c = kotlin.c.b(Qe.f24048a);

    public static void a(final C2976h ad2, final AdConfig adConfig, final Te te2, final InterfaceC3269z5 interfaceC3269z5) {
        Intrinsics.checkNotNullParameter(ad2, "ad");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        ((ExecutorService) f24162b.getValue()).execute(new Runnable() { // from class: ub.d2
            @Override // java.lang.Runnable
            public final void run() {
                Se.b(C2976h.this, adConfig, te2, interfaceC3269z5);
            }
        });
    }

    public static final void b(C2976h ad2, AdConfig adConfig, Te te2, InterfaceC3269z5 interfaceC3269z5) {
        Intrinsics.checkNotNullParameter(ad2, "$ad");
        Intrinsics.checkNotNullParameter(adConfig, "$adConfig");
        Se se2 = f24161a;
        try {
            if (se2.a(ad2.s(), te2)) {
                C2976h a10 = J.a(ad2, adConfig, interfaceC3269z5);
                if (a10 == null) {
                    se2.a(ad2, false, (short) 75);
                } else {
                    se2.a(a10, true, (short) 0);
                }
            }
        } catch (VastException e10) {
            se2.a(ad2, false, e10.getTelemetryErrorCode());
        } catch (JSONException unused) {
            se2.a(ad2, false, (short) 58);
        }
    }

    public final synchronized boolean a(String str, Te te2) {
        ms.i iVar = f24163c;
        List list = (List) ((HashMap) iVar.getValue()).get(str);
        if (list != null) {
            list.add(new WeakReference(te2));
            return false;
        }
        ((HashMap) iVar.getValue()).put(str, CollectionsKt.t(new WeakReference(te2)));
        return true;
    }

    public final synchronized void a(final C2976h c2976h, final boolean z10, final short s10) {
        Unit unit;
        try {
            List<WeakReference> list = (List) ((HashMap) f24163c.getValue()).remove(c2976h.s());
            if (list != null) {
                for (WeakReference weakReference : list) {
                    final Te te2 = (Te) weakReference.get();
                    if (te2 != null) {
                        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: ub.c2
                            @Override // java.lang.Runnable
                            public final void run() {
                                Se.a(Te.this, c2976h, z10, s10);
                            }
                        });
                    } else {
                        Intrinsics.checkNotNullExpressionValue("Se", "TAG");
                    }
                }
                unit = Unit.f60915a;
            } else {
                unit = null;
            }
            if (unit == null) {
                Intrinsics.checkNotNullExpressionValue("Se", "TAG");
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public static final void a(Te te2, C2976h ad2, boolean z10, short s10) {
        Intrinsics.checkNotNullParameter(ad2, "$ad");
        te2.a(ad2, z10, s10);
    }
}
