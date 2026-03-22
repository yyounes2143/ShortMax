package com.bytedance.sdk.openadsdk.component.reward.top;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.cY;
import com.bytedance.sdk.openadsdk.core.Pfn.Pfn;
import com.bytedance.sdk.openadsdk.core.Pfn.ex;
import com.bytedance.sdk.openadsdk.core.Pfn.so;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.QSm;
import com.bytedance.sdk.openadsdk.core.settings.PiB;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.core.widget.ba;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.dLZ;
import com.bytedance.sdk.openadsdk.utils.eZI;
/* loaded from: classes3.dex */
public class TopLayoutDislike2 extends Pfn implements oJ<TopLayoutDislike2> {
    private boolean hasCutDown;
    private boolean hasShowClose;
    private boolean isVast;
    private ex mCloseBtn;
    private View mImgDislike;
    private ImageView mImgSound;
    private boolean mIsSoundMute;
    private TextView mNextAdTextTv;
    private Pfn mPlayableNextAd;
    private CharSequence mProgressStr;
    private ImageView mSkipIV;
    private TextView mTextViewCountDown;
    private ZYk mTopListener;
    private boolean shouldShowSkipTime;
    private int skipTime;
    private int videoDuration;

    public TopLayoutDislike2(@NonNull Context context) {
        this(context, null);
    }

    private ImageView getCommonRingBGImageView() {
        ex exVar = new ex(getContext());
        int ZYk = cdg.ZYk(getContext(), 5.0f);
        exVar.setPadding(ZYk, ZYk, ZYk, ZYk);
        exVar.setScaleType(ImageView.ScaleType.CENTER);
        exVar.setBackground(com.bytedance.sdk.openadsdk.core.widget.ex.oJ());
        return exVar;
    }

