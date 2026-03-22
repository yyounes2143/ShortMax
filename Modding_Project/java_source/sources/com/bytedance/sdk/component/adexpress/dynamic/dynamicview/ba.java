package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import ai.turbolink.sdk.campaign.b;
import ai.turbolink.sdk.campaign.c;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ba extends Pfn {
    private static String QSm = "";
    protected com.bytedance.sdk.component.adexpress.dynamic.tB.jFA RZ;
    private Runnable ZYk;
    private Runnable oJ;

    /* renamed from: oq  reason: collision with root package name */
    private volatile boolean f12681oq;

    /* loaded from: classes3.dex */
    private static class ZYk implements com.bytedance.sdk.component.Pfn.eZI {
        private final WeakReference<Pfn> ZYk;
        private final WeakReference<View> oJ;

        public ZYk(View view, Pfn pfn) {
            this.oJ = new WeakReference<>(view);
            this.ZYk = new WeakReference<>(pfn);
        }

        @Override // com.bytedance.sdk.component.Pfn.eZI
        public void oJ(int i10, String str, @Nullable Throwable th2) {
        }

        @Override // com.bytedance.sdk.component.Pfn.eZI
        public void oJ(com.bytedance.sdk.component.Pfn.dLZ dlz) {
            Object ZYk;
            Pfn pfn;
            View view = this.oJ.get();
            if (view == null || (ZYk = dlz.ZYk()) == null || dlz.tB() == null || (pfn = this.ZYk.get()) == null || !(ZYk instanceof Bitmap)) {
                return;
            }
            view.setBackground(pfn.oJ((Bitmap) ZYk));
        }
    }

    /* loaded from: classes3.dex */
    private static class oJ implements com.bytedance.sdk.component.Pfn.eZI {
        private final WeakReference<DynamicRootView> ZYk;
        private final WeakReference<View> oJ;
        private final com.bytedance.sdk.component.adexpress.dynamic.ex.so tB;

        public oJ(View view, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
            this.oJ = new WeakReference<>(view);
            this.ZYk = new WeakReference<>(dynamicRootView);
            this.tB = soVar;
        }

        @Override // com.bytedance.sdk.component.Pfn.eZI
        public void oJ(int i10, String str, @Nullable Throwable th2) {
        }

        @Override // com.bytedance.sdk.component.Pfn.eZI
        public void oJ(com.bytedance.sdk.component.Pfn.dLZ dlz) {
            Drawable drawable;
            View view = this.oJ.get();
            Object ZYk = dlz.ZYk();
            if (ZYk instanceof Bitmap) {
                drawable = new BitmapDrawable((Bitmap) ZYk);
            } else if (ZYk instanceof Drawable) {
                if (Build.VERSION.SDK_INT >= 28 && b.a(ZYk)) {
                    c.a(ZYk).start();
                }
                drawable = (Drawable) ZYk;
            } else {
                drawable = null;
            }
            if (!com.bytedance.sdk.component.adexpress.ex.ZYk()) {
                DynamicRootView dynamicRootView = this.ZYk.get();
                if (dynamicRootView == null) {
                    return;
                }
                if (!"open_ad".equals(dynamicRootView.getRenderRequest().ex()) && !"splash_ad".equals(dynamicRootView.getRenderRequest().ex())) {
                    view.setBackground(drawable);
                } else {
                    view.setBackground(drawable);
                }
            } else if (view == null) {
            } else {
                view.setBackground(drawable);
                com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar = this.tB;
                if (soVar == null || soVar.kkU() == null || 6 != this.tB.kkU().oJ() || view.getBackground() == null) {
                    return;
                }
                view.getBackground().setAutoMirrored(true);
            }
        }
    }

    /* loaded from: classes3.dex */
    private static class tB implements com.bytedance.sdk.component.Pfn.so {
        private final int ZYk;
        private final WeakReference<Context> oJ;

        public tB(Context context, int i10) {
            this.oJ = new WeakReference<>(context);
            this.ZYk = i10;
        }

        @Override // com.bytedance.sdk.component.Pfn.so
        public Bitmap oJ(Bitmap bitmap) {
            Context context = this.oJ.get();
            if (context != null) {
                return com.bytedance.sdk.component.adexpress.ex.oJ.oJ(context, bitmap, this.ZYk);
            }
            return null;
        }
    }

    public ba(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        super(context, dynamicRootView, soVar);
        this.f12681oq = true;
        setTag(Integer.valueOf(getClickArea()));
        String ZYk2 = soVar.kkU().ZYk();
        if ("logo-union".equals(ZYk2)) {
            dynamicRootView.setLogoUnionHeight(this.f12680so - ((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(context, this.BTZ.ZYk() + this.BTZ.oJ())));
        } else if ("scoreCountWithIcon".equals(ZYk2)) {
            dynamicRootView.setScoreCountWithIcon(this.f12680so - ((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(context, this.BTZ.ZYk() + this.BTZ.oJ())));
        }
    }

    private String ZYk(String str) {
        try {
            Map<String, String> dLZ = this.WcQ.getRenderRequest().dLZ();
            if (dLZ != null && dLZ.size() > 0) {
                return dLZ.get(str);
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    private static String getBuildModel() {
        try {
            QSm = com.bytedance.sdk.component.utils.Xe.oJ();
        } catch (Throwable unused) {
            QSm = Build.MODEL;
        }
        if (TextUtils.isEmpty(QSm)) {
            QSm = Build.MODEL;
        }
        return QSm;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable tB(String str) {
        try {
            JSONArray jSONArray = new JSONArray(str);
            ArrayList arrayList = new ArrayList();
            String str2 = "";
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                if (jSONArray.getString(i10).startsWith("#")) {
                    arrayList.add(jSONArray.getString(i10));
                } else if (jSONArray.getString(i10).endsWith("deg")) {
                    str2 = jSONArray.getString(i10);
                }
            }
            if (arrayList.size() <= 0) {
                return null;
            }
            int[] iArr = new int[arrayList.size()];
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                iArr[i11] = com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ.oJ(((String) arrayList.get(i11)).substring(0, 7));
            }
            GradientDrawable oJ2 = oJ(oJ(str2), iArr);
            oJ2.setShape(0);
            oJ2.setCornerRadius(com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.dLZ, this.BTZ.awB()));
            return oJ2;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public FrameLayout.LayoutParams getWidgetLayoutParams() {
        return new FrameLayout.LayoutParams(this.cFZ, this.f12680so);
    }

    public boolean jFA() {
        String str;
        int i10;
        int i11;
        Drawable backgroundDrawable;
        DynamicRootView dynamicRootView;
        JSONObject optJSONObject;
        final View view = this.awB;
        if (view == null) {
            view = this;
        }
        setContentDescription(this.PiB.oJ(this.BTZ.HL()));
        String EP = this.BTZ.EP();
        String str2 = null;
        if (!TextUtils.isEmpty(EP) && (dynamicRootView = this.WcQ) != null && dynamicRootView.getRenderRequest() != null && this.WcQ.getRenderRequest().tB() != null && (optJSONObject = this.WcQ.getRenderRequest().tB().optJSONObject("creative")) != null) {
            str = oJ(optJSONObject.opt(EP));
        } else {
            str = null;
        }
        if (TextUtils.isEmpty(str)) {
            str = this.BTZ.oq();
        }
        com.bytedance.sdk.component.adexpress.oJ.oJ.tB tB2 = com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB();
        if (tB2 != null) {
            i10 = tB2.awB();
            i11 = tB2.eZI();
        } else {
            i10 = 0;
            i11 = 0;
        }
        if (this.BTZ.QSm()) {
            int RZ = this.BTZ.RZ();
            String str3 = this.BTZ.ZYk;
            com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().Pfn().oJ(str3).oJ(this.cFZ).ZYk(this.f12680so).ex(i10).Pfn(i11).oJ(ZYk(str3)).tB(2).oJ(new tB(this.dLZ, RZ)).oJ(new ZYk(view, this));
        } else if (!TextUtils.isEmpty(str)) {
            if (!str.startsWith("http:") && !str.startsWith("https:")) {
                DynamicRootView dynamicRootView2 = this.WcQ;
                if (dynamicRootView2 != null && dynamicRootView2.getRenderRequest() != null) {
                    str2 = this.WcQ.getRenderRequest().jr();
                }
                str = com.bytedance.sdk.component.adexpress.dynamic.Pfn.jFA.ZYk(str, str2);
            }
            com.bytedance.sdk.component.Pfn.kkU tB3 = com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().Pfn().oJ(str).oJ(this.cFZ).ZYk(this.f12680so).ex(i10).Pfn(i11).oJ(ZYk(str)).tB(1);
            oJ(tB3);
            tB3.oJ(new oJ(view, this.WcQ, this.PiB));
        }
        if (getBackground() == null && (backgroundDrawable = getBackgroundDrawable()) != null) {
            view.setBackground(backgroundDrawable);
        }
        if (this.BTZ.Ln() > 0.0d) {
            postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (ba.this.BTZ.mu() > 0) {
                            ba baVar = ba.this;
                            Drawable tB4 = baVar.tB(baVar.WcQ.getBgMaterialCenterCalcColor().get(Integer.valueOf(ba.this.BTZ.mu())));
                            if (tB4 == null) {
                                ba baVar2 = ba.this;
                                tB4 = baVar2.oJ(true, baVar2.WcQ.getBgMaterialCenterCalcColor().get(Integer.valueOf(ba.this.BTZ.mu())));
                            }
                            if (tB4 != null) {
                                view.setBackground(tB4);
                                return;
                            }
                            View view2 = view;
                            ba baVar3 = ba.this;
                            view2.setBackground(baVar3.oJ(true, baVar3.WcQ.getBgColor()));
                        }
                    } catch (Exception unused) {
                    }
                }
            }, (long) (this.BTZ.Ln() * 1000.0d));
        }
        View view2 = this.awB;
        if (view2 != null) {
            view2.setPadding((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.dLZ, this.BTZ.tB()), (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.dLZ, this.BTZ.ZYk()), (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.dLZ, this.BTZ.ex()), (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.dLZ, this.BTZ.oJ()));
        }
        if (this.eZI || this.BTZ.WcQ() > 0.0d) {
            setShouldInvisible(true);
            view.setVisibility(4);
            setVisibility(4);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        View view = this.awB;
        if (view == null) {
            view = this;
        }
        double QSm2 = this.PiB.kkU().Pfn().QSm();
        if (QSm2 < 90.0d && QSm2 > 0.0d) {
            com.bytedance.sdk.component.utils.jFA.ZYk().postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba.2
                @Override // java.lang.Runnable
                public void run() {
                    ba.this.setVisibility(8);
                }
            }, (long) (QSm2 * 1000.0d));
        }
        oJ(this.PiB.kkU().Pfn().RZ(), view);
        if (!TextUtils.isEmpty(this.BTZ.Rl())) {
            oJ();
        }
        super.onAttachedToWindow();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            removeCallbacks(this.oJ);
            removeCallbacks(this.ZYk);
        } catch (Exception unused) {
        }
    }

    private String oJ(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof JSONArray) {
            return oJ(((JSONArray) obj).opt(0));
        }
        if (obj instanceof JSONObject) {
            return oJ((Object) ((JSONObject) obj).optString("url"));
        }
        return null;
    }

    private static void oJ(com.bytedance.sdk.component.Pfn.kkU kku) {
        if ("SMARTISAN".equals(Build.BRAND) && "SM901".equals(getBuildModel())) {
            kku.oJ(Bitmap.Config.ARGB_8888);
        }
    }

    private void oJ(double d10, final View view) {
        if (d10 > 0.0d) {
            com.bytedance.sdk.component.utils.jFA.ZYk().postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba.3
                @Override // java.lang.Runnable
                public void run() {
                    if (ba.this.PiB.kkU().Pfn().hwh() != null) {
                        return;
                    }
                    view.setVisibility(0);
                    ba.this.setVisibility(0);
                }
            }, (long) (d10 * 1000.0d));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(ViewGroup viewGroup) {
        if (viewGroup == null || viewGroup.getChildCount() <= 0) {
            return;
        }
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            if (viewGroup.getChildAt(i10) instanceof com.bytedance.sdk.component.adexpress.dynamic.tB.jFA) {
                viewGroup.removeViewAt(i10);
            }
        }
    }

    private void oJ() {
        if (this.f12681oq) {
            int Yg = this.BTZ.Yg();
            int lY = this.BTZ.lY();
            Runnable runnable = new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba.4
                @Override // java.lang.Runnable
                public void run() {
                    DynamicRootView dynamicRootView = ba.this.WcQ;
                    if (dynamicRootView != null && dynamicRootView.getRenderRequest() != null) {
                        com.bytedance.sdk.component.adexpress.ZYk.PiB renderRequest = ba.this.WcQ.getRenderRequest();
                        com.bytedance.sdk.component.adexpress.dynamic.ex.kkU kku = new com.bytedance.sdk.component.adexpress.dynamic.ex.kkU();
                        kku.oJ(renderRequest.awB());
                        kku.ZYk(renderRequest.eZI());
                        kku.tB(renderRequest.si());
                        kku.oJ(renderRequest.Ry());
                        kku.ZYk(renderRequest.RZ());
                        kku.tB(renderRequest.QSm());
                        kku.ex(renderRequest.oq());
                        kku.Pfn(renderRequest.Id());
                        ba baVar = ba.this;
                        ba baVar2 = ba.this;
                        baVar.RZ = new com.bytedance.sdk.component.adexpress.dynamic.tB.jFA(baVar2.dLZ, baVar2, baVar2.BTZ, kku, renderRequest);
                    } else {
                        ba baVar3 = ba.this;
                        ba baVar4 = ba.this;
                        baVar3.RZ = new com.bytedance.sdk.component.adexpress.dynamic.tB.jFA(baVar4.dLZ, baVar4, baVar4.BTZ);
                    }
                    ba baVar5 = ba.this;
                    baVar5.ZYk(baVar5.RZ);
                    if (ba.this.getParent() instanceof ViewGroup) {
                        ((ViewGroup) ba.this.getParent()).setClipChildren(false);
                    }
                    ba.this.setClipChildren(false);
                    ba.this.RZ.setTag(2);
                    ba baVar6 = ba.this;
                    baVar6.oJ((ViewGroup) baVar6);
                    ba baVar7 = ba.this;
                    baVar7.addView(baVar7.RZ, new FrameLayout.LayoutParams(-1, -1));
                    ba.this.RZ.tB();
                }
            };
            this.oJ = runnable;
            postDelayed(runnable, Yg * 1000);
            if (this.BTZ.mwH() || lY >= Integer.MAX_VALUE || Yg >= lY) {
                return;
            }
            Runnable runnable2 = new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba.5
                @Override // java.lang.Runnable
                public void run() {
                    ba baVar = ba.this;
                    if (baVar.RZ != null) {
                        baVar.f12681oq = false;
                        ba.this.RZ.ex();
                        ba.this.RZ.setVisibility(4);
                        ba baVar2 = ba.this;
                        baVar2.removeView(baVar2.RZ);
                    }
                }
            };
            this.ZYk = runnable2;
            postDelayed(runnable2, lY * 1000);
        }
    }
}
