package com.startshorts.androidplayer.ui.view.region;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.startshorts.androidplayer.R$color;
import java.util.List;
import jk.g;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: QuickBarView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class QuickBarView extends View {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Paint f47770a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Paint f47771b;

    /* renamed from: c  reason: collision with root package name */
    private float f47772c;

    /* renamed from: d  reason: collision with root package name */
    private final int f47773d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private List<String> f47774e;

    /* renamed from: f  reason: collision with root package name */
    private int f47775f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private Function1<? super String, Unit> f47776g;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public QuickBarView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void a(int i10) {
        Function1<? super String, Unit> function1;
        if (this.f47775f != i10) {
            this.f47775f = i10;
            invalidate();
            List<String> list = this.f47774e;
            if (list != null && i10 >= 0 && i10 < list.size() && (function1 = this.f47776g) != null) {
                function1.invoke(list.get(i10));
            }
        }
    }

    @Nullable
    public final Function1<String, Unit> getLetterChanged() {
        return this.f47776g;
    }

    @Override // android.view.View
    protected void onDraw(@NotNull Canvas canvas) {
        List<String> list;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
        if (getWidth() == 0 || height == 0 || (list = this.f47774e) == null) {
            return;
        }
        int size = list.size();
        float width = getWidth() / 2.0f;
        float paddingTop = (this.f47773d / 2.0f) + getPaddingTop();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.f47775f == i10) {
                canvas.drawCircle(width, paddingTop, this.f47773d / 2.0f, this.f47771b);
            }
            canvas.drawText(list.get(i10), width, paddingTop - this.f47772c, this.f47770a);
            paddingTop += this.f47773d;
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        List<String> list = this.f47774e;
        if (list == null) {
            super.onMeasure(i10, i11);
            return;
        }
        setMeasuredDimension(View.getDefaultSize(getSuggestedMinimumWidth(), i10), (list.size() * this.f47773d) + getPaddingTop() + getPaddingBottom());
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0018, code lost:
        if (r2 != 3) goto L12;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(@org.jetbrains.annotations.NotNull android.view.MotionEvent r6) {
        /*
            r5 = this;
            java.lang.String r0 = "event"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.util.List<java.lang.String> r0 = r5.f47774e
            r1 = 1
            if (r0 != 0) goto Lb
            return r1
        Lb:
            int r2 = r6.getAction()
            r3 = -1
            if (r2 == 0) goto L1f
            if (r2 == r1) goto L1b
            r4 = 2
            if (r2 == r4) goto L1f
            r6 = 3
            if (r2 == r6) goto L1b
            goto L50
        L1b:
            r5.a(r3)
            goto L50
        L1f:
            int r2 = r5.getHeight()
            int r4 = r5.getPaddingTop()
            int r2 = r2 - r4
            int r4 = r5.getPaddingBottom()
            int r2 = r2 - r4
            float r6 = r6.getY()
            int r4 = r5.getPaddingTop()
            float r4 = (float) r4
            float r6 = r6 - r4
            float r2 = (float) r2
            float r6 = r6 / r2
            int r2 = r0.size()
            float r2 = (float) r2
            float r6 = r6 * r2
            int r6 = (int) r6
            if (r6 < 0) goto L4d
            int r0 = r0.size()
            if (r6 < r0) goto L49
            goto L4d
        L49:
            r5.a(r6)
            goto L50
        L4d:
            r5.a(r3)
        L50:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.region.QuickBarView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void setCharSet(@NotNull List<String> charSet) {
        Intrinsics.checkNotNullParameter(charSet, "charSet");
        this.f47774e = charSet;
        requestLayout();
    }

    public final void setLetterChanged(@Nullable Function1<? super String, Unit> function1) {
        this.f47776g = function1;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public QuickBarView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ QuickBarView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QuickBarView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        Paint paint = new Paint(1);
        this.f47770a = paint;
        Paint paint2 = new Paint(1);
        this.f47771b = paint2;
        this.f47773d = g.a(14.0f);
        this.f47775f = -1;
        Paint.Align align = Paint.Align.CENTER;
        paint.setTextAlign(align);
        paint.setTextSize(g.a(11.0f));
        paint.setColor(Color.parseColor("#E8E8E8"));
        this.f47772c = (paint.getFontMetrics().descent + paint.getFontMetrics().ascent) / 2;
        paint2.setTextAlign(align);
        paint2.setColor(getResources().getColor(R$color.colorPrimary));
    }
}
