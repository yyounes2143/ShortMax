package com.startshorts.androidplayer.ui.view.shortsV2.menu;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.shorts.ShortsEpisode;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import zj.a;
/* compiled from: ShortsEpisodeNumView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ShortsEpisodeNumView extends BaseConstraintLayout implements a {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private BaseTextView f47886b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortsEpisodeNumView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // zj.a
    public void a(int i10) {
        setVisibility(i10);
    }

    @Override // zj.a
    @SuppressLint({"SetTextI18n"})
    public void e(@NotNull ShortsEpisode episode) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        BaseTextView baseTextView = this.f47886b;
        if (baseTextView != null) {
            baseTextView.setText(getContext().getString(R$string.common_current_ep, String.valueOf(episode.getEpisodeNum())) + " / " + getContext().getString(R$string.common_total_ep, String.valueOf(episode.getTotalEpisodes())));
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_shorts_episode_num;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47886b = (BaseTextView) findViewById(R$id.episode_num_tv);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortsEpisodeNumView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortsEpisodeNumView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
