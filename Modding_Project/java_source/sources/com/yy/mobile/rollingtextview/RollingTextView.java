package com.yy.mobile.rollingtextview;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.yy.mobile.rollingtextview.RollingTextView;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import zl.d;
import zl.h;
/* compiled from: RollingTextView.kt */
@Metadata
/* loaded from: classes7.dex */
public class RollingTextView extends View {

    /* renamed from: a  reason: collision with root package name */
    private int f49674a;

    /* renamed from: b  reason: collision with root package name */
    private int f49675b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Paint f49676c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final zl.a f49677d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final h f49678e;

    /* renamed from: f  reason: collision with root package name */
    private ValueAnimator f49679f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final Rect f49680g;

    /* renamed from: h  reason: collision with root package name */
    private int f49681h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private CharSequence f49682i;

    /* renamed from: j  reason: collision with root package name */
    private long f49683j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f49684k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f49685l;

    /* renamed from: m  reason: collision with root package name */
    private int f49686m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private Interpolator f49687n;

    /* renamed from: o  reason: collision with root package name */
    private int f49688o;

    /* compiled from: RollingTextView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(@Nullable Animator animator) {
            RollingTextView.this.f49678e.h();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RollingTextView(@NotNull Context context) {
        this(context, null, 0, 0, 14, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final void c(RollingTextView rollingTextView, Ref.IntRef intRef, Ref.FloatRef floatRef, Ref.FloatRef floatRef2, Ref.FloatRef floatRef3, Ref.ObjectRef<String> objectRef, Ref.FloatRef floatRef4, TypedArray typedArray) {
        rollingTextView.f49686m = typedArray.getInt(d.f71696f, rollingTextView.f49686m);
        intRef.element = typedArray.getColor(d.f71698h, intRef.element);
        floatRef.element = typedArray.getFloat(d.f71699i, floatRef.element);
        floatRef2.element = typedArray.getFloat(d.f71700j, floatRef2.element);
        floatRef3.element = typedArray.getFloat(d.f71701k, floatRef3.element);
        String string = typedArray.getString(d.f71697g);
        T t10 = string;
        if (string == null) {
            t10 = "";
        }
        objectRef.element = t10;
        rollingTextView.setTextColor(typedArray.getColor(d.f71695e, rollingTextView.f49688o));
        floatRef4.element = typedArray.getDimension(d.f71693c, floatRef4.element);
        rollingTextView.f49681h = typedArray.getInt(d.f71694d, rollingTextView.f49681h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(RollingTextView this$0, ValueAnimator valueAnimator) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f49678e.k(valueAnimator.getAnimatedFraction());
        this$0.g();
        this$0.invalidate();
    }

    private final boolean g() {
        boolean z10;
        boolean z11;
        if (this.f49674a != i()) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.f49675b != h()) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (!z10 && !z11) {
            return false;
        }
        requestLayout();
        return true;
    }

    private final int h() {
        return ((int) this.f49678e.g()) + getPaddingTop() + getPaddingBottom();
    }

    private final int i() {
        return ((int) this.f49678e.d()) + getPaddingLeft() + getPaddingRight();
    }

    private final void j() {
        this.f49678e.l();
        g();
        invalidate();
    }

    private final void k(Canvas canvas) {
        float d10 = this.f49678e.d();
        float g10 = this.f49678e.g();
        int width = this.f49680g.width();
        int height = this.f49680g.height();
        Rect rect = this.f49680g;
        int i10 = rect.left;
        float f10 = i10;
        int i11 = rect.top;
        float f11 = i11;
        if (this.f49684k) {
            int i12 = this.f49686m;
            if ((i12 & 1) == 1) {
                f10 = i10 + ((width - d10) / 2.0f);
            }
            if ((i12 & GravityCompat.END) == 8388613) {
                f10 = i10 + (width - d10);
            }
        }
        if (this.f49685l) {
            int i13 = this.f49686m;
            if ((i13 & 16) == 16) {
                f11 = ((height - g10) / 2.0f) + i11;
            }
            if ((i13 & 80) == 80) {
                f11 = i11 + (height - g10);
            }
        }
        canvas.translate(f10, f11);
        canvas.clipRect(0.0f, 0.0f, d10, g10);
    }

    public final void f(@NotNull CharSequence orderList) {
        Intrinsics.checkNotNullParameter(orderList, "orderList");
        this.f49677d.a(StringsKt.y1(orderList));
    }

    public final long getAnimationDuration() {
        return this.f49683j;
    }

    @NotNull
    public final Interpolator getAnimationInterpolator() {
        return this.f49687n;
    }

    @Override // android.view.View
    public int getBaseline() {
        Paint.FontMetrics fontMetrics = this.f49676c.getFontMetrics();
        float f10 = 2;
        float f11 = fontMetrics.descent;
        return (int) ((this.f49678e.g() / f10) + (((f11 - fontMetrics.ascent) / f10) - f11));
    }

    @NotNull
    public final am.a getCharStrategy() {
        return this.f49677d.e();
    }

    @NotNull
    public final char[] getCurrentText() {
        return this.f49678e.c();
    }

    public final int getGravity() {
        return this.f49686m;
    }

    public final int getLetterSpacingExtra() {
        return this.f49678e.e();
    }

    @NotNull
    public final CharSequence getText() {
        return this.f49682i;
    }

    public final int getTextColor() {
        return this.f49688o;
    }

    public final float getTextSize() {
        return this.f49676c.getTextSize();
    }

    @Nullable
    public final Typeface getTypeface() {
        return this.f49676c.getTypeface();
    }

    @Override // android.view.View
    protected void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        canvas.save();
        k(canvas);
        canvas.translate(0.0f, this.f49678e.f());
        this.f49678e.b(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        this.f49674a = i();
        this.f49675b = h();
        setMeasuredDimension(View.resolveSize(this.f49674a, i10), View.resolveSize(this.f49675b, i11));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        boolean z10;
        super.onSizeChanged(i10, i11, i12, i13);
        this.f49680g.set(getPaddingLeft(), getPaddingTop(), i10 - getPaddingRight(), i11 - getPaddingBottom());
        boolean z11 = false;
        if (this.f49680g.width() > i()) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f49684k = z10;
        if (this.f49680g.height() > h()) {
            z11 = true;
        }
        this.f49685l = z11;
    }

    public final void setAnimationDuration(long j10) {
        this.f49683j = j10;
    }

    public final void setAnimationInterpolator(@NotNull Interpolator interpolator) {
        Intrinsics.checkNotNullParameter(interpolator, "<set-?>");
        this.f49687n = interpolator;
    }

    public final void setCharStrategy(@NotNull am.a value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.f49677d.g(value);
    }

    public final void setGravity(int i10) {
        this.f49686m = i10;
    }

    public final void setLetterSpacingExtra(int i10) {
        this.f49678e.i(i10);
    }

    public final void setText(@NotNull CharSequence text) {
        Intrinsics.checkNotNullParameter(text, "text");
        setText(text, !TextUtils.isEmpty(this.f49682i));
    }

    public final void setTextColor(int i10) {
        if (this.f49688o != i10) {
            this.f49688o = i10;
            this.f49676c.setColor(i10);
            invalidate();
        }
    }

    public final void setTextSize(float f10) {
        setTextSize(2, f10);
    }

    public final void setTypeface(@Nullable Typeface typeface) {
        Paint paint = this.f49676c;
        int i10 = this.f49681h;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    typeface = Typeface.create(typeface, 3);
                }
            } else {
                typeface = Typeface.create(typeface, 2);
            }
        } else {
            typeface = Typeface.create(typeface, 1);
        }
        paint.setTypeface(typeface);
        j();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RollingTextView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public final void setText(@NotNull CharSequence text, boolean z10) {
        Intrinsics.checkNotNullParameter(text, "text");
        this.f49682i = text;
        if (z10) {
            this.f49678e.j(text);
            final ValueAnimator valueAnimator = this.f49679f;
            if (valueAnimator.isRunning()) {
                valueAnimator.cancel();
            }
            valueAnimator.setDuration(getAnimationDuration());
            valueAnimator.setInterpolator(getAnimationInterpolator());
            post(new Runnable() { // from class: zl.f
                @Override // java.lang.Runnable
                public final void run() {
                    valueAnimator.start();
                }
            });
            return;
        }
        am.a charStrategy = getCharStrategy();
        setCharStrategy(am.d.a());
        this.f49678e.j(text);
        setCharStrategy(charStrategy);
        this.f49678e.h();
        g();
        invalidate();
    }

    public final void setTextSize(int i10, float f10) {
        Context context = getContext();
        Resources resources = context == null ? null : context.getResources();
        if (resources == null) {
            resources = Resources.getSystem();
            Intrinsics.checkNotNullExpressionValue(resources, "getSystem()");
        }
        this.f49676c.setTextSize(TypedValue.applyDimension(i10, f10, resources.getDisplayMetrics()));
        j();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RollingTextView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0, 8, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ RollingTextView(Context context, AttributeSet attributeSet, int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i10, (i12 & 8) != 0 ? 0 : i11);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RollingTextView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10);
        TypedArray typedArray;
        Ref.FloatRef floatRef;
        Ref.ObjectRef objectRef;
        Intrinsics.checkNotNullParameter(context, "context");
        Paint paint = new Paint();
        this.f49676c = paint;
        zl.a aVar = new zl.a();
        this.f49677d = aVar;
        this.f49678e = new h(paint, aVar);
        this.f49679f = ValueAnimator.ofFloat(1.0f);
        this.f49680g = new Rect();
        this.f49682i = "";
        this.f49683j = 750L;
        this.f49686m = GravityCompat.END;
        Ref.IntRef intRef = new Ref.IntRef();
        Ref.FloatRef floatRef2 = new Ref.FloatRef();
        Ref.FloatRef floatRef3 = new Ref.FloatRef();
        Ref.FloatRef floatRef4 = new Ref.FloatRef();
        Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        objectRef2.element = "";
        Ref.FloatRef floatRef5 = new Ref.FloatRef();
        floatRef5.element = TypedValue.applyDimension(2, 12.0f, context.getResources().getDisplayMetrics());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.f71691a, i10, i11);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "context.obtainStyledAttr…tr, defStyleRes\n        )");
        int resourceId = obtainStyledAttributes.getResourceId(d.f71692b, -1);
        if (resourceId != -1) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, d.f71691a);
            Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes2, "context.obtainStyledAttr…ingTextView\n            )");
            typedArray = obtainStyledAttributes;
            floatRef = floatRef5;
            objectRef = objectRef2;
            c(this, intRef, floatRef2, floatRef3, floatRef4, objectRef2, floatRef5, obtainStyledAttributes2);
            obtainStyledAttributes2.recycle();
        } else {
            typedArray = obtainStyledAttributes;
            floatRef = floatRef5;
            objectRef = objectRef2;
        }
        c(this, intRef, floatRef2, floatRef3, floatRef4, objectRef, floatRef, typedArray);
        TypedArray typedArray2 = typedArray;
        this.f49683j = typedArray2.getInt(d.f71702l, (int) this.f49683j);
        paint.setAntiAlias(true);
        int i12 = intRef.element;
        if (i12 != 0) {
            paint.setShadowLayer(floatRef4.element, floatRef2.element, floatRef3.element, i12);
        }
        if (this.f49681h != 0) {
            setTypeface(paint.getTypeface());
        }
        setTextSize(0, floatRef.element);
        setText((CharSequence) objectRef.element, false);
        typedArray2.recycle();
        this.f49679f.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: zl.e
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                RollingTextView.d(RollingTextView.this, valueAnimator);
            }
        });
        this.f49679f.addListener(new a());
        this.f49687n = new LinearInterpolator();
        this.f49688o = ViewCompat.MEASURED_STATE_MASK;
    }
}
