package com.facebook.ads.redexgen.X;

import android.graphics.Rect;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.pf  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2830pf {
    public final InterfaceC2835pk A00;
    public final String A01;
    public final Collection<C2845pu> A02;
    public final Collection<C2845pu> A03;
    public final List<Rect> A04;

    public C2830pf(String str, InterfaceC2835pk interfaceC2835pk, List<Rect> rects, Collection<C2845pu> collection, Collection<C2845pu> collection2) {
        this.A01 = str;
        this.A00 = interfaceC2835pk;
        this.A04 = new ArrayList(rects);
        this.A02 = collection;
        this.A03 = collection2;
    }
}
