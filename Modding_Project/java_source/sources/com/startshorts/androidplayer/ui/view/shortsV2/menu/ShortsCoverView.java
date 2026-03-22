package com.startshorts.androidplayer.ui.view.shortsV2.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.shorts.ShortsEpisode;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import fk.z;
import id.c;
import jk.g;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: ShortsCoverView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ShortsCoverView extends CustomFrescoView implements zj.a {
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private ShortsEpisode f47884j;

    /* compiled from: ShortsCoverView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends d {
        a() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            ShortsCoverView.this.getMListener();
        }
    }

    /* compiled from: ShortsCoverView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortsCoverView(@NotNull Context context) {
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
        this.f47884j = episode;
        f fVar = f.f60747a;
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(episode.getCoverId());
        c cVar = c.f53397a;
        frescoConfig.setOssWidth(cVar.b());
        frescoConfig.setOssHeight(cVar.a());
        z zVar = z.f51786a;
        frescoConfig.setResizeWidth(zVar.p());
        frescoConfig.setResizeHeight(zVar.p());
        frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
        frescoConfig.setCircleCrop(true);
        frescoConfig.setBorderWidth(g.b(1.0f));
        frescoConfig.setBorderColor(ContextCompat.getColor(getContext(), 17170443));
        Unit unit = Unit.f60915a;
        fVar.A(this, frescoConfig);
    }

    @Nullable
    public final b getMListener() {
        return null;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortsCoverView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortsCoverView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        setOnClickListener(new a());
    }

    public final void setMListener(@Nullable b bVar) {
    }
}
