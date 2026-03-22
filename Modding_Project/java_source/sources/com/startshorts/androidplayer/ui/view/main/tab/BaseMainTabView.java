package com.startshorts.androidplayer.ui.view.main.tab;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.bean.tab.MainTab;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseMainTabView.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class BaseMainTabView extends BaseConstraintLayout implements a {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private MainTab f47460b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private View f47461c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseMainTabView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final MainTab getMTab() {
        return this.f47460b;
    }

    @Override // com.startshorts.androidplayer.ui.view.main.tab.a
    @Nullable
    public MainTab getTab() {
        return this.f47460b;
    }

    @Override // com.startshorts.androidplayer.ui.view.main.tab.a
    public void j(boolean z10) {
        int i10;
        View view = this.f47461c;
        if (view != null) {
            if (z10) {
                i10 = 0;
            } else {
                i10 = 8;
            }
            view.setVisibility(i10);
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.main.tab.a
    public void o(@NotNull MainTab.State state) {
        Intrinsics.checkNotNullParameter(state, "state");
        MainTab mainTab = this.f47460b;
        if (mainTab != null && mainTab.getState() != state) {
            mainTab.setState(state);
            v(mainTab);
        }
    }

    protected final void setMTab(@Nullable MainTab mainTab) {
        this.f47460b = mainTab;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47461c = findViewById(R$id.red_point_view);
    }

    public abstract void v(@NotNull MainTab mainTab);

    public boolean w() {
        View view = this.f47461c;
        if (view == null || view.getVisibility() != 0) {
            return false;
        }
        return true;
    }

    public void x(@NotNull MainTab tab) {
        Intrinsics.checkNotNullParameter(tab, "tab");
        this.f47460b = tab;
    }
}
