package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import ai.turbolink.sdk.campaign.b;
import ai.turbolink.sdk.campaign.c;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class dLZ extends ba {
    private String oJ;

    /* loaded from: classes3.dex */
    private static class ZYk implements com.bytedance.sdk.component.Pfn.eZI {
        private Resources ZYk;
        private WeakReference<View> oJ;

        public ZYk(View view, Resources resources) {
            this.oJ = new WeakReference<>(view);
            this.ZYk = resources;
        }

        @Override // com.bytedance.sdk.component.Pfn.eZI
        public void oJ(int i10, String str, @Nullable Throwable th2) {
        }

        @Override // com.bytedance.sdk.component.Pfn.eZI
        public void oJ(com.bytedance.sdk.component.Pfn.dLZ dlz) {
            Object ZYk;
            View view = this.oJ.get();
            if (view == null || (ZYk = dlz.ZYk()) == null || dlz.tB() == null) {
                return;
            }
            if (ZYk instanceof Bitmap) {
                view.setBackground(new BitmapDrawable(this.ZYk, (Bitmap) ZYk));
            } else if (ZYk instanceof Drawable) {
                if (Build.VERSION.SDK_INT >= 28 && b.a(ZYk)) {
                    c.a(ZYk).start();
                }
                view.setBackground((Drawable) ZYk);
            }
        }
    }

    /* loaded from: classes3.dex */
    private static class oJ implements com.bytedance.sdk.component.Pfn.so {
        private final WeakReference<Context> oJ;

        public oJ(Context context) {
            this.oJ = new WeakReference<>(context);
        }

        @Override // com.bytedance.sdk.component.Pfn.so
        public Bitmap oJ(Bitmap bitmap) {
            Context context = this.oJ.get();
            if (context != null) {
                return com.bytedance.sdk.component.adexpress.ex.oJ.oJ(context, bitmap, 25);
            }
            return null;
        }
    }

    public dLZ(Context context, @NonNull DynamicRootView dynamicRootView, @NonNull com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        super(context, dynamicRootView, soVar);
        if (!TextUtils.isEmpty(this.BTZ.jXJ()) && soVar.RZ()) {
            com.bytedance.sdk.component.adexpress.ba.kkU kku = new com.bytedance.sdk.component.adexpress.ba.kkU(context);
            kku.setAnimationsLoop(this.BTZ.uvK());
            kku.setImageLottieTosPath(this.BTZ.jXJ());
            kku.setLottieAppNameMaxLength(this.BTZ.bD());
            kku.setLottieAdTitleMaxLength(this.BTZ.VJm());
            kku.setLottieAdDescMaxLength(this.BTZ.UF());
            kku.setData(soVar.QSm());
            this.awB = kku;
        } else if (this.BTZ.awB() > 0.0f) {
            com.bytedance.sdk.component.adexpress.ba.Xe xe2 = new com.bytedance.sdk.component.adexpress.ba.Xe(context);
            this.awB = xe2;
            xe2.setXRound((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(context, this.BTZ.awB()));
            ((com.bytedance.sdk.component.adexpress.ba.Xe) this.awB).setYRound((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(context, this.BTZ.awB()));
        } else if (!so() && "arrowButton".equals(soVar.kkU().ZYk())) {
            com.bytedance.sdk.component.adexpress.dynamic.animation.view.ZYk zYk = new com.bytedance.sdk.component.adexpress.dynamic.animation.view.ZYk(context);
            zYk.setBrickNativeValue(this.BTZ);
            this.awB = zYk;
        } else if (com.bytedance.sdk.component.adexpress.ex.jFA.ZYk(this.BTZ.dLZ())) {
            this.awB = new com.bytedance.sdk.component.adexpress.ba.PiB(context);
        } else {
            this.awB = new ImageView(context);
        }
        this.oJ = getImageKey();
        this.awB.setTag(Integer.valueOf(getClickArea()));
        if ("arrowButton".equals(soVar.kkU().ZYk())) {
            if (this.BTZ.ZYk() <= 0 && this.BTZ.oJ() <= 0) {
                int max = Math.max(this.cFZ, this.f12680so);
                this.cFZ = max;
                this.f12680so = Math.max(max, this.f12680so);
            } else {
                int min = Math.min(this.cFZ, this.f12680so);
                this.cFZ = min;
                this.f12680so = Math.min(min, this.f12680so);
                this.jFA = (int) (this.jFA + com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(context, this.BTZ.ZYk() + (this.BTZ.oJ() / 2) + 0.5f));
            }
            this.BTZ.oJ(this.cFZ / 2);
        }
        addView(this.awB, new FrameLayout.LayoutParams(this.cFZ, this.f12680so));
    }

    private String getImageKey() {
        Map<String, String> dLZ = this.WcQ.getRenderRequest().dLZ();
        if (dLZ != null && dLZ.size() > 0) {
            return dLZ.get(this.BTZ.dLZ());
        }
        return null;
    }

    private boolean oJ() {
        String BTZ = this.BTZ.BTZ();
        if (this.BTZ.QSm()) {
            return true;
        }
        if (TextUtils.isEmpty(BTZ)) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(BTZ);
            if (Math.abs((this.cFZ / (this.f12680so * 1.0f)) - (jSONObject.optInt("width") / (jSONObject.optInt("height") * 1.0f))) > 0.01f) {
                return true;
            }
            return false;
        } catch (JSONException unused) {
            return false;
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.mu
    public boolean jFA() {
        int i10;
        String str;
        super.jFA();
        if (!TextUtils.isEmpty(this.BTZ.jXJ())) {
            ((ImageView) this.awB).setScaleType(ImageView.ScaleType.CENTER_CROP);
            return true;
        }
        int i11 = 0;
        if ("arrowButton".equals(this.PiB.kkU().ZYk())) {
            ((ImageView) this.awB).setImageResource(com.bytedance.sdk.component.utils.cY.ex(this.dLZ, "tt_white_righterbackicon_titlebar"));
            if (((ImageView) this.awB).getDrawable() != null) {
                ((ImageView) this.awB).getDrawable().setAutoMirrored(true);
            }
            this.awB.setPadding(0, 0, 0, 0);
            ((ImageView) this.awB).setScaleType(ImageView.ScaleType.FIT_XY);
            return true;
        }
        this.awB.setBackgroundColor(this.BTZ.IUZ());
        String tB = this.PiB.kkU().tB();
        if ("user".equals(tB)) {
            ((ImageView) this.awB).setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            ((ImageView) this.awB).setColorFilter(this.BTZ.cFZ());
            ((ImageView) this.awB).setImageDrawable(com.bytedance.sdk.component.utils.cY.tB(getContext(), "tt_user"));
            int i12 = this.cFZ;
            ((ImageView) this.awB).setPadding(i12 / 10, this.f12680so / 5, i12 / 10, 0);
        } else if (tB != null && tB.startsWith("@")) {
            try {
                ((ImageView) this.awB).setImageResource(Integer.parseInt(tB.substring(1)));
            } catch (Exception unused) {
            }
        }
        com.bytedance.sdk.component.Pfn.awB Pfn = com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().Pfn();
        String dLZ = this.BTZ.dLZ();
        if (!TextUtils.isEmpty(dLZ) && !dLZ.startsWith("http:") && !dLZ.startsWith("https:")) {
            DynamicRootView dynamicRootView = this.WcQ;
            if (dynamicRootView != null && dynamicRootView.getRenderRequest() != null) {
                str = this.WcQ.getRenderRequest().jr();
            } else {
                str = null;
            }
            dLZ = com.bytedance.sdk.component.adexpress.dynamic.Pfn.jFA.ZYk(dLZ, str);
        }
        com.bytedance.sdk.component.adexpress.oJ.oJ.tB tB2 = com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB();
        if (tB2 != null) {
            i11 = tB2.awB();
            i10 = tB2.eZI();
        } else {
            i10 = 0;
        }
        com.bytedance.sdk.component.Pfn.kkU Pfn2 = Pfn.oJ(dLZ).oJ(this.oJ).oJ(this.cFZ).ZYk(this.f12680so).ex(i11).Pfn(i10);
        String WcQ = this.WcQ.getRenderRequest().WcQ();
        if (!TextUtils.isEmpty(WcQ)) {
            Pfn2.ZYk(WcQ);
        }
        if (oJ()) {
            ((ImageView) this.awB).setScaleType(ImageView.ScaleType.FIT_CENTER);
            Pfn2.oJ(Bitmap.Config.ARGB_4444).tB(2).oJ(new oJ(this.dLZ)).oJ(new ZYk(this.awB, getResources()));
        } else {
            if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
                Pfn2.tB(1).oJ((ImageView) this.awB);
            }
            ((ImageView) this.awB).setScaleType(ImageView.ScaleType.FIT_XY);
        }
        if ((this.awB instanceof ImageView) && "cover".equals(getImageObjectFit())) {
            ((ImageView) this.awB).setScaleType(ImageView.ScaleType.CENTER_CROP);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = ((ImageView) this.awB).getDrawable();
        if (Build.VERSION.SDK_INT >= 28 && b.a(drawable)) {
            c.a(drawable).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = ((ImageView) this.awB).getDrawable();
        if (Build.VERSION.SDK_INT >= 28 && b.a(drawable)) {
            c.a(drawable).stop();
        }
    }
}
