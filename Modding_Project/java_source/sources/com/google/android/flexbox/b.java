package com.google.android.flexbox;

import android.view.View;
import java.util.ArrayList;
import java.util.List;
/* compiled from: FlexLine.java */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: e  reason: collision with root package name */
    int f19570e;

    /* renamed from: f  reason: collision with root package name */
    int f19571f;

    /* renamed from: g  reason: collision with root package name */
    int f19572g;

    /* renamed from: h  reason: collision with root package name */
    int f19573h;

    /* renamed from: i  reason: collision with root package name */
    int f19574i;

    /* renamed from: j  reason: collision with root package name */
    float f19575j;

    /* renamed from: k  reason: collision with root package name */
    float f19576k;

    /* renamed from: l  reason: collision with root package name */
    int f19577l;

    /* renamed from: m  reason: collision with root package name */
    int f19578m;

    /* renamed from: o  reason: collision with root package name */
    int f19580o;

    /* renamed from: p  reason: collision with root package name */
    int f19581p;

    /* renamed from: q  reason: collision with root package name */
    boolean f19582q;

    /* renamed from: r  reason: collision with root package name */
    boolean f19583r;

    /* renamed from: a  reason: collision with root package name */
    int f19566a = Integer.MAX_VALUE;

    /* renamed from: b  reason: collision with root package name */
    int f19567b = Integer.MAX_VALUE;

    /* renamed from: c  reason: collision with root package name */
    int f19568c = Integer.MIN_VALUE;

    /* renamed from: d  reason: collision with root package name */
    int f19569d = Integer.MIN_VALUE;

    /* renamed from: n  reason: collision with root package name */
    List<Integer> f19579n = new ArrayList();

    public int a() {
        return this.f19572g;
    }

    public int b() {
        return this.f19573h;
    }

    public int c() {
        return this.f19573h - this.f19574i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(View view, int i10, int i11, int i12, int i13) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        this.f19566a = Math.min(this.f19566a, (view.getLeft() - flexItem.s0()) - i10);
        this.f19567b = Math.min(this.f19567b, (view.getTop() - flexItem.t()) - i11);
        this.f19568c = Math.max(this.f19568c, view.getRight() + flexItem.G0() + i12);
        this.f19569d = Math.max(this.f19569d, view.getBottom() + flexItem.v() + i13);
    }
}
