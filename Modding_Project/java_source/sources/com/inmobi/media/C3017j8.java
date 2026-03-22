package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.j8  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C3017j8 extends ViewGroup {
    public C3017j8(Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams p10) {
        Intrinsics.checkNotNullParameter(p10, "p");
        return p10 instanceof C3001i8;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams p10) {
        Intrinsics.checkNotNullParameter(p10, "p");
        return new C3001i8(p10);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int childCount = getChildCount();
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            if (childAt.getVisibility() != 8) {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type com.inmobi.ads.viewsv2.NativeContainerLayout.LayoutParams");
                C3001i8 c3001i8 = (C3001i8) layoutParams;
                int i15 = c3001i8.f24856a;
                childAt.layout(i15, c3001i8.f24857b, childAt.getMeasuredWidth() + i15, childAt.getMeasuredHeight() + c3001i8.f24857b);
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i10, int i11) {
        measureChildren(i10, i11);
        int childCount = getChildCount();
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            if (childAt.getVisibility() != 8) {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type com.inmobi.ads.viewsv2.NativeContainerLayout.LayoutParams");
                C3001i8 c3001i8 = (C3001i8) layoutParams;
                int i15 = c3001i8.f24856a;
                int i16 = c3001i8.f24857b;
                i13 = Math.max(i13, childAt.getMeasuredWidth() + i15);
                i12 = Math.max(i12, childAt.getMeasuredHeight() + i16);
            }
        }
        setMeasuredDimension(View.resolveSize(Math.max(i13, getSuggestedMinimumWidth()), i10), View.resolveSize(Math.max(i12, getSuggestedMinimumHeight()), i11));
    }
}
