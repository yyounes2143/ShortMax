package com.applovin.impl;

import com.applovin.mediation.MaxAd;
import com.applovin.mediation.nativeAds.adPlacer.MaxAdPlacerSettings;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.SortedSet;
import java.util.TreeSet;
/* loaded from: classes2.dex */
public class t2 {

    /* renamed from: a  reason: collision with root package name */
    private final j4 f10034a = new j4();

    /* renamed from: b  reason: collision with root package name */
    private final TreeSet f10035b = new TreeSet();

    /* renamed from: c  reason: collision with root package name */
    private final Map f10036c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private int f10037d;

    /* renamed from: e  reason: collision with root package name */
    private int f10038e;

    public t2(MaxAdPlacerSettings maxAdPlacerSettings) {
        a(maxAdPlacerSettings);
    }

    private void a(MaxAdPlacerSettings maxAdPlacerSettings) {
        if (!maxAdPlacerSettings.hasValidPositioning()) {
            com.applovin.impl.sdk.o.h("MaxAdPlacerData", "No positioning info was provided with ad placer settings. You must set at least (1) one or more fixed positions or (2) a repeating interval greater than or equal to 2 for the ad placer to determine where to position ads.");
            return;
        }
        this.f10034a.addAll(maxAdPlacerSettings.getFixedPositions());
        if (!maxAdPlacerSettings.isRepeatingEnabled()) {
            return;
        }
        int repeatingInterval = maxAdPlacerSettings.getRepeatingInterval();
        if (this.f10034a.isEmpty()) {
            this.f10034a.add(Integer.valueOf(repeatingInterval - 1));
        }
        int intValue = ((Integer) this.f10034a.a()).intValue();
        while (true) {
            intValue += repeatingInterval;
            if (this.f10034a.size() >= maxAdPlacerSettings.getMaxAdCount()) {
                return;
            }
            this.f10034a.add(Integer.valueOf(intValue));
        }
    }

    public Collection b() {
        return new TreeSet((SortedSet) this.f10035b);
    }

    public int c() {
        int i10 = this.f10037d;
        if (i10 != -1 && this.f10038e != -1) {
            while (i10 <= this.f10038e) {
                if (g(i10) && !h(i10)) {
                    return i10;
                }
                i10++;
            }
        }
        return -1;
    }

    public int d(int i10) {
        if (g(i10)) {
            return -1;
        }
        return i10 - a(i10, true);
    }

    public Collection e(int i10) {
        return new TreeSet((SortedSet) this.f10035b.tailSet(Integer.valueOf(i10), false));
    }

    public void f(int i10) {
        int b10 = this.f10034a.b(Integer.valueOf(i10));
        for (int size = this.f10034a.size() - 1; size >= b10; size--) {
            Integer num = (Integer) this.f10034a.a(size);
            int intValue = num.intValue() + 1;
            a(num.intValue(), intValue);
            this.f10034a.a(size, Integer.valueOf(intValue));
        }
    }

    public boolean g(int i10) {
        return this.f10034a.contains(Integer.valueOf(i10));
    }

    public boolean h(int i10) {
        return this.f10035b.contains(Integer.valueOf(i10));
    }

    public void i(int i10) {
        int b10 = this.f10034a.b(Integer.valueOf(i10));
        if (g(i10)) {
            this.f10036c.remove(Integer.valueOf(i10));
            this.f10035b.remove(Integer.valueOf(i10));
            this.f10034a.b(b10);
        }
        while (b10 < this.f10034a.size()) {
            Integer num = (Integer) this.f10034a.a(b10);
            int intValue = num.intValue() - 1;
            a(num.intValue(), intValue);
            this.f10034a.a(b10, Integer.valueOf(intValue));
            b10++;
        }
    }

    public int b(int i10) {
        if (i10 == 0) {
            return 0;
        }
        return i10 + a(i10 - 1, false);
    }

    public void b(int i10, int i11) {
        i(i10);
        f(i11);
    }

    public void c(int i10, int i11) {
        this.f10037d = i10;
        this.f10038e = i11;
    }

    public int c(int i10) {
        return i10 + a(i10, false);
    }

    public MaxAd a(int i10) {
        return (MaxAd) this.f10036c.get(Integer.valueOf(i10));
    }

    public void a(MaxAd maxAd, int i10) {
        this.f10036c.put(Integer.valueOf(i10), maxAd);
        this.f10035b.add(Integer.valueOf(i10));
    }

    public void a() {
        this.f10036c.clear();
        this.f10035b.clear();
    }

    public void a(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            this.f10036c.remove(num);
            this.f10035b.remove(num);
        }
    }

    private void a(int i10, int i11) {
        if (this.f10036c.containsKey(Integer.valueOf(i10))) {
            this.f10036c.put(Integer.valueOf(i11), (MaxAd) this.f10036c.get(Integer.valueOf(i10)));
            this.f10035b.add(Integer.valueOf(i11));
            this.f10036c.remove(Integer.valueOf(i10));
            this.f10035b.remove(Integer.valueOf(i10));
        }
    }

    private int a(int i10, boolean z10) {
        int c10 = this.f10034a.c(Integer.valueOf(i10));
        if (!z10) {
            int i11 = i10 + c10;
            while (c10 < this.f10034a.size() && i11 >= ((Integer) this.f10034a.a(c10)).intValue()) {
                i11++;
                c10++;
            }
        }
        return c10;
    }
}
