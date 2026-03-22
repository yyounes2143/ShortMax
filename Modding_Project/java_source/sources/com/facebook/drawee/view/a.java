package com.facebook.drawee.view;

import android.view.View;
import android.view.ViewGroup;
/* compiled from: AspectRatioMeasure.java */
/* loaded from: classes3.dex */
public class a {

    /* compiled from: AspectRatioMeasure.java */
    /* renamed from: com.facebook.drawee.view.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0263a {

        /* renamed from: a  reason: collision with root package name */
        public int f15515a;

        /* renamed from: b  reason: collision with root package name */
        public int f15516b;
    }

    private static boolean a(int i10) {
        if (i10 != 0 && i10 != -2) {
            return false;
        }
        return true;
    }

    public static void b(C0263a c0263a, float f10, ViewGroup.LayoutParams layoutParams, int i10, int i11) {
        if (f10 > 0.0f && layoutParams != null) {
            if (a(layoutParams.height)) {
                c0263a.f15516b = View.MeasureSpec.makeMeasureSpec(View.resolveSize((int) (((View.MeasureSpec.getSize(c0263a.f15515a) - i10) / f10) + i11), c0263a.f15516b), 1073741824);
            } else if (a(layoutParams.width)) {
                c0263a.f15515a = View.MeasureSpec.makeMeasureSpec(View.resolveSize((int) (((View.MeasureSpec.getSize(c0263a.f15516b) - i11) * f10) + i10), c0263a.f15515a), 1073741824);
            }
        }
    }
}
