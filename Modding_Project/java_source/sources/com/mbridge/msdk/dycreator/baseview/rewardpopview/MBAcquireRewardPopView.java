package com.mbridge.msdk.dycreator.baseview.rewardpopview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.view.GravityCompat;
import com.mbridge.msdk.dycreator.baseview.rewardpopview.MBGradientAndShadowTextView;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
/* loaded from: classes5.dex */
public class MBAcquireRewardPopView extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private final String f26371a;

    /* renamed from: b  reason: collision with root package name */
    private AcquireRewardPopViewParameters f26372b;

    /* renamed from: c  reason: collision with root package name */
    private AnimationSet f26373c;

    /* renamed from: d  reason: collision with root package name */
    private float f26374d;

    /* renamed from: e  reason: collision with root package name */
    private float f26375e;

    /* renamed from: f  reason: collision with root package name */
    private float f26376f;

    /* renamed from: g  reason: collision with root package name */
    private float f26377g;

    /* renamed from: h  reason: collision with root package name */
    private int f26378h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f26379i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f26380j;

    /* renamed from: k  reason: collision with root package name */
    private TextView f26381k;

    /* renamed from: l  reason: collision with root package name */
    private final View.OnClickListener f26382l;

    /* renamed from: m  reason: collision with root package name */
    private Runnable f26383m;

    /* renamed from: n  reason: collision with root package name */
    private Runnable f26384n;

    /* renamed from: o  reason: collision with root package name */
    private View.OnTouchListener f26385o;

    /* renamed from: p  reason: collision with root package name */
    private final View.OnClickListener f26386p;

    /* renamed from: q  reason: collision with root package name */
    private final View.OnClickListener f26387q;

    public MBAcquireRewardPopView(Context context) {
        super(context);
        this.f26371a = "MBAcquireRewardPopView";
        this.f26374d = 0.0f;
        this.f26375e = 0.0f;
        this.f26376f = 0.0f;
        this.f26377g = 0.0f;
        this.f26382l = new View.OnClickListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MBAcquireRewardPopView mBAcquireRewardPopView = MBAcquireRewardPopView.this;
                mBAcquireRewardPopView.removeCallbacks(mBAcquireRewardPopView.f26383m);
                String str = (String) view.getTag();
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                boolean contains = MBAcquireRewardPopView.this.f26372b.rightAnswerList.contains(str);
                View rightAnswerView = contains ? MBAcquireRewardPopView.this.getRightAnswerView() : MBAcquireRewardPopView.this.getWrongAnswerView();
                View childAt = MBAcquireRewardPopView.this.getChildAt(0);
                if (childAt != null) {
                    MBAcquireRewardPopView.this.a(childAt, rightAnswerView);
                }
                if (MBAcquireRewardPopView.this.f26372b.behaviourListener != null) {
                    if (contains) {
                        MBAcquireRewardPopView.this.f26372b.behaviourListener.onReceivedSuccess(MBAcquireRewardPopView.this.f26372b.reduceTime);
                    } else {
                        MBAcquireRewardPopView.this.f26372b.behaviourListener.onReceivedFail(AcquireRewardPopViewConst.DEFAULT_REASON_CLICK_WRONG_ANSWER);
                    }
                }
                MBAcquireRewardPopView mBAcquireRewardPopView2 = MBAcquireRewardPopView.this;
                mBAcquireRewardPopView2.postDelayed(mBAcquireRewardPopView2.f26384n, 2000L);
            }
        };
        this.f26383m = new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.6
            @Override // java.lang.Runnable
            public void run() {
                if (MBAcquireRewardPopView.this.f26378h <= 0) {
                    if (MBAcquireRewardPopView.this.f26372b.behaviourListener != null) {
                        MBAcquireRewardPopView.this.f26372b.behaviourListener.onReceivedFail(AcquireRewardPopViewConst.DEFAULT_REASON_AUTO_DISMISS);
                    }
                    MBAcquireRewardPopView.this.f26379i = false;
                    MBAcquireRewardPopView.this.setVisibility(8);
                    MBAcquireRewardPopView.this.removeAllViews();
                    return;
                }
                MBAcquireRewardPopView.n(MBAcquireRewardPopView.this);
                MBAcquireRewardPopView mBAcquireRewardPopView = MBAcquireRewardPopView.this;
                mBAcquireRewardPopView.postDelayed(mBAcquireRewardPopView.f26383m, 1000L);
            }
        };
        this.f26384n = new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.7
            @Override // java.lang.Runnable
            public void run() {
                AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
                alphaAnimation.setDuration(300L);
                alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.7.1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        MBAcquireRewardPopView.this.f26379i = false;
                        MBAcquireRewardPopView.this.setVisibility(8);
                        MBAcquireRewardPopView.this.removeAllViews();
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }
                });
                MBAcquireRewardPopView.this.startAnimation(alphaAnimation);
            }
        };
        this.f26385o = new View.OnTouchListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.8
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if (action != 0) {
                    if (action != 1) {
                        if (action == 2) {
                            MBAcquireRewardPopView.this.f26376f = motionEvent.getX();
                            MBAcquireRewardPopView.this.f26377g = motionEvent.getY();
                        }
                    } else if (MBAcquireRewardPopView.this.f26376f > MBAcquireRewardPopView.this.f26374d) {
                        if (Math.abs(MBAcquireRewardPopView.this.f26376f - MBAcquireRewardPopView.this.f26374d) > 50.0f && Math.abs(MBAcquireRewardPopView.this.f26377g - MBAcquireRewardPopView.this.f26375e) < 100.0f) {
                            if (MBAcquireRewardPopView.this.f26380j) {
                                return false;
                            }
                            MBAcquireRewardPopView mBAcquireRewardPopView = MBAcquireRewardPopView.this;
                            mBAcquireRewardPopView.removeCallbacks(mBAcquireRewardPopView.f26383m);
                            MBAcquireRewardPopView.this.f26380j = true;
                            View rightAnswerView = MBAcquireRewardPopView.this.getRightAnswerView();
                            View childAt = MBAcquireRewardPopView.this.getChildAt(0);
                            if (childAt != null) {
                                MBAcquireRewardPopView.this.a(childAt, rightAnswerView);
                            }
                            if (MBAcquireRewardPopView.this.f26372b.behaviourListener != null) {
                                MBAcquireRewardPopView.this.f26372b.behaviourListener.onReceivedSuccess(MBAcquireRewardPopView.this.f26372b.reduceTime);
                            }
                            MBAcquireRewardPopView mBAcquireRewardPopView2 = MBAcquireRewardPopView.this;
                            mBAcquireRewardPopView2.postDelayed(mBAcquireRewardPopView2.f26384n, 2000L);
                        } else {
                            MBAcquireRewardPopView.this.f26372b.behaviourListener.onOutOfContentClicked(MBAcquireRewardPopView.this.f26374d, MBAcquireRewardPopView.this.f26375e);
                        }
                    } else {
                        MBAcquireRewardPopView.this.f26372b.behaviourListener.onOutOfContentClicked(MBAcquireRewardPopView.this.f26374d, MBAcquireRewardPopView.this.f26375e);
                    }
                } else {
                    MBAcquireRewardPopView.this.f26374d = motionEvent.getX();
                    MBAcquireRewardPopView.this.f26375e = motionEvent.getY();
                }
                return false;
            }
        };
        this.f26386p = new View.OnClickListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MBAcquireRewardPopView.this.f26372b.behaviourListener != null) {
                    MBAcquireRewardPopView.this.f26372b.behaviourListener.onOutOfContentClicked(MBAcquireRewardPopView.this.f26374d, MBAcquireRewardPopView.this.f26375e);
                }
            }
        };
        this.f26387q = new View.OnClickListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MBAcquireRewardPopView.this.f26372b.behaviourListener != null) {
                    MBAcquireRewardPopView.this.f26372b.behaviourListener.onReceivedFail(AcquireRewardPopViewConst.DEFAULT_REASON_CLICK_CLOSE);
                }
                MBAcquireRewardPopView.this.f26379i = false;
                MBAcquireRewardPopView.this.setVisibility(8);
                MBAcquireRewardPopView.this.removeAllViews();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View getRightAnswerView() {
        String str;
        LinearLayout linearLayout = new LinearLayout(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setOrientation(1);
        MBGradientAndShadowTextView.GradientAndShadowParameters gradientAndShadowParameters = new MBGradientAndShadowTextView.GradientAndShadowParameters();
        AcquireRewardPopViewParameters acquireRewardPopViewParameters = this.f26372b;
        gradientAndShadowParameters.gradientStartColor = acquireRewardPopViewParameters.successTitleGradientStartColor;
        gradientAndShadowParameters.gradientEndColor = acquireRewardPopViewParameters.successTitleGradientEndColor;
        gradientAndShadowParameters.shadowColor = acquireRewardPopViewParameters.successTitleShadowColor;
        MBGradientAndShadowTextView mBGradientAndShadowTextView = new MBGradientAndShadowTextView(getContext(), gradientAndShadowParameters);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.setMargins(0, 0, 0, u0.a(getContext(), 12.0f));
        layoutParams2.gravity = 1;
        mBGradientAndShadowTextView.setLayoutParams(layoutParams2);
        AcquireRewardPopViewParameters acquireRewardPopViewParameters2 = this.f26372b;
        int i10 = acquireRewardPopViewParameters2.viewType;
        if (i10 == 1) {
            str = acquireRewardPopViewParameters2.successTitle;
        } else if (i10 == 2) {
            str = acquireRewardPopViewParameters2.slideSuccessTitle;
        } else {
            str = "";
        }
        mBGradientAndShadowTextView.setGravity(17);
        mBGradientAndShadowTextView.setText(String.format(" %s ", str));
        linearLayout.addView(mBGradientAndShadowTextView);
        GradientDrawable a10 = a(new int[]{AcquireRewardPopViewConst.DEFAULT_COLOR_00FDB258, AcquireRewardPopViewConst.DEFAULT_COLOR_FFE39E4A, AcquireRewardPopViewConst.DEFAULT_COLOR_FFE39E4A, AcquireRewardPopViewConst.DEFAULT_COLOR_00F3A850}, GradientDrawable.Orientation.LEFT_RIGHT);
        TextView textView = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 1;
        textView.setLayoutParams(layoutParams3);
        textView.setTextSize(12.0f);
        textView.setGravity(17);
        textView.setTextColor(this.f26372b.successTipTextColor);
        AcquireRewardPopViewParameters acquireRewardPopViewParameters3 = this.f26372b;
        textView.setText(String.format(acquireRewardPopViewParameters3.successTip, Integer.valueOf(acquireRewardPopViewParameters3.reduceTime)));
        int a11 = u0.a(getContext(), 6.0f);
        int a12 = u0.a(getContext(), 32.0f);
        textView.setPadding(a12, a11, a12, a11);
        textView.setBackground(a10);
        linearLayout.addView(textView);
        return linearLayout;
    }

    private View getSlidePopView() {
        int a10 = u0.a(getContext(), 290.0f);
        LinearLayout linearLayout = new LinearLayout(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(a10, -2);
        layoutParams.addRule(13);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setOrientation(1);
        MBGradientAndShadowTextView.GradientAndShadowParameters gradientAndShadowParameters = new MBGradientAndShadowTextView.GradientAndShadowParameters();
        AcquireRewardPopViewParameters acquireRewardPopViewParameters = this.f26372b;
        gradientAndShadowParameters.gradientStartColor = acquireRewardPopViewParameters.successTitleGradientStartColor;
        gradientAndShadowParameters.gradientEndColor = acquireRewardPopViewParameters.successTitleGradientEndColor;
        gradientAndShadowParameters.shadowColor = acquireRewardPopViewParameters.successTitleShadowColor;
        gradientAndShadowParameters.textSize = 30;
        MBGradientAndShadowTextView mBGradientAndShadowTextView = new MBGradientAndShadowTextView(getContext(), gradientAndShadowParameters);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.setMargins(0, 0, 0, u0.a(getContext(), 12.0f));
        layoutParams2.gravity = 1;
        mBGradientAndShadowTextView.setLayoutParams(layoutParams2);
        mBGradientAndShadowTextView.setText(String.format(" %s ", this.f26372b.slideTitle));
        mBGradientAndShadowTextView.setGravity(17);
        linearLayout.addView(mBGradientAndShadowTextView);
        GradientDrawable a11 = a(new int[]{AcquireRewardPopViewConst.DEFAULT_COLOR_00FDB258, AcquireRewardPopViewConst.DEFAULT_COLOR_FFE39E4A, AcquireRewardPopViewConst.DEFAULT_COLOR_FFE39E4A, AcquireRewardPopViewConst.DEFAULT_COLOR_00F3A850}, GradientDrawable.Orientation.LEFT_RIGHT);
        this.f26381k = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 1;
        layoutParams3.setMargins(0, 0, 0, u0.a(getContext(), 25.0f));
        this.f26381k.setLayoutParams(layoutParams3);
        this.f26381k.setTextSize(12.0f);
        this.f26381k.setGravity(17);
        this.f26381k.setTextColor(this.f26372b.successTipTextColor);
        TextView textView = this.f26381k;
        AcquireRewardPopViewParameters acquireRewardPopViewParameters2 = this.f26372b;
        textView.setText(String.format(acquireRewardPopViewParameters2.slideTip, Integer.valueOf(acquireRewardPopViewParameters2.reduceTime)));
        int a12 = u0.a(getContext(), 6.0f);
        int a13 = u0.a(getContext(), 32.0f);
        this.f26381k.setPadding(a13, a12, a13, a12);
        this.f26381k.setBackground(a11);
        linearLayout.addView(this.f26381k);
        View imageView = new ImageView(getContext());
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = 1;
        imageView.setLayoutParams(layoutParams4);
        imageView.setBackgroundResource(getResources().getIdentifier("mbridge_slide_rightarrow", "drawable", c.m().h()));
        linearLayout.addView(imageView);
        View imageView2 = new ImageView(getContext());
        imageView2.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        imageView2.setBackgroundResource(getResources().getIdentifier("mbridge_slide_hand", "drawable", c.m().h()));
        linearLayout.addView(imageView2);
        imageView2.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                MBAcquireRewardPopView.this.a(view);
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                if (MBAcquireRewardPopView.this.f26373c != null) {
                    MBAcquireRewardPopView.this.f26373c.cancel();
                }
            }
        });
        linearLayout.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.2
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                MBAcquireRewardPopView.this.setLongClickable(true);
                MBAcquireRewardPopView mBAcquireRewardPopView = MBAcquireRewardPopView.this;
                mBAcquireRewardPopView.setOnTouchListener(mBAcquireRewardPopView.f26385o);
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
            }
        });
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View getWrongAnswerView() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setOrientation(1);
        MBGradientAndShadowTextView.GradientAndShadowParameters gradientAndShadowParameters = new MBGradientAndShadowTextView.GradientAndShadowParameters();
        AcquireRewardPopViewParameters acquireRewardPopViewParameters = this.f26372b;
        gradientAndShadowParameters.gradientStartColor = acquireRewardPopViewParameters.failTitleGradientStartColor;
        gradientAndShadowParameters.gradientEndColor = acquireRewardPopViewParameters.failTitleGradientEndColor;
        gradientAndShadowParameters.shadowColor = acquireRewardPopViewParameters.failTitleShadowColor;
        MBGradientAndShadowTextView mBGradientAndShadowTextView = new MBGradientAndShadowTextView(getContext(), gradientAndShadowParameters);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.setMargins(0, 0, 0, u0.a(getContext(), 12.0f));
        layoutParams2.gravity = 1;
        mBGradientAndShadowTextView.setGravity(17);
        mBGradientAndShadowTextView.setLayoutParams(layoutParams2);
        mBGradientAndShadowTextView.setText(String.format(" %s ", this.f26372b.failTitle));
        linearLayout.addView(mBGradientAndShadowTextView);
        GradientDrawable a10 = a(new int[]{AcquireRewardPopViewConst.DEFAULT_COLOR_00B09A80, AcquireRewardPopViewConst.DEFAULT_COLOR_FFB09A80, AcquireRewardPopViewConst.DEFAULT_COLOR_FFB09A80, AcquireRewardPopViewConst.DEFAULT_COLOR_00B09A80}, GradientDrawable.Orientation.LEFT_RIGHT);
        TextView textView = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 1;
        textView.setLayoutParams(layoutParams3);
        textView.setTextSize(12.0f);
        textView.setGravity(17);
        textView.setTextColor(this.f26372b.failTipTextColor);
        textView.setText(String.format(this.f26372b.failTip, ""));
        int a11 = u0.a(getContext(), 6.0f);
        int a12 = u0.a(getContext(), 32.0f);
        textView.setPadding(a12, a11, a12, a11);
        textView.setBackground(a10);
        linearLayout.addView(textView);
        return linearLayout;
    }

    static /* synthetic */ int n(MBAcquireRewardPopView mBAcquireRewardPopView) {
        int i10 = mBAcquireRewardPopView.f26378h;
        mBAcquireRewardPopView.f26378h = i10 - 1;
        return i10;
    }

    public void init(AcquireRewardPopViewParameters acquireRewardPopViewParameters) {
        View view;
        if (acquireRewardPopViewParameters == null) {
            p0.b("MBAcquireRewardPopView", "Must generate parameters.");
            return;
        }
        this.f26372b = acquireRewardPopViewParameters;
        if (acquireRewardPopViewParameters.viewType == 1) {
            view = a(a());
            if (this.f26372b.canClickMaskArea) {
                setOnClickListener(this.f26386p);
            }
        } else {
            view = null;
        }
        if (this.f26372b.viewType == 2) {
            view = getSlidePopView();
        }
        if (view != null) {
            setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            setBackgroundColor(this.f26372b.containerBackgroundColor);
            addView(view);
            int i10 = this.f26372b.autoDismissTime;
            if (i10 > 0) {
                this.f26378h = i10;
                post(this.f26383m);
                this.f26379i = true;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f26383m);
    }

    public void onPause() {
        if (this.f26379i && this.f26378h > 0) {
            removeCallbacks(this.f26383m);
        }
    }

    public void onResume() {
        if (this.f26379i && this.f26378h > 0) {
            post(this.f26383m);
        }
    }

    public void onStop() {
        if (this.f26379i && this.f26378h > 0) {
            removeCallbacks(this.f26383m);
        }
    }

    public void onTimeLessThanReduce(int i10) {
        AcquireRewardPopViewParameters acquireRewardPopViewParameters = this.f26372b;
        acquireRewardPopViewParameters.reduceTime = i10;
        TextView textView = this.f26381k;
        if (textView != null) {
            textView.setText(String.format(acquireRewardPopViewParameters.tips, Integer.valueOf(i10)));
        }
    }

    private View a(ArrayList<String> arrayList) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(u0.a(getContext(), 290.0f), -2);
        layoutParams.addRule(13);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setOrientation(1);
        linearLayout.setClickable(true);
        AcquireRewardPopViewParameters acquireRewardPopViewParameters = this.f26372b;
        linearLayout.setBackground(a(acquireRewardPopViewParameters.viewBackLayerTopColor, acquireRewardPopViewParameters.viewBackLayerBottomColor, acquireRewardPopViewParameters.viewForegroundTopColor, acquireRewardPopViewParameters.viewForegroundBottomColor));
        ImageView imageView = new ImageView(getContext());
        int a10 = u0.a(getContext(), 20.0f);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(a10, a10);
        layoutParams2.gravity = GravityCompat.END;
        layoutParams2.setMargins(0, 13, 13, 0);
        imageView.setLayoutParams(layoutParams2);
        imageView.setImageResource(getResources().getIdentifier("mbridge_reward_popview_close", "drawable", c.m().h()));
        imageView.setOnClickListener(this.f26387q);
        linearLayout.addView(imageView);
        TextView textView = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 1;
        int a11 = u0.a(getContext(), 18.0f);
        layoutParams3.setMargins(a11, 5, a11, u0.a(getContext(), 12.0f));
        textView.setLayoutParams(layoutParams3);
        textView.setText(this.f26372b.title);
        textView.setTextColor(this.f26372b.titleTextColor);
        textView.setTextSize(18.0f);
        textView.setGravity(17);
        linearLayout.addView(textView);
        if (arrayList != null && arrayList.size() > 1) {
            int a12 = u0.a(getContext(), 8.0f);
            int a13 = u0.a(getContext(), 24.0f);
            int a14 = u0.a(getContext(), 30.0f);
            int a15 = u0.a(getContext(), 12.0f);
            int a16 = u0.a(getContext(), 40.0f);
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                boolean contains = this.f26372b.rightAnswerList.contains(arrayList.get(i10));
                TextView textView2 = new TextView(getContext());
                LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
                layoutParams4.gravity = 1;
                layoutParams4.setMargins(a14, a15, a14, 0);
                textView2.setPadding(a13, a12, a13, a12);
                textView2.setLayoutParams(layoutParams4);
                textView2.setText(arrayList.get(i10));
                textView2.setSingleLine(true);
                textView2.setEllipsize(TextUtils.TruncateAt.END);
                textView2.setTag(arrayList.get(i10));
                textView2.setTextSize(17.0f);
                textView2.setGravity(17);
                textView2.setTextColor(contains ? this.f26372b.buttonTextLightColor : this.f26372b.buttonTextDarkColor);
                textView2.setBackground(a(contains ? this.f26372b.buttonBackgroundLightColor : this.f26372b.buttonBackgroundDarkColor, a16));
                textView2.setOnClickListener(this.f26382l);
                linearLayout.addView(textView2);
            }
        }
        this.f26381k = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-2, -2);
        int a17 = u0.a(getContext(), 16.0f);
        int a18 = u0.a(getContext(), 18.0f);
        layoutParams5.setMargins(a18, a17, a18, a17);
        layoutParams5.gravity = 1;
        this.f26381k.setLayoutParams(layoutParams5);
        TextView textView3 = this.f26381k;
        AcquireRewardPopViewParameters acquireRewardPopViewParameters2 = this.f26372b;
        textView3.setText(String.format(acquireRewardPopViewParameters2.tips, Integer.valueOf(acquireRewardPopViewParameters2.reduceTime)));
        this.f26381k.setTextColor(this.f26372b.tipTextColor);
        this.f26381k.setGravity(17);
        this.f26381k.setTextSize(12.0f);
        linearLayout.addView(this.f26381k);
        return linearLayout;
    }

    public MBAcquireRewardPopView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f26371a = "MBAcquireRewardPopView";
        this.f26374d = 0.0f;
        this.f26375e = 0.0f;
        this.f26376f = 0.0f;
        this.f26377g = 0.0f;
        this.f26382l = new View.OnClickListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MBAcquireRewardPopView mBAcquireRewardPopView = MBAcquireRewardPopView.this;
                mBAcquireRewardPopView.removeCallbacks(mBAcquireRewardPopView.f26383m);
                String str = (String) view.getTag();
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                boolean contains = MBAcquireRewardPopView.this.f26372b.rightAnswerList.contains(str);
                View rightAnswerView = contains ? MBAcquireRewardPopView.this.getRightAnswerView() : MBAcquireRewardPopView.this.getWrongAnswerView();
                View childAt = MBAcquireRewardPopView.this.getChildAt(0);
                if (childAt != null) {
                    MBAcquireRewardPopView.this.a(childAt, rightAnswerView);
                }
                if (MBAcquireRewardPopView.this.f26372b.behaviourListener != null) {
                    if (contains) {
                        MBAcquireRewardPopView.this.f26372b.behaviourListener.onReceivedSuccess(MBAcquireRewardPopView.this.f26372b.reduceTime);
                    } else {
                        MBAcquireRewardPopView.this.f26372b.behaviourListener.onReceivedFail(AcquireRewardPopViewConst.DEFAULT_REASON_CLICK_WRONG_ANSWER);
                    }
                }
                MBAcquireRewardPopView mBAcquireRewardPopView2 = MBAcquireRewardPopView.this;
                mBAcquireRewardPopView2.postDelayed(mBAcquireRewardPopView2.f26384n, 2000L);
            }
        };
        this.f26383m = new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.6
            @Override // java.lang.Runnable
            public void run() {
                if (MBAcquireRewardPopView.this.f26378h <= 0) {
                    if (MBAcquireRewardPopView.this.f26372b.behaviourListener != null) {
                        MBAcquireRewardPopView.this.f26372b.behaviourListener.onReceivedFail(AcquireRewardPopViewConst.DEFAULT_REASON_AUTO_DISMISS);
                    }
                    MBAcquireRewardPopView.this.f26379i = false;
                    MBAcquireRewardPopView.this.setVisibility(8);
                    MBAcquireRewardPopView.this.removeAllViews();
                    return;
                }
                MBAcquireRewardPopView.n(MBAcquireRewardPopView.this);
                MBAcquireRewardPopView mBAcquireRewardPopView = MBAcquireRewardPopView.this;
                mBAcquireRewardPopView.postDelayed(mBAcquireRewardPopView.f26383m, 1000L);
            }
        };
        this.f26384n = new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.7
            @Override // java.lang.Runnable
            public void run() {
                AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
                alphaAnimation.setDuration(300L);
                alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.7.1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        MBAcquireRewardPopView.this.f26379i = false;
                        MBAcquireRewardPopView.this.setVisibility(8);
                        MBAcquireRewardPopView.this.removeAllViews();
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }
                });
                MBAcquireRewardPopView.this.startAnimation(alphaAnimation);
            }
        };
        this.f26385o = new View.OnTouchListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.8
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if (action != 0) {
                    if (action != 1) {
                        if (action == 2) {
                            MBAcquireRewardPopView.this.f26376f = motionEvent.getX();
                            MBAcquireRewardPopView.this.f26377g = motionEvent.getY();
                        }
                    } else if (MBAcquireRewardPopView.this.f26376f > MBAcquireRewardPopView.this.f26374d) {
                        if (Math.abs(MBAcquireRewardPopView.this.f26376f - MBAcquireRewardPopView.this.f26374d) > 50.0f && Math.abs(MBAcquireRewardPopView.this.f26377g - MBAcquireRewardPopView.this.f26375e) < 100.0f) {
                            if (MBAcquireRewardPopView.this.f26380j) {
                                return false;
                            }
                            MBAcquireRewardPopView mBAcquireRewardPopView = MBAcquireRewardPopView.this;
                            mBAcquireRewardPopView.removeCallbacks(mBAcquireRewardPopView.f26383m);
                            MBAcquireRewardPopView.this.f26380j = true;
                            View rightAnswerView = MBAcquireRewardPopView.this.getRightAnswerView();
                            View childAt = MBAcquireRewardPopView.this.getChildAt(0);
                            if (childAt != null) {
                                MBAcquireRewardPopView.this.a(childAt, rightAnswerView);
                            }
                            if (MBAcquireRewardPopView.this.f26372b.behaviourListener != null) {
                                MBAcquireRewardPopView.this.f26372b.behaviourListener.onReceivedSuccess(MBAcquireRewardPopView.this.f26372b.reduceTime);
                            }
                            MBAcquireRewardPopView mBAcquireRewardPopView2 = MBAcquireRewardPopView.this;
                            mBAcquireRewardPopView2.postDelayed(mBAcquireRewardPopView2.f26384n, 2000L);
                        } else {
                            MBAcquireRewardPopView.this.f26372b.behaviourListener.onOutOfContentClicked(MBAcquireRewardPopView.this.f26374d, MBAcquireRewardPopView.this.f26375e);
                        }
                    } else {
                        MBAcquireRewardPopView.this.f26372b.behaviourListener.onOutOfContentClicked(MBAcquireRewardPopView.this.f26374d, MBAcquireRewardPopView.this.f26375e);
                    }
                } else {
                    MBAcquireRewardPopView.this.f26374d = motionEvent.getX();
                    MBAcquireRewardPopView.this.f26375e = motionEvent.getY();
                }
                return false;
            }
        };
        this.f26386p = new View.OnClickListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MBAcquireRewardPopView.this.f26372b.behaviourListener != null) {
                    MBAcquireRewardPopView.this.f26372b.behaviourListener.onOutOfContentClicked(MBAcquireRewardPopView.this.f26374d, MBAcquireRewardPopView.this.f26375e);
                }
            }
        };
        this.f26387q = new View.OnClickListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MBAcquireRewardPopView.this.f26372b.behaviourListener != null) {
                    MBAcquireRewardPopView.this.f26372b.behaviourListener.onReceivedFail(AcquireRewardPopViewConst.DEFAULT_REASON_CLICK_CLOSE);
                }
                MBAcquireRewardPopView.this.f26379i = false;
                MBAcquireRewardPopView.this.setVisibility(8);
                MBAcquireRewardPopView.this.removeAllViews();
            }
        };
    }

    public MBAcquireRewardPopView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f26371a = "MBAcquireRewardPopView";
        this.f26374d = 0.0f;
        this.f26375e = 0.0f;
        this.f26376f = 0.0f;
        this.f26377g = 0.0f;
        this.f26382l = new View.OnClickListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MBAcquireRewardPopView mBAcquireRewardPopView = MBAcquireRewardPopView.this;
                mBAcquireRewardPopView.removeCallbacks(mBAcquireRewardPopView.f26383m);
                String str = (String) view.getTag();
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                boolean contains = MBAcquireRewardPopView.this.f26372b.rightAnswerList.contains(str);
                View rightAnswerView = contains ? MBAcquireRewardPopView.this.getRightAnswerView() : MBAcquireRewardPopView.this.getWrongAnswerView();
                View childAt = MBAcquireRewardPopView.this.getChildAt(0);
                if (childAt != null) {
                    MBAcquireRewardPopView.this.a(childAt, rightAnswerView);
                }
                if (MBAcquireRewardPopView.this.f26372b.behaviourListener != null) {
                    if (contains) {
                        MBAcquireRewardPopView.this.f26372b.behaviourListener.onReceivedSuccess(MBAcquireRewardPopView.this.f26372b.reduceTime);
                    } else {
                        MBAcquireRewardPopView.this.f26372b.behaviourListener.onReceivedFail(AcquireRewardPopViewConst.DEFAULT_REASON_CLICK_WRONG_ANSWER);
                    }
                }
                MBAcquireRewardPopView mBAcquireRewardPopView2 = MBAcquireRewardPopView.this;
                mBAcquireRewardPopView2.postDelayed(mBAcquireRewardPopView2.f26384n, 2000L);
            }
        };
        this.f26383m = new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.6
            @Override // java.lang.Runnable
            public void run() {
                if (MBAcquireRewardPopView.this.f26378h <= 0) {
                    if (MBAcquireRewardPopView.this.f26372b.behaviourListener != null) {
                        MBAcquireRewardPopView.this.f26372b.behaviourListener.onReceivedFail(AcquireRewardPopViewConst.DEFAULT_REASON_AUTO_DISMISS);
                    }
                    MBAcquireRewardPopView.this.f26379i = false;
                    MBAcquireRewardPopView.this.setVisibility(8);
                    MBAcquireRewardPopView.this.removeAllViews();
                    return;
                }
                MBAcquireRewardPopView.n(MBAcquireRewardPopView.this);
                MBAcquireRewardPopView mBAcquireRewardPopView = MBAcquireRewardPopView.this;
                mBAcquireRewardPopView.postDelayed(mBAcquireRewardPopView.f26383m, 1000L);
            }
        };
        this.f26384n = new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.7
            @Override // java.lang.Runnable
            public void run() {
                AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
                alphaAnimation.setDuration(300L);
                alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.7.1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        MBAcquireRewardPopView.this.f26379i = false;
                        MBAcquireRewardPopView.this.setVisibility(8);
                        MBAcquireRewardPopView.this.removeAllViews();
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }
                });
                MBAcquireRewardPopView.this.startAnimation(alphaAnimation);
            }
        };
        this.f26385o = new View.OnTouchListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.8
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if (action != 0) {
                    if (action != 1) {
                        if (action == 2) {
                            MBAcquireRewardPopView.this.f26376f = motionEvent.getX();
                            MBAcquireRewardPopView.this.f26377g = motionEvent.getY();
                        }
                    } else if (MBAcquireRewardPopView.this.f26376f > MBAcquireRewardPopView.this.f26374d) {
                        if (Math.abs(MBAcquireRewardPopView.this.f26376f - MBAcquireRewardPopView.this.f26374d) > 50.0f && Math.abs(MBAcquireRewardPopView.this.f26377g - MBAcquireRewardPopView.this.f26375e) < 100.0f) {
                            if (MBAcquireRewardPopView.this.f26380j) {
                                return false;
                            }
                            MBAcquireRewardPopView mBAcquireRewardPopView = MBAcquireRewardPopView.this;
                            mBAcquireRewardPopView.removeCallbacks(mBAcquireRewardPopView.f26383m);
                            MBAcquireRewardPopView.this.f26380j = true;
                            View rightAnswerView = MBAcquireRewardPopView.this.getRightAnswerView();
                            View childAt = MBAcquireRewardPopView.this.getChildAt(0);
                            if (childAt != null) {
                                MBAcquireRewardPopView.this.a(childAt, rightAnswerView);
                            }
                            if (MBAcquireRewardPopView.this.f26372b.behaviourListener != null) {
                                MBAcquireRewardPopView.this.f26372b.behaviourListener.onReceivedSuccess(MBAcquireRewardPopView.this.f26372b.reduceTime);
                            }
                            MBAcquireRewardPopView mBAcquireRewardPopView2 = MBAcquireRewardPopView.this;
                            mBAcquireRewardPopView2.postDelayed(mBAcquireRewardPopView2.f26384n, 2000L);
                        } else {
                            MBAcquireRewardPopView.this.f26372b.behaviourListener.onOutOfContentClicked(MBAcquireRewardPopView.this.f26374d, MBAcquireRewardPopView.this.f26375e);
                        }
                    } else {
                        MBAcquireRewardPopView.this.f26372b.behaviourListener.onOutOfContentClicked(MBAcquireRewardPopView.this.f26374d, MBAcquireRewardPopView.this.f26375e);
                    }
                } else {
                    MBAcquireRewardPopView.this.f26374d = motionEvent.getX();
                    MBAcquireRewardPopView.this.f26375e = motionEvent.getY();
                }
                return false;
            }
        };
        this.f26386p = new View.OnClickListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MBAcquireRewardPopView.this.f26372b.behaviourListener != null) {
                    MBAcquireRewardPopView.this.f26372b.behaviourListener.onOutOfContentClicked(MBAcquireRewardPopView.this.f26374d, MBAcquireRewardPopView.this.f26375e);
                }
            }
        };
        this.f26387q = new View.OnClickListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MBAcquireRewardPopView.this.f26372b.behaviourListener != null) {
                    MBAcquireRewardPopView.this.f26372b.behaviourListener.onReceivedFail(AcquireRewardPopViewConst.DEFAULT_REASON_CLICK_CLOSE);
                }
                MBAcquireRewardPopView.this.f26379i = false;
                MBAcquireRewardPopView.this.setVisibility(8);
                MBAcquireRewardPopView.this.removeAllViews();
            }
        };
    }

    @RequiresApi(api = 21)
    public MBAcquireRewardPopView(Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f26371a = "MBAcquireRewardPopView";
        this.f26374d = 0.0f;
        this.f26375e = 0.0f;
        this.f26376f = 0.0f;
        this.f26377g = 0.0f;
        this.f26382l = new View.OnClickListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MBAcquireRewardPopView mBAcquireRewardPopView = MBAcquireRewardPopView.this;
                mBAcquireRewardPopView.removeCallbacks(mBAcquireRewardPopView.f26383m);
                String str = (String) view.getTag();
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                boolean contains = MBAcquireRewardPopView.this.f26372b.rightAnswerList.contains(str);
                View rightAnswerView = contains ? MBAcquireRewardPopView.this.getRightAnswerView() : MBAcquireRewardPopView.this.getWrongAnswerView();
                View childAt = MBAcquireRewardPopView.this.getChildAt(0);
                if (childAt != null) {
                    MBAcquireRewardPopView.this.a(childAt, rightAnswerView);
                }
                if (MBAcquireRewardPopView.this.f26372b.behaviourListener != null) {
                    if (contains) {
                        MBAcquireRewardPopView.this.f26372b.behaviourListener.onReceivedSuccess(MBAcquireRewardPopView.this.f26372b.reduceTime);
                    } else {
                        MBAcquireRewardPopView.this.f26372b.behaviourListener.onReceivedFail(AcquireRewardPopViewConst.DEFAULT_REASON_CLICK_WRONG_ANSWER);
                    }
                }
                MBAcquireRewardPopView mBAcquireRewardPopView2 = MBAcquireRewardPopView.this;
                mBAcquireRewardPopView2.postDelayed(mBAcquireRewardPopView2.f26384n, 2000L);
            }
        };
        this.f26383m = new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.6
            @Override // java.lang.Runnable
            public void run() {
                if (MBAcquireRewardPopView.this.f26378h <= 0) {
                    if (MBAcquireRewardPopView.this.f26372b.behaviourListener != null) {
                        MBAcquireRewardPopView.this.f26372b.behaviourListener.onReceivedFail(AcquireRewardPopViewConst.DEFAULT_REASON_AUTO_DISMISS);
                    }
                    MBAcquireRewardPopView.this.f26379i = false;
                    MBAcquireRewardPopView.this.setVisibility(8);
                    MBAcquireRewardPopView.this.removeAllViews();
                    return;
                }
                MBAcquireRewardPopView.n(MBAcquireRewardPopView.this);
                MBAcquireRewardPopView mBAcquireRewardPopView = MBAcquireRewardPopView.this;
                mBAcquireRewardPopView.postDelayed(mBAcquireRewardPopView.f26383m, 1000L);
            }
        };
        this.f26384n = new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.7
            @Override // java.lang.Runnable
            public void run() {
                AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
                alphaAnimation.setDuration(300L);
                alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.7.1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        MBAcquireRewardPopView.this.f26379i = false;
                        MBAcquireRewardPopView.this.setVisibility(8);
                        MBAcquireRewardPopView.this.removeAllViews();
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }
                });
                MBAcquireRewardPopView.this.startAnimation(alphaAnimation);
            }
        };
        this.f26385o = new View.OnTouchListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.8
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if (action != 0) {
                    if (action != 1) {
                        if (action == 2) {
                            MBAcquireRewardPopView.this.f26376f = motionEvent.getX();
                            MBAcquireRewardPopView.this.f26377g = motionEvent.getY();
                        }
                    } else if (MBAcquireRewardPopView.this.f26376f > MBAcquireRewardPopView.this.f26374d) {
                        if (Math.abs(MBAcquireRewardPopView.this.f26376f - MBAcquireRewardPopView.this.f26374d) > 50.0f && Math.abs(MBAcquireRewardPopView.this.f26377g - MBAcquireRewardPopView.this.f26375e) < 100.0f) {
                            if (MBAcquireRewardPopView.this.f26380j) {
                                return false;
                            }
                            MBAcquireRewardPopView mBAcquireRewardPopView = MBAcquireRewardPopView.this;
                            mBAcquireRewardPopView.removeCallbacks(mBAcquireRewardPopView.f26383m);
                            MBAcquireRewardPopView.this.f26380j = true;
                            View rightAnswerView = MBAcquireRewardPopView.this.getRightAnswerView();
                            View childAt = MBAcquireRewardPopView.this.getChildAt(0);
                            if (childAt != null) {
                                MBAcquireRewardPopView.this.a(childAt, rightAnswerView);
                            }
                            if (MBAcquireRewardPopView.this.f26372b.behaviourListener != null) {
                                MBAcquireRewardPopView.this.f26372b.behaviourListener.onReceivedSuccess(MBAcquireRewardPopView.this.f26372b.reduceTime);
                            }
                            MBAcquireRewardPopView mBAcquireRewardPopView2 = MBAcquireRewardPopView.this;
                            mBAcquireRewardPopView2.postDelayed(mBAcquireRewardPopView2.f26384n, 2000L);
                        } else {
                            MBAcquireRewardPopView.this.f26372b.behaviourListener.onOutOfContentClicked(MBAcquireRewardPopView.this.f26374d, MBAcquireRewardPopView.this.f26375e);
                        }
                    } else {
                        MBAcquireRewardPopView.this.f26372b.behaviourListener.onOutOfContentClicked(MBAcquireRewardPopView.this.f26374d, MBAcquireRewardPopView.this.f26375e);
                    }
                } else {
                    MBAcquireRewardPopView.this.f26374d = motionEvent.getX();
                    MBAcquireRewardPopView.this.f26375e = motionEvent.getY();
                }
                return false;
            }
        };
        this.f26386p = new View.OnClickListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MBAcquireRewardPopView.this.f26372b.behaviourListener != null) {
                    MBAcquireRewardPopView.this.f26372b.behaviourListener.onOutOfContentClicked(MBAcquireRewardPopView.this.f26374d, MBAcquireRewardPopView.this.f26375e);
                }
            }
        };
        this.f26387q = new View.OnClickListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MBAcquireRewardPopView.this.f26372b.behaviourListener != null) {
                    MBAcquireRewardPopView.this.f26372b.behaviourListener.onReceivedFail(AcquireRewardPopViewConst.DEFAULT_REASON_CLICK_CLOSE);
                }
                MBAcquireRewardPopView.this.f26379i = false;
                MBAcquireRewardPopView.this.setVisibility(8);
                MBAcquireRewardPopView.this.removeAllViews();
            }
        };
    }

    private LayerDrawable a(int i10, int i11, int i12, int i13) {
        int[] iArr = {i10, i11};
        GradientDrawable.Orientation orientation = GradientDrawable.Orientation.TOP_BOTTOM;
        GradientDrawable a10 = a(iArr, orientation);
        a10.setCornerRadius(u0.a(getContext(), 12.0f));
        GradientDrawable a11 = a(new int[]{i12, i13}, orientation);
        a11.setCornerRadius(u0.a(getContext(), 12.0f));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{a10, a11});
        layerDrawable.setLayerInset(1, 5, 5, 5, 5);
        return layerDrawable;
    }

    private GradientDrawable a(int i10, int i11) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i10);
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(i11);
        return gradientDrawable;
    }

    private GradientDrawable a(int[] iArr, GradientDrawable.Orientation orientation) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColors(iArr);
        gradientDrawable.setGradientType(0);
        gradientDrawable.setOrientation(orientation);
        gradientDrawable.setShape(0);
        return gradientDrawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final View view) {
        TranslateAnimation translateAnimation = new TranslateAnimation(2, 0.0f, 2, 0.8f, 1, 0.0f, 1, 0.0f);
        translateAnimation.setDuration(1000L);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(1000L);
        AnimationSet animationSet = new AnimationSet(true);
        this.f26373c = animationSet;
        animationSet.addAnimation(translateAnimation);
        this.f26373c.addAnimation(alphaAnimation);
        final AlphaAnimation alphaAnimation2 = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation2.setDuration(1000L);
        alphaAnimation2.setAnimationListener(new Animation.AnimationListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.3
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                view.startAnimation(MBAcquireRewardPopView.this.f26373c);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        });
        this.f26373c.setAnimationListener(new Animation.AnimationListener() { // from class: com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView.4
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                view.startAnimation(alphaAnimation2);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        });
        view.startAnimation(this.f26373c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view, View view2) {
        removeView(view);
        addView(view2);
    }

    private ArrayList<String> a() {
        ArrayList<String> arrayList = new ArrayList<>();
        AcquireRewardPopViewParameters acquireRewardPopViewParameters = this.f26372b;
        if (acquireRewardPopViewParameters != null) {
            List<String> list = acquireRewardPopViewParameters.rightAnswerList;
            if (list != null) {
                arrayList.addAll(list);
            }
            if (this.f26372b.wrongAnswerList != null) {
                int nextInt = new Random().nextInt(this.f26372b.wrongAnswerList.size());
                if (nextInt > this.f26372b.wrongAnswerList.size() - 1) {
                    nextInt = 0;
                }
                arrayList.add(this.f26372b.wrongAnswerList.get(nextInt));
            }
        }
        return arrayList;
    }
}
