package com.facebook.ads.redexgen.X;

import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.facebook.ads.redexgen.X.Vl  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1788Vl {
    public static final Set<Object> A00 = Collections.newSetFromMap(new WeakHashMap());
    public static final AtomicBoolean A01 = new AtomicBoolean(true);
    public static final AtomicReference<InterfaceC1786Vj> A02 = new AtomicReference<>();

    public static void A00(Throwable th2, Object obj) throws Throwable {
        if (A01.get()) {
            A00.add(obj);
            W0.A00().AAo(3306, th2);
            InterfaceC1786Vj contextRepairHelper = A02.get();
            if (contextRepairHelper != null) {
                contextRepairHelper.AHp(th2, obj);
                return;
            }
            return;
        }
        throw th2;
    }

    public static void A01(boolean z10, InterfaceC1786Vj interfaceC1786Vj) {
        A01.set(z10);
        A02.set(interfaceC1786Vj);
    }

    public static boolean A02(Object obj) {
        return A00.contains(obj);
    }
}
