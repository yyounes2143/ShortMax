package com.startshorts.androidplayer.ui.view.immersion.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.PlaySpeed;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionPlaySpeedView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: ImmersionPlaySpeedView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ImmersionPlaySpeedView extends BaseConstraintLayout implements nj.a {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private a f47377b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private BaseEpisode f47378c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private BaseTextView f47379d;

    /* compiled from: ImmersionPlaySpeedView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface a {
        void a();
    }

    /* compiled from: ImmersionPlaySpeedView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            a mListener = ImmersionPlaySpeedView.this.getMListener();
            if (mListener != null) {
                mListener.a();
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmersionPlaySpeedView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(ImmersionPlaySpeedView immersionPlaySpeedView) {
        immersionPlaySpeedView.setVisibility(0);
    }

    @Override // nj.a
    public void a(int i10) {
        if (i10 == 0) {
            BaseEpisode baseEpisode = this.f47378c;
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
                post(new Runnable() { // from class: nj.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImmersionPlaySpeedView.x(ImmersionPlaySpeedView.this);
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
        return R$layout.view_immersion_play_speed;
    }

    @Nullable
    public final a getMListener() {
        return this.f47377b;
    }

    @Override // nj.a
    public void k(@NotNull BaseEpisode episode, boolean z10) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        this.f47378c = episode;
        if (episode.isLocked()) {
            a(4);
        } else if (!z10) {
            a(0);
        }
    }

    public final void setMListener(@Nullable a aVar) {
        this.f47377b = aVar;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47379d = (BaseTextView) findViewById(R$id.speed_tv);
        setOnClickListener(new b());
    }

    public void w(@NotNull PlaySpeed playSpeed) {
        Intrinsics.checkNotNullParameter(playSpeed, "playSpeed");
        BaseTextView baseTextView = this.f47379d;
        if (baseTextView != null) {
            baseTextView.setText(playSpeed.getKey());
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmersionPlaySpeedView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionPlaySpeedView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
