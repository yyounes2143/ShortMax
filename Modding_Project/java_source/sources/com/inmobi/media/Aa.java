package com.inmobi.media;

import com.inmobi.commons.core.configs.AdConfig;
import java.util.LinkedHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes5.dex */
public abstract class Aa {

    /* renamed from: a  reason: collision with root package name */
    public static C2883b5 f23471a;

    /* renamed from: b  reason: collision with root package name */
    public static F3 f23472b;

    /* renamed from: c  reason: collision with root package name */
    public static final AtomicBoolean f23473c = new AtomicBoolean(false);

    public static void a() {
        LinkedHashMap linkedHashMap = O2.f23923a;
        if (((AdConfig) AbstractC3110p5.a(com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig", null)).getPingsV2Config().getEnabled() && f23473c.compareAndSet(false, true)) {
            Pa pa2 = new Pa();
            f23471a = new C2883b5(pa2);
            f23472b = new F3(pa2);
            C2883b5 c2883b5 = f23471a;
            if (c2883b5 != null) {
                O4 o42 = c2883b5.f24517e;
                o42.getClass();
                Ca ca2 = Ca.f23538c;
                if (o42.a(ca2)) {
                    o42.f23657d = ca2;
                    o42.a();
                    o42.c();
                    o42.d();
                }
            }
            F3 f32 = f23472b;
            if (f32 != null) {
                W9 w92 = f32.f23630e;
                w92.getClass();
                Ca ca3 = Ca.f23538c;
                if (w92.a(ca3)) {
                    w92.f23657d = ca3;
                    w92.a();
                }
            }
        }
    }
}
