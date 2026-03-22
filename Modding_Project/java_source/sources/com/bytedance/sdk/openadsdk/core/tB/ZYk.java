package com.bytedance.sdk.openadsdk.core.tB;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.activity.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.so.QSm;
import com.bytedance.sdk.openadsdk.core.so.RZ;
import com.bytedance.sdk.openadsdk.core.so.Ry;
import com.bytedance.sdk.openadsdk.core.widget.BTZ;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.PiB;
import com.bytedance.sdk.openadsdk.core.widget.eZI;
import com.bytedance.sdk.openadsdk.core.widget.si;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.dLZ;
import java.util.List;
/* loaded from: classes3.dex */
public class ZYk extends com.bytedance.sdk.openadsdk.core.so.oJ {
    public static Ry[] oJ = {new Ry(1, 6.4f, 320, 50), new Ry(4, 1.2f, 300, 250)};
    private oJ PiB;
    private QSm WcQ;
    private String awB;
    private PAGBannerAdWrapperListener eZI;

    public ZYk(@NonNull Context context) {
        super(context);
        this.ZYk = context;
    }

    public void setAdInteractionListener(PAGBannerAdWrapperListener pAGBannerAdWrapperListener) {
        this.eZI = pAGBannerAdWrapperListener;
    }

    public void setClosedListenerKey(String str) {
        this.awB = str;
    }

