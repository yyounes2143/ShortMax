package com.mbridge.msdk.video.dynview.wrapper;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.dycreator.baseview.MBFrameLayout;
import com.mbridge.msdk.dycreator.baseview.MBStarLevelLayoutView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeFramLayout;
import com.mbridge.msdk.foundation.tools.h0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.video.dynview.widget.MBridgeLevelLayoutView;
import com.mbridge.msdk.video.dynview.widget.MBridgeRelativeLayout;
import com.mbridge.msdk.video.module.MBridgeClickCTAView;
import java.util.Map;
/* compiled from: UIEnergizeWrapper.java */
/* loaded from: classes6.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private String f30897a = "mbridge_top_play_bg";

    /* renamed from: b  reason: collision with root package name */
    private String f30898b = "mbridge_top_finger_bg";

    /* renamed from: c  reason: collision with root package name */
    private String f30899c = "mbridge_bottom_play_bg";

    /* renamed from: d  reason: collision with root package name */
    private String f30900d = "mbridge_bottom_finger_bg";

    /* renamed from: e  reason: collision with root package name */
    private String f30901e = "mbridge_tv_count";

    /* renamed from: f  reason: collision with root package name */
    private String f30902f = "mbridge_sound_switch";

    /* renamed from: g  reason: collision with root package name */
    private String f30903g = "mbridge_top_control";

    /* renamed from: h  reason: collision with root package name */
    private String f30904h = "mbridge_tv_title";

    /* renamed from: i  reason: collision with root package name */
    private String f30905i = "mbridge_tv_desc";

    /* renamed from: j  reason: collision with root package name */
    private String f30906j = "mbridge_tv_install";

    /* renamed from: k  reason: collision with root package name */
    private String f30907k = "mbridge_sv_starlevel";

    /* renamed from: l  reason: collision with root package name */
    private String f30908l = "mbridge_sv_heat_count_level";

    /* renamed from: m  reason: collision with root package name */
    private String f30909m = "mbridge_tv_cta";

    /* renamed from: n  reason: collision with root package name */
    private String f30910n = "mbridge_native_ec_controller";

    /* renamed from: o  reason: collision with root package name */
    private String f30911o = "mbridge_reward_shape_choice_rl";

    /* renamed from: p  reason: collision with root package name */
    private String f30912p = "#FFFFFF";

    /* renamed from: q  reason: collision with root package name */
    private String f30913q = "#FF000000";

    /* renamed from: r  reason: collision with root package name */
    private String f30914r = "#40000000";

    /* renamed from: s  reason: collision with root package name */
    private String f30915s = "#CAEF79";

    /* renamed from: t  reason: collision with root package name */
    private String f30916t = "#2196F3";

    /* renamed from: u  reason: collision with root package name */
    private String f30917u = "#402196F3";

    /* renamed from: v  reason: collision with root package name */
    private String f30918v = "#8FC31F";

    /* renamed from: w  reason: collision with root package name */
    private String f30919w = "#03A9F4";

    /* renamed from: x  reason: collision with root package name */
    private String f30920x = "#FF89C120";

    /* renamed from: y  reason: collision with root package name */
    private String f30921y = "#FF2BAE5D";

    /* renamed from: z  reason: collision with root package name */
    private boolean f30922z = false;

    public void a(View view, com.mbridge.msdk.video.dynview.c cVar) {
    }

    public void b(View view, com.mbridge.msdk.video.dynview.c cVar) {
        Context context;
        int a10;
        if (view == null || cVar == null || (context = view.getContext()) == null) {
            return;
        }
        if (cVar.h() == 1) {
            view.setBackground(context.getResources().getDrawable(h0.a(context, this.f30911o, "drawable")));
            TextView textView = (TextView) view.findViewById(b(this.f30904h));
            if (textView != null) {
                textView.setTextColor(Color.parseColor(this.f30913q));
            }
            TextView textView2 = (TextView) view.findViewById(b(this.f30905i));
            if (textView2 != null) {
                textView2.setTextColor(Color.parseColor(this.f30913q));
            }
            a10 = u0.a(context, 2.0f);
        } else {
            a10 = u0.a(context, 10.0f);
            view.getBackground().setAlpha(100);
        }
        int a11 = u0.a(context, 8.0f);
        View findViewById = view.findViewById(b(this.f30906j));
        if (findViewById != null) {
            if (cVar.i() != null && (cVar.i() instanceof MBridgeClickCTAView)) {
                ((MBridgeClickCTAView) cVar.i()).setObjectAnimator(new com.mbridge.msdk.video.dynview.ui.b().a(findViewById));
            }
            if (findViewById instanceof TextView) {
                TextView textView3 = (TextView) findViewById;
                textView3.setTextColor(Color.parseColor(this.f30912p));
                textView3.setTextSize(15.0f);
                String str = this.f30918v;
                String str2 = this.f30915s;
                com.mbridge.msdk.video.dynview.util.drawable.a.a(textView3, 1.0f, 5.0f, str2, new String[]{str, str2}, GradientDrawable.Orientation.LEFT_RIGHT);
            }
        }
        if (view.getLayoutParams() == null) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(a10, a10, a10, a11);
            layoutParams.height = u0.a(context, 60.0f);
            view.setLayoutParams(layoutParams);
        }
    }

    public void a(View view, Map<String, Object> map) {
        ImageView imageView;
        ImageView imageView2;
        ImageView imageView3;
        ImageView imageView4;
        if (view == null || !(view instanceof MBridgeFramLayout)) {
            return;
        }
        MBridgeFramLayout mBridgeFramLayout = (MBridgeFramLayout) view;
        AnimatorSet animatorSet = new AnimatorSet();
        if (view.getContext() != null) {
            if (map != null && map.containsKey("is_dy_success")) {
                this.f30922z = ((Boolean) map.get("is_dy_success")).booleanValue();
            }
            if (this.f30922z) {
                imageView = (ImageView) view.findViewById(a(this.f30897a));
                imageView2 = (ImageView) view.findViewById(a(this.f30898b));
                imageView3 = (ImageView) view.findViewById(a(this.f30899c));
                imageView4 = (ImageView) view.findViewById(a(this.f30900d));
            } else {
                imageView = (ImageView) view.findViewById(b(this.f30897a));
                imageView2 = (ImageView) view.findViewById(b(this.f30898b));
                imageView3 = (ImageView) view.findViewById(b(this.f30899c));
                imageView4 = (ImageView) view.findViewById(b(this.f30900d));
            }
            ObjectAnimator b10 = imageView != null ? new com.mbridge.msdk.video.dynview.ui.b().b(imageView) : null;
            ObjectAnimator c10 = imageView2 != null ? new com.mbridge.msdk.video.dynview.ui.b().c(imageView2) : null;
            ObjectAnimator b11 = imageView3 != null ? new com.mbridge.msdk.video.dynview.ui.b().b(imageView3) : null;
            ObjectAnimator c11 = imageView4 != null ? new com.mbridge.msdk.video.dynview.ui.b().c(imageView4) : null;
            if (b10 == null || b11 == null || c10 == null || c11 == null) {
                return;
            }
            animatorSet.playTogether(b10, b11, c10, c11);
            mBridgeFramLayout.setAnimatorSet(animatorSet);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00fb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(android.view.View r9, com.mbridge.msdk.video.dynview.c r10, java.util.Map<java.lang.String, java.lang.Object> r11) {
        /*
            Method dump skipped, instructions count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.dynview.wrapper.b.a(android.view.View, com.mbridge.msdk.video.dynview.c, java.util.Map):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UIEnergizeWrapper.java */
    /* loaded from: classes6.dex */
    public class a implements Animator.AnimatorListener {
        a() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public void b(View view, com.mbridge.msdk.video.dynview.c cVar, Map<String, Object> map) {
        LinearLayout linearLayout;
        View findViewById;
        if (view == null || cVar == null) {
            return;
        }
        Context context = view.getContext();
        if (context != null) {
            if (map != null && map.containsKey("is_dy_success")) {
                this.f30922z = ((Boolean) map.get("is_dy_success")).booleanValue();
            }
            if (this.f30922z) {
                linearLayout = (LinearLayout) view.findViewById(a(this.f30907k));
                findViewById = view.findViewById(a(this.f30909m));
            } else {
                linearLayout = (LinearLayout) view.findViewById(b(this.f30907k));
                findViewById = view.findViewById(b(this.f30909m));
            }
            View view2 = findViewById;
            if (linearLayout != null && (linearLayout instanceof MBridgeLevelLayoutView)) {
                if (cVar.h() == 1) {
                    linearLayout.setOrientation(1);
                } else {
                    linearLayout.setOrientation(0);
                }
            }
            if (linearLayout != null && (linearLayout instanceof MBStarLevelLayoutView)) {
                linearLayout.setOrientation(0);
            }
            a(context, view, cVar);
            if (view2 != null) {
                if (view2 instanceof TextView) {
                    TextView textView = (TextView) view2;
                    textView.setTextColor(Color.parseColor(this.f30912p));
                    textView.setTextSize(22.0f);
                    com.mbridge.msdk.video.dynview.util.drawable.a.a(view2, 1.0f, cVar.l() == 1302 ? 25 : 5, this.f30915s, new String[]{this.f30920x, this.f30921y}, GradientDrawable.Orientation.LEFT_RIGHT);
                }
                try {
                    AnimatorSet animatorSet = new AnimatorSet();
                    animatorSet.playTogether(new com.mbridge.msdk.video.dynview.ui.b().a(view2));
                    animatorSet.addListener(new a());
                    if (view instanceof MBFrameLayout) {
                        ((MBFrameLayout) view).setAnimator(animatorSet);
                    }
                    if (view instanceof MBridgeFramLayout) {
                        ((MBridgeFramLayout) view).setAnimatorSet(animatorSet);
                    }
                    if (view instanceof MBridgeRelativeLayout) {
                        ((MBridgeRelativeLayout) view).setAnimatorSet(animatorSet);
                    }
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        e10.printStackTrace();
                    }
                }
            }
        }
        new com.mbridge.msdk.video.dynview.ui.b().a(view, 500L);
    }

    public int b(String str) {
        return h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), str, "id");
    }

    private void a(View view) {
        RelativeLayout relativeLayout;
        if (this.f30922z) {
            relativeLayout = (RelativeLayout) view.findViewById(a(this.f30903g));
        } else {
            relativeLayout = (RelativeLayout) view.findViewById(b(this.f30903g));
        }
        if (relativeLayout != null) {
            if (com.mbridge.msdk.video.dynview.constant.a.f30704a == 0 && com.mbridge.msdk.video.dynview.constant.a.f30705b == 0 && com.mbridge.msdk.video.dynview.constant.a.f30706c == 0 && com.mbridge.msdk.video.dynview.constant.a.f30707d == 0) {
                return;
            }
            relativeLayout.setVisibility(4);
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 100.0f);
            alphaAnimation.setDuration(200L);
            relativeLayout.startAnimation(alphaAnimation);
            relativeLayout.setVisibility(0);
        }
    }

    private void a(Context context, View view, com.mbridge.msdk.video.dynview.c cVar) {
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(b(this.f30910n));
        if (relativeLayout != null) {
            if (relativeLayout.getLayoutParams() instanceof RelativeLayout.LayoutParams) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
                layoutParams.setMargins(layoutParams.leftMargin + com.mbridge.msdk.video.dynview.constant.a.f30704a, layoutParams.topMargin + com.mbridge.msdk.video.dynview.constant.a.f30706c, layoutParams.rightMargin + com.mbridge.msdk.video.dynview.constant.a.f30705b, layoutParams.bottomMargin + com.mbridge.msdk.video.dynview.constant.a.f30707d);
                relativeLayout.setLayoutParams(layoutParams);
            }
            if (relativeLayout.getLayoutParams() instanceof FrameLayout.LayoutParams) {
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) relativeLayout.getLayoutParams();
                layoutParams2.setMargins(layoutParams2.leftMargin + com.mbridge.msdk.video.dynview.constant.a.f30704a, layoutParams2.topMargin + com.mbridge.msdk.video.dynview.constant.a.f30706c, layoutParams2.rightMargin + com.mbridge.msdk.video.dynview.constant.a.f30705b, layoutParams2.bottomMargin + com.mbridge.msdk.video.dynview.constant.a.f30707d);
                relativeLayout.setLayoutParams(layoutParams2);
            }
        }
    }

    public int a(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        return str.hashCode();
    }
}
