package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ui.SubtitleView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p6.b;
/* loaded from: classes4.dex */
final class CanvasSubtitleOutput extends View implements SubtitleView.a {

    /* renamed from: a  reason: collision with root package name */
    private final List<u0> f18575a;

    /* renamed from: b  reason: collision with root package name */
    private List<p6.b> f18576b;

    /* renamed from: c  reason: collision with root package name */
    private int f18577c;

    /* renamed from: d  reason: collision with root package name */
    private float f18578d;

    /* renamed from: e  reason: collision with root package name */
    private b f18579e;

    /* renamed from: f  reason: collision with root package name */
    private float f18580f;

    public CanvasSubtitleOutput(Context context) {
        this(context, null);
    }

    private static p6.b b(p6.b bVar) {
        b.C0897b p10 = bVar.b().k(-3.4028235E38f).l(Integer.MIN_VALUE).p(null);
        if (bVar.f64740f == 0) {
            p10.h(1.0f - bVar.f64739e, 0);
        } else {
            p10.h((-bVar.f64739e) - 1.0f, 1);
        }
        int i10 = bVar.f64741g;
        if (i10 != 0) {
            if (i10 == 2) {
                p10.i(0);
            }
        } else {
            p10.i(2);
        }
        return p10.a();
    }

    @Override // com.google.android.exoplayer2.ui.SubtitleView.a
    public void a(List<p6.b> list, b bVar, float f10, int i10, float f11) {
        this.f18576b = list;
        this.f18579e = bVar;
        this.f18578d = f10;
        this.f18577c = i10;
        this.f18580f = f11;
        while (this.f18575a.size() < list.size()) {
            this.f18575a.add(new u0(getContext()));
        }
        invalidate();
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        List<p6.b> list = this.f18576b;
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
            float h10 = x0.h(this.f18577c, this.f18578d, height, i10);
            if (h10 <= 0.0f) {
                return;
            }
            int size = list.size();
            int i11 = 0;
            while (i11 < size) {
                p6.b bVar = list.get(i11);
                if (bVar.f64750p != Integer.MIN_VALUE) {
                    bVar = b(bVar);
                }
                p6.b bVar2 = bVar;
                int i12 = paddingBottom;
                this.f18575a.get(i11).b(bVar2, this.f18579e, h10, x0.h(bVar2.f64748n, bVar2.f64749o, height, i10), this.f18580f, canvas, paddingLeft, paddingTop, width, i12);
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
        this.f18575a = new ArrayList();
        this.f18576b = Collections.emptyList();
        this.f18577c = 0;
        this.f18578d = 0.0533f;
        this.f18579e = b.f18805g;
        this.f18580f = 0.08f;
    }
}
