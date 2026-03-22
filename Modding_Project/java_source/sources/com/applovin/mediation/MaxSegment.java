package com.applovin.mediation;

import com.applovin.impl.sdk.o;
import java.util.List;
/* loaded from: classes2.dex */
public class MaxSegment {

    /* renamed from: a  reason: collision with root package name */
    private final int f10758a;

    /* renamed from: b  reason: collision with root package name */
    private final List f10759b;

    public MaxSegment(int i10, List<Integer> list) {
        this.f10758a = i10;
        this.f10759b = list;
        a(i10);
        for (Integer num : list) {
            a(num.intValue());
        }
    }

    private void a(int i10) {
        if (i10 >= 0) {
            return;
        }
        o.h("MaxSegment", "Please ensure that the segment value entered is a non-negative number in the range of [0, 2147483647]: " + i10);
    }

    public int getKey() {
        return this.f10758a;
    }

    public List<Integer> getValues() {
        return this.f10759b;
    }

    public String toString() {
        return "MaxSegment{key=" + this.f10758a + ", values=" + this.f10759b + '}';
    }
}
