package com.startshorts.androidplayer.ui.view.refresh;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.scwang.smart.refresh.layout.constant.RefreshState;
import com.scwang.smart.refresh.layout.simple.SimpleComponent;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import sc.c;
import sc.f;
import xc.b;
/* compiled from: BallPulseFooter.kt */
@Metadata
/* loaded from: classes7.dex */
public final class BallPulseFooter extends SimpleComponent implements c {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private Paint f47750d;

    /* renamed from: e  reason: collision with root package name */
    private int f47751e;

    /* renamed from: f  reason: collision with root package name */
    private int f47752f;

    /* renamed from: g  reason: collision with root package name */
    private float f47753g;

    /* renamed from: h  reason: collision with root package name */
    private long f47754h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f47755i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private TimeInterpolator f47756j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private RefreshState f47757k;

    public BallPulseFooter(@Nullable Context context) {
        this(context, null, 2, null);
    }

    @Override // com.scwang.smart.refresh.layout.simple.SimpleComponent, sc.a
    public void a(@NotNull f layout, int i10, int i11) {
        Intrinsics.checkNotNullParameter(layout, "layout");
        if (!this.f47755i) {
            invalidate();
            this.f47755i = true;
            this.f47754h = System.currentTimeMillis();
            this.f47750d.setColor(this.f47752f);
        }
    }

    @Override // com.scwang.smart.refresh.layout.simple.SimpleComponent, sc.a
    public int c(@NotNull f layout, boolean z10) {
        Intrinsics.checkNotNullParameter(layout, "layout");
        this.f47755i = false;
        this.f47754h = 0L;
        this.f47750d.setColor(this.f47751e);
        return 0;
    }

    @Override // com.scwang.smart.refresh.layout.simple.SimpleComponent, vc.h
    public void d(@NotNull f refreshLayout, @NotNull RefreshState oldState, @NotNull RefreshState newState) {
        Intrinsics.checkNotNullParameter(refreshLayout, "refreshLayout");
        Intrinsics.checkNotNullParameter(oldState, "oldState");
        Intrinsics.checkNotNullParameter(newState, "newState");
        this.f47757k = newState;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(@NotNull Canvas canvas) {
        float f10;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        int width = getWidth();
        int height = getHeight();
        float c10 = b.c(6.0f);
        float f11 = c10 * 2.0f;
        float f12 = (width / 2.0f) - (this.f47753g + f11);
        float f13 = height / 2.0f;
        long currentTimeMillis = System.currentTimeMillis();
        int i10 = 0;
        while (i10 < 3) {
            int i11 = i10 + 1;
            long j10 = (currentTimeMillis - this.f47754h) - (i11 * 120);
            if (j10 > 0) {
                f10 = ((float) (j10 % 750)) / 750.0f;
            } else {
                f10 = 0.0f;
            }
            float interpolation = this.f47756j.getInterpolation(f10);
            canvas.save();
            float f14 = i10;
            canvas.translate((f11 * f14) + f12 + (this.f47753g * f14), f13);
            if (interpolation < 0.5d) {
                float f15 = 1.0f - ((interpolation * 2.0f) * 0.7f);
                canvas.scale(f15, f15);
            } else {
                float f16 = ((interpolation * 2.0f) * 0.7f) - 0.4f;
                canvas.scale(f16, f16);
            }
            canvas.drawCircle(0.0f, 0.0f, c10, this.f47750d);
            canvas.restore();
            i10 = i11;
        }
        super.dispatchDraw(canvas);
        if (this.f47755i) {
            invalidate();
        }
    }

    @Nullable
    public final RefreshState getMState() {
        return this.f47757k;
    }

    public BallPulseFooter(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f47751e = -1118482;
        this.f47752f = -1615546;
        this.f47756j = new AccelerateDecelerateInterpolator();
        setMinimumHeight(b.c(60.0f));
        Paint paint = new Paint();
        paint.setColor(-1);
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        this.f47750d = paint;
        this.f36990b = tc.b.f67283d;
        this.f47753g = b.c(4.0f);
    }

    public /* synthetic */ BallPulseFooter(Context context, AttributeSet attributeSet, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet);
    }
}