    private void initListener() {
        View view = this.mImgDislike;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.top.TopLayoutDislike2.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (TopLayoutDislike2.this.mTopListener != null) {
                        TopLayoutDislike2.this.mTopListener.ZYk(view2);
                    }
                }
            });
        }
        ImageView imageView = this.mImgSound;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.top.TopLayoutDislike2.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    Drawable oJ;
                    String str;
                    TopLayoutDislike2 topLayoutDislike2 = TopLayoutDislike2.this;
                    topLayoutDislike2.mIsSoundMute = !topLayoutDislike2.mIsSoundMute;
                    if (TopLayoutDislike2.this.mSkipIV != null) {
                        if (TopLayoutDislike2.this.mIsSoundMute) {
                            oJ = cY.tB(TopLayoutDislike2.this.getContext(), "tt_reward_full_mute");
                        } else {
                            oJ = cY.tB(TopLayoutDislike2.this.getContext(), "tt_reward_full_unmute");
                        }
                    } else if (TopLayoutDislike2.this.mIsSoundMute) {
                        oJ = dLZ.oJ(TopLayoutDislike2.this.getContext(), "tt_mute_wrapper");
                    } else {
                        oJ = dLZ.oJ(TopLayoutDislike2.this.getContext(), "tt_unmute_wrapper");
                    }
                    TopLayoutDislike2.this.mImgSound.setImageDrawable(oJ);
                    if (TopLayoutDislike2.this.mImgSound.getDrawable() != null) {
                        TopLayoutDislike2.this.mImgSound.getDrawable().setAutoMirrored(true);
                    }
                    if (TopLayoutDislike2.this.mTopListener != null) {
                        Object tag = TopLayoutDislike2.this.mImgSound.getTag(TopLayoutDislike2.this.mImgSound.getId());
                        if (tag instanceof String) {
                            str = tag.toString();
                        } else {
                            str = "nativeClick";
                        }
                        TopLayoutDislike2.this.mTopListener.oJ(view2, str);
                    }
                    TopLayoutDislike2.this.mImgSound.setTag(TopLayoutDislike2.this.mImgSound.getId(), null);
                }
            });
        }
        ImageView imageView2 = this.mSkipIV;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.top.TopLayoutDislike2.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (TopLayoutDislike2.this.mTopListener != null) {
                        TopLayoutDislike2.this.mTopListener.oJ(view2);
                    }
                }
            });
        } else {
            TextView textView = this.mTextViewCountDown;
            if (textView != null) {
                textView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.top.TopLayoutDislike2.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (TopLayoutDislike2.this.mTopListener != null) {
                            TopLayoutDislike2.this.mTopListener.oJ(view2);
                        }
                    }
                });
            }
        }
        ex exVar = this.mCloseBtn;
        if (exVar != null) {
            exVar.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.top.TopLayoutDislike2.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (TopLayoutDislike2.this.mTopListener != null) {
                        TopLayoutDislike2.this.mTopListener.tB(view2);
                    }
                }
            });
        }
        Pfn pfn = this.mPlayableNextAd;
        if (pfn != null) {
            pfn.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.top.TopLayoutDislike2.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (TopLayoutDislike2.this.mTopListener != null) {
                        TopLayoutDislike2.this.mTopListener.ex(view2);
                    }
                }
            });
        }
    }

    private void initView(com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        int ZYk = cdg.ZYk(getContext(), 16.0f);
        int ZYk2 = cdg.ZYk(getContext(), 20.0f);
        int ZYk3 = cdg.ZYk(getContext(), 28.0f);
        this.mImgSound = getCommonRingBGImageView();
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(ZYk3, ZYk3);
        layoutParams.leftMargin = ZYk;
        layoutParams.topMargin = ZYk2;
        this.mImgSound.setId(eZI.wLv);
        this.mImgSound.setLayoutParams(layoutParams);
        ImageView commonRingBGImageView = getCommonRingBGImageView();
        this.mImgDislike = commonRingBGImageView;
        commonRingBGImageView.setId(520093713);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(ZYk3, ZYk3);
        layoutParams2.topMargin = ZYk2;
        layoutParams2.leftMargin = ZYk;
        this.mImgDislike.setLayoutParams(layoutParams2);
        View view = new View(getContext());
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, 0);
        layoutParams3.weight = 1.0f;
        view.setLayoutParams(layoutParams3);
        so soVar = new so(getContext());
        this.mTextViewCountDown = soVar;
        soVar.setBackground(com.bytedance.sdk.openadsdk.core.widget.ex.ZYk());
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, cdg.ZYk(getContext(), 28.0f));
        layoutParams4.topMargin = cdg.ZYk(getContext(), 20.0f);
        int ZYk4 = cdg.ZYk(getContext(), 16.0f);
        layoutParams2.rightMargin = ZYk4;
        layoutParams4.rightMargin = ZYk4;
        int ZYk5 = cdg.ZYk(getContext(), 12.0f);
        cdg.ZYk(getContext(), 5.0f);
        this.mTextViewCountDown.setPadding(ZYk5, 0, ZYk5, 0);
        this.mTextViewCountDown.setLayoutParams(layoutParams4);
        this.mTextViewCountDown.setGravity(17);
        this.mTextViewCountDown.setTextColor(-1);
        this.mTextViewCountDown.setTextSize(14.0f);
        this.mTextViewCountDown.setVisibility(8);
        Pfn pfn = new Pfn(getContext());
        this.mPlayableNextAd = pfn;
        pfn.setOrientation(0);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-2, ZYk3);
        layoutParams5.topMargin = cdg.ZYk(getContext(), 20.0f);
        layoutParams5.rightMargin = cdg.ZYk(getContext(), 16.0f);
        this.mPlayableNextAd.setLayoutParams(layoutParams5);
        this.mPlayableNextAd.setBackground(com.bytedance.sdk.openadsdk.core.widget.ex.ZYk());
        this.mPlayableNextAd.setVisibility(8);
        this.mNextAdTextTv = new so(getContext());
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-2, cdg.ZYk(getContext(), 28.0f));
        layoutParams6.gravity = 16;
        this.mNextAdTextTv.setLayoutParams(layoutParams6);
        this.mNextAdTextTv.setPadding(ZYk5, 0, 0, 0);
        String jr2 = Ln.jr(cYVar);
        if (!TextUtils.isEmpty(jr2)) {
            this.mNextAdTextTv.setText(jr2);
        } else {
            this.mNextAdTextTv.setText(cY.ZYk(getContext(), "tt_multiple_playable_next_ad_tips"));
        }
        this.mNextAdTextTv.setGravity(17);
        this.mNextAdTextTv.setTextColor(-1);
        this.mNextAdTextTv.setTextSize(14.0f);
        ex exVar = new ex(getContext());
        LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(ZYk5, ZYk5);
        layoutParams7.rightMargin = ZYk5;
        exVar.setScaleType(ImageView.ScaleType.CENTER);
        layoutParams7.gravity = 16;
        exVar.setLayoutParams(layoutParams7);
        exVar.setImageResource(cY.ex(si.oJ(), "tt_ad_arrow_right"));
        this.mPlayableNextAd.addView(this.mNextAdTextTv);
        this.mPlayableNextAd.addView(exVar);
        ImageView commonRingBGImageView2 = getCommonRingBGImageView();
        this.mSkipIV = commonRingBGImageView2;
        commonRingBGImageView2.setId(520093714);
        LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(ZYk3, ZYk3);
        layoutParams8.topMargin = ZYk2;
        layoutParams8.rightMargin = ZYk;
        this.mSkipIV.setLayoutParams(layoutParams8);
        this.mSkipIV.setScaleType(ImageView.ScaleType.CENTER_CROP);
        ex ZYk6 = ba.ZYk(getContext());
        this.mCloseBtn = ZYk6;
        ZYk6.setId(520093708);
        FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams9.gravity = 8388661;
        layoutParams9.topMargin = cdg.ZYk(getContext(), 20.0f);
        layoutParams9.rightMargin = cdg.ZYk(getContext(), 24.0f);
        this.mCloseBtn.setLayoutParams(layoutParams9);
        this.mCloseBtn.setContentDescription(cY.oJ(getContext(), "tt_ad_close_text"));
        this.mCloseBtn.setVisibility(8);
        addView(this.mImgSound);
        addView(this.mImgDislike);
        addView(view);
        addView(this.mTextViewCountDown);
        addView(this.mPlayableNextAd);
        addView(this.mSkipIV);
        addView(this.mCloseBtn);
    }

    private void updateTime(boolean z10) {
        if (this.hasShowClose) {
            return;
        }
        if (this.shouldShowSkipTime) {
            this.mSkipIV.setVisibility(8);
            this.mTextViewCountDown.setVisibility(0);
        } else if (z10) {
            this.mTextViewCountDown.setVisibility(0);
            this.mSkipIV.setVisibility(8);
        } else {
            this.mTextViewCountDown.setVisibility(8);
            this.mSkipIV.setVisibility(0);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void clickSkip() {
        ImageView imageView = this.mSkipIV;
        if (imageView != null) {
            imageView.performClick();
        }
        TextView textView = this.mTextViewCountDown;
        if (textView != null) {
            textView.performClick();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void clickSound(String str) {
        ImageView imageView = this.mImgSound;
        if (imageView != null) {
            imageView.setTag(imageView.getId(), str);
            this.mImgSound.performClick();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public View getCloseButton() {
        return this.mCloseBtn;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void setListener(ZYk zYk) {
        this.mTopListener = zYk;
    }

    public void setShouldShowSkipTime(boolean z10) {
        this.shouldShowSkipTime = z10;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void setShowDislike(boolean z10) {
        int i10;
        View view = this.mImgDislike;
        if (view != null && !this.isVast) {
            if (z10) {
                i10 = 0;
            } else {
                i10 = 8;
            }
            view.setVisibility(i10);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void setShowEndCardNextAd(boolean z10, com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        int i10;
        Pfn pfn = this.mPlayableNextAd;
        if (pfn != null) {
            if (z10) {
                i10 = 0;
            } else {
                i10 = 8;
            }
            pfn.setVisibility(i10);
            if (this.mNextAdTextTv != null && z10 && cYVar != null && cYVar.na() != null) {
                String ZYk = cYVar.na().ZYk();
                if (!TextUtils.isEmpty(ZYk)) {
                    this.mNextAdTextTv.setText(ZYk);
                }
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void setShowPlayableNextAd(boolean z10, com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        int i10;
        Pfn pfn = this.mPlayableNextAd;
        if (pfn != null) {
            if (z10) {
                i10 = 0;
            } else {
                i10 = 8;
            }
            pfn.setVisibility(i10);
            if (this.mNextAdTextTv != null && z10) {
                String jr2 = Ln.jr(cYVar);
                if (!TextUtils.isEmpty(jr2)) {
                    this.mNextAdTextTv.setText(jr2);
                    return;
                }
                this.mNextAdTextTv.setText(cY.ZYk(getContext(), "tt_multiple_playable_next_ad_tips"));
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void setShowSkip(boolean z10) {
        int i10;
        TextView textView = this.mTextViewCountDown;
        if (textView == null) {
            return;
        }
        if (!z10) {
            textView.setText("");
        }
        if (this.mSkipIV.getVisibility() == 4) {
            return;
        }
        this.hasShowClose = !z10;
        ImageView imageView = this.mSkipIV;
        int i11 = 8;
        if (z10 && this.hasCutDown) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        imageView.setVisibility(i10);
        boolean z11 = z10 & (!TextUtils.isEmpty(this.mTextViewCountDown.getText()));
        TextView textView2 = this.mTextViewCountDown;
        if (z11) {
            i11 = 0;
        }
        textView2.setVisibility(i11);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void setShowSound(boolean z10) {
        int i10;
        ImageView imageView = this.mImgSound;
        if (imageView != null) {
            if (z10) {
                i10 = 0;
            } else {
                i10 = 8;
            }
            imageView.setVisibility(i10);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void setSkipEnable(boolean z10) {
        ImageView imageView = this.mSkipIV;
        if (imageView != null) {
            imageView.setEnabled(z10);
            this.mSkipIV.setClickable(z10);
            return;
        }
        TextView textView = this.mTextViewCountDown;
        if (textView != null) {
            textView.setEnabled(z10);
            this.mTextViewCountDown.setClickable(z10);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void setSkipInvisiable() {
        this.mTextViewCountDown.setWidth(20);
        this.mTextViewCountDown.setVisibility(4);
        this.mSkipIV.setVisibility(4);
        this.hasShowClose = true;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void setSkipText(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            this.mTextViewCountDown.setVisibility(8);
            return;
        }
        this.mTextViewCountDown.setText(charSequence);
        if (this.mTextViewCountDown.getVisibility() != 0) {
            this.mTextViewCountDown.setVisibility(0);
        }
        ImageView imageView = this.mSkipIV;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void setSoundMute(boolean z10) {
        Drawable oJ;
        this.mIsSoundMute = z10;
        if (this.mSkipIV != null) {
            if (z10) {
                oJ = cY.tB(getContext(), "tt_reward_full_mute");
            } else {
                oJ = cY.tB(getContext(), "tt_reward_full_unmute");
            }
        } else if (z10) {
            oJ = dLZ.oJ(getContext(), "tt_mute_wrapper");
        } else {
            oJ = dLZ.oJ(getContext(), "tt_unmute_wrapper");
        }
        this.mImgSound.setImageDrawable(oJ);
        if (this.mImgSound.getDrawable() != null) {
            this.mImgSound.getDrawable().setAutoMirrored(true);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    @SuppressLint({"SetTextI18n"})
    public void setTime(CharSequence charSequence, CharSequence charSequence2) {
        int parseInt;
        if (!TextUtils.isEmpty(charSequence)) {
            this.mProgressStr = charSequence;
        }
        if (this.mSkipIV == null) {
            return;
        }
        this.hasCutDown = true;
        if (this.shouldShowSkipTime) {
            TextView textView = this.mTextViewCountDown;
            textView.setText(((Object) this.mProgressStr) + "s");
            updateTime(false);
            return;
        }
        String str = (String) this.mProgressStr;
        try {
            int i10 = this.skipTime;
            if (i10 == 0) {
                parseInt = Integer.parseInt(str);
            } else {
                parseInt = i10 - (this.videoDuration - Integer.parseInt(str));
            }
            if (parseInt > 0) {
                if (this.skipTime == 0) {
                    updateTime(false);
                    return;
                }
                TextView textView2 = this.mTextViewCountDown;
                textView2.setText(parseInt + "s");
                updateTime(true);
                return;
            }
            TextView textView3 = this.mTextViewCountDown;
            textView3.setText(((Object) this.mProgressStr) + "s");
            updateTime(false);
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void showCloseButton() {
        setSkipInvisiable();
        this.mSkipIV.setVisibility(8);
        this.mCloseBtn.setVisibility(0);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void showCountDownText() {
        this.mTextViewCountDown.setVisibility(0);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.oJ
    public void showSkipButton() {
        ImageView imageView = this.mSkipIV;
        if (imageView != null) {
            imageView.setVisibility(0);
        }
        this.mTextViewCountDown.setVisibility(8);
    }

    public TopLayoutDislike2(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TopLayoutDislike2 load(@NonNull com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        initView(cYVar);
        this.mImgDislike.setVisibility(0);
        ((ImageView) this.mImgDislike).setImageResource(cY.ex(si.oJ(), "tt_reward_full_feedback"));
        if (PiB.ib().PiB(String.valueOf(cYVar.uv())) && cYVar.LS() != 5 && cYVar.LS() != 6) {
            this.mSkipIV.setImageResource(cY.ex(si.oJ(), "tt_skip_btn"));
        } else {
            this.mSkipIV.setImageResource(cY.ex(si.oJ(), "tt_close_btn"));
        }
        if (this.mSkipIV.getDrawable() != null) {
            this.mSkipIV.getDrawable().setAutoMirrored(true);
        }
        this.mSkipIV.setVisibility(8);
        this.videoDuration = cYVar.ib() == null ? 0 : ((int) cYVar.ib().ba()) * cYVar.ib().Id();
        if (QSm.ex(cYVar) && cYVar.RZ() != null) {
            this.videoDuration = (int) cYVar.RZ().ZYk();
        } else if (QSm.Pfn(cYVar) && cYVar.RZ() != null) {
            this.videoDuration = (int) cYVar.RZ().ex();
        }
        if (this.videoDuration <= 0) {
            this.videoDuration = 10;
        }
        if (cYVar.qnr() == 8 && cYVar.BHY() != null) {
            this.skipTime = cYVar.HUl();
        } else {
            this.skipTime = cYVar.xwf();
        }
        if (Ln.tB(cYVar)) {
            this.skipTime = si.ex().oJ(String.valueOf(cYVar.uv()), cYVar.kO());
            this.videoDuration = cYVar.zUb();
        }
        int i10 = this.skipTime;
        this.shouldShowSkipTime = i10 == -1 || i10 >= this.videoDuration;
        if (cYVar.Br()) {
            this.mImgDislike.setVisibility(8);
            this.isVast = true;
        }
        this.mTextViewCountDown.setVisibility(4);
        this.mTextViewCountDown.setText("");
        this.mTextViewCountDown.setEnabled(false);
        this.mTextViewCountDown.setClickable(false);
        initListener();
        return this;
    }

    public TopLayoutDislike2(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mProgressStr = "";
        setOrientation(0);
    }

    public void clickDislike() {
    }
}
