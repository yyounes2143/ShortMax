package com.startshorts.androidplayer.ui.view.main;

import android.content.Context;
import android.os.CountDownTimer;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import com.mbridge.msdk.MBridgeConstans;
import com.startshorts.androidplayer.databinding.ItemNewUserRecommendBinding;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.ui.view.main.NewUserRecommendLayout;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.tencent.mmkv.MMKV;
import com.vungle.ads.internal.signals.SignalManager;
import fk.v;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NewUserRecommendLayout.kt */
@Metadata
@SourceDebugExtension({"SMAP\nNewUserRecommendLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewUserRecommendLayout.kt\ncom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,148:1\n296#2:149\n296#2:150\n*S KotlinDebug\n*F\n+ 1 NewUserRecommendLayout.kt\ncom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout\n*L\n38#1:149\n44#1:150\n*E\n"})
/* loaded from: classes7.dex */
public final class NewUserRecommendLayout extends FrameLayout {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ItemNewUserRecommendBinding f47454a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private a f47455b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private CountDownTimer f47456c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Runnable f47457d;

    /* compiled from: NewUserRecommendLayout.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface a {
        void a();

        void b();
    }

    /* compiled from: NewUserRecommendLayout.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends CountDownTimer {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ NewUserRecommendLayout f47458a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(long j10, NewUserRecommendLayout newUserRecommendLayout) {
            super(j10, 1000L);
            this.f47458a = newUserRecommendLayout;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            this.f47458a.i();
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j10) {
            this.f47458a.m(j10);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NewUserRecommendLayout(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(NewUserRecommendLayout newUserRecommendLayout, View view) {
        a aVar = newUserRecommendLayout.f47455b;
        if (aVar != null) {
            aVar.a();
        }
    }

    private final void f() {
        CountDownTimer countDownTimer = this.f47456c;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.f47456c = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(NewUserRecommendLayout newUserRecommendLayout) {
        newUserRecommendLayout.f47454a.getRoot().animate().translationX(0.0f).setDuration(600L).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i() {
        f();
        ud.b.f68412a.s4(0L);
        setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(long j10) {
        long j11 = j10 / 1000;
        long j12 = (long) MMKV.ExpireInHour;
        long j13 = j11 / j12;
        long j14 = j11 % j12;
        long j15 = 60;
        long j16 = j14 / j15;
        long j17 = j14 % j15;
        StringBuilder sb2 = new StringBuilder();
        if (j13 < 10) {
            sb2.append(MBridgeConstans.ENDCARD_URL_TYPE_PL);
        }
        sb2.append(j13);
        sb2.append(" : ");
        if (j16 < 10) {
            sb2.append(MBridgeConstans.ENDCARD_URL_TYPE_PL);
        }
        sb2.append(j16);
        sb2.append(" : ");
        if (j17 < 10) {
            sb2.append(MBridgeConstans.ENDCARD_URL_TYPE_PL);
        }
        sb2.append(j17);
        this.f47454a.f40514b.setText(sb2.toString());
    }

    private final void n(long j10) {
        long K;
        if (j10 == -1) {
            ud.b bVar = ud.b.f68412a;
            long K2 = DeviceUtil.f48146a.K();
            K = SignalManager.TWENTY_FOUR_HOURS_MILLIS;
            bVar.s4(K2 + SignalManager.TWENTY_FOUR_HOURS_MILLIS);
        } else {
            K = j10 - DeviceUtil.f48146a.K();
        }
        f();
        if (K > 1000) {
            m(K);
            b bVar2 = new b(K, this);
            this.f47456c = bVar2;
            bVar2.start();
            return;
        }
        i();
    }

    @Nullable
    public final a getCallback() {
        return this.f47455b;
    }

    public final void h() {
        if (getVisibility() == 8) {
            return;
        }
        removeCallbacks(this.f47457d);
        postDelayed(this.f47457d, 3100L);
    }

    public final void j() {
        f();
        removeCallbacks(this.f47457d);
        this.f47454a.getRoot().clearAnimation();
    }

    public final void k() {
        long f12 = ud.b.f68412a.f1();
        if (f12 != 0 && !ABTestFactory.f42224a.f1().isEnable().invoke().booleanValue()) {
            a aVar = this.f47455b;
            if (aVar != null) {
                aVar.b();
            }
            setVisibility(0);
            n(f12);
            return;
        }
        setVisibility(8);
        f();
    }

    public final void l() {
        if (getVisibility() == 8) {
            return;
        }
        removeCallbacks(this.f47457d);
        this.f47454a.getRoot().clearAnimation();
        float width = this.f47454a.f40513a.getWidth() / 2.0f;
        if (v.f51778a.b()) {
            width = -width;
        }
        this.f47454a.getRoot().animate().translationX(width).setDuration(600L).start();
    }

    public final void setCallback(@Nullable a aVar) {
        this.f47455b = aVar;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NewUserRecommendLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ NewUserRecommendLayout(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NewUserRecommendLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        ItemNewUserRecommendBinding b10 = ItemNewUserRecommendBinding.b(LayoutInflater.from(context), this, true);
        Intrinsics.checkNotNullExpressionValue(b10, "inflate(...)");
        this.f47454a = b10;
        b10.getRoot().setOnClickListener(new View.OnClickListener() { // from class: qj.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NewUserRecommendLayout.c(NewUserRecommendLayout.this, view);
            }
        });
        this.f47457d = new Runnable() { // from class: qj.g
            @Override // java.lang.Runnable
            public final void run() {
                NewUserRecommendLayout.g(NewUserRecommendLayout.this);
            }
        };
    }
}
