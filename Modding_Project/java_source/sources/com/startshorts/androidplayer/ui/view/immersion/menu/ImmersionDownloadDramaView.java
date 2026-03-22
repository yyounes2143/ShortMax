package com.startshorts.androidplayer.ui.view.immersion.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionDownloadDramaView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: ImmersionDownloadDramaView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ImmersionDownloadDramaView extends BaseConstraintLayout implements nj.a {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private b f47337b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private BaseEpisode f47338c;

    /* compiled from: ImmersionDownloadDramaView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends d {
        a() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            b mListener = ImmersionDownloadDramaView.this.getMListener();
            if (mListener != null) {
                mListener.a();
            }
        }
    }

    /* compiled from: ImmersionDownloadDramaView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void a();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmersionDownloadDramaView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(ImmersionDownloadDramaView immersionDownloadDramaView) {
        immersionDownloadDramaView.setVisibility(0);
    }

    @Override // nj.a
    public void a(int i10) {
        if (i10 == 0) {
            BaseEpisode baseEpisode = this.f47338c;
            if (baseEpisode != null) {
                if (baseEpisode != null && baseEpisode.isLocked()) {
                    return;
                }
            } else {
                return;
            }
        }
        if (getVisibility() != i10) {
            if (i10 == 0) {
                post(new Runnable() { // from class: nj.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImmersionDownloadDramaView.w(ImmersionDownloadDramaView.this);
                    }
                });
            } else {
                setVisibility(i10);
            }
        }
    }

    @Override // nj.a
    public boolean f() {
        return true;
    }

    @Override // nj.a
    public void g(@NotNull ImmersionShortsInfo shortsInfo, boolean z10) {
        Intrinsics.checkNotNullParameter(shortsInfo, "shortsInfo");
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_immersion_download_drama;
    }

    @Nullable
    public final b getMListener() {
        return this.f47337b;
    }

    @Override // nj.a
    public void k(@NotNull BaseEpisode episode, boolean z10) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        this.f47338c = episode;
        if (!episode.isLocked() && !episode.isFreeEpisode()) {
            if (!z10) {
                a(0);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(" ImmersionDownloadDramaView updateEpisode ");
                sb2.append(!z10);
                r(sb2.toString());
                return;
            }
            return;
        }
        a(4);
    }

    public final void setMListener(@Nullable b bVar) {
        this.f47337b = bVar;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmersionDownloadDramaView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionDownloadDramaView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        setOnClickListener(new a());
    }
}