    private void Pfn() {
        TextView textView;
        cY cYVar = this.tB;
        if (cYVar != null) {
            int Dc = cYVar.Dc();
            if (this.tB.ib() == null) {
                oJ so2 = so();
                this.PiB = so2;
                PiB piB = so2.oJ;
                ImageView imageView = so2.tB;
                TextView textView2 = so2.ZYk;
                TextView textView3 = so2.cFZ;
                View view = so2.f13284ba;
                if (view != null) {
                    view.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.tB.ZYk.3
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                            TTWebsiteActivity.oJ(((com.bytedance.sdk.openadsdk.core.so.oJ) ZYk.this).ZYk, ((com.bytedance.sdk.openadsdk.core.so.oJ) ZYk.this).tB, ((com.bytedance.sdk.openadsdk.core.so.oJ) ZYk.this).f13275ba);
                        }
                    });
                }
                ViewGroup.LayoutParams layoutParams = piB.getLayoutParams();
                if (this.cFZ - (cdg.ZYk(this.ZYk, 8.0f) * 2) >= ((this.f13276so - cdg.ZYk(this.ZYk, 8.0f)) - (cdg.ZYk(this.ZYk, 21.0f) * 2)) - cdg.ZYk(this.ZYk, 52.0f)) {
                    layoutParams.width = -2;
                    layoutParams.height = -1;
                } else {
                    layoutParams.width = -1;
                    layoutParams.height = -2;
                }
                piB.setLayoutParams(layoutParams);
                if (Dc == 33) {
                    piB.setRatio(1.0f);
                } else {
                    piB.setRatio(1.91f);
                }
                List<com.bytedance.sdk.openadsdk.core.model.Ry> yB = this.tB.yB();
                if (yB != null && !yB.isEmpty()) {
                    com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ(yB.get(0), piB, this.tB);
                    com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ(yB.get(0).oJ(), this.PiB.Pfn);
                }
                if (this.tB.Zjw() == null || TextUtils.isEmpty(this.tB.Zjw().oJ())) {
                    textView = textView2;
                } else {
                    textView = textView2;
                    com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ(this.tB.Zjw().oJ(), this.tB.Zjw().ZYk(), this.tB.Zjw().tB(), imageView, this.tB);
                }
                textView.setText(this.tB.UUI());
                if (!TextUtils.isEmpty(this.tB.ypD())) {
                    textView3.setText(this.tB.ypD());
                } else {
                    textView3.setVisibility(8);
                }
                cdg.oJ((TextView) null, this.PiB.ex, this.tB);
                oJ((View) piB, true);
                piB.setTag(520093762, Boolean.TRUE);
                oJ((View) this, true);
                oJ((View) textView3, true);
                return;
            }
            oJ jFA = jFA();
            this.PiB = jFA;
            TextView textView4 = jFA.ZYk;
            TextView textView5 = jFA.cFZ;
            BTZ btz = jFA.f13285so;
            com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ(this.tB.ib().kkU(), this.PiB.Pfn);
            View view2 = this.PiB.f13284ba;
            if (view2 != null) {
                view2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.tB.ZYk.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view3) {
                        TTWebsiteActivity.oJ(((com.bytedance.sdk.openadsdk.core.so.oJ) ZYk.this).ZYk, ((com.bytedance.sdk.openadsdk.core.so.oJ) ZYk.this).tB, ((com.bytedance.sdk.openadsdk.core.so.oJ) ZYk.this).f13275ba);
                    }
                });
            }
            ViewGroup.LayoutParams layoutParams2 = btz.getLayoutParams();
            if (Dc == 15) {
                layoutParams2.width = -2;
                layoutParams2.height = -1;
                btz.setLayoutParams(layoutParams2);
                btz.setRatio(0.5625f);
            } else if (Dc == 5) {
                layoutParams2.width = -1;
                layoutParams2.height = -2;
                btz.setLayoutParams(layoutParams2);
                btz.setRatio(1.7777778f);
            } else {
                if (this.cFZ - (cdg.ZYk(this.ZYk, 8.0f) * 2) >= ((this.f13276so - cdg.ZYk(this.ZYk, 8.0f)) - (cdg.ZYk(this.ZYk, 21.0f) * 2)) - cdg.ZYk(this.ZYk, 52.0f)) {
                    layoutParams2.width = -2;
                    layoutParams2.height = -1;
                } else {
                    layoutParams2.width = -1;
                    layoutParams2.height = -2;
                }
                btz.setLayoutParams(layoutParams2);
                btz.setRatio(1.0f);
            }
            btz.removeAllViews();
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -1);
            com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba videoView = getVideoView();
            if (videoView != null) {
                QSm qSm = this.WcQ;
                if (qSm instanceof RZ) {
                    videoView.setNeedSelfManagerVideo(!((RZ) qSm).PiB());
                    ((RZ) this.WcQ).setBackupVideoView(videoView);
                    videoView.setVideoAdInteractionListener((RZ) this.WcQ);
                }
                btz.addView(videoView, layoutParams3);
                videoView.setAdCreativeClickListener(new ba.oJ() { // from class: com.bytedance.sdk.openadsdk.core.tB.ZYk.5
                    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba.oJ
                    public void oJ(View view3, int i10) {
                        if (ZYk.this.eZI != null) {
                            ZYk.this.eZI.onAdClicked();
                        }
                    }
                });
                com.bytedance.sdk.openadsdk.core.so.so clickCreativeListener = this.WcQ.getClickCreativeListener();
                if (clickCreativeListener != null) {
                    clickCreativeListener.oJ(videoView.getNativeVideoController());
                }
            }
            if (this.tB.Zjw() != null && !TextUtils.isEmpty(this.tB.Zjw().oJ())) {
                com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ(this.tB.Zjw().oJ(), this.tB.Zjw().ZYk(), this.tB.Zjw().tB(), this.PiB.tB, this.tB);
            }
            textView4.setText(this.tB.UUI());
            cdg.oJ((TextView) null, this.PiB.ex, this.tB);
            if (!TextUtils.isEmpty(this.tB.ypD())) {
                textView5.setText(this.tB.ypD());
            } else {
                textView5.setVisibility(8);
            }
            oJ((View) videoView, true);
            if (videoView != null) {
                videoView.setTag(520093762, Boolean.TRUE);
            }
            oJ((View) this, true);
            oJ((View) textView5, true);
            oJ(btz);
        }
    }

    private void ZYk() {
        Ry oJ2 = oJ(this.WcQ.getExpectExpressWidth(), this.WcQ.getExpectExpressHeight());
        if (this.WcQ.getExpectExpressWidth() > 0 && this.WcQ.getExpectExpressHeight() > 0) {
            this.cFZ = cdg.ZYk(this.ZYk, this.WcQ.getExpectExpressWidth());
            this.f13276so = cdg.ZYk(this.ZYk, this.WcQ.getExpectExpressHeight());
        } else {
            int tB = cdg.tB(this.ZYk);
            this.cFZ = tB;
            this.f13276so = Float.valueOf(tB / oJ2.ZYk).intValue();
        }
        int i10 = this.cFZ;
        if (i10 > 0 && i10 > cdg.tB(this.ZYk)) {
            float tB2 = cdg.tB(this.ZYk) / this.cFZ;
            this.cFZ = cdg.tB(this.ZYk);
            this.f13276so = Float.valueOf(this.f13276so * tB2).intValue();
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(this.cFZ, this.f13276so);
        }
        layoutParams.width = this.cFZ;
        layoutParams.height = this.f13276so;
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) layoutParams).gravity = 17;
        }
        setLayoutParams(layoutParams);
        cY cYVar = this.tB;
        if (cYVar != null) {
            int Dc = cYVar.Dc();
            if (Dc != 1010 && Dc != 1011 && Dc != 1012) {
                oJ(oJ2);
            } else {
                ex();
            }
        }
    }

    private oJ ba() {
        int ZYk = cdg.ZYk(this.ZYk, 8.0f);
        PiB piB = new PiB(this.ZYk);
        piB.setId(520093736);
        piB.setScaleType(ImageView.ScaleType.FIT_CENTER);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        addView(piB, layoutParams);
        View createPAGLogoViewByMaterial = PAGLogoView.createPAGLogoViewByMaterial(this.ZYk, this.tB);
        createPAGLogoViewByMaterial.setId(520093739);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams2.setMargins(ZYk, ZYk, 0, 0);
        layoutParams2.gravity = 8388659;
        createPAGLogoViewByMaterial.setLayoutParams(layoutParams2);
        addView(createPAGLogoViewByMaterial);
        return new oJ(createPAGLogoViewByMaterial, piB);
    }

    private oJ cFZ() {
        int ZYk = cdg.ZYk(this.ZYk, 38.0f);
        int ZYk2 = (int) (cdg.ZYk(this.ZYk, 25.0f) / 5.0d);
        int ZYk3 = cdg.ZYk(this.ZYk, 10.0f);
        int ZYk4 = cdg.ZYk(this.ZYk, 2.0f);
        int ZYk5 = cdg.ZYk(this.ZYk, 6.0f);
        int ZYk6 = cdg.ZYk(this.ZYk, 8.0f);
        RelativeLayout relativeLayout = new RelativeLayout(this.ZYk);
        addView(relativeLayout, -1, -1);
        si siVar = new si(this.ZYk);
        siVar.setId(520093738);
        TextView textView = new TextView(this.ZYk);
        textView.setId(520093730);
        eZI ezi = new eZI(this.ZYk);
        ezi.setId(520093735);
        View createPAGLogoViewByMaterial = PAGLogoView.createPAGLogoViewByMaterial(this.ZYk, this.tB);
        createPAGLogoViewByMaterial.setId(520093739);
        TextView textView2 = new TextView(this.ZYk);
        textView2.setId(520093703);
        oJ oJVar = new oJ(siVar, textView, ezi, createPAGLogoViewByMaterial, textView2);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(ZYk, ZYk);
        layoutParams.addRule(15);
        layoutParams.addRule(9);
        layoutParams.addRule(20);
        layoutParams.setMarginStart(ZYk5);
        layoutParams.setMargins(ZYk5, 0, 0, 0);
        siVar.setLayoutParams(layoutParams);
        siVar.setBackgroundColor(-1);
        siVar.setScaleType(ImageView.ScaleType.FIT_XY);
        relativeLayout.addView(siVar);
        LinearLayout linearLayout = new LinearLayout(this.ZYk);
        linearLayout.setOrientation(1);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(15);
        layoutParams2.addRule(16, textView2.getId());
        layoutParams2.addRule(17, siVar.getId());
        layoutParams2.setMarginStart(ZYk6);
        layoutParams2.setMarginEnd(ZYk6);
        layoutParams2.addRule(0, textView2.getId());
        layoutParams2.addRule(1, siVar.getId());
        layoutParams2.setMargins(ZYk6, 0, ZYk6, 0);
        relativeLayout.addView(linearLayout, layoutParams2);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        textView.setTextDirection(5);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        textView.setGravity(80);
        textView.setMaxLines(1);
        textView.setTextColor(Color.parseColor("#FF333333"));
        textView.setTextSize(12.0f);
        textView.setLayoutParams(layoutParams3);
        linearLayout.addView(textView);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams4.topMargin = ZYk4;
        ezi.setLayoutParams(layoutParams4);
        linearLayout.addView(ezi);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams5.addRule(20);
        layoutParams5.addRule(9);
        layoutParams5.addRule(12);
        createPAGLogoViewByMaterial.setLayoutParams(layoutParams5);
        relativeLayout.addView(createPAGLogoViewByMaterial);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams6.addRule(11);
        layoutParams6.addRule(15);
        layoutParams6.setMarginEnd(ZYk5);
        layoutParams6.addRule(21);
        layoutParams6.rightMargin = ZYk5;
        textView2.setBackground(dLZ.oJ(this.ZYk, 12));
        textView2.setEllipsize(truncateAt);
        textView2.setGravity(17);
        textView2.setMaxLines(1);
        textView2.setPadding(ZYk3, ZYk2, ZYk3, ZYk2);
        textView2.setText(com.bytedance.sdk.component.utils.cY.oJ(this.ZYk, "tt_video_download_apk"));
        textView2.setTextColor(Color.parseColor("#f0f0f0"));
        textView2.setTextSize(10.0f);
        textView2.setLayoutParams(layoutParams6);
        relativeLayout.addView(textView2);
        return oJVar;
    }

    private void ex() {
        oJ ba2 = ba();
        this.PiB = ba2;
        View view = ba2.f13284ba;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.tB.ZYk.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    TTWebsiteActivity.oJ(((com.bytedance.sdk.openadsdk.core.so.oJ) ZYk.this).ZYk, ((com.bytedance.sdk.openadsdk.core.so.oJ) ZYk.this).tB, ((com.bytedance.sdk.openadsdk.core.so.oJ) ZYk.this).f13275ba);
                }
            });
        }
        PiB piB = this.PiB.oJ;
        if (piB != null) {
            List<com.bytedance.sdk.openadsdk.core.model.Ry> yB = this.tB.yB();
            if (yB != null && !yB.isEmpty()) {
                com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ(yB.get(0), piB, this.tB);
            }
            oJ((View) piB, true);
            piB.setTag(520093762, Boolean.TRUE);
        }
    }

    private oJ jFA() {
        int ZYk = cdg.ZYk(this.ZYk, 8.0f);
        int ZYk2 = cdg.ZYk(this.ZYk, 21.0f);
        RelativeLayout relativeLayout = new RelativeLayout(this.ZYk);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        relativeLayout.setPadding(ZYk, ZYk, ZYk, ZYk2);
        relativeLayout.setLayoutParams(layoutParams);
        addView(relativeLayout);
        LinearLayout linearLayout = new LinearLayout(this.ZYk);
        linearLayout.setId(520093737);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(12);
        linearLayout.setGravity(16);
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(layoutParams2);
        relativeLayout.addView(linearLayout);
        si siVar = new si(this.ZYk);
        siVar.setId(520093738);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(cdg.ZYk(this.ZYk, 52.0f), cdg.ZYk(this.ZYk, 52.0f));
        siVar.setScaleType(ImageView.ScaleType.FIT_XY);
        siVar.setLayoutParams(layoutParams3);
        linearLayout.addView(siVar);
        LinearLayout linearLayout2 = new LinearLayout(this.ZYk);
        linearLayout2.setOrientation(1);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(0, -2);
        layoutParams4.weight = 1.0f;
        layoutParams4.leftMargin = ZYk;
        layoutParams4.rightMargin = ZYk;
        layoutParams4.setMarginStart(ZYk);
        layoutParams4.setMarginEnd(ZYk);
        linearLayout.addView(linearLayout2, layoutParams4);
        TextView textView = new TextView(this.ZYk);
        textView.setId(520093730);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        textView.setMaxLines(1);
        textView.setTextColor(Color.parseColor("#FF3E3E3E"));
        textView.setTextSize(16.0f);
        textView.setLayoutParams(layoutParams5);
        linearLayout2.addView(textView);
        eZI ezi = new eZI(this.ZYk);
        ezi.setId(520093735);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams6.topMargin = cdg.ZYk(this.ZYk, 4.0f);
        linearLayout2.addView(ezi, layoutParams6);
        TextView textView2 = new TextView(this.ZYk);
        textView2.setId(520093703);
        LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(cdg.ZYk(this.ZYk, 76.0f), cdg.ZYk(this.ZYk, 36.0f));
        textView2.setBackground(dLZ.oJ(this.ZYk, 18));
        textView2.setEllipsize(truncateAt);
        textView2.setMaxLines(1);
        textView2.setGravity(17);
        textView2.setText(com.bytedance.sdk.component.utils.cY.oJ(this.ZYk, "tt_video_download_apk"));
        textView2.setTextColor(-1);
        textView2.setTextSize(14.0f);
        textView2.setLayoutParams(layoutParams7);
        linearLayout.addView(textView2);
        FrameLayout frameLayout = new FrameLayout(this.ZYk);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams8.addRule(2, linearLayout.getId());
        layoutParams8.bottomMargin = ZYk2;
        frameLayout.setLayoutParams(layoutParams8);
        relativeLayout.addView(frameLayout);
        BTZ btz = new BTZ(this.ZYk);
        btz.setId(520093736);
        FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(-2, -1);
        layoutParams9.gravity = 17;
        btz.setLayoutParams(layoutParams9);
        frameLayout.addView(btz);
        View createPAGLogoViewByMaterial = PAGLogoView.createPAGLogoViewByMaterial(this.ZYk, this.tB);
        createPAGLogoViewByMaterial.setId(520093739);
        RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams10.addRule(10);
        layoutParams10.addRule(9);
        layoutParams10.setMargins(ZYk, ZYk, 0, 0);
        createPAGLogoViewByMaterial.setLayoutParams(layoutParams10);
        relativeLayout.addView(createPAGLogoViewByMaterial);
        return new oJ(siVar, createPAGLogoViewByMaterial, textView2, textView, btz, ezi, frameLayout);
    }

    private oJ so() {
        int ZYk = cdg.ZYk(this.ZYk, 8.0f);
        int ZYk2 = cdg.ZYk(this.ZYk, 21.0f);
        RelativeLayout relativeLayout = new RelativeLayout(this.ZYk);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        relativeLayout.setPadding(ZYk, ZYk, ZYk, ZYk2);
        relativeLayout.setLayoutParams(layoutParams);
        addView(relativeLayout);
        LinearLayout linearLayout = new LinearLayout(this.ZYk);
        linearLayout.setId(520093737);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(12);
        linearLayout.setGravity(16);
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(layoutParams2);
        relativeLayout.addView(linearLayout);
        si siVar = new si(this.ZYk);
        siVar.setId(520093738);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(cdg.ZYk(this.ZYk, 52.0f), cdg.ZYk(this.ZYk, 52.0f));
        siVar.setScaleType(ImageView.ScaleType.FIT_XY);
        siVar.setLayoutParams(layoutParams3);
        linearLayout.addView(siVar);
        LinearLayout linearLayout2 = new LinearLayout(this.ZYk);
        linearLayout2.setOrientation(1);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(0, -2);
        layoutParams4.weight = 1.0f;
        layoutParams4.leftMargin = ZYk;
        layoutParams4.rightMargin = ZYk;
        layoutParams4.setMarginStart(ZYk);
        layoutParams4.setMarginEnd(ZYk);
        linearLayout.addView(linearLayout2, layoutParams4);
        TextView textView = new TextView(this.ZYk);
        textView.setId(520093730);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        textView.setMaxLines(1);
        textView.setTextColor(Color.parseColor("#FF3E3E3E"));
        textView.setTextSize(16.0f);
        textView.setLayoutParams(layoutParams5);
        linearLayout2.addView(textView);
        eZI ezi = new eZI(this.ZYk);
        ezi.setId(520093735);
        linearLayout2.addView(ezi, new LinearLayout.LayoutParams(-2, -2));
        TextView textView2 = new TextView(this.ZYk);
        textView2.setId(520093703);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(cdg.ZYk(this.ZYk, 76.0f), cdg.ZYk(this.ZYk, 36.0f));
        textView2.setBackground(dLZ.oJ(this.ZYk, 18));
        textView2.setEllipsize(truncateAt);
        textView2.setMaxLines(1);
        textView2.setGravity(17);
        textView2.setText(com.bytedance.sdk.component.utils.cY.oJ(this.ZYk, "tt_video_download_apk"));
        textView2.setTextColor(-1);
        textView2.setTextSize(14.0f);
        textView2.setLayoutParams(layoutParams6);
        linearLayout.addView(textView2);
        FrameLayout frameLayout = new FrameLayout(this.ZYk);
        frameLayout.setLayoutDirection(3);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams7.addRule(2, linearLayout.getId());
        layoutParams7.bottomMargin = ZYk2;
        frameLayout.setLayoutParams(layoutParams7);
        relativeLayout.addView(frameLayout);
        PiB piB = new PiB(this.ZYk);
        piB.setId(520093736);
        piB.setScaleType(ImageView.ScaleType.FIT_CENTER);
        FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(-2, -1);
        layoutParams8.gravity = 17;
        frameLayout.addView(piB, layoutParams8);
        View createPAGLogoViewByMaterial = PAGLogoView.createPAGLogoViewByMaterial(this.ZYk, this.tB);
        createPAGLogoViewByMaterial.setId(520093739);
        RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams9.addRule(10);
        layoutParams9.addRule(9);
        layoutParams9.setMargins(ZYk, ZYk, 0, 0);
        createPAGLogoViewByMaterial.setLayoutParams(layoutParams9);
        relativeLayout.addView(createPAGLogoViewByMaterial);
        return new oJ(siVar, createPAGLogoViewByMaterial, textView2, textView, piB, ezi, frameLayout);
    }

    private void tB() {
        cdg.ZYk(this.ZYk, 50.0f);
        oJ cFZ = cFZ();
        this.PiB = cFZ;
        ImageView imageView = cFZ.tB;
        TextView textView = cFZ.ZYk;
        eZI ezi = cFZ.ex;
        TextView textView2 = cFZ.cFZ;
        View view = cFZ.f13284ba;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.tB.ZYk.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    TTWebsiteActivity.oJ(((com.bytedance.sdk.openadsdk.core.so.oJ) ZYk.this).ZYk, ((com.bytedance.sdk.openadsdk.core.so.oJ) ZYk.this).tB, ((com.bytedance.sdk.openadsdk.core.so.oJ) ZYk.this).f13275ba);
                }
            });
        }
        if (this.tB.Zjw() != null && !TextUtils.isEmpty(this.tB.Zjw().oJ())) {
            com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ(this.tB.Zjw().oJ(), this.tB.Zjw().ZYk(), this.tB.Zjw().tB(), imageView, this.tB);
        }
        textView.setText(this.tB.UUI());
        if (!TextUtils.isEmpty(this.tB.ypD())) {
            textView2.setText(this.tB.ypD());
        } else {
            textView2.setVisibility(8);
        }
        cdg.oJ((TextView) null, ezi, this.tB);
        oJ((View) imageView, true);
        imageView.setTag(520093762, Boolean.TRUE);
        oJ((View) this, true);
        oJ((View) textView2, true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.oJ
    protected void oJ(View view, int i10, com.bytedance.sdk.openadsdk.core.model.eZI ezi) {
        QSm qSm = this.WcQ;
        if (qSm != null) {
            qSm.oJ(view, i10, ezi);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ(cY cYVar, QSm qSm, com.bytedance.sdk.openadsdk.RZ.oJ.oJ.ba baVar) {
        setBackgroundColor(-1);
        this.tB = cYVar;
        this.WcQ = qSm;
        this.f13275ba = "banner_ad";
        qSm.addView(this, new ViewGroup.LayoutParams(-2, -2));
        ZYk();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class oJ {
        FrameLayout Pfn;
        public TextView ZYk;

        /* renamed from: ba  reason: collision with root package name */
        View f13284ba;
        TextView cFZ;
        eZI ex;
        public PiB oJ;

        /* renamed from: so  reason: collision with root package name */
        private BTZ f13285so;
        ImageView tB;

        oJ(ImageView imageView, TextView textView, eZI ezi, View view, TextView textView2) {
            this.tB = imageView;
            this.ZYk = textView;
            this.ex = ezi;
            this.f13284ba = view;
            this.cFZ = textView2;
        }

        public oJ(ImageView imageView, View view, TextView textView, TextView textView2, PiB piB, eZI ezi, FrameLayout frameLayout) {
            this.tB = imageView;
            this.f13284ba = view;
            this.cFZ = textView;
            this.ZYk = textView2;
            this.oJ = piB;
            this.ex = ezi;
            this.Pfn = frameLayout;
        }

        public oJ(ImageView imageView, View view, TextView textView, TextView textView2, BTZ btz, eZI ezi, FrameLayout frameLayout) {
            this.tB = imageView;
            this.f13284ba = view;
            this.cFZ = textView;
            this.ZYk = textView2;
            this.f13285so = btz;
            this.ex = ezi;
            this.Pfn = frameLayout;
        }

        public oJ(View view, PiB piB) {
            this.f13284ba = view;
            this.oJ = piB;
        }
    }

    private void oJ(Ry ry) {
        if (ry.oJ == 1) {
            tB();
        } else {
            Pfn();
        }
    }

    public static Ry oJ(int i10, int i11) {
        try {
            return ((double) i11) >= Math.floor((((double) i10) * 450.0d) / 600.0d) ? oJ[1] : oJ[0];
        } catch (Throwable unused) {
            return oJ[0];
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.so.oJ
    public void oJ() {
        TTDislikeDialogAbstract tTDislikeDialogAbstract = this.Pfn;
        if (tTDislikeDialogAbstract != null) {
            tTDislikeDialogAbstract.show();
            return;
        }
        com.bytedance.sdk.openadsdk.tB.tB tBVar = this.ex;
        if (tBVar != null) {
            tBVar.oJ();
        } else {
            TTDelegateActivity.oJ(this.tB, this.awB);
        }
    }
}
