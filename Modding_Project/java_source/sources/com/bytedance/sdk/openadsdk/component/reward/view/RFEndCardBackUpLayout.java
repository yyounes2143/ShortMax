package com.bytedance.sdk.openadsdk.component.reward.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.eZI;
import com.bytedance.sdk.openadsdk.core.widget.si;
import com.bytedance.sdk.openadsdk.utils.cdg;
import java.util.HashMap;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class RFEndCardBackUpLayout extends com.bytedance.sdk.openadsdk.core.Pfn.tB {
    private static final String TAG = "TTAD.RFEndCardBackUpL";
    private com.bytedance.sdk.openadsdk.component.reward.oJ.oJ adContext;
    private PAGLogoView adLogo;
    private si ivIcon;
    private boolean mInit;
    private eZI rbScore;
    private int shownAdCount;
    private com.bytedance.sdk.openadsdk.core.Pfn.so tvDesc;
    private com.bytedance.sdk.openadsdk.core.Pfn.so tvDownload;
    private TextView tvTitle;

    public RFEndCardBackUpLayout(Context context) {
        super(context);
        setVisibility(8);
        setId(com.bytedance.sdk.openadsdk.utils.eZI.zGT);
    }

    private void bindDescData(com.bytedance.sdk.openadsdk.core.Pfn.so soVar, cY cYVar) {
        if (soVar == null) {
            return;
        }
        String Amz = cYVar.Amz();
        if (!TextUtils.isEmpty(Amz)) {
            soVar.setText(Amz);
        }
    }

    private void bindIconData(com.bytedance.sdk.openadsdk.core.Pfn.ex exVar, cY cYVar) {
        if (exVar != null && cYVar.Zjw() != null && !TextUtils.isEmpty(cYVar.Zjw().oJ())) {
            com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ(cYVar.Zjw(), exVar, cYVar);
        }
    }

    private void bindTitleData(TextView textView, cY cYVar, String str) {
        if (textView != null) {
            if (cYVar.Wd() != null && !TextUtils.isEmpty(cYVar.Wd().ZYk())) {
                textView.setText(cYVar.Wd().ZYk());
            } else {
                textView.setText(str);
            }
        }
    }

    private void initData(cY cYVar, com.bytedance.sdk.openadsdk.core.Pfn.so soVar) {
        setDownloadButtonData(soVar, cYVar, -1);
        bindIconData(this.ivIcon, cYVar);
        eZI ezi = this.rbScore;
        if (ezi != null) {
            cdg.oJ((TextView) null, ezi, cYVar);
            if (cYVar.Wd() != null) {
                this.rbScore.setVisibility(0);
            }
        }
        if (this.tvTitle != null) {
            if (cYVar.Wd() != null && !TextUtils.isEmpty(cYVar.Wd().ZYk())) {
                this.tvTitle.setText(cYVar.Wd().ZYk());
            } else if (!TextUtils.isEmpty(cYVar.Qzd())) {
                this.tvTitle.setText(cYVar.Qzd());
            } else {
                this.tvTitle.setVisibility(8);
            }
        }
        if (this.tvDesc != null) {
            String UUI = cYVar.UUI();
            if (!TextUtils.isEmpty(UUI)) {
                this.tvDesc.setText(UUI);
            } else {
                this.tvDesc.setVisibility(8);
            }
        }
        this.adLogo.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.RFEndCardBackUpLayout.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    TTWebsiteActivity.oJ(RFEndCardBackUpLayout.this.adContext.HyG, RFEndCardBackUpLayout.this.adContext.ZYk, RFEndCardBackUpLayout.this.adContext.Pfn);
                } catch (Throwable unused) {
                }
            }
        });
    }

    private void initOneSlotMultipleAdsLayout() {
        Context context = getContext();
        setBackgroundColor(Color.parseColor("#C2FFFFFF"));
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        pfn.setOrientation(1);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(cdg.ZYk(context, 16.0f), 0, cdg.ZYk(context, 16.0f), 0);
        layoutParams.gravity = 17;
        addView(pfn, layoutParams);
        if (this.adContext.oTd == 2) {
            com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn2 = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
            pfn2.setOrientation(0);
            pfn.addView(pfn2, new FrameLayout.LayoutParams(-1, -2));
            initOneSlotMultipleAdsLayoutLandscape(pfn2, this.shownAdCount);
        } else if (this.shownAdCount == 2) {
            initOneSlotMultipleAdsLayoutForTwoAdVertical(pfn);
        } else {
            initOneSlotMultipleAdsLayoutForThreeAdVertical(pfn);
        }
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.adContext;
        View createPAGLogoViewByMaterial = PAGLogoView.createPAGLogoViewByMaterial(oJVar.HyG, oJVar.ZYk);
        createPAGLogoViewByMaterial.setId(520093757);
        pfn.addView(createPAGLogoViewByMaterial);
        createPAGLogoViewByMaterial.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.RFEndCardBackUpLayout.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TTWebsiteActivity.oJ(RFEndCardBackUpLayout.this.adContext.HyG, RFEndCardBackUpLayout.this.adContext.ZYk, RFEndCardBackUpLayout.this.adContext.Pfn);
            }
        });
    }

    private void initOneSlotMultipleAdsLayoutForThreeAdVertical(com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn) {
        cY cYVar = this.adContext.ZYk;
        if (cYVar != null) {
            List<cY> ex = cYVar.tB().ex();
            for (int i10 = 0; i10 < ex.size() && i10 < 3; i10++) {
                initSingleCardInThreeCardStyle(pfn, ex.get(i10), i10);
            }
        }
    }

    private void initOneSlotMultipleAdsLayoutForTwoAdVertical(com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn) {
        cY cYVar = this.adContext.ZYk;
        if (cYVar != null) {
            List<cY> ex = cYVar.tB().ex();
            for (int i10 = 0; i10 < ex.size() && i10 < 2; i10++) {
                initSingleCardInTwoCardStyle(pfn, ex.get(i10), i10);
            }
        }
    }

    private void initOneSlotMultipleAdsLayoutLandscape(com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn, int i10) {
        cY cYVar = this.adContext.ZYk;
        if (cYVar != null) {
            List<cY> ex = cYVar.tB().ex();
            for (int i11 = 0; i11 < ex.size() && i11 < i10 && i11 < 3; i11++) {
                initSingleCardInTwoCardStyleLandscape(pfn, ex.get(i11), i11, i10);
            }
        }
    }

    private void initSingleCardInThreeCardStyle(com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn, cY cYVar, int i10) {
        int i11;
        Context context = getContext();
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn2 = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        pfn2.setOrientation(1);
        pfn2.setGravity(1);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        if (i10 > 0) {
            i11 = cdg.ZYk(context, 12.0f);
        } else {
            i11 = 0;
        }
        layoutParams.setMargins(0, i11, 0, 0);
        pfn2.setBackground(new oJ(context));
        pfn.addView(pfn2, layoutParams);
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn3 = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        pfn3.setOrientation(0);
        pfn3.setGravity(16);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.topMargin = cdg.ZYk(context, 20.0f);
        layoutParams2.leftMargin = cdg.ZYk(context, 17.0f);
        layoutParams2.rightMargin = cdg.ZYk(context, 30.0f);
        pfn2.addView(pfn3, layoutParams2);
        si siVar = new si(context);
        pfn3.addView(siVar, new FrameLayout.LayoutParams(cdg.ZYk(context, 70.0f), cdg.ZYk(context, 63.0f)));
        bindIconData(siVar, cYVar);
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn4 = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        pfn4.setOrientation(1);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams3.leftMargin = cdg.ZYk(context, 7.0f);
        pfn3.addView(pfn4, layoutParams3);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        soVar.setSingleLine(true);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        soVar.setEllipsize(truncateAt);
        soVar.setTextSize(18.0f);
        soVar.setTextColor(Color.parseColor("#161823"));
        soVar.setGravity(GravityCompat.START);
        soVar.setTypeface(null, 1);
        pfn4.addView(soVar, new FrameLayout.LayoutParams(-1, -2));
        bindTitleData(soVar, cYVar, cYVar.Qzd());
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar2 = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        soVar2.setSingleLine(true);
        soVar2.setEllipsize(truncateAt);
        soVar2.setTextSize(16.0f);
        soVar2.setTextColor(Color.parseColor("#80161823"));
        pfn4.addView(soVar2, new FrameLayout.LayoutParams(-1, -2));
        bindDescData(soVar2, cYVar);
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn5 = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        pfn5.setOrientation(0);
        pfn5.setGravity(16);
        pfn4.addView(pfn5, new FrameLayout.LayoutParams(-2, -2));
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar3 = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        soVar3.setTextSize(16.0f);
        soVar3.setTextColor(Color.parseColor("#80161823"));
        pfn5.addView(soVar3, new ViewGroup.LayoutParams(-2, -2));
        eZI ezi = new eZI(context);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams4.leftMargin = cdg.ZYk(context, 8.0f);
        pfn5.addView(ezi, layoutParams4);
        cdg.oJ(soVar3, ezi, cYVar, 18);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar4 = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        soVar4.setGravity(17);
        soVar4.setId(520093707);
        soVar4.setText(com.bytedance.sdk.component.utils.cY.oJ(context, "tt_video_download_apk"));
        soVar4.setTextColor(-1);
        soVar4.setTextSize(2, 16.0f);
        soVar4.setBackground(com.bytedance.sdk.openadsdk.utils.dLZ.oJ(context, "tt_reward_full_video_backup_btn_bg"));
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, cdg.ZYk(context, 36.0f));
        layoutParams5.setMargins(cdg.ZYk(context, 20.0f), cdg.ZYk(context, 22.0f), cdg.ZYk(context, 20.0f), cdg.ZYk(context, 20.0f));
        pfn2.addView(soVar4, layoutParams5);
        setDownloadButtonData(soVar4, cYVar, i10);
    }

    private void initSingleCardInTwoCardStyle(com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn, cY cYVar, int i10) {
        int i11;
        Context context = getContext();
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn2 = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        pfn2.setOrientation(1);
        pfn2.setGravity(1);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        if (i10 > 0) {
            i11 = cdg.ZYk(context, 12.0f);
        } else {
            i11 = 0;
        }
        layoutParams.setMargins(0, i11, 0, 0);
        pfn2.setBackground(new oJ(context));
        pfn.addView(pfn2, layoutParams);
        si siVar = new si(context);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(cdg.ZYk(context, 70.0f), cdg.ZYk(context, 63.0f));
        layoutParams2.setMargins(0, cdg.ZYk(context, 24.0f), 0, cdg.ZYk(context, 12.0f));
        pfn2.addView(siVar, layoutParams2);
        bindIconData(siVar, cYVar);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        soVar.setSingleLine(true);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        soVar.setEllipsize(truncateAt);
        soVar.setTextSize(18.0f);
        soVar.setTextColor(Color.parseColor("#161823"));
        soVar.setGravity(17);
        soVar.setTypeface(null, 1);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams3.setMargins(cdg.ZYk(context, 56.0f), 0, cdg.ZYk(context, 56.0f), 0);
        pfn2.addView(soVar, layoutParams3);
        bindTitleData(soVar, cYVar, cYVar.Qzd());
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar2 = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        soVar2.setSingleLine(true);
        soVar2.setEllipsize(truncateAt);
        soVar2.setTextSize(16.0f);
        soVar2.setTextColor(Color.parseColor("#80161823"));
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams4.setMargins(cdg.ZYk(context, 56.0f), cdg.ZYk(context, 4.0f), cdg.ZYk(context, 56.0f), 0);
        pfn2.addView(soVar2, layoutParams4);
        bindDescData(soVar2, cYVar);
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn3 = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        pfn3.setOrientation(0);
        pfn3.setGravity(16);
        pfn2.addView(pfn3, new FrameLayout.LayoutParams(-2, -2));
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar3 = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        soVar3.setTextSize(16.0f);
        soVar3.setTextColor(Color.parseColor("#80161823"));
        pfn3.addView(soVar3, new ViewGroup.LayoutParams(-2, -2));
        eZI ezi = new eZI(context);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams5.leftMargin = cdg.ZYk(context, 8.0f);
        pfn3.addView(ezi, layoutParams5);
        cdg.oJ(soVar3, ezi, cYVar, 18);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar4 = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        soVar4.setGravity(17);
        soVar4.setId(520093707);
        soVar4.setText(com.bytedance.sdk.component.utils.cY.oJ(context, "tt_video_download_apk"));
        soVar4.setTextColor(-1);
        soVar4.setTextSize(2, 16.0f);
        soVar4.setBackground(com.bytedance.sdk.openadsdk.utils.dLZ.oJ(context, "tt_reward_full_video_backup_btn_bg"));
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-1, cdg.ZYk(context, 36.0f));
        layoutParams6.setMargins(cdg.ZYk(context, 20.0f), cdg.ZYk(context, 36.0f), cdg.ZYk(context, 20.0f), cdg.ZYk(context, 20.0f));
        pfn2.addView(soVar4, layoutParams6);
        setDownloadButtonData(soVar4, cYVar, i10);
    }

    private void initSingleCardInTwoCardStyleLandscape(com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn, cY cYVar, int i10, int i11) {
        Context context = getContext();
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn2 = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        pfn2.setOrientation(1);
        pfn2.setGravity(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
        layoutParams.weight = 1.0f;
        if (i10 > 0) {
            layoutParams.setMargins(cdg.ZYk(context, 12.0f), 0, 0, 0);
        }
        pfn2.setBackground(new oJ(context));
        pfn.addView(pfn2, layoutParams);
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn3 = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        pfn3.setOrientation(0);
        pfn3.setGravity(48);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.topMargin = cdg.ZYk(context, 20.0f);
        layoutParams2.leftMargin = cdg.ZYk(context, 17.0f);
        layoutParams2.rightMargin = cdg.ZYk(context, 30.0f);
        pfn2.addView(pfn3, layoutParams2);
        si siVar = new si(context);
        pfn3.addView(siVar, new FrameLayout.LayoutParams(cdg.ZYk(context, 44.0f), cdg.ZYk(context, 44.0f)));
        bindIconData(siVar, cYVar);
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn4 = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        pfn4.setOrientation(1);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams3.leftMargin = cdg.ZYk(context, 7.0f);
        pfn3.addView(pfn4, layoutParams3);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        soVar.setSingleLine(true);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        soVar.setEllipsize(truncateAt);
        soVar.setTextSize(18.0f);
        soVar.setTextColor(Color.parseColor("#161823"));
        soVar.setGravity(GravityCompat.START);
        soVar.setTypeface(null, 1);
        pfn4.addView(soVar, new FrameLayout.LayoutParams(-1, -2));
        bindTitleData(soVar, cYVar, cYVar.Qzd());
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn5 = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        pfn5.setOrientation(0);
        pfn5.setGravity(16);
        pfn4.addView(pfn5, new FrameLayout.LayoutParams(-2, -2));
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar2 = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        soVar2.setTextSize(16.0f);
        soVar2.setTextColor(Color.parseColor("#80161823"));
        pfn5.addView(soVar2, new ViewGroup.LayoutParams(-2, -2));
        eZI ezi = new eZI(context);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams4.leftMargin = cdg.ZYk(context, 8.0f);
        pfn5.addView(ezi, layoutParams4);
        cdg.oJ(soVar2, ezi, cYVar, 18);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar3 = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        if (i11 == 2) {
            soVar3.setSingleLine(true);
        } else {
            soVar3.setLines(2);
        }
        soVar3.setEllipsize(truncateAt);
        soVar3.setTextSize(16.0f);
        soVar3.setTextColor(Color.parseColor("#80161823"));
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
        int i12 = layoutParams2.leftMargin;
        layoutParams5.rightMargin = i12;
        layoutParams5.leftMargin = i12;
        layoutParams5.topMargin = cdg.ZYk(context, 12.0f);
        pfn2.addView(soVar3, layoutParams5);
        bindDescData(soVar3, cYVar);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar4 = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        soVar4.setGravity(17);
        soVar4.setId(520093707);
        soVar4.setText(com.bytedance.sdk.component.utils.cY.oJ(context, "tt_video_download_apk"));
        soVar4.setTextColor(-1);
        soVar4.setTextSize(2, 16.0f);
        soVar4.setBackground(com.bytedance.sdk.openadsdk.utils.dLZ.oJ(context, "tt_reward_full_video_backup_btn_bg"));
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-1, cdg.ZYk(context, 36.0f));
        layoutParams6.setMargins(cdg.ZYk(context, 20.0f), cdg.ZYk(context, 22.0f), cdg.ZYk(context, 20.0f), cdg.ZYk(context, 20.0f));
        pfn2.addView(soVar4, layoutParams6);
        setDownloadButtonData(soVar4, cYVar, i10);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void initViews() {
        com.bytedance.sdk.openadsdk.activity.so soVar;
        if (this.mInit) {
            return;
        }
        this.mInit = true;
        if (this.adContext.ZYk.wd() && (soVar = this.adContext.oCU) != null && soVar.ofl() && this.shownAdCount > 1) {
            initOneSlotMultipleAdsLayout();
            return;
        }
        cY cYVar = this.adContext.ZYk;
        if (cYVar.Br()) {
            initViewsForVast();
            return;
        }
        initViewsDefault();
        initData(cYVar, this.tvDownload);
    }

    private void initViewsDefault() {
        boolean z10;
        FrameLayout.LayoutParams layoutParams;
        Context context = getContext();
        if (this.adContext.ZYk.Tt() == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        pfn.setGravity(1);
        pfn.setOrientation(1);
        if (z10) {
            layoutParams = new FrameLayout.LayoutParams(-1, -2);
        } else {
            layoutParams = new FrameLayout.LayoutParams(cdg.ZYk(context, 327.0f), -2);
        }
        layoutParams.gravity = 17;
        int ZYk = cdg.ZYk(context, 24.0f);
        layoutParams.rightMargin = ZYk;
        layoutParams.leftMargin = ZYk;
        addView(pfn, layoutParams);
        si siVar = new si(context);
        this.ivIcon = siVar;
        siVar.setBackgroundColor(0);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(cdg.ZYk(context, 80.0f), cdg.ZYk(context, 80.0f));
        layoutParams2.bottomMargin = cdg.ZYk(context, 12.0f);
        pfn.addView(this.ivIcon, layoutParams2);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        this.tvTitle = soVar;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        soVar.setEllipsize(truncateAt);
        this.tvTitle.setGravity(17);
        this.tvTitle.setMaxLines(2);
        this.tvTitle.setMaxWidth(cdg.ZYk(context, 180.0f));
        this.tvTitle.setTextColor(-1);
        this.tvTitle.setTextSize(2, 24.0f);
        pfn.addView(this.tvTitle, new LinearLayout.LayoutParams(-1, -2));
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar2 = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        this.tvDesc = soVar2;
        soVar2.setEllipsize(truncateAt);
        this.tvDesc.setGravity(17);
        this.tvDesc.setMaxLines(2);
        this.tvDesc.setTextColor(Color.parseColor("#BFFFFFFF"));
        this.tvDesc.setTextSize(2, 16.0f);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams3.topMargin = cdg.ZYk(context, 8.0f);
        pfn.addView(this.tvDesc, layoutParams3);
        this.rbScore = new eZI(context, true);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, cdg.ZYk(context, 16.0f));
        layoutParams4.topMargin = cdg.ZYk(context, 12.0f);
        this.rbScore.setVisibility(8);
        pfn.addView(this.rbScore, layoutParams4);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar3 = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        this.tvDownload = soVar3;
        soVar3.setId(520093707);
        this.tvDownload.setGravity(17);
        this.tvDownload.setText(com.bytedance.sdk.component.utils.cY.oJ(context, "tt_video_download_apk"));
        this.tvDownload.setTextColor(-1);
        this.tvDownload.setTextSize(2, 16.0f);
        this.tvDownload.setBackground(com.bytedance.sdk.openadsdk.utils.dLZ.oJ(context, "tt_reward_full_video_backup_btn_bg"));
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, cdg.ZYk(context, 44.0f));
        layoutParams5.topMargin = cdg.ZYk(context, 54.0f);
        pfn.addView(this.tvDownload, layoutParams5);
        this.adLogo = PAGLogoView.createPAGLogoViewByMaterial(context, this.adContext.ZYk);
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-2, cdg.ZYk(context, 14.0f));
        layoutParams6.gravity = 8388691;
        layoutParams6.leftMargin = cdg.ZYk(context, 18.0f);
        if (z10) {
            layoutParams6.bottomMargin = cdg.ZYk(context, 61.0f);
        } else {
            layoutParams6.bottomMargin = cdg.ZYk(context, 24.0f);
        }
        addView(this.adLogo, layoutParams6);
    }

    private void initViewsForVast() {
        Context context = getContext();
        setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar = new com.bytedance.sdk.openadsdk.core.Pfn.ex(context);
        exVar.setId(com.bytedance.sdk.openadsdk.utils.eZI.f13418so);
        exVar.setVisibility(8);
        addView(exVar, new FrameLayout.LayoutParams(-1, -1));
        View baVar = new com.bytedance.sdk.component.jFA.ba(context, true);
        baVar.setVisibility(8);
        baVar.setId(com.bytedance.sdk.openadsdk.utils.eZI.jFA);
        addView(baVar, new FrameLayout.LayoutParams(-1, -1));
    }

    private void setDownloadButtonData(com.bytedance.sdk.openadsdk.core.Pfn.so soVar, cY cYVar, int i10) {
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar = this.adContext;
        com.bytedance.sdk.openadsdk.core.ZYk.Pfn oJ2 = oJVar.IUZ.oJ(oJVar, cYVar);
        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar2 = this.adContext;
        oJ2.oJ(com.bytedance.sdk.openadsdk.RZ.oJ.oJ.cFZ.oJ(oJVar2.HyG, oJVar2.Pfn));
        if (i10 != -1) {
            HashMap hashMap = new HashMap();
            int i11 = i10 + 1;
            hashMap.put("ad_show_order", Integer.valueOf(i11));
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("ad_show_order", i11);
                hashMap.put("pag_json_data", jSONObject.toString());
            } catch (Throwable unused) {
            }
            oJ2.oJ(hashMap);
        }
        soVar.setOnClickListener(oJ2);
        soVar.setOnTouchListener(oJ2);
        CharSequence ypD = cYVar.ypD();
        if (!TextUtils.isEmpty(ypD)) {
            soVar.setText(ypD);
        }
    }

    public void init(com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar) {
        this.adContext = oJVar;
        if (oJVar.ZYk.Br()) {
            initViews();
        }
    }

    public void setShownAdCount(int i10) {
        this.shownAdCount = i10;
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        if (i10 == 0) {
            initViews();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class oJ extends Drawable {
        private final Drawable ZYk;
        Path oJ = new Path();
        private final int tB;

        public oJ(Context context) {
            this.ZYk = com.bytedance.sdk.component.utils.cY.tB(context, "tt_ad_bg_header_gradient");
            this.tB = cdg.ZYk(context, 8.0f);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(@NonNull Canvas canvas) {
            canvas.clipPath(this.oJ);
            canvas.drawColor(-1);
            this.ZYk.draw(canvas);
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        public void setBounds(int i10, int i11, int i12, int i13) {
            super.setBounds(i10, i11, i12, i13);
            float f10 = i12;
            this.ZYk.setBounds(i10, i11, i12, (int) (((1.0f * f10) / this.ZYk.getIntrinsicWidth()) * this.ZYk.getIntrinsicHeight()));
            this.oJ.reset();
            Path path = this.oJ;
            RectF rectF = new RectF(0.0f, 0.0f, f10, i13);
            int i14 = this.tB;
            path.addRoundRect(rectF, i14, i14, Path.Direction.CCW);
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i10) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(@Nullable ColorFilter colorFilter) {
        }
    }
}
