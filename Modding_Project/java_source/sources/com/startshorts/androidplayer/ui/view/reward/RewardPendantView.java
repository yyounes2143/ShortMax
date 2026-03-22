package com.startshorts.androidplayer.ui.view.reward;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import ce.j;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.databinding.ViewRewardsPendantBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.ui.view.reward.RewardPendantView;
import jk.b0;
import jk.g;
import jk.v;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ud.a;
/* compiled from: RewardPendantView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class RewardPendantView extends ConstraintLayout {

    /* renamed from: a  reason: collision with root package name */
    private final int f47794a;

    /* renamed from: b  reason: collision with root package name */
    private final int f47795b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final i f47796c;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RewardPendantView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final ViewRewardsPendantBinding getBinding() {
        return (ViewRewardsPendantBinding) this.f47796c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewRewardsPendantBinding t(Context context, RewardPendantView rewardPendantView) {
        ViewRewardsPendantBinding b10 = ViewRewardsPendantBinding.b(LayoutInflater.from(context), rewardPendantView, true);
        Intrinsics.checkNotNullExpressionValue(b10, "inflate(...)");
        return b10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(ActResource actResource, RewardPendantView rewardPendantView, View view) {
        EventManager eventManager = EventManager.f42463a;
        EventManager.s0(eventManager, "position_click", EventManager.x(eventManager, actResource, false, 2, null), 0L, 4, null);
        j jVar = j.f3485a;
        Context context = rewardPendantView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        j.o(jVar, context, "task_center_float", actResource, null, 8, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(RewardPendantView rewardPendantView, View view) {
        a.f68411a.K0(false);
        b0.d(rewardPendantView);
    }

    public final void u(@NotNull final ActResource act) {
        Intrinsics.checkNotNullParameter(act, "act");
        EventManager eventManager = EventManager.f42463a;
        Boolean bool = null;
        EventManager.s0(eventManager, "position_show", EventManager.x(eventManager, act, false, 2, null), 0L, 4, null);
        getBinding().f41354a.setOnClickListener(new View.OnClickListener() { // from class: uj.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RewardPendantView.v(ActResource.this, this, view);
            }
        });
        String resourceMap = act.getResourceMap();
        if (resourceMap != null) {
            bool = Boolean.valueOf(v.f(resourceMap));
        }
        f fVar = f.f60747a;
        CustomFrescoView customFrescoView = getBinding().f41354a;
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(resourceMap);
        frescoConfig.setOssWidth(this.f47794a);
        frescoConfig.setOssHeight(this.f47794a);
        frescoConfig.setResizeWidth(this.f47794a);
        frescoConfig.setResizeHeight(this.f47795b);
        if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
            frescoConfig.setAutoPlayAnim(true);
        }
        Unit unit = Unit.f60915a;
        fVar.A(customFrescoView, frescoConfig);
        getBinding().f41355b.setOnClickListener(new View.OnClickListener() { // from class: uj.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RewardPendantView.w(RewardPendantView.this, view);
            }
        });
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RewardPendantView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardPendantView(@NotNull final Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47794a = g.a(224.0f);
        this.f47795b = g.a(224.0f);
        this.f47796c = c.b(new Function0() { // from class: uj.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                ViewRewardsPendantBinding t10;
                t10 = RewardPendantView.t(context, this);
                return t10;
            }
        });
    }

    public /* synthetic */ RewardPendantView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
