package io.bidmachine.media3.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import bn.a;
import io.bidmachine.media3.ui.SubtitleView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes8.dex */
final class CanvasSubtitleOutput extends View implements SubtitleView.a {

    /* renamed from: a  reason: collision with root package name */
    private final List<f1> f57473a;

    /* renamed from: b  reason: collision with root package name */
    private List<bn.a> f57474b;

    /* renamed from: c  reason: collision with root package name */
    private int f57475c;

    /* renamed from: d  reason: collision with root package name */
    private float f57476d;

    /* renamed from: e  reason: collision with root package name */
    private a f57477e;

    /* renamed from: f  reason: collision with root package name */
    private float f57478f;

    public CanvasSubtitleOutput(Context context) {
        this(context, null);
    }

    private static bn.a b(bn.a aVar) {
        a.b p10 = aVar.a().k(-3.4028235E38f).l(Integer.MIN_VALUE).p(null);
        if (aVar.f2705f == 0) {
            p10.h(1.0f - aVar.f2704e, 0);
        } else {
            p10.h((-aVar.f2704e) - 1.0f, 1);
        }
        int i10 = aVar.f2706g;
        if (i10 != 0) {
            if (i10 == 2) {
                p10.i(0);
            }
        } else {
            p10.i(2);
        }
        return p10.a();
    }

    @Override // io.bidmachine.media3.ui.SubtitleView.a
    public void a(List<bn.a> list, a aVar, float f10, int i10, float f11) {
        this.f57474b = list;
        this.f57477e = aVar;
        this.f57476d = f10;
        this.f57475c = i10;
        this.f57478f = f11;
        while (this.f57473a.size() < list.size()) {
            this.f57473a.add(new f1(getContext()));
        }
        invalidate();
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        List<bn.a> list = this.f57474b;
        if (list.isEmpty()) {
            return;
        }
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int paddingBottom = height - getPaddingBottom();
        if (paddingBottom > paddingTop && width > paddingLeft) {
            int i10 = paddingBottom - paddingTop;
            float h10 = i1.h(this.f57475c, this.f57476d, height, i10);
            if (h10 <= 0.0f) {
                return;
            }
            int size = list.size();
            int i11 = 0;
            while (i11 < size) {
                bn.a aVar = list.get(i11);
                if (aVar.f2715p != Integer.MIN_VALUE) {
                    aVar = b(aVar);
                }
                bn.a aVar2 = aVar;
                int i12 = paddingBottom;
                this.f57473a.get(i11).b(aVar2, this.f57477e, h10, i1.h(aVar2.f2713n, aVar2.f2714o, height, i10), this.f57478f, canvas, paddingLeft, paddingTop, width, i12);
                i11++;
                size = size;
                i10 = i10;
                paddingBottom = i12;
                width = width;
            }
        }
    }

    public CanvasSubtitleOutput(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f57473a = new ArrayList();
        this.f57474b = Collections.emptyList();
        this.f57475c = 0;
        this.f57476d = 0.0533f;
        this.f57477e = a.f57676g;
        this.f57478f = 0.08f;
    }
}
