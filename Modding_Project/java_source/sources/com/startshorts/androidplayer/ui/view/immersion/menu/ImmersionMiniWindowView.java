package com.startshorts.androidplayer.ui.view.immersion.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionMiniWindowView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: ImmersionMiniWindowView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ImmersionMiniWindowView extends AppCompatImageView implements nj.a {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private b f47346a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private BaseEpisode f47347b;

    /* compiled from: ImmersionMiniWindowView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends d {
        a() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            b mListener = ImmersionMiniWindowView.this.getMListener();
            if (mListener != null) {
                mListener.a();
            }
        }
    }

    /* compiled from: ImmersionMiniWindowView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void a();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmersionMiniWindowView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final boolean c() {
        String str;
        BaseEpisode baseEpisode = this.f47347b;
        if (baseEpisode != null) {
            str = baseEpisode.getVideoUrl();
        } else {
            str = null;
        }
        if (str != null && str.length() != 0 && ABTestFactory.f42224a.o1().isEnable().invoke().booleanValue()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(ImmersionMiniWindowView immersionMiniWindowView) {
        immersionMiniWindowView.setVisibility(0);
    }

    @Override // nj.a
    public void a(int i10) {
        if ((i10 != 0 || c()) && getVisibility() != i10) {
            if (i10 == 0) {
                post(new Runnable() { // from class: nj.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImmersionMiniWindowView.d(ImmersionMiniWindowView.this);
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

    @Nullable
    public final b getMListener() {
        return this.f47346a;
    }

    @Override // nj.a
    public void k(@NotNull BaseEpisode episode, boolean z10) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        this.f47347b = episode;
        if (!c()) {
            a(4);
        } else if (!z10) {
            a(0);
        }
    }

    public final void setMListener(@Nullable b bVar) {
        this.f47346a = bVar;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmersionMiniWindowView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionMiniWindowView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        setImageResource(R$drawable.ic_mini_window);
        setOnClickListener(new a());
    }
}
