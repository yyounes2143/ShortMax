package com.startshorts.androidplayer.ui.view.reward;

import android.content.Context;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.ImageView;
import com.hades.aar.activity.IDActivity;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.reward.DiscoverRewardBoxView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import java.lang.ref.WeakReference;
import jk.b0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: DiscoverRewardBoxView.kt */
@Metadata
/* loaded from: classes7.dex */
public class DiscoverRewardBoxView extends BaseConstraintLayout {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final a f47777g = new a(null);
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private String f47778b;

    /* renamed from: c  reason: collision with root package name */
    public BaseTextView f47779c;

    /* renamed from: d  reason: collision with root package name */
    public ImageView f47780d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private b f47781e;

    /* renamed from: f  reason: collision with root package name */
    private int f47782f;

    /* compiled from: DiscoverRewardBoxView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: DiscoverRewardBoxView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void a();
    }

    /* compiled from: DiscoverRewardBoxView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends d {
        c() {
            super(0L, 1, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit c(DiscoverRewardBoxView discoverRewardBoxView, boolean z10) {
            discoverRewardBoxView.s("showInterstitialScene -> onComplete(" + z10 + ')');
            b mListener = discoverRewardBoxView.getMListener();
            if (mListener != null) {
                mListener.a();
            }
            return Unit.f60915a;
        }

        @Override // yd.d
        public void a(View v10) {
            IDActivity iDActivity;
            Intrinsics.checkNotNullParameter(v10, "v");
            if (Intrinsics.areEqual(DiscoverRewardBoxView.this.getMFrom(), "home_reward")) {
                EventManager.s0(EventManager.f42463a, "home_reward_click", null, 0L, 6, null);
                com.startshorts.androidplayer.manager.configure.ad.c cVar = com.startshorts.androidplayer.manager.configure.ad.c.f42340a;
                cVar.c();
                String mFrom = DiscoverRewardBoxView.this.getMFrom();
                WeakReference<IDActivity> d10 = aa.a.f321a.d();
                if (d10 != null) {
                    iDActivity = d10.get();
                } else {
                    iDActivity = null;
                }
                IDActivity iDActivity2 = iDActivity;
                final DiscoverRewardBoxView discoverRewardBoxView = DiscoverRewardBoxView.this;
                com.startshorts.androidplayer.manager.configure.ad.c.w(cVar, mFrom, iDActivity2, "home_reward", null, true, null, null, 0L, 2000L, true, new Function1() { // from class: uj.b
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        Unit c10;
                        c10 = DiscoverRewardBoxView.c.c(DiscoverRewardBoxView.this, ((Boolean) obj).booleanValue());
                        return c10;
                    }
                }, 104, null);
                return;
            }
            b mListener = DiscoverRewardBoxView.this.getMListener();
            if (mListener != null) {
                mListener.a();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverRewardBoxView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void A() {
        CoroutineUtil.k(CoroutineUtil.f48072a, null, "queryQueryTodayBonusTotal", false, new DiscoverRewardBoxView$loadTodayAllBonus$1(this, null), new Function1() { // from class: uj.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit B;
                B = DiscoverRewardBoxView.B((String) obj);
                return B;
            }
        }, 5, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit B(String str) {
        return Unit.f60915a;
    }

    private final void y() {
        getMBoxIV().setOnClickListener(new c());
    }

    public final void C() {
        getMTipTV().setVisibility(0);
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_discover_reward_box;
    }

    @NotNull
    public final ImageView getMBoxIV() {
        ImageView imageView = this.f47780d;
        if (imageView != null) {
            return imageView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mBoxIV");
        return null;
    }

    @Nullable
    public final String getMFrom() {
        return this.f47778b;
    }

    @Nullable
    public final b getMListener() {
        return this.f47781e;
    }

    @NotNull
    public final BaseTextView getMTipTV() {
        BaseTextView baseTextView = this.f47779c;
        if (baseTextView != null) {
            return baseTextView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mTipTV");
        return null;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    @NotNull
    public String getSTag() {
        return "DiscoverRewardBoxView";
    }

    public final int getTotalBonus() {
        return this.f47782f;
    }

    public void setBubbleTextForAbTest() {
        if (this.f47782f == 0) {
            x();
            return;
        }
        BaseTextView mTipTV = getMTipTV();
        StringBuilder sb2 = new StringBuilder();
        sb2.append('+');
        sb2.append(this.f47782f);
        mTipTV.setText(sb2.toString());
        b0.l(getMTipTV());
    }

    public final void setMBoxIV(@NotNull ImageView imageView) {
        Intrinsics.checkNotNullParameter(imageView, "<set-?>");
        this.f47780d = imageView;
    }

    public final void setMFrom(@Nullable String str) {
        this.f47778b = str;
    }

    public final void setMListener(@Nullable b bVar) {
        this.f47781e = bVar;
    }

    public final void setMTipTV(@NotNull BaseTextView baseTextView) {
        Intrinsics.checkNotNullParameter(baseTextView, "<set-?>");
        this.f47779c = baseTextView;
    }

    public final void setTotalBonus(int i10) {
        this.f47782f = i10;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        setMTipTV((BaseTextView) findViewById(R$id.tip_tv));
        setMBoxIV((ImageView) findViewById(R$id.box_iv));
        y();
        setBubbleTextForAbTest();
        A();
    }

    public final int w(int i10) {
        return (int) TypedValue.applyDimension(1, i10, getResources().getDisplayMetrics());
    }

    public final void x() {
        getMTipTV().setVisibility(4);
    }

    public final boolean z(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (context.getResources().getConfiguration().getLayoutDirection() == 1) {
            return true;
        }
        return false;
    }
}
