package com.startshorts.androidplayer.ui.view.main.tab;

import android.content.Context;
import android.util.AttributeSet;
import c3.q;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.tab.MainTab;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import jk.g;
import jk.v;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ActMainTabView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ActMainTabView extends BaseMainTabView {
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private CustomFrescoView f47459d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActMainTabView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.startshorts.androidplayer.ui.view.main.tab.a
    public void c(@NotNull String currentTabType, boolean z10) {
        Intrinsics.checkNotNullParameter(currentTabType, "currentTabType");
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_main_tab_act;
    }

    @Override // com.startshorts.androidplayer.ui.view.main.tab.BaseMainTabView, com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.u(context, attributeSet, i10);
        this.f47459d = (CustomFrescoView) findViewById(R$id.tab_iv);
    }

    @Override // com.startshorts.androidplayer.ui.view.main.tab.BaseMainTabView
    public void v(@NotNull MainTab tab) {
        Intrinsics.checkNotNullParameter(tab, "tab");
    }

    @Override // com.startshorts.androidplayer.ui.view.main.tab.BaseMainTabView
    public void x(@NotNull MainTab tab) {
        ActResource actResource;
        Intrinsics.checkNotNullParameter(tab, "tab");
        super.x(tab);
        CustomFrescoView customFrescoView = this.f47459d;
        if (customFrescoView == null) {
            return;
        }
        Object extra = tab.getExtra();
        if (extra instanceof ActResource) {
            actResource = (ActResource) extra;
        } else {
            actResource = null;
        }
        if (actResource == null) {
            return;
        }
        int round = Math.round(DeviceUtil.f48146a.G() / 5.0f);
        int a10 = g.a(49.0f);
        f fVar = f.f60747a;
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(actResource.getResourceMap());
        String resourceMap = actResource.getResourceMap();
        if (resourceMap != null && !v.f(resourceMap)) {
            frescoConfig.setOssWidth(round);
            frescoConfig.setOssHeight(a10);
        }
        frescoConfig.setScaleType(q.f3020b);
        String resourceMap2 = actResource.getResourceMap();
        if (resourceMap2 != null && v.f(resourceMap2)) {
            frescoConfig.setAutoPlayAnim(true);
        }
        Unit unit = Unit.f60915a;
        fVar.A(customFrescoView, frescoConfig);
        EventManager eventManager = EventManager.f42463a;
        eventManager.T("tab", actResource);
        EventManager.s0(eventManager, "activity_tab_show", EventManager.x(eventManager, actResource, false, 2, null), 0L, 4, null);
    }
}
