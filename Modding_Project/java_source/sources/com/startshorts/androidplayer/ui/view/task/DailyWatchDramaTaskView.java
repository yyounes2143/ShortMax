package com.startshorts.androidplayer.ui.view.task;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.transition.AutoTransition;
import androidx.transition.TransitionManager;
import com.airbnb.lottie.LottieAnimationView;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.task.DailyWatchDramaTaskView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import vi.e;
/* compiled from: DailyWatchDramaTaskView.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDailyWatchDramaTaskView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DailyWatchDramaTaskView.kt\ncom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,219:1\n254#2:220\n296#2:221\n*S KotlinDebug\n*F\n+ 1 DailyWatchDramaTaskView.kt\ncom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskView\n*L\n92#1:220\n168#1:221\n*E\n"})
/* loaded from: classes7.dex */
public final class DailyWatchDramaTaskView extends BaseConstraintLayout {
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public static final a f48043o = new a(null);
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private b f48044b;

    /* renamed from: c  reason: collision with root package name */
    private ImageView f48045c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f48046d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f48047e;

    /* renamed from: f  reason: collision with root package name */
    private ConstraintLayout f48048f;

    /* renamed from: g  reason: collision with root package name */
    private ConstraintLayout f48049g;

    /* renamed from: h  reason: collision with root package name */
    private ConstraintLayout f48050h;

    /* renamed from: i  reason: collision with root package name */
    private LottieAnimationView f48051i;

    /* renamed from: j  reason: collision with root package name */
    private TextView f48052j;

    /* renamed from: k  reason: collision with root package name */
    private ImageView f48053k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private r f48054l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private r f48055m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f48056n;

    /* compiled from: DailyWatchDramaTaskView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: DailyWatchDramaTaskView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void a();

        void b();

        void onClose();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DailyWatchDramaTaskView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G(DailyWatchDramaTaskView dailyWatchDramaTaskView) {
        dailyWatchDramaTaskView.P();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(DailyWatchDramaTaskView dailyWatchDramaTaskView, View view) {
        b bVar = dailyWatchDramaTaskView.f48044b;
        if (bVar != null) {
            bVar.onClose();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(DailyWatchDramaTaskView dailyWatchDramaTaskView, View view) {
        b bVar = dailyWatchDramaTaskView.f48044b;
        if (bVar != null) {
            bVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(DailyWatchDramaTaskView dailyWatchDramaTaskView, View view) {
        b bVar = dailyWatchDramaTaskView.f48044b;
        if (bVar != null) {
            bVar.b();
        }
    }

    public static /* synthetic */ void M(DailyWatchDramaTaskView dailyWatchDramaTaskView, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "";
        }
        dailyWatchDramaTaskView.L(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N(DailyWatchDramaTaskView dailyWatchDramaTaskView, long j10) {
        LottieAnimationView lottieAnimationView = dailyWatchDramaTaskView.f48051i;
        LottieAnimationView lottieAnimationView2 = null;
        if (lottieAnimationView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mTaskCapsuleLav");
            lottieAnimationView = null;
        }
        lottieAnimationView.setRepeatCount(0);
        LottieAnimationView lottieAnimationView3 = dailyWatchDramaTaskView.f48051i;
        if (lottieAnimationView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mTaskCapsuleLav");
        } else {
            lottieAnimationView2 = lottieAnimationView3;
        }
        lottieAnimationView2.y();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit O() {
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Q(DailyWatchDramaTaskView dailyWatchDramaTaskView, long j10) {
        LottieAnimationView lottieAnimationView = dailyWatchDramaTaskView.f48051i;
        LottieAnimationView lottieAnimationView2 = null;
        if (lottieAnimationView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mTaskCapsuleLav");
            lottieAnimationView = null;
        }
        lottieAnimationView.setRepeatCount(0);
        LottieAnimationView lottieAnimationView3 = dailyWatchDramaTaskView.f48051i;
        if (lottieAnimationView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mTaskCapsuleLav");
        } else {
            lottieAnimationView2 = lottieAnimationView3;
        }
        lottieAnimationView2.y();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit R() {
        return Unit.f60915a;
    }

    public final void D() {
        r rVar = this.f48054l;
        if (rVar != null) {
            if (rVar != null) {
                r.a.b(rVar, null, 1, null);
            }
            this.f48054l = null;
        }
    }

    public final void E() {
        r rVar = this.f48055m;
        if (rVar != null) {
            if (rVar != null) {
                r.a.b(rVar, null, 1, null);
            }
            this.f48055m = null;
        }
    }

    public final void F() {
        E();
        this.f48055m = CoroutineUtil.g(CoroutineUtil.f48072a, 5000L, null, new Function0() { // from class: dk.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit G;
                G = DailyWatchDramaTaskView.G(DailyWatchDramaTaskView.this);
                return G;
            }
        }, 2, null);
    }

    public final void H() {
        TextView textView = this.f48046d;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mTaskCoinBonusTv");
            textView = null;
        }
        textView.setVisibility(8);
    }

    public final void L(@NotNull String reminderText) {
        Intrinsics.checkNotNullParameter(reminderText, "reminderText");
        int b10 = e.f68955a.b();
        ConstraintLayout constraintLayout = this.f48050h;
        LottieAnimationView lottieAnimationView = null;
        if (constraintLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mTaskCapsuleCl");
            constraintLayout = null;
        }
        if (constraintLayout.getVisibility() == 0) {
            ConstraintLayout constraintLayout2 = this.f48049g;
            if (constraintLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mTaskBigCl");
                constraintLayout2 = null;
            }
            constraintLayout2.setVisibility(8);
            if (b10 > 0) {
                TextView textView = this.f48052j;
                if (textView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mTaskCoinBonusCapsuleTv");
                    textView = null;
                }
                textView.setText("+\n" + b10);
                TextView textView2 = this.f48052j;
                if (textView2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mTaskCoinBonusCapsuleTv");
                    textView2 = null;
                }
                textView2.setVisibility(0);
                ImageView imageView = this.f48053k;
                if (imageView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mCapsuleBgIv");
                    imageView = null;
                }
                imageView.setVisibility(0);
                LottieAnimationView lottieAnimationView2 = this.f48051i;
                if (lottieAnimationView2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mTaskCapsuleLav");
                } else {
                    lottieAnimationView = lottieAnimationView2;
                }
                lottieAnimationView.setVisibility(8);
            } else {
                TextView textView3 = this.f48052j;
                if (textView3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mTaskCoinBonusCapsuleTv");
                    textView3 = null;
                }
                textView3.setVisibility(8);
                ImageView imageView2 = this.f48053k;
                if (imageView2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mCapsuleBgIv");
                    imageView2 = null;
                }
                imageView2.setVisibility(8);
                LottieAnimationView lottieAnimationView3 = this.f48051i;
                if (lottieAnimationView3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mTaskCapsuleLav");
                } else {
                    lottieAnimationView = lottieAnimationView3;
                }
                lottieAnimationView.setVisibility(0);
                D();
                this.f48054l = CoroutineUtil.f48072a.e(Long.MAX_VALUE, 6000L, new Function1() { // from class: dk.m
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        Unit N;
                        N = DailyWatchDramaTaskView.N(DailyWatchDramaTaskView.this, ((Long) obj).longValue());
                        return N;
                    }
                }, new Function0() { // from class: dk.n
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit O;
                        O = DailyWatchDramaTaskView.O();
                        return O;
                    }
                });
            }
        }
        X(reminderText, b10);
    }

