package com.startshorts.androidplayer.ui.view.refresh;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.ColorInt;
import androidx.core.content.ContextCompat;
import com.scwang.smart.refresh.header.material.CircleImageView;
import com.scwang.smart.refresh.layout.constant.RefreshState;
import com.scwang.smart.refresh.layout.simple.SimpleComponent;
import com.startshorts.androidplayer.R$color;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import sc.d;
import sc.e;
import sc.f;
import tc.b;
/* compiled from: MaterialHeader.kt */
@Metadata
/* loaded from: classes7.dex */
public final class MaterialHeader extends SimpleComponent implements d {

    /* renamed from: d  reason: collision with root package name */
    private boolean f47758d;

    /* renamed from: e  reason: collision with root package name */
    private int f47759e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private ImageView f47760f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private e f47761g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private rc.a f47762h;

    /* renamed from: i  reason: collision with root package name */
    private int f47763i;

    /* renamed from: j  reason: collision with root package name */
    private int f47764j;

    /* renamed from: k  reason: collision with root package name */
    private int f47765k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private Path f47766l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private Paint f47767m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private RefreshState f47768n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f47769o;

    /* compiled from: MaterialHeader.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[RefreshState.values().length];
            try {
                iArr[RefreshState.PullDownToRefresh.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RefreshState.None.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[RefreshState.ReleaseToRefresh.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[RefreshState.Refreshing.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public MaterialHeader(@Nullable Context context) {
        this(context, null, 2, null);
    }

    @Override // com.scwang.smart.refresh.layout.simple.SimpleComponent, sc.a
    public void a(@NotNull f refreshLayout, int i10, int i11) {
        Intrinsics.checkNotNullParameter(refreshLayout, "refreshLayout");
        this.f47762h.start();
    }

    @Override // com.scwang.smart.refresh.layout.simple.SimpleComponent, sc.a
    public int c(@NotNull f layout, boolean z10) {
        Intrinsics.checkNotNullParameter(layout, "layout");
        ImageView imageView = this.f47760f;
        this.f47762h.stop();
        imageView.animate().scaleX(0.0f).scaleY(0.0f);
        this.f47758d = true;
        return 0;
    }

    @Override // com.scwang.smart.refresh.layout.simple.SimpleComponent, vc.h
    public void d(@NotNull f refreshLayout, @NotNull RefreshState oldState, @NotNull RefreshState newState) {
        Intrinsics.checkNotNullParameter(refreshLayout, "refreshLayout");
        Intrinsics.checkNotNullParameter(oldState, "oldState");
        Intrinsics.checkNotNullParameter(newState, "newState");
        ImageView imageView = this.f47760f;
        this.f47768n = newState;
        if (a.$EnumSwitchMapping$0[newState.ordinal()] == 1) {
            this.f47758d = false;
            imageView.setVisibility(0);
            imageView.setTranslationY(0.0f);
            imageView.setScaleX(1.0f);
            imageView.setScaleY(1.0f);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (this.f47769o) {
            this.f47766l.reset();
            this.f47766l.lineTo(0.0f, this.f47764j);
            this.f47766l.quadTo(getMeasuredWidth() / 2.0f, this.f47764j + (this.f47763i * 1.9f), getMeasuredWidth(), this.f47764j);
            this.f47766l.lineTo(getMeasuredWidth(), 0.0f);
            canvas.drawPath(this.f47766l, this.f47767m);
        }
        super.dispatchDraw(canvas);
    }

    @Nullable
    public final RefreshState getMState() {
        return this.f47768n;
    }

    @Override // com.scwang.smart.refresh.layout.simple.SimpleComponent, sc.a
    public void h(@NotNull e kernel, int i10, int i11) {
        Intrinsics.checkNotNullParameter(kernel, "kernel");
        if (!this.f47769o) {
            kernel.b(this, false);
        }
        if (isInEditMode()) {
            int i12 = i10 / 2;
            this.f47764j = i12;
            this.f47763i = i12;
        }
        this.f47761g = kernel;
        this.f47765k = i10;
    }

    @Override // com.scwang.smart.refresh.layout.simple.SimpleComponent, sc.a
    public void i(boolean z10, float f10, int i10, int i11, int i12) {
        float f11;
        float f12;
        RefreshState refreshState = this.f47768n;
        RefreshState refreshState2 = RefreshState.Refreshing;
        if (refreshState != refreshState2) {
            if (this.f47769o) {
                this.f47764j = (int) Math.min(i10, i11);
                this.f47763i = (int) Math.max(0.0d, i10 - i11);
                postInvalidate();
            }
            if (z10 || (!this.f47762h.isRunning() && !this.f47758d)) {
                if (this.f47768n != refreshState2) {
                    float max = (((float) Math.max(((float) Math.min(1.0d, Math.abs(i10 / f12))) - 0.4d, 0.0d)) * 5.0f) / 3.0f;
                    double max2 = ((float) Math.max(0.0d, Math.min((float) (Math.abs(i10) - i11), f12 * 2.0f) / i11)) / 4.0f;
                    this.f47762h.k(true);
                    this.f47762h.i(0.0f, (float) Math.min(0.8d, 0.8f * max));
                    this.f47762h.d((float) Math.min(1.0d, max));
                    this.f47762h.f((((max * 0.4f) - 0.25f) + (((float) (max2 - Math.pow(max2, 2.0d))) * 2.0f * 2.0f)) * 0.5f);
                }
                ImageView imageView = this.f47760f;
                imageView.setTranslationY((float) Math.min(i10, (f11 / 2.0f) + (this.f47759e / 2.0f)));
                imageView.setAlpha((float) Math.min(1.0d, (f11 * 4.0f) / this.f47759e));
            }
        }
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int i14;
        if (getChildCount() != 0) {
            ImageView imageView = this.f47760f;
            int measuredWidth = getMeasuredWidth();
            int measuredWidth2 = imageView.getMeasuredWidth();
            int measuredHeight = imageView.getMeasuredHeight();
            if (isInEditMode() && (i14 = this.f47764j) > 0) {
                int i15 = i14 - (measuredHeight / 2);
                int i16 = measuredWidth / 2;
                int i17 = measuredWidth2 / 2;
                imageView.layout(i16 - i17, i15, i16 + i17, measuredHeight + i15);
                rc.a aVar = this.f47762h;
                aVar.k(true);
                aVar.i(0.0f, 0.8f);
                aVar.d(1.0f);
                imageView.setAlpha(1.0f);
                imageView.setVisibility(0);
                return;
            }
            int i18 = measuredWidth / 2;
            int i19 = measuredWidth2 / 2;
            imageView.layout(i18 - i19, -measuredHeight, i18 + i19, 0);
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        super.setMeasuredDimension(View.MeasureSpec.getSize(i10), View.MeasureSpec.getSize(i11));
        this.f47760f.measure(View.MeasureSpec.makeMeasureSpec(this.f47759e, 1073741824), View.MeasureSpec.makeMeasureSpec(this.f47759e, 1073741824));
    }

    @Override // com.scwang.smart.refresh.layout.simple.SimpleComponent, sc.a
    @c
    public void setPrimaryColors(@ColorInt @NotNull int... colors) {
        boolean z10;
        Intrinsics.checkNotNullParameter(colors, "colors");
        if (colors.length == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            this.f47767m.setColor(colors[0]);
        }
    }

    public MaterialHeader(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f36990b = b.f67287h;
        setMinimumHeight(xc.b.c(100.0f));
        rc.a aVar = new rc.a(this);
        Intrinsics.checkNotNull(context);
        aVar.e(ContextCompat.getColor(context, R$color.colorPrimary));
        this.f47762h = aVar;
        CircleImageView circleImageView = new CircleImageView(context, -328966);
        circleImageView.setImageDrawable(this.f47762h);
        circleImageView.setAlpha(0.0f);
        this.f47760f = circleImageView;
        addView(circleImageView);
        this.f47759e = (int) (getResources().getDisplayMetrics().density * 40.0f);
        this.f47766l = new Path();
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        this.f47767m = paint;
    }

    public /* synthetic */ MaterialHeader(Context context, AttributeSet attributeSet, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet);
    }
}
