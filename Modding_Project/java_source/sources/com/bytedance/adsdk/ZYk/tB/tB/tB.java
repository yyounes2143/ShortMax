package com.bytedance.adsdk.ZYk.tB.tB;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.adsdk.ZYk.QSm;
import com.bytedance.adsdk.ZYk.kkU;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class tB extends ex {
    private String BTZ;
    private final List<TextView> dLZ;
    private final LinearLayout.LayoutParams jFA;
    private final List<String> kkU;

    /* renamed from: so  reason: collision with root package name */
    private LinearLayout f11598so;

    public tB(com.bytedance.adsdk.ZYk.jFA jfa, Pfn pfn, Context context) {
        super(jfa, pfn);
        List<kkU.oJ> tB;
        String str;
        this.jFA = new LinearLayout.LayoutParams(-2, -2);
        this.kkU = new ArrayList();
        this.dLZ = new ArrayList();
        com.bytedance.adsdk.ZYk.kkU kku = ((ex) this).cFZ;
        if (kku != null && (tB = kku.tB()) != null && tB.size() > 0) {
            LinearLayout linearLayout = new LinearLayout(context);
            this.f11598so = linearLayout;
            linearLayout.setOrientation(0);
            ZYk(tB.get(0).cFZ);
            LinearLayout linearLayout2 = new LinearLayout(context);
            linearLayout2.setOrientation(0);
            linearLayout2.setGravity(80);
            this.f11598so.addView(linearLayout2);
            List<String> BTZ = BTZ();
            for (int i10 = 0; i10 < tB.size(); i10++) {
                kkU.oJ oJVar = tB.get(i10);
                TextView textView = new TextView(context);
                if (BTZ != null && i10 < BTZ.size()) {
                    str = BTZ.get(i10);
                } else {
                    str = "";
                }
                oJ(textView, oJVar, str);
                int i11 = oJVar.f11520ba;
                if (i11 != 0) {
                    this.jFA.bottomMargin = (int) (i11 * com.bytedance.adsdk.ZYk.ba.ba.oJ());
                    linearLayout2.addView(textView, this.jFA);
                } else {
                    linearLayout2.addView(textView);
                }
            }
            float oJ = com.bytedance.adsdk.ZYk.ba.ba.oJ();
            oJ(this.f11598so, (int) (((ex) this).cFZ.oJ() * oJ), (int) (((ex) this).cFZ.ZYk() * oJ));
        }
    }

    private List<String> BTZ() {
        com.bytedance.adsdk.ZYk.jFA jfa;
        QSm jr2;
        List<kkU.oJ> tB;
        if (((ex) this).cFZ == null || (jfa = this.ZYk) == null || (jr2 = jfa.jr()) == null) {
            return null;
        }
        String ex = ((ex) this).cFZ.ex();
        if ((!TextUtils.isEmpty(ex) || !TextUtils.isEmpty(this.BTZ)) && (tB = ((ex) this).cFZ.tB()) != null) {
            String str = this.BTZ;
            if (TextUtils.isEmpty(str)) {
                str = jr2.oJ(ex);
            }
            if (!TextUtils.isEmpty(str)) {
                int length = str.length();
                this.kkU.clear();
                for (int i10 = 0; i10 < tB.size(); i10++) {
                    kkU.oJ oJVar = tB.get(i10);
                    int i11 = oJVar.oJ;
                    int i12 = oJVar.ZYk;
                    if (i11 < 0) {
                        i11 = Math.max(i11 + length, 0);
                    }
                    if (i12 < 0) {
                        i12 = Math.max(i12 + length, 0);
                    }
                    if (i11 + i12 > length) {
                        this.kkU.add("");
                    } else {
                        if (tB.size() == 1 && i11 == 0 && i12 == 0) {
                            i12 = length;
                        }
                        this.kkU.add(str.substring(i11, i12 + i11));
                    }
                }
                return this.kkU;
            }
        }
        return null;
    }

    private void ZYk(String str) {
        if (TextUtils.isEmpty(str)) {
            this.f11598so.setGravity(17);
            return;
        }
        str.hashCode();
        if (str.equals(TtmlNode.LEFT)) {
            this.f11598so.setGravity(3);
        } else if (!str.equals(TtmlNode.RIGHT)) {
            this.f11598so.setGravity(17);
        } else {
            this.f11598so.setGravity(5);
        }
    }

    private void oJ(TextView textView, kkU.oJ oJVar, String str) {
        if (!TextUtils.isEmpty(str)) {
            textView.setText(str);
        } else {
            textView.setText("");
        }
        if (!TextUtils.isEmpty(oJVar.tB)) {
            textView.setTextColor(Color.parseColor(oJVar.tB));
        }
        if (!TextUtils.isEmpty(oJVar.ex)) {
            textView.setBackgroundColor(Color.parseColor(oJVar.ex));
        }
        textView.setGravity(17);
        textView.setTextSize(oJVar.Pfn);
    }

    private void tB(float f10) {
        List<kkU.oJ> tB;
        String str;
        com.bytedance.adsdk.ZYk.kkU kku = ((ex) this).cFZ;
        if (kku != null && (tB = kku.tB()) != null && tB.size() > 0) {
            this.f11598so.setOrientation(0);
            this.f11598so.setGravity(17);
            if (this.f11598so.getChildCount() <= 0) {
                return;
            }
            LinearLayout linearLayout = (LinearLayout) this.f11598so.getChildAt(0);
            linearLayout.setOrientation(0);
            linearLayout.setGravity(80);
            this.f11598so.removeAllViews();
            if (linearLayout.getChildCount() != tB.size()) {
                return;
            }
            List<String> BTZ = BTZ();
            this.dLZ.clear();
            for (int i10 = 0; i10 < tB.size(); i10++) {
                kkU.oJ oJVar = tB.get(i10);
                TextView textView = (TextView) linearLayout.getChildAt(i10);
                this.dLZ.add(textView);
                if (BTZ != null && i10 < BTZ.size()) {
                    str = BTZ.get(i10);
                } else {
                    str = "";
                }
                oJ(textView, oJVar, str);
            }
            linearLayout.removeAllViews();
            for (int i11 = 0; i11 < tB.size(); i11++) {
                TextView textView2 = this.dLZ.get(i11);
                textView2.setAlpha(f10);
                linearLayout.setAlpha(f10);
                int i12 = tB.get(i11).f11520ba;
                if (i12 != 0) {
                    this.jFA.bottomMargin = (int) (i12 * com.bytedance.adsdk.ZYk.ba.ba.oJ());
                    linearLayout.addView(textView2, this.jFA);
                } else {
                    linearLayout.addView(textView2);
                }
            }
            this.f11598so.setAlpha(f10);
            this.f11598so.addView(linearLayout);
            float oJ = com.bytedance.adsdk.ZYk.ba.ba.oJ();
            oJ(this.f11598so, (int) (((ex) this).cFZ.oJ() * oJ), (int) (((ex) this).cFZ.ZYk() * oJ));
        }
    }

    @Override // com.bytedance.adsdk.ZYk.tB.tB.ex, com.bytedance.adsdk.ZYk.tB.tB.oJ
    public void ZYk(Canvas canvas, Matrix matrix, int i10) {
        if (this.f11598so != null) {
            canvas.save();
            canvas.concat(matrix);
            oJ(i10);
            tB(ba());
            this.f11598so.draw(canvas);
            canvas.restore();
            return;
        }
        super.ZYk(canvas, matrix, i10);
    }

    private static void oJ(View view, int i10, int i11) {
        view.layout(0, 0, i10, i11);
        view.measure(View.MeasureSpec.makeMeasureSpec(i10, 1073741824), View.MeasureSpec.makeMeasureSpec(i11, 1073741824));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public void oJ(String str) {
        this.BTZ = str;
    }
}