    public final void P() {
        if (getVisibility() == 8) {
            return;
        }
        ConstraintLayout constraintLayout = this.f48050h;
        LottieAnimationView lottieAnimationView = null;
        if (constraintLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mTaskCapsuleCl");
            constraintLayout = null;
        }
        TransitionManager.beginDelayedTransition(constraintLayout, new AutoTransition());
        ConstraintLayout constraintLayout2 = this.f48050h;
        if (constraintLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mTaskCapsuleCl");
            constraintLayout2 = null;
        }
        constraintLayout2.setVisibility(0);
        ConstraintLayout constraintLayout3 = this.f48049g;
        if (constraintLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mTaskBigCl");
            constraintLayout3 = null;
        }
        constraintLayout3.setVisibility(8);
        int b10 = e.f68955a.b();
        if (b10 > 0) {
            TextView textView = this.f48052j;
            if (textView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mTaskCoinBonusCapsuleTv");
                textView = null;
            }
            textView.setText("+\n" + b10);
            TextView textView2 = this.f48052j;
            if (textView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mTaskCoinBonusCapsuleTv");
                textView2 = null;
            }
            textView2.setVisibility(0);
            ImageView imageView = this.f48053k;
            if (imageView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mCapsuleBgIv");
                imageView = null;
            }
            imageView.setVisibility(0);
            LottieAnimationView lottieAnimationView2 = this.f48051i;
            if (lottieAnimationView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mTaskCapsuleLav");
            } else {
                lottieAnimationView = lottieAnimationView2;
            }
            lottieAnimationView.setVisibility(8);
            return;
        }
        TextView textView3 = this.f48052j;
        if (textView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mTaskCoinBonusCapsuleTv");
            textView3 = null;
        }
        textView3.setVisibility(8);
        ImageView imageView2 = this.f48053k;
        if (imageView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mCapsuleBgIv");
            imageView2 = null;
        }
        imageView2.setVisibility(8);
        LottieAnimationView lottieAnimationView3 = this.f48051i;
        if (lottieAnimationView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mTaskCapsuleLav");
        } else {
            lottieAnimationView = lottieAnimationView3;
        }
        lottieAnimationView.setVisibility(0);
        D();
        this.f48054l = CoroutineUtil.f48072a.e(Long.MAX_VALUE, 6000L, new Function1() { // from class: dk.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit Q;
                Q = DailyWatchDramaTaskView.Q(DailyWatchDramaTaskView.this, ((Long) obj).longValue());
                return Q;
            }
        }, new Function0() { // from class: dk.l
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit R;
                R = DailyWatchDramaTaskView.R();
                return R;
            }
        });
    }

    public final void S() {
        TextView textView = this.f48047e;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mTaskReminderTv");
            textView = null;
        }
        textView.setText(getContext().getString(R$string.daily_watch_drama_task_more));
        H();
    }

    public final void T(@NotNull String reminderText) {
        Intrinsics.checkNotNullParameter(reminderText, "reminderText");
        TextView textView = this.f48047e;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mTaskReminderTv");
            textView = null;
        }
        textView.setText(reminderText);
        H();
    }

    public final void U(int i10) {
        TextView textView = this.f48047e;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mTaskReminderTv");
            textView = null;
        }
        textView.setText(getContext().getString(R$string.daily_watch_drama_task_claim));
        W(i10);
    }

    public final void V() {
        D();
        ConstraintLayout constraintLayout = this.f48049g;
        ConstraintLayout constraintLayout2 = null;
        if (constraintLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mTaskBigCl");
            constraintLayout = null;
        }
        constraintLayout.setVisibility(0);
        ConstraintLayout constraintLayout3 = this.f48050h;
        if (constraintLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mTaskCapsuleCl");
        } else {
            constraintLayout2 = constraintLayout3;
        }
        constraintLayout2.setVisibility(8);
        F();
    }

    public final void W(int i10) {
        TextView textView = this.f48046d;
        TextView textView2 = null;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mTaskCoinBonusTv");
            textView = null;
        }
        textView.setVisibility(0);
        TextView textView3 = this.f48046d;
        if (textView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mTaskCoinBonusTv");
        } else {
            textView2 = textView3;
        }
        textView2.setText(String.valueOf(i10));
    }

    public final void X(@NotNull String reminderText, int i10) {
        Intrinsics.checkNotNullParameter(reminderText, "reminderText");
        if (this.f48056n) {
            S();
        } else if (i10 > 0) {
            U(i10);
        } else {
            T(reminderText);
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_task_daily_watch_drama;
    }

    public final void setAllTaskComplete(boolean z10) {
        this.f48056n = z10;
    }

    public final void setListener(@NotNull b listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f48044b = listener;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f48045c = (ImageView) findViewById(R$id.close_iv);
        this.f48046d = (TextView) findViewById(R$id.task_coin_bonus_tv);
        this.f48047e = (TextView) findViewById(R$id.task_reminder_tv);
        this.f48048f = (ConstraintLayout) findViewById(R$id.task_cl);
        this.f48049g = (ConstraintLayout) findViewById(R$id.task_big_cl);
        this.f48050h = (ConstraintLayout) findViewById(R$id.task_capsule_cl);
        this.f48051i = (LottieAnimationView) findViewById(R$id.capsule_animation_lv);
        this.f48052j = (TextView) findViewById(R$id.task_coin_bonus_capsule_tv);
        this.f48053k = (ImageView) findViewById(R$id.capsule_bg_iv);
        ImageView imageView = this.f48045c;
        ConstraintLayout constraintLayout = null;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mCloseIv");
            imageView = null;
        }
        imageView.setOnClickListener(new View.OnClickListener() { // from class: dk.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DailyWatchDramaTaskView.I(DailyWatchDramaTaskView.this, view);
            }
        });
        ConstraintLayout constraintLayout2 = this.f48050h;
        if (constraintLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mTaskCapsuleCl");
            constraintLayout2 = null;
        }
        constraintLayout2.setOnClickListener(new View.OnClickListener() { // from class: dk.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DailyWatchDramaTaskView.J(DailyWatchDramaTaskView.this, view);
            }
        });
        ConstraintLayout constraintLayout3 = this.f48049g;
        if (constraintLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mTaskBigCl");
        } else {
            constraintLayout = constraintLayout3;
        }
        constraintLayout.setOnClickListener(new View.OnClickListener() { // from class: dk.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DailyWatchDramaTaskView.K(DailyWatchDramaTaskView.this, view);
            }
        });
        F();
    }
}
