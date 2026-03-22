package com.google.android.material.sidesheet;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class SheetDelegate {
    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int calculateInnerMargin(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract float calculateSlideOffset(int i10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getCoplanarSiblingAdjacentMargin(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getExpandedOffset();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getHiddenOffset();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getMaxViewPositionHorizontal();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getMinViewPositionHorizontal();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract <V extends View> int getOuterEdge(@NonNull V v10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getParentInnerEdge(@NonNull CoordinatorLayout coordinatorLayout);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getSheetEdge();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean isExpandingOutwards(float f10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean isReleasedCloseToInnerEdge(@NonNull View view);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean isSwipeSignificant(float f10, float f11);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean shouldHide(@NonNull View view, float f10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void updateCoplanarSiblingAdjacentMargin(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams, int i10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void updateCoplanarSiblingLayoutParams(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams, int i10, int i11);
}
