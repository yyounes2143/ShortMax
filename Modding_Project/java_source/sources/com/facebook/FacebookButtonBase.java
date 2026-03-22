package com.facebook;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FacebookButtonBase.kt */
@Metadata
@SuppressLint({"ResourceType"})
/* loaded from: classes3.dex */
public abstract class FacebookButtonBase extends Button {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f14803a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f14804b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private View.OnClickListener f14805c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private View.OnClickListener f14806d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f14807e;

    /* renamed from: f  reason: collision with root package name */
    private int f14808f;

    /* renamed from: g  reason: collision with root package name */
    private int f14809g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private com.facebook.internal.x f14810h;

    /* renamed from: i  reason: collision with root package name */
    private final int f14811i;

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FacebookButtonBase(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11, @NotNull String analyticsButtonCreatedEventName, @NotNull String analyticsButtonTappedEventName) {
        super(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(analyticsButtonCreatedEventName, "analyticsButtonCreatedEventName");
        Intrinsics.checkNotNullParameter(analyticsButtonTappedEventName, "analyticsButtonTappedEventName");
        i11 = i11 == 0 ? getDefaultStyleResource() : i11;
        c(context, attributeSet, i10, i11 == 0 ? com.facebook.common.f.f15312c : i11);
        this.f14803a = analyticsButtonCreatedEventName;
        this.f14804b = analyticsButtonTappedEventName;
        setClickable(true);
        setFocusable(true);
    }

    private final void g(Context context, AttributeSet attributeSet, int i10, int i11) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            if (isInEditMode()) {
                return;
            }
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842964}, i10, i11);
            Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "context.theme.obtainStyl…efStyleAttr, defStyleRes)");
            if (obtainStyledAttributes.hasValue(0)) {
                int resourceId = obtainStyledAttributes.getResourceId(0, 0);
                if (resourceId != 0) {
                    setBackgroundResource(resourceId);
                } else {
                    setBackgroundColor(obtainStyledAttributes.getColor(0, 0));
                }
            } else {
                setBackgroundColor(ContextCompat.getColor(context, com.facebook.common.a.f15285a));
            }
            obtainStyledAttributes.recycle();
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    @SuppressLint({"ResourceType"})
    private final void h(Context context, AttributeSet attributeSet, int i10, int i11) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16843119, 16843117, 16843120, 16843118, 16843121}, i10, i11);
            Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "context.theme.obtainStyl…efStyleAttr, defStyleRes)");
            setCompoundDrawablesWithIntrinsicBounds(obtainStyledAttributes.getResourceId(0, 0), obtainStyledAttributes.getResourceId(1, 0), obtainStyledAttributes.getResourceId(2, 0), obtainStyledAttributes.getResourceId(3, 0));
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(4, 0);
            obtainStyledAttributes.recycle();
            setCompoundDrawablePadding(dimensionPixelSize);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private final void i(Context context, AttributeSet attributeSet, int i10, int i11) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842966, 16842967, 16842968, 16842969}, i10, i11);
            Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "context.theme.obtainStyl…efStyleAttr, defStyleRes)");
            setPadding(obtainStyledAttributes.getDimensionPixelSize(0, 0), obtainStyledAttributes.getDimensionPixelSize(1, 0), obtainStyledAttributes.getDimensionPixelSize(2, 0), obtainStyledAttributes.getDimensionPixelSize(3, 0));
            obtainStyledAttributes.recycle();
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private final void j(Context context, AttributeSet attributeSet, int i10, int i11) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842904}, i10, i11);
            Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "context.theme.obtainStyl…efStyleAttr, defStyleRes)");
            setTextColor(obtainStyledAttributes.getColorStateList(0));
            obtainStyledAttributes.recycle();
            TypedArray obtainStyledAttributes2 = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842927}, i10, i11);
            Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes2, "context.theme.obtainStyl…efStyleAttr, defStyleRes)");
            int i12 = obtainStyledAttributes2.getInt(0, 17);
            obtainStyledAttributes2.recycle();
            setGravity(i12);
            TypedArray obtainStyledAttributes3 = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842901, 16842903, 16843087}, i10, i11);
            Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes3, "context.theme.obtainStyl…efStyleAttr, defStyleRes)");
            setTextSize(0, obtainStyledAttributes3.getDimensionPixelSize(0, 0));
            setTypeface(Typeface.create(getTypeface(), 1));
            String string = obtainStyledAttributes3.getString(2);
            obtainStyledAttributes3.recycle();
            setText(string);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private final void k() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            super.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FacebookButtonBase.l(FacebookButtonBase.this, view);
                }
            });
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(FacebookButtonBase this$0, View view) {
        if (o4.a.d(FacebookButtonBase.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.e(this$0.getContext());
            View.OnClickListener onClickListener = this$0.f14806d;
            if (onClickListener != null) {
                onClickListener.onClick(view);
                return;
            }
            View.OnClickListener onClickListener2 = this$0.f14805c;
            if (onClickListener2 != null) {
                onClickListener2.onClick(view);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, FacebookButtonBase.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(@Nullable View view) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            View.OnClickListener onClickListener = this.f14805c;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(context, "context");
            g(context, attributeSet, i10, i11);
            h(context, attributeSet, i10, i11);
            i(context, attributeSet, i10, i11);
            j(context, attributeSet, i10, i11);
            k();
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    protected void d(@Nullable Context context) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            com.facebook.appevents.h0.f15017b.a(context, null).f(this.f14803a);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    protected void e(@Nullable Context context) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            com.facebook.appevents.h0.f15017b.a(context, null).f(this.f14804b);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int f(@Nullable String str) {
        if (o4.a.d(this)) {
            return 0;
        }
        try {
            return (int) Math.ceil(getPaint().measureText(str));
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public Activity getActivity() {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            Context context = getContext();
            while (!(context instanceof Activity) && (context instanceof ContextWrapper)) {
                context = ((ContextWrapper) context).getBaseContext();
            }
            if (context instanceof Activity) {
                return (Activity) context;
            }
            throw new FacebookException("Unable to get Activity.");
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    @NotNull
    protected final String getAnalyticsButtonCreatedEventName() {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            return this.f14803a;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    @NotNull
    protected final String getAnalyticsButtonTappedEventName() {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            return this.f14804b;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    @Nullable
    public final ActivityResultRegistryOwner getAndroidxActivityResultRegistryOwner() {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            Activity activity = getActivity();
            if (!(activity instanceof ActivityResultRegistryOwner)) {
                return null;
            }
            return (ActivityResultRegistryOwner) activity;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingLeft() {
        if (o4.a.d(this)) {
            return 0;
        }
        try {
            if (this.f14807e) {
                return this.f14808f;
            }
            return super.getCompoundPaddingLeft();
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return 0;
        }
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingRight() {
        if (o4.a.d(this)) {
            return 0;
        }
        try {
            if (this.f14807e) {
                return this.f14809g;
            }
            return super.getCompoundPaddingRight();
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return 0;
        }
    }

    protected abstract int getDefaultRequestCode();

    protected int getDefaultStyleResource() {
        if (o4.a.d(this)) {
            return 0;
        }
        try {
            return this.f14811i;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return 0;
        }
    }

    @Nullable
    public final Fragment getFragment() {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            com.facebook.internal.x xVar = this.f14810h;
            if (xVar == null) {
                return null;
            }
            return xVar.c();
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    @Nullable
    public final android.app.Fragment getNativeFragment() {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            com.facebook.internal.x xVar = this.f14810h;
            if (xVar == null) {
                return null;
            }
            return xVar.b();
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    public int getRequestCode() {
        if (o4.a.d(this)) {
            return 0;
        }
        try {
            return getDefaultRequestCode();
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            super.onAttachedToWindow();
            if (!isInEditMode()) {
                d(getContext());
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.TextView, android.view.View
    public void onDraw(@NotNull Canvas canvas) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            if ((getGravity() & 1) != 0) {
                int compoundPaddingLeft = getCompoundPaddingLeft();
                int compoundPaddingRight = getCompoundPaddingRight();
                int min = Math.min((((getWidth() - (getCompoundDrawablePadding() + compoundPaddingLeft)) - compoundPaddingRight) - f(getText().toString())) / 2, (compoundPaddingLeft - getPaddingLeft()) / 2);
                this.f14808f = compoundPaddingLeft - min;
                this.f14809g = compoundPaddingRight + min;
                this.f14807e = true;
            }
            super.onDraw(canvas);
            this.f14807e = false;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public final void setFragment(@NotNull android.app.Fragment fragment) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(fragment, "fragment");
            this.f14810h = new com.facebook.internal.x(fragment);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setInternalOnClickListener(@Nullable View.OnClickListener onClickListener) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            this.f14806d = onClickListener;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    @Override // android.view.View
    public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            this.f14805c = onClickListener;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public final void setFragment(@NotNull Fragment fragment) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(fragment, "fragment");
            this.f14810h = new com.facebook.internal.x(fragment);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }
}
