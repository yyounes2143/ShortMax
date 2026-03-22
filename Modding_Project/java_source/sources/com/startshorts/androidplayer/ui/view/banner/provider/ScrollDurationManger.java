package com.startshorts.androidplayer.ui.view.banner.provider;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes7.dex */
public class ScrollDurationManger extends LinearLayoutManager {

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayoutManager f47071a;

    /* renamed from: b  reason: collision with root package name */
    private final int f47072b;

    /* loaded from: classes7.dex */
    class a extends LinearSmoothScroller {
        a(Context context) {
            super(context);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public int calculateTimeForDeceleration(int i10) {
            return ScrollDurationManger.this.f47072b;
        }
    }

    public ScrollDurationManger(ViewPager2 viewPager2, int i10, LinearLayoutManager linearLayoutManager) {
        super(viewPager2.getContext(), linearLayoutManager.getOrientation(), false);
        this.f47072b = i10;
        this.f47071a = linearLayoutManager;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void calculateExtraLayoutSpace(@NonNull RecyclerView.State state, @NonNull int[] iArr) {
        try {
            Method declaredMethod = this.f47071a.getClass().getDeclaredMethod("calculateExtraLayoutSpace", state.getClass(), iArr.getClass());
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(this.f47071a, state, iArr);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e10) {
            fj.a.e(e10.getMessage());
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityNodeInfo(@NonNull RecyclerView.Recycler recycler, @NonNull RecyclerView.State state, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        this.f47071a.onInitializeAccessibilityNodeInfo(recycler, state, accessibilityNodeInfoCompat);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean performAccessibilityAction(@NonNull RecyclerView.Recycler recycler, @NonNull RecyclerView.State state, int i10, @Nullable Bundle bundle) {
        return this.f47071a.performAccessibilityAction(recycler, state, i10, bundle);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean requestChildRectangleOnScreen(@NonNull RecyclerView recyclerView, @NonNull View view, @NonNull Rect rect, boolean z10, boolean z11) {
        return false;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i10) {
        a aVar = new a(recyclerView.getContext());
        aVar.setTargetPosition(i10);
        startSmoothScroll(aVar);
    }
}
