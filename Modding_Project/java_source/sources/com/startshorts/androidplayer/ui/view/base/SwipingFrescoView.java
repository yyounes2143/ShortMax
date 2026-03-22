package com.startshorts.androidplayer.ui.view.base;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SwipingFrescoView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SwipingFrescoView extends CustomFrescoView {

    /* renamed from: j  reason: collision with root package name */
    private boolean f47145j;

    /* renamed from: k  reason: collision with root package name */
    private final int f47146k;

    /* renamed from: l  reason: collision with root package name */
    private int f47147l;

    /* renamed from: m  reason: collision with root package name */
    private int f47148m;

    /* renamed from: n  reason: collision with root package name */
    private int f47149n;

    /* renamed from: o  reason: collision with root package name */
    private int f47150o;

    /* renamed from: p  reason: collision with root package name */
    private final int f47151p;

    /* compiled from: SwipingFrescoView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface a {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwipingFrescoView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47146k = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.f47151p = DeviceUtil.f48146a.G() / 6;
    }

    @Nullable
    public final a getMListener() {
        return null;
    }

    @Override // com.facebook.drawee.view.DraweeView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        int action = event.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    int rawX = (int) event.getRawX();
                    int i10 = this.f47148m - rawX;
                    this.f47148m = rawX;
                    if (Math.abs(rawX - this.f47147l) > this.f47146k && Math.abs(((int) event.getRawY()) - this.f47150o) < this.f47146k) {
                        this.f47145j = true;
                    }
                    if (Math.abs(rawX - this.f47147l) >= 0 && this.f47145j) {
                        this.f47149n += i10;
                    }
                }
            } else {
                this.f47145j = false;
                if (Math.abs(this.f47149n) >= this.f47151p) {
                    DeviceUtil.f48146a.G();
                }
                this.f47149n = 0;
            }
        } else {
            int rawX2 = (int) event.getRawX();
            this.f47147l = rawX2;
            this.f47148m = rawX2;
            this.f47150o = (int) event.getRawY();
        }
        return true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwipingFrescoView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47146k = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.f47151p = DeviceUtil.f48146a.G() / 6;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwipingFrescoView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47146k = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.f47151p = DeviceUtil.f48146a.G() / 6;
    }

    public final void setMListener(@Nullable a aVar) {
    }
}
