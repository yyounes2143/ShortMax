package com.startshorts.androidplayer.ui.view.immersion.adapter;

import android.content.Context;
import android.util.AttributeSet;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.manager.player.core.SubtitleView;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImmersionSubtitleAdapterView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ImmersionSubtitleAdapterView extends BaseImmersionAdapterView {
    @NotNull
    public static final a M = new a(null);
    @Nullable
    private SubtitleView K;
    private boolean L;

    /* compiled from: ImmersionSubtitleAdapterView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmersionSubtitleAdapterView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void N(BaseEpisode baseEpisode) {
        SubtitleView subtitleView = this.K;
        if (subtitleView != null && subtitleView.u(baseEpisode)) {
            this.L = true;
        }
    }

    public final void O(@NotNull String content) {
        SubtitleView subtitleView;
        Intrinsics.checkNotNullParameter(content, "content");
        if (this.L && (subtitleView = this.K) != null) {
            subtitleView.w(content);
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.immersion.adapter.BaseImmersionAdapterView, com.startshorts.androidplayer.ui.view.base.BaseFrameLayout
    public void e(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.e(context, attributeSet, i10);
        this.K = (SubtitleView) findViewById(R$id.subtitle_view);
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseFrameLayout
    public int getLayoutResource() {
        return R$layout.view_immersion_subtitle_adapter_view;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseFrameLayout
    @NotNull
    public String getSTag() {
        return "ImmersionSubtitleAdapterView";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.view.immersion.adapter.BaseImmersionAdapterView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        BaseEpisode mEpisode = getMEpisode();
        if (mEpisode != null) {
            N(mEpisode);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.view.immersion.adapter.BaseImmersionAdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.L = false;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmersionSubtitleAdapterView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionSubtitleAdapterView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
