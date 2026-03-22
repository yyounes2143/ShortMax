package com.inmobi.media;

import java.util.LinkedList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class U0 {

    /* renamed from: a  reason: collision with root package name */
    public final S0 f24228a;

    /* renamed from: b  reason: collision with root package name */
    public final Zd f24229b;

    /* renamed from: c  reason: collision with root package name */
    public long f24230c;

    /* renamed from: d  reason: collision with root package name */
    public long f24231d;

    /* renamed from: e  reason: collision with root package name */
    public long f24232e;

    /* renamed from: f  reason: collision with root package name */
    public long f24233f;

    /* renamed from: g  reason: collision with root package name */
    public long f24234g;

    /* renamed from: h  reason: collision with root package name */
    public long f24235h;

    /* renamed from: i  reason: collision with root package name */
    public long f24236i;

    /* renamed from: j  reason: collision with root package name */
    public final T0 f24237j;

    public U0(S0 adUnit) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.f24228a = adUnit;
        this.f24229b = new Zd();
        this.f24237j = new T0(this);
    }

    public final String a() {
        C3248y0 y10;
        LinkedList<C2976h> f10;
        C2976h c2976h;
        String w10;
        S0 s02 = this.f24228a;
        if (s02 == null || (y10 = s02.y()) == null || (f10 = y10.f()) == null || (c2976h = (C2976h) CollectionsKt.firstOrNull(f10)) == null || (w10 = c2976h.w()) == null) {
            return "";
        }
        return w10;
    }
}
