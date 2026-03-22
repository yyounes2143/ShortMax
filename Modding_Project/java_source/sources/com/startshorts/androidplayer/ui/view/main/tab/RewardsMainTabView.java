package com.startshorts.androidplayer.ui.view.main.tab;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.airbnb.lottie.LottieAnimationView;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.tab.MainTab;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RewardsMainTabView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class RewardsMainTabView extends BaseMainTabView {
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private LottieAnimationView f47473d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private BaseTextView f47474e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsMainTabView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void A() {
        View findViewById = findViewById(R$id.high_light_view);
        if (findViewById != null) {
            findViewById.setBackgroundColor(ContextCompat.getColor(getContext(), R$color.color_main_activity_tab_high_light_bg));
        }
        BaseTextView baseTextView = this.f47474e;
        if (baseTextView != null) {
            baseTextView.setTextColor(ContextCompat.getColor(getContext(), 17170443));
        }
    }

    private final void y(String str) {
        String str2;
        int i10;
        MainTab.Type type;
        View findViewById = findViewById(R$id.high_light_view);
        if (findViewById != null) {
            findViewById.setBackgroundColor(ContextCompat.getColor(getContext(), 17170445));
        }
        BaseTextView baseTextView = this.f47474e;
        if (baseTextView != null) {
            Context context = getContext();
            MainTab mTab = getMTab();
            if (mTab != null && (type = mTab.getType()) != null) {
                str2 = type.name();
            } else {
                str2 = null;
            }
            if (Intrinsics.areEqual(str, str2)) {
                i10 = R$color.color_main_activity_tab_text_selected;
            } else {
                i10 = R$color.color_main_activity_tab_text_normal;
            }
            baseTextView.setTextColor(ContextCompat.getColor(context, i10));
        }
    }

    private final void z(MainTab mainTab) {
        int i10;
        if (mainTab.isSelected()) {
            i10 = R$color.color_main_activity_tab_text_selected;
        } else {
            i10 = R$color.color_main_activity_tab_text_normal;
        }
        BaseTextView baseTextView = this.f47474e;
        if (baseTextView != null) {
            baseTextView.setTextColor(ContextCompat.getColor(getContext(), i10));
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.main.tab.a
    public void c(@NotNull String currentTabType, boolean z10) {
        Intrinsics.checkNotNullParameter(currentTabType, "currentTabType");
        if (z10) {
            A();
        } else {
            y(currentTabType);
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_main_tab_rewards;
    }

    @Override // com.startshorts.androidplayer.ui.view.main.tab.BaseMainTabView, com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.u(context, attributeSet, i10);
        this.f47473d = (LottieAnimationView) findViewById(R$id.tab_iv);
        this.f47474e = (BaseTextView) findViewById(R$id.tab_tv);
    }

    @Override // com.startshorts.androidplayer.ui.view.main.tab.BaseMainTabView
    public void v(@NotNull MainTab tab) {
        Intrinsics.checkNotNullParameter(tab, "tab");
        z(tab);
    }

    @Override // com.startshorts.androidplayer.ui.view.main.tab.BaseMainTabView
    public void x(@NotNull MainTab tab) {
        Intrinsics.checkNotNullParameter(tab, "tab");
        super.x(tab);
        z(tab);
    }
}
