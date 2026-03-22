package com.hades.aar.auth;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.AttrRes;
import com.huawei.hms.support.hwid.ui.HuaweiIdAuthButton;
import ja.k;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
@SourceDebugExtension({"SMAP\nHuaWeiLoginView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HuaWeiLoginView.kt\ncom/hades/aar/auth/HuaWeiLoginView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Context.kt\nandroidx/core/content/ContextKt\n*L\n1#1,82:1\n1#2:83\n55#3,6:84\n*S KotlinDebug\n*F\n+ 1 HuaWeiLoginView.kt\ncom/hades/aar/auth/HuaWeiLoginView\n*L\n48#1:84,6\n*E\n"})
/* loaded from: classes5.dex */
public final class HuaWeiLoginView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    public final HuaweiIdAuthButton f21738a;

    /* renamed from: b  reason: collision with root package name */
    public View.OnClickListener f21739b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HuaWeiLoginView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public final void setOnAuthButtonClickListener(@NotNull View.OnClickListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Log.i("FirebaseAuthManager", "listener: " + listener);
        this.f21739b = listener;
        if (listener != null) {
            Log.i("FirebaseAuthManager", "setOnClickListener: " + this.f21739b);
            this.f21738a.setOnClickListener(this.f21739b);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HuaWeiLoginView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ HuaWeiLoginView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HuaWeiLoginView(@NotNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        setOrientation(1);
        HuaweiIdAuthButton huaweiIdAuthButton = new HuaweiIdAuthButton(context);
        this.f21738a = huaweiIdAuthButton;
        addView(huaweiIdAuthButton);
        if (attributeSet != null) {
            Context context2 = getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "context");
            int[] HuaWeiLoginView = k.f60376a;
            Intrinsics.checkNotNullExpressionValue(HuaWeiLoginView, "HuaWeiLoginView");
            TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, HuaWeiLoginView, 0, 0);
            ViewGroup.LayoutParams layoutParams = huaweiIdAuthButton.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
            layoutParams2.width = obtainStyledAttributes.getDimensionPixelSize(k.f60378c, -1);
            layoutParams2.height = obtainStyledAttributes.getDimensionPixelSize(k.f60377b, (int) (44 * getResources().getDisplayMetrics().density));
            layoutParams2.topMargin = obtainStyledAttributes.getDimensionPixelSize(k.f60380e, (int) (20 * getResources().getDisplayMetrics().density));
            layoutParams2.setMarginStart(obtainStyledAttributes.getDimensionPixelSize(k.f60379d, (int) (40 * getResources().getDisplayMetrics().density)));
            layoutParams2.setMarginEnd(layoutParams2.getMarginStart());
            huaweiIdAuthButton.setLayoutParams(layoutParams2);
            huaweiIdAuthButton.setGravity(16);
            obtainStyledAttributes.recycle();
        }
    }
}
