package com.drake.brv.listener;

import android.content.Context;
import androidx.recyclerview.widget.LinearSmoothScroller;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapLinearSmoothScroller.kt */
@Metadata
/* loaded from: classes3.dex */
public final class SnapLinearSmoothScroller extends LinearSmoothScroller {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SnapLinearSmoothScroller(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // androidx.recyclerview.widget.LinearSmoothScroller
    protected int getVerticalSnapPreference() {
        return -1;
    }
}
