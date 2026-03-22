package com.bytedance.sdk.openadsdk.common;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.view.GravityCompat;
import com.bytedance.sdk.component.utils.cY;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class TTAdDislikeToast extends com.bytedance.sdk.openadsdk.core.Pfn.tB {
    private static String sDislikeSendTip;
    private static String sDislikeTip;
    private static String sSkipText;
    private final Handler mHandler;
    private TextView mTextView;

    public TTAdDislikeToast(Context context) {
        this(context, null);
    }

    public static String getDislikeSendTip() {
        if (sDislikeSendTip == null) {
            Context oJ = com.bytedance.sdk.openadsdk.core.si.oJ();
            sDislikeSendTip = cY.oJ(oJ, "tt_feedback_thank_text") + "\n" + cY.oJ(oJ, "tt_feedback_experience_text");
        }
        return sDislikeSendTip;
    }

    public static String getDislikeTip() {
        if (sDislikeTip == null) {
            sDislikeTip = cY.oJ(com.bytedance.sdk.openadsdk.core.si.oJ(), "tt_feedback_submit_text");
        }
        return sDislikeTip;
    }

    public static String getSkipText() {
        if (sSkipText == null) {
            sSkipText = cY.oJ(com.bytedance.sdk.openadsdk.core.si.oJ(), "tt_reward_screen_skip_tx");
        }
        return sSkipText;
    }

    private void initToast(Context context) {
        TextView textView = new TextView(context);
        this.mTextView = textView;
        textView.setClickable(false);
        this.mTextView.setFocusable(false);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 49;
        layoutParams.topMargin = cdg.ZYk(getContext(), 75.0f);
        int ZYk = cdg.ZYk(com.bytedance.sdk.openadsdk.core.si.oJ(), 16.0f);
        int ZYk2 = cdg.ZYk(com.bytedance.sdk.openadsdk.core.si.oJ(), 12.0f);
        this.mTextView.setPadding(ZYk, ZYk2, ZYk, ZYk2);
        this.mTextView.setLayoutParams(layoutParams);
        this.mTextView.setTextColor(-1);
        this.mTextView.setTextSize(16.0f);
        this.mTextView.setGravity(GravityCompat.START);
        Drawable tB = cY.tB(getContext(), "tt_dislike_toast");
        int ZYk3 = cdg.ZYk(getContext(), 16.0f);
        tB.setBounds(0, 0, ZYk3, ZYk3);
        this.mTextView.setCompoundDrawablePadding(ZYk3 / 2);
        this.mTextView.setCompoundDrawables(tB, null, null, null);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(Color.argb(209, 37, 37, 37));
        gradientDrawable.setCornerRadius(cdg.ZYk(com.bytedance.sdk.openadsdk.core.si.oJ(), 12.0f));
        this.mTextView.setBackground(gradientDrawable);
        addView(this.mTextView);
    }

    public static void onResourceUpdated() {
        Context oJ = com.bytedance.sdk.openadsdk.core.si.oJ();
        sSkipText = cY.oJ(oJ, "tt_reward_screen_skip_tx");
        sDislikeTip = cY.oJ(oJ, "tt_feedback_submit_text");
        sDislikeSendTip = cY.oJ(oJ, "tt_feedback_thank_text") + "\n" + cY.oJ(oJ, "tt_feedback_experience_text");
    }

    public void hide() {
        setVisibility(8);
        this.mHandler.removeCallbacksAndMessages(null);
    }

    public void onDestroy() {
        setVisibility(8);
        this.mHandler.removeCallbacksAndMessages(null);
    }

    public void show(final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.mHandler.removeCallbacksAndMessages(null);
        this.mHandler.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.common.TTAdDislikeToast.1
            @Override // java.lang.Runnable
            public void run() {
                if (TTAdDislikeToast.this.mTextView != null) {
                    TTAdDislikeToast.this.mTextView.setText(String.valueOf(str));
                }
                TTAdDislikeToast.this.setVisibility(0);
            }
        });
        this.mHandler.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.common.TTAdDislikeToast.2
            @Override // java.lang.Runnable
            public void run() {
                TTAdDislikeToast.this.setVisibility(8);
            }
        }, 2000L);
    }

    public TTAdDislikeToast(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TTAdDislikeToast(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mHandler = new Handler(Looper.getMainLooper());
        setVisibility(8);
        setClickable(false);
        setFocusable(false);
        initToast(context);
    }
}
