package com.startshorts.androidplayer.ui.view.shortsV2.menu;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.startshorts.androidplayer.bean.shorts.ShortsEpisode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import zj.a;
/* compiled from: ShortsSearchView.kt */
@Metadata
@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes7.dex */
public final class ShortsSearchView extends ImageView implements a {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortsSearchView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // zj.a
    public void a(int i10) {
        setVisibility(i10);
    }

    @Override // zj.a
    public void e(@NotNull ShortsEpisode episode) {
        Intrinsics.checkNotNullParameter(episode, "episode");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortsSearchView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortsSearchView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
