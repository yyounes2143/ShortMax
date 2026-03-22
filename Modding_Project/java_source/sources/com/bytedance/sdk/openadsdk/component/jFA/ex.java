package com.bytedance.sdk.openadsdk.component.jFA;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.eZI;
import com.bytedance.sdk.openadsdk.core.widget.si;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.dLZ;
/* loaded from: classes3.dex */
public class ex extends tB {
    private final com.bytedance.sdk.openadsdk.core.Pfn.tB PiB;
    private final eZI WcQ;
    private final com.bytedance.sdk.openadsdk.core.Pfn.so awB;
    private final com.bytedance.sdk.openadsdk.core.Pfn.ex eZI;

    /* renamed from: si  reason: collision with root package name */
    private final com.bytedance.sdk.openadsdk.core.Pfn.Pfn f12983si;

    public ex(Context context, cY cYVar) {
        super(context);
        setId(520093753);
        setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        setBackgroundColor(0);
        int ZYk = cdg.ZYk(context, 8.0f);
        int ZYk2 = cdg.ZYk(context, 9.0f);
        int ZYk3 = cdg.ZYk(context, 10.0f);
        int ZYk4 = cdg.ZYk(context, 40.0f);
        com.bytedance.sdk.openadsdk.core.widget.tB tBVar = new com.bytedance.sdk.openadsdk.core.widget.tB(context);
        this.BTZ = tBVar;
        tBVar.setPadding(ZYk2, 0, ZYk2, 0);
        this.BTZ.setScaleType(ImageView.ScaleType.FIT_CENTER);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(cdg.ZYk(context, 32.0f), cdg.ZYk(context, 14.0f));
        layoutParams.addRule(12);
        layoutParams.addRule(11);
        layoutParams.setMargins(0, 0, ZYk3, ZYk3);
        this.BTZ.setLayoutParams(layoutParams);
        com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar2 = new com.bytedance.sdk.openadsdk.core.Pfn.tB(context);
        this.PiB = tBVar2;
        tBVar2.setBackgroundColor(-1);
        tBVar2.setId(520093758);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, cdg.ZYk(context, 107.0f));
        layoutParams2.addRule(12);
        tBVar2.setLayoutParams(layoutParams2);
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        pfn.setOrientation(0);
        pfn.setGravity(16);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 17;
        pfn.setLayoutParams(layoutParams3);
        tBVar2.addView(pfn);
        si siVar = new si(context);
        this.f12985ba = siVar;
        siVar.setId(520093759);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(ZYk4, ZYk4);
        layoutParams4.rightMargin = ZYk;
        layoutParams4.setMarginEnd(ZYk);
        this.f12985ba.setLayoutParams(layoutParams4);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        this.cFZ = soVar;
        soVar.setId(520093761);
        this.cFZ.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar2 = this.cFZ;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        soVar2.setEllipsize(truncateAt);
        this.cFZ.setMaxLines(2);
        this.cFZ.setTextColor(Color.parseColor("#161823"));
        this.cFZ.setTextSize(30.0f);
        pfn.addView(this.f12985ba);
        pfn.addView(this.cFZ);
        com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar3 = new com.bytedance.sdk.openadsdk.core.Pfn.tB(context);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams5.addRule(2, tBVar2.getId());
        layoutParams5.addRule(10);
        tBVar3.setLayoutParams(layoutParams5);
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar = new com.bytedance.sdk.openadsdk.core.Pfn.ex(context);
        this.oJ = exVar;
        exVar.setId(520093754);
        this.oJ.setScaleType(ImageView.ScaleType.CENTER_CROP);
        tBVar3.addView(this.oJ, new FrameLayout.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.core.Pfn.tB tBVar4 = new com.bytedance.sdk.openadsdk.core.Pfn.tB(context);
        this.ZYk = tBVar4;
        tBVar4.setId(520093755);
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams6.gravity = 17;
        tBVar3.addView(this.ZYk, layoutParams6);
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar2 = new com.bytedance.sdk.openadsdk.core.Pfn.ex(context);
        this.tB = exVar2;
        exVar2.setId(520093756);
        tBVar3.addView(this.tB, new FrameLayout.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar3 = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        this.Pfn = soVar3;
        soVar3.setId(520093717);
        this.Pfn.setBackground(dLZ.oJ(context, Color.parseColor("#b3000000"), 24));
        this.Pfn.setEllipsize(truncateAt);
        this.Pfn.setGravity(17);
        this.Pfn.setSingleLine(true);
        this.Pfn.setText(com.bytedance.sdk.component.utils.cY.oJ(context, "tt_video_download_apk"));
        this.Pfn.setTextColor(-1);
        this.Pfn.setTextSize(1, 16.0f);
        this.Pfn.setTag("open_ad_click_button_tag");
        FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(cdg.ZYk(context, 236.0f), cdg.ZYk(context, 48.0f));
        layoutParams7.gravity = 81;
        layoutParams7.bottomMargin = cdg.ZYk(context, 32.0f);
        tBVar3.addView(this.Pfn, layoutParams7);
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn2 = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        this.f12983si = pfn2;
        pfn2.setOrientation(0);
        pfn2.setGravity(16);
        pfn2.setBackground(new oJ(context));
        pfn2.setPadding(cdg.ZYk(context, 16.0f), cdg.ZYk(context, 8.0f), cdg.ZYk(context, 16.0f), cdg.ZYk(context, 8.0f));
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams8.addRule(10);
        layoutParams8.topMargin = cdg.ZYk(context, 90.0f);
        pfn2.setLayoutParams(layoutParams8);
        si siVar2 = new si(context);
        this.eZI = siVar2;
        pfn2.addView(siVar2, new LinearLayout.LayoutParams(cdg.ZYk(context, 36.0f), cdg.ZYk(context, 36.0f)));
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn3 = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        pfn3.setOrientation(1);
        LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams9.leftMargin = cdg.ZYk(context, 8.0f);
        pfn2.addView(pfn3, layoutParams9);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar4 = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        this.awB = soVar4;
        soVar4.setTextColor(-1);
        pfn3.addView(soVar4, new LinearLayout.LayoutParams(-2, -2));
        eZI ezi = new eZI(context, true);
        this.WcQ = ezi;
        pfn3.addView(ezi, new LinearLayout.LayoutParams(-2, -2));
        PAGLogoView createPAGLogoViewByMaterial = PAGLogoView.createPAGLogoViewByMaterial(context, cYVar);
        this.ex = createPAGLogoViewByMaterial;
        createPAGLogoViewByMaterial.setId(520093757);
        FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(-2, cdg.ZYk(context, 14.0f));
        layoutParams10.gravity = 83;
        tBVar3.addView(this.ex, layoutParams10);
        addView(tBVar3);
        addView(this.BTZ);
        addView(tBVar2);
        addView(this.f12986so);
        addView(pfn2);
    }

    @Override // com.bytedance.sdk.openadsdk.component.jFA.tB
    public com.bytedance.sdk.openadsdk.core.Pfn.ex getAdIconView() {
        return this.eZI;
    }

    @Override // com.bytedance.sdk.openadsdk.component.jFA.tB
    public com.bytedance.sdk.openadsdk.core.Pfn.so getAdTitleTextView() {
        return this.awB;
    }

    @Override // com.bytedance.sdk.openadsdk.component.jFA.tB
    public com.bytedance.sdk.openadsdk.core.Pfn.Pfn getOverlayLayout() {
        return this.f12983si;
    }

    @Override // com.bytedance.sdk.openadsdk.component.jFA.tB
    public eZI getScoreBar() {
        return this.WcQ;
    }

    @Override // com.bytedance.sdk.openadsdk.component.jFA.tB
    public View getUserInfo() {
        return this.PiB;
    }

    /* loaded from: classes3.dex */
    private static final class oJ extends Drawable {
        private static final int Pfn = Color.parseColor("#b0000000");

        /* renamed from: ba  reason: collision with root package name */
        private static final int f12984ba = Color.parseColor("#40000000");
        private final boolean ex;
        private final RectF oJ = new RectF();
        private final Paint ZYk = new Paint();
        private final Path tB = new Path();

        public oJ(Context context) {
            this.ex = com.bytedance.sdk.component.adexpress.ex.ZYk.oJ(context);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(@NonNull Canvas canvas) {
            canvas.drawPath(this.tB, this.ZYk);
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        protected void onBoundsChange(@NonNull Rect rect) {
            float[] fArr;
            int i10;
            int i11;
            super.onBoundsChange(rect);
            this.oJ.set(rect);
            this.tB.reset();
            int height = rect.height() / 2;
            Path path = this.tB;
            RectF rectF = this.oJ;
            if (this.ex) {
                float f10 = height;
                fArr = new float[]{f10, f10, 0.0f, 0.0f, 0.0f, 0.0f, f10, f10};
            } else {
                float f11 = height;
                fArr = new float[]{0.0f, 0.0f, f11, f11, f11, f11, 0.0f, 0.0f};
            }
            path.addRoundRect(rectF, fArr, Path.Direction.CW);
            float f12 = rect.right;
            boolean z10 = this.ex;
            if (z10) {
                i10 = f12984ba;
            } else {
                i10 = Pfn;
            }
            if (z10) {
                i11 = Pfn;
            } else {
                i11 = f12984ba;
            }
            this.ZYk.setShader(new LinearGradient(0.0f, 0.0f, f12, 0.0f, new int[]{i10, i11}, (float[]) null, Shader.TileMode.CLAMP));
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i10) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(@Nullable ColorFilter colorFilter) {
        }
    }
}
