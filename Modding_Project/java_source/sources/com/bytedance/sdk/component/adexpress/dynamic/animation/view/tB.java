package com.bytedance.sdk.component.adexpress.dynamic.animation.view;

import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.dLZ;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
/* loaded from: classes3.dex */
public class tB {
    private int Pfn;

    /* renamed from: ba  reason: collision with root package name */
    private int f12674ba;
    private int ex;
    Paint oJ;
    Path ZYk = new Path();
    Path tB = new Path();

    public tB() {
        Paint paint = new Paint();
        this.oJ = paint;
        paint.setAntiAlias(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void oJ(android.graphics.Canvas r22, com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation r23, android.view.View r24) {
        /*
            Method dump skipped, instructions count: 460
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.adexpress.dynamic.animation.view.tB.oJ(android.graphics.Canvas, com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation, android.view.View):void");
    }

    public void oJ(View view, float f10) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int i10 = this.f12674ba;
        int i11 = (int) (i10 * f10);
        layoutParams.width = i11;
        view.setTranslationX((i10 - i11) / 2);
        if (view instanceof dLZ) {
            int i12 = 0;
            while (true) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (i12 >= viewGroup.getChildCount()) {
                    break;
                }
                viewGroup.getChildAt(i12).setTranslationX((-(this.f12674ba - layoutParams.width)) / 2);
                i12++;
            }
        }
        view.setLayoutParams(layoutParams);
    }

    public void oJ(View view, int i10, int i11) {
        String str;
        this.ex = i10 / 2;
        this.Pfn = i11 / 2;
        if (this.f12674ba == 0 && view.getLayoutParams().width > 0) {
            this.f12674ba = view.getLayoutParams().width;
        }
        try {
            str = (String) view.getTag(2097610710);
            try {
                this.tB.addRoundRect(new RectF(0.0f, 0.0f, i10, i11), i11 / 2, i11 / 2, Path.Direction.CW);
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            str = "";
        }
        if (TtmlNode.RIGHT.equals(str)) {
            view.setPivotX(this.ex * 2);
            view.setPivotY(this.Pfn);
        } else if (TtmlNode.LEFT.equals(str)) {
            view.setPivotX(0.0f);
            view.setPivotY(this.Pfn);
        } else {
            view.setPivotX(this.ex);
            view.setPivotY(this.Pfn);
        }
    }
}
