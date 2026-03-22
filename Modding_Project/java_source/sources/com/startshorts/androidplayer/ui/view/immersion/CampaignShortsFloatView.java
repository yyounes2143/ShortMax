package com.startshorts.androidplayer.ui.view.immersion;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.ui.view.immersion.CampaignShortsFloatView;
import fk.z;
import id.c;
import jk.g;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CampaignShortsFloatView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CampaignShortsFloatView extends BaseConstraintLayout implements ef.a {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f47293e = new a(null);

    /* renamed from: f  reason: collision with root package name */
    private static final int f47294f = g.a(44.0f);

    /* renamed from: g  reason: collision with root package name */
    private static final float f47295g = z.f51786a.m();
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private BaseTextView f47296b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private CustomFrescoView f47297c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private Function0<Unit> f47298d;

    /* compiled from: CampaignShortsFloatView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignShortsFloatView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void w(BaseEpisode baseEpisode, CustomFrescoView customFrescoView) {
        if (customFrescoView == null) {
            return;
        }
        f fVar = f.f60747a;
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(baseEpisode.getCoverId());
        c cVar = c.f53397a;
        frescoConfig.setOssWidth(cVar.b());
        frescoConfig.setOssHeight(cVar.a());
        int i10 = f47294f;
        frescoConfig.setResizeWidth(i10);
        frescoConfig.setResizeHeight(i10);
        frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
        frescoConfig.setCornerTransform(true);
        frescoConfig.setCornerRadius(f47295g);
        Unit unit = Unit.f60915a;
        fVar.A(customFrescoView, frescoConfig);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(CampaignShortsFloatView campaignShortsFloatView, View view) {
        Function0<Unit> function0 = campaignShortsFloatView.f47298d;
        if (function0 != null) {
            function0.invoke();
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_float_campaign_shorts;
    }

    public final void setEpisode(@NotNull BaseEpisode episode) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        w(episode, this.f47297c);
    }

    @Override // ef.a
    public void setOnDismissListener(@NotNull Function0<Unit> onDismiss) {
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        this.f47298d = onDismiss;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47296b = (BaseTextView) findViewById(R$id.title_tv);
        this.f47297c = (CustomFrescoView) findViewById(R$id.cover_iv);
        getRootView().setOnClickListener(new View.OnClickListener() { // from class: mj.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CampaignShortsFloatView.x(CampaignShortsFloatView.this, view);
            }
        });
        setBackgroundResource(R$drawable.bg_campaign_shorts_tip_float);
    }
}
