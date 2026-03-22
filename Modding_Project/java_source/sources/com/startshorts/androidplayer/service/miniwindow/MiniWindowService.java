package com.startshorts.androidplayer.service.miniwindow;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.DecelerateInterpolator;
import android.widget.ProgressBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewStubProxy;
import au.l;
import com.airbnb.lottie.LottieAnimationView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.utils.Error;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.bean.eventbus.AppLanguageUpdatedEvent;
import com.startshorts.androidplayer.bean.eventbus.MiniWindowPlayEvent;
import com.startshorts.androidplayer.bean.eventbus.MiniWindowVisibleEvent;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.shorts.FloatingWindow;
import com.startshorts.androidplayer.databinding.ItemWindowPlayBinding;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.service.miniwindow.MiniWindowService;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.ui.view.immersion.floatwindow.FloatWindowPlayLayout;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.v;
import fk.z;
import jk.e0;
import jk.g;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MiniWindowService.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class MiniWindowService extends Service {
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public static final a f44813k = new a(null);

    /* renamed from: l  reason: collision with root package name */
    private static final int f44814l = g.a(9.0f);

    /* renamed from: m  reason: collision with root package name */
    private static volatile boolean f44815m;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private WindowManager f44816a;

    /* renamed from: b  reason: collision with root package name */
    private final ValueAnimator f44817b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final WindowManager.LayoutParams f44818c;

    /* renamed from: d  reason: collision with root package name */
    public ItemWindowPlayBinding f44819d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f44820e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f44821f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f44822g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final Handler f44823h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final c f44824i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final BroadcastReceiver f44825j;

    /* compiled from: MiniWindowService.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a() {
            return MiniWindowService.f44815m;
        }

        private a() {
        }
    }

    /* compiled from: MiniWindowService.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nMiniWindowService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MiniWindowService.kt\ncom/startshorts/androidplayer/service/miniwindow/MiniWindowService$initVideoView$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,637:1\n254#2:638\n*S KotlinDebug\n*F\n+ 1 MiniWindowService.kt\ncom/startshorts/androidplayer/service/miniwindow/MiniWindowService$initVideoView$1\n*L\n271#1:638\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class b implements FloatWindowPlayLayout.b {
        b() {
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.floatwindow.FloatWindowPlayLayout.b
        public void a() {
            ValueAnimator valueAnimator = MiniWindowService.this.f44817b;
            valueAnimator.removeAllUpdateListeners();
            valueAnimator.removeAllListeners();
            valueAnimator.cancel();
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.floatwindow.FloatWindowPlayLayout.b
        public void b(float f10) {
            if (f10 == 1.0f) {
                return;
            }
            float f11 = MiniWindowService.this.f44818c.height;
            float f12 = f10 * f11;
            float f13 = 0.5625f * f12;
            float f14 = 2;
            float f15 = (f13 - MiniWindowService.this.f44818c.width) / f14;
            float f16 = (f12 - f11) / f14;
            WindowManager.LayoutParams layoutParams = MiniWindowService.this.f44818c;
            layoutParams.height = (int) f12;
            layoutParams.width = (int) f13;
            layoutParams.x -= (int) f15;
            layoutParams.y -= (int) f16;
            WindowManager windowManager = MiniWindowService.this.f44816a;
            if (windowManager != null) {
                windowManager.updateViewLayout(MiniWindowService.this.l().getRoot(), MiniWindowService.this.f44818c);
            }
            MiniWindowService.this.N();
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.floatwindow.FloatWindowPlayLayout.b
        public void c() {
            boolean z10;
            MiniWindowService miniWindowService = MiniWindowService.this;
            ConstraintLayout controllerLayout = miniWindowService.l().f41077a;
            Intrinsics.checkNotNullExpressionValue(controllerLayout, "controllerLayout");
            if (controllerLayout.getVisibility() == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            miniWindowService.M(!z10);
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.floatwindow.FloatWindowPlayLayout.b
        public void d(float f10, float f11) {
            if (f10 != 0.0f || f11 != 0.0f) {
                MiniWindowService.this.f44818c.x += (int) f10;
                MiniWindowService.this.f44818c.y += (int) f11;
                WindowManager windowManager = MiniWindowService.this.f44816a;
                if (windowManager != null) {
                    windowManager.updateViewLayout(MiniWindowService.this.l().getRoot(), MiniWindowService.this.f44818c);
                }
                MiniWindowService.this.N();
            }
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.floatwindow.FloatWindowPlayLayout.b
        public void onDoubleTap() {
            FloatingWindow floatingWindow;
            int i10;
            Object tag = MiniWindowService.this.l().getRoot().getTag();
            if (tag instanceof FloatingWindow) {
                floatingWindow = (FloatingWindow) tag;
            } else {
                floatingWindow = null;
            }
            if (floatingWindow == null) {
                return;
            }
            FloatingWindow.Companion companion = FloatingWindow.Companion;
            float nextRatio = companion.nextRatio(floatingWindow.getRatio());
            floatingWindow.setRatio(nextRatio);
            int i11 = MiniWindowService.this.getResources().getDisplayMetrics().widthPixels;
            int i12 = MiniWindowService.this.getResources().getDisplayMetrics().heightPixels;
            int i13 = (int) (i12 * nextRatio);
            int i14 = (int) (i13 * 0.5625f);
            int i15 = MiniWindowService.this.f44818c.x;
            int i16 = MiniWindowService.this.f44818c.y;
            MiniWindowService.this.f44818c.height = i13;
            MiniWindowService.this.f44818c.width = i14;
            WindowManager.LayoutParams layoutParams = MiniWindowService.this.f44818c;
            if (i15 + (i14 / 2) < i11 / 2) {
                i10 = MiniWindowService.f44814l;
            } else {
                i10 = (i11 - i14) - MiniWindowService.f44814l;
            }
            layoutParams.x = i10;
            WindowManager.LayoutParams layoutParams2 = MiniWindowService.this.f44818c;
            if (i16 < 0) {
                i16 = 0;
            } else {
                int i17 = i12 - i13;
                if (i16 > i17 - MiniWindowService.f44814l) {
                    i16 = i17 - MiniWindowService.f44814l;
                }
            }
            layoutParams2.y = i16;
            WindowManager windowManager = MiniWindowService.this.f44816a;
            if (windowManager != null) {
                windowManager.updateViewLayout(MiniWindowService.this.l().getRoot(), MiniWindowService.this.f44818c);
            }
            MiniWindowService.this.N();
            MiniWindowService.this.l().f41088l.setTextSize(companion.fontRatio(nextRatio));
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.floatwindow.FloatWindowPlayLayout.b
        public void onUp() {
            Handler handler = MiniWindowService.this.f44823h;
            handler.removeMessages(1);
            handler.sendEmptyMessageDelayed(1, 200L);
        }
    }

    /* compiled from: MiniWindowService.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            MiniWindowService.this.f44823h.removeMessages(2);
            if (Intrinsics.areEqual(v10, MiniWindowService.this.l().f41080d)) {
                MiniWindowService.this.u("close");
                MiniWindowService.this.stopSelf();
            } else if (Intrinsics.areEqual(v10, MiniWindowService.this.l().f41084h)) {
                MiniWindowService.this.u("return_full_screen");
                MiniWindowService.this.y();
            } else {
                int i10 = 0;
                if (Intrinsics.areEqual(v10, MiniWindowService.this.l().f41079c)) {
                    MiniWindowService.this.u("fast_rewind");
                    if (MiniWindowService.this.s()) {
                        return;
                    }
                    int progress = MiniWindowService.this.l().f41086j.getProgress() + Error.Timeout;
                    if (progress >= 0) {
                        i10 = progress;
                    }
                    MiniWindowService.this.A(i10);
                    if (!MiniWindowService.this.t()) {
                        MiniWindowService.this.z(true);
                    }
                } else if (Intrinsics.areEqual(v10, MiniWindowService.this.l().f41081e)) {
                    MiniWindowService.this.u("fast_forward");
                    if (MiniWindowService.this.s()) {
                        return;
                    }
                    int progress2 = MiniWindowService.this.l().f41086j.getProgress() + 10000;
                    int max = MiniWindowService.this.l().f41086j.getMax();
                    if (progress2 > max) {
                        progress2 = max;
                    }
                    if (!MiniWindowService.this.t()) {
                        MiniWindowService.this.z(true);
                    }
                    MiniWindowService.this.A(progress2);
                } else if (Intrinsics.areEqual(v10, MiniWindowService.this.l().f41082f)) {
                    if (MiniWindowService.this.s()) {
                        MiniWindowService.this.w(true);
                        return;
                    } else if (!MiniWindowService.this.t()) {
                        MiniWindowService.this.u("play");
                        MiniWindowService.this.z(true);
                    } else {
                        MiniWindowService.this.u(CampaignEx.JSON_NATIVE_VIDEO_PAUSE);
                        MiniWindowService.this.x(true);
                    }
                } else if (Intrinsics.areEqual(v10, MiniWindowService.this.l().f41083g)) {
                    MiniWindowService.this.M(false);
                    MiniWindowService.this.w(true);
                }
            }
            if (!Intrinsics.areEqual(v10, MiniWindowService.this.l().f41080d) || !Intrinsics.areEqual(v10, MiniWindowService.this.l().f41084h)) {
                MiniWindowService.this.f44823h.sendEmptyMessageDelayed(2, 3000L);
            }
        }
    }

    /* compiled from: MiniWindowService.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends AnimatorListenerAdapter {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ float f44829b;

        d(float f10) {
            this.f44829b = f10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            FloatingWindow floatingWindow;
            Intrinsics.checkNotNullParameter(animation, "animation");
            Object tag = MiniWindowService.this.l().getRoot().getTag();
            if (tag instanceof FloatingWindow) {
                floatingWindow = (FloatingWindow) tag;
            } else {
                floatingWindow = null;
            }
            if (floatingWindow == null) {
                return;
            }
            floatingWindow.update(this.f44829b, MiniWindowService.this.f44818c.x, MiniWindowService.this.f44818c.y);
            ud.b.f68412a.N3(floatingWindow);
        }
    }

    public MiniWindowService() {
        int i10;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f44817b = ofFloat;
        this.f44823h = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: nh.h
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                boolean v10;
                v10 = MiniWindowService.v(MiniWindowService.this, message);
                return v10;
            }
        });
        if (Build.VERSION.SDK_INT >= 26) {
            i10 = 2038;
        } else {
            i10 = 2002;
        }
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, i10, 8872, -3);
        this.f44818c = layoutParams;
        layoutParams.gravity = 8388659;
        ofFloat.setDuration(500L);
        ofFloat.setInterpolator(new DecelerateInterpolator());
        this.f44824i = new c();
        this.f44825j = new BroadcastReceiver() { // from class: com.startshorts.androidplayer.service.miniwindow.MiniWindowService$receiver$1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(intent, "intent");
                String action = intent.getAction();
                if (action != null && action.hashCode() == -2128145023 && action.equals("android.intent.action.SCREEN_OFF")) {
                    Logger logger = Logger.f41511a;
                    logger.h("MiniWindowService", "SCREEN_OFF -> isPlayComplete(" + MiniWindowService.this.s() + ") isPlaying(" + MiniWindowService.this.t() + ')');
                    if (!MiniWindowService.this.s() && MiniWindowService.this.t()) {
                        MiniWindowService.this.x(false);
                    }
                }
            }
        };
    }

    private final void B() {
        int i10;
        int i11;
        FloatingWindow floatingWindow;
        int i12 = getResources().getDisplayMetrics().widthPixels;
        int i13 = getResources().getDisplayMetrics().heightPixels;
        float f10 = i13;
        FloatingWindow.Companion companion = FloatingWindow.Companion;
        float closestRatio = companion.closestRatio((this.f44818c.height * 1.0f) / f10);
        l().f41088l.setTextSize(companion.fontRatio(closestRatio));
        WindowManager.LayoutParams layoutParams = this.f44818c;
        final int i14 = layoutParams.height;
        final int i15 = layoutParams.width;
        int i16 = (int) (f10 * closestRatio);
        int i17 = (int) (i16 * 0.5625f);
        final int i18 = layoutParams.x;
        final int i19 = layoutParams.y;
        if ((i17 / 2) + i18 >= i12 / 2) {
            i10 = (i12 - i17) - f44814l;
        } else {
            i10 = f44814l;
        }
        if (i19 < 0) {
            i11 = 0;
        } else {
            int i20 = i13 - i16;
            int i21 = f44814l;
            if (i19 > i20 - i21) {
                i11 = i20 - i21;
            } else {
                i11 = i19;
            }
        }
        final int i22 = i10 - i18;
        final int i23 = i11 - i19;
        final int i24 = i17 - i15;
        final int i25 = i16 - i14;
        if (i22 == 0 && i23 == 0 && i24 == 0 && i25 == 0) {
            Object tag = l().getRoot().getTag();
            if (tag instanceof FloatingWindow) {
                floatingWindow = (FloatingWindow) tag;
            } else {
                floatingWindow = null;
            }
            if (floatingWindow == null) {
                return;
            }
            WindowManager.LayoutParams layoutParams2 = this.f44818c;
            floatingWindow.update(closestRatio, layoutParams2.x, layoutParams2.y);
            ud.b.f68412a.N3(floatingWindow);
            return;
        }
        this.f44817b.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: nh.i
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                MiniWindowService.C(MiniWindowService.this, i18, i22, i19, i23, i15, i24, i14, i25, valueAnimator);
            }
        });
        this.f44817b.addListener(new d(closestRatio));
        this.f44817b.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(MiniWindowService miniWindowService, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, ValueAnimator animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        WindowManager.LayoutParams layoutParams = miniWindowService.f44818c;
        layoutParams.x = i10 + ((int) (i11 * floatValue));
        layoutParams.y = i12 + ((int) (i13 * floatValue));
        layoutParams.width = i14 + ((int) (i15 * floatValue));
        layoutParams.height = i16 + ((int) (i17 * floatValue));
        WindowManager windowManager = miniWindowService.f44816a;
        if (windowManager != null) {
            windowManager.updateViewLayout(miniWindowService.l().getRoot(), layoutParams);
        }
        miniWindowService.N();
    }

    private final void D() {
        if (this.f44821f) {
            l().f41082f.setImageResource(R$drawable.ic_mini_pause);
        } else if (v.f51778a.b()) {
            l().f41082f.setImageResource(R$drawable.ic_mini_play_rtl);
        } else {
            l().f41082f.setImageResource(R$drawable.ic_mini_play);
        }
    }

    private final void E() {
        if (v.f51778a.b()) {
            l().f41089m.setLayoutDirection(1);
            l().f41084h.setImageResource(R$drawable.ic_mini_restore_rtl);
            l().f41083g.setImageResource(R$drawable.ic_mini_next_rtl);
            l().f41081e.setImageResource(R$drawable.ic_mini_forward_rtl);
            l().f41079c.setImageResource(R$drawable.ic_mini_backward_rtl);
        } else {
            l().f41089m.setLayoutDirection(0);
            l().f41084h.setImageResource(R$drawable.ic_mini_restore);
            l().f41083g.setImageResource(R$drawable.ic_mini_next);
            l().f41081e.setImageResource(R$drawable.ic_mini_forward);
            l().f41079c.setImageResource(R$drawable.ic_mini_backward);
        }
        D();
    }

    private final void F() {
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            if (!DeviceUtil.f48146a.X()) {
                registerReceiver(this.f44825j, intentFilter, 2);
            } else {
                registerReceiver(this.f44825j, intentFilter);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N() {
        ViewGroup.LayoutParams layoutParams = l().f41090n.getLayoutParams();
        WindowManager.LayoutParams layoutParams2 = this.f44818c;
        layoutParams.width = layoutParams2.width;
        layoutParams.height = layoutParams2.height;
    }

    private final void P() {
        FloatingWindow B0 = ud.b.f68412a.B0();
        if (B0 == null) {
            return;
        }
        int i10 = getResources().getDisplayMetrics().widthPixels;
        int i11 = getResources().getDisplayMetrics().heightPixels;
        int x10 = B0.getX();
        int ratio = (int) (((int) (i11 * B0.getRatio())) * 0.5625f);
        if (this.f44822g) {
            this.f44818c.x = x10;
        } else {
            if (x10 < i10 / 2) {
                i10 = -ratio;
            }
            this.f44818c.x = i10;
        }
        WindowManager windowManager = this.f44816a;
        if (windowManager != null) {
            windowManager.updateViewLayout(l().getRoot(), this.f44818c);
        }
    }

    private final void k() {
        int x10;
        int i10;
        FloatingWindow floatingWindow;
        int i11;
        int i12;
        WindowManager windowManager;
        if (this.f44816a == null) {
            Object systemService = getSystemService("window");
            if (systemService instanceof WindowManager) {
                windowManager = (WindowManager) systemService;
            } else {
                windowManager = null;
            }
            this.f44816a = windowManager;
            if (windowManager != null) {
                windowManager.addView(l().getRoot(), this.f44818c);
            }
        }
        ud.b bVar = ud.b.f68412a;
        FloatingWindow B0 = bVar.B0();
        int i13 = getResources().getDisplayMetrics().heightPixels;
        if (B0 == null) {
            i11 = (int) (i13 * 0.24f);
            i10 = (int) (i11 * 0.5625f);
            x10 = f44814l;
            i12 = (i13 - i11) - x10;
            floatingWindow = new FloatingWindow();
            floatingWindow.setRatio(0.24f);
            floatingWindow.setX(x10);
            floatingWindow.setY(i12);
            bVar.N3(floatingWindow);
        } else {
            x10 = B0.getX();
            int y10 = B0.getY();
            int ratio = (int) (i13 * B0.getRatio());
            i10 = (int) (ratio * 0.5625f);
            floatingWindow = B0;
            i11 = ratio;
            i12 = y10;
        }
        WindowManager.LayoutParams layoutParams = this.f44818c;
        layoutParams.x = x10;
        layoutParams.y = i12;
        layoutParams.width = i10;
        layoutParams.height = i11;
        WindowManager windowManager2 = this.f44816a;
        if (windowManager2 != null) {
            windowManager2.updateViewLayout(l().getRoot(), layoutParams);
        }
        N();
        View root = l().getRoot();
        root.setTag(floatingWindow);
        root.invalidate();
    }

    private final void p() {
        l().f41090n.setListener(new b());
    }

    private final void q() {
        ItemWindowPlayBinding l10 = l();
        l10.f41080d.setOnClickListener(this.f44824i);
        l10.f41084h.setOnClickListener(this.f44824i);
        l10.f41079c.setOnClickListener(this.f44824i);
        l10.f41081e.setOnClickListener(this.f44824i);
        l10.f41082f.setOnClickListener(this.f44824i);
        l10.f41083g.setOnClickListener(this.f44824i);
        p();
        E();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u(String str) {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString(TextureRenderKeys.KEY_IS_ACTION, str);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "pip_action", bundle, 0L, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean v(MiniWindowService miniWindowService, Message it) {
        Intrinsics.checkNotNullParameter(it, "it");
        int i10 = it.what;
        if (i10 != 1) {
            if (i10 == 2) {
                miniWindowService.M(false);
            }
        } else {
            miniWindowService.B();
        }
        return true;
    }

    public abstract void A(int i10);

    public abstract boolean G(@Nullable Intent intent);

    public final void H(@NotNull ItemWindowPlayBinding itemWindowPlayBinding) {
        Intrinsics.checkNotNullParameter(itemWindowPlayBinding, "<set-?>");
        this.f44819d = itemWindowPlayBinding;
    }

    public final void I(boolean z10) {
        this.f44820e = z10;
    }

    public final void J(boolean z10) {
        if (this.f44821f != z10) {
            this.f44821f = z10;
            D();
            if (z10) {
                au.c.d().l(new MiniWindowPlayEvent());
            }
        }
    }

    public final void K(@Nullable String str) {
        int F = (int) (DeviceUtil.f48146a.F() * 0.45f);
        l().f41078b.setVisibility(0);
        f fVar = f.f60747a;
        CustomFrescoView customFrescoView = l().f41078b;
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(str);
        frescoConfig.setOssWidth((int) (F * 0.5625f));
        frescoConfig.setOssHeight(F);
        frescoConfig.setPlaceholderResId(R$drawable.ic_banner_placeholder);
        frescoConfig.setCornerTransform(true);
        frescoConfig.setCornerRadius(z.f51786a.d());
        Unit unit = Unit.f60915a;
        fVar.A(customFrescoView, frescoConfig);
    }

    public final void L() {
        LottieAnimationView lottieAnimationView;
        ViewStubProxy viewStubProxy = l().f41085i;
        Intrinsics.checkNotNull(viewStubProxy);
        e0.g(viewStubProxy);
        View root = viewStubProxy.getRoot();
        if (root instanceof LottieAnimationView) {
            lottieAnimationView = (LottieAnimationView) root;
        } else {
            lottieAnimationView = null;
        }
        if (lottieAnimationView != null && !lottieAnimationView.t()) {
            lottieAnimationView.y();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void M(boolean z10) {
        int i10;
        ConstraintLayout constraintLayout = l().f41077a;
        if (z10) {
            i10 = 0;
        } else {
            i10 = 4;
        }
        constraintLayout.setVisibility(i10);
        if (z10) {
            Handler handler = this.f44823h;
            handler.removeMessages(2);
            handler.sendEmptyMessageDelayed(2, 3000L);
        }
    }

    public final void O(int i10) {
        l().f41086j.setProgress(i10);
    }

    @NotNull
    public final ItemWindowPlayBinding l() {
        ItemWindowPlayBinding itemWindowPlayBinding = this.f44819d;
        if (itemWindowPlayBinding != null) {
            return itemWindowPlayBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mBinding");
        return null;
    }

    public final void m() {
        l().f41078b.setVisibility(4);
    }

    public final void n() {
        LottieAnimationView lottieAnimationView;
        View root = l().f41085i.getRoot();
        if (root instanceof LottieAnimationView) {
            lottieAnimationView = (LottieAnimationView) root;
        } else {
            lottieAnimationView = null;
        }
        if (lottieAnimationView != null) {
            lottieAnimationView.m();
            lottieAnimationView.setVisibility(8);
        }
    }

    public final void o(int i10, int i11) {
        ProgressBar progressBar = l().f41086j;
        progressBar.setMax(i11);
        progressBar.setProgress(i10);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        f44815m = true;
        H(ItemWindowPlayBinding.b(LayoutInflater.from(this)));
        au.c.d().p(this);
        F();
        q();
    }

    @Override // android.app.Service
    public void onDestroy() {
        WindowManager windowManager;
        f44815m = false;
        super.onDestroy();
        au.c.d().r(this);
        this.f44823h.removeCallbacksAndMessages(null);
        ValueAnimator valueAnimator = this.f44817b;
        if (valueAnimator.isRunning()) {
            valueAnimator.removeAllUpdateListeners();
            valueAnimator.removeAllListeners();
            valueAnimator.cancel();
        }
        try {
            unregisterReceiver(this.f44825j);
        } catch (Exception unused) {
        }
        try {
            if (this.f44819d != null && (windowManager = this.f44816a) != null) {
                windowManager.removeView(l().getRoot());
            }
        } catch (Exception unused2) {
        }
    }

    @Override // android.app.Service
    public int onStartCommand(@Nullable Intent intent, int i10, int i11) {
        if (G(intent)) {
            k();
        }
        M(true);
        return 1;
    }

    public final boolean r() {
        if (l().f41078b.getVisibility() == 0) {
            return true;
        }
        return false;
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveAppLanguageUpdatedEvent(@NotNull AppLanguageUpdatedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Logger logger = Logger.f41511a;
        logger.h("MiniWindowService", "receiveAppLanguageUpdatedEvent -> " + event);
        E();
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveMiniWindowVisibleEvent(@NotNull MiniWindowVisibleEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Logger logger = Logger.f41511a;
        logger.h("MiniWindowService", "receiveMiniWindowVisibleEvent -> " + event);
        this.f44822g = event.getVisible();
        if (event.getVisible()) {
            if (!this.f44820e && !this.f44821f) {
                z(false);
            }
        } else if (!this.f44820e && this.f44821f) {
            x(false);
        }
        P();
    }

    public final boolean s() {
        return this.f44820e;
    }

    public final boolean t() {
        return this.f44821f;
    }

    public abstract void w(boolean z10);

    public abstract void x(boolean z10);

    public abstract void y();

    public abstract void z(boolean z10);
}
