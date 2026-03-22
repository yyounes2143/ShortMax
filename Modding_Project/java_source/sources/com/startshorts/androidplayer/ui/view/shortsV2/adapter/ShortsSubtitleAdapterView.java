package com.startshorts.androidplayer.ui.view.shortsV2.adapter;

import android.content.Context;
import android.util.AttributeSet;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.ShortsEpisode;
import com.startshorts.androidplayer.manager.player.core.SubtitleView;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortsSubtitleAdapterView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ShortsSubtitleAdapterView extends BaseShortsAdapterView {
    @NotNull
    public static final a I = new a(null);
    @Nullable
    private SubtitleView G;
    private boolean H;

    /* compiled from: ShortsSubtitleAdapterView.kt */
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
    public ShortsSubtitleAdapterView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void F(BaseEpisode baseEpisode) {
        SubtitleView subtitleView = this.G;
        if (subtitleView != null && subtitleView.u(baseEpisode)) {
            this.H = true;
        }
    }

    public final void G(@NotNull String content) {
        Intrinsics.checkNotNullParameter(content, "content");
        if (!this.H) {
            b("updateSubtitle failed -> mSubtitleInitialized(false) content(" + content + ')');
            return;
        }
        SubtitleView subtitleView = this.G;
        if (subtitleView != null) {
            subtitleView.w(content);
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.shortsV2.adapter.BaseShortsAdapterView, com.startshorts.androidplayer.ui.view.base.BaseFrameLayout
    public void e(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.e(context, attributeSet, i10);
        this.G = (SubtitleView) findViewById(R$id.subtitle_view);
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseFrameLayout
    public int getLayoutResource() {
        return R$layout.view_shorts_subtitle_adapter_view;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseFrameLayout
    @NotNull
    public String getSTag() {
        return "ShortsSubtitleAdapterView";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.view.shortsV2.adapter.BaseShortsAdapterView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ShortsEpisode mEpisode = getMEpisode();
        if (mEpisode != null) {
            F(mEpisode);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.view.shortsV2.adapter.BaseShortsAdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.H = false;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortsSubtitleAdapterView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortsSubtitleAdapterView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
