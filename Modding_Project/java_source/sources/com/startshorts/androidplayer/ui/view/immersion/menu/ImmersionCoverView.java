package com.startshorts.androidplayer.ui.view.immersion.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
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
/* compiled from: ImmersionCoverView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ImmersionCoverView extends CustomFrescoView implements nj.a {
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private b f47334j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private ImmersionShortsInfo f47335k;

    /* compiled from: ImmersionCoverView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends d {
        a() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            b mListener = ImmersionCoverView.this.getMListener();
            if (mListener != null) {
                mListener.a();
            }
        }
    }

    /* compiled from: ImmersionCoverView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void a();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmersionCoverView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // nj.a
    public void a(int i10) {
        boolean z10;
        if (i10 == 0) {
            ImmersionShortsInfo immersionShortsInfo = this.f47335k;
            if (immersionShortsInfo != null) {
                if (immersionShortsInfo != null && immersionShortsInfo.isTrailer()) {
                    ImmersionShortsInfo immersionShortsInfo2 = this.f47335k;
                    if (immersionShortsInfo2 != null) {
                        z10 = Intrinsics.areEqual(immersionShortsInfo2.isRelease(), Boolean.FALSE);
                    } else {
                        z10 = false;
                    }
                    if (z10) {
                        return;
                    }
                }
            } else {
                return;
            }
        }
        setVisibility(i10);
    }

    @Override // nj.a
    public boolean f() {
        return true;
    }

    @Override // nj.a
    public void g(@NotNull ImmersionShortsInfo shortsInfo, boolean z10) {
        Intrinsics.checkNotNullParameter(shortsInfo, "shortsInfo");
        this.f47335k = shortsInfo;
        if (shortsInfo.isTrailer() && Intrinsics.areEqual(shortsInfo.isRelease(), Boolean.FALSE)) {
            a(4);
            return;
        }
        setContentDescription(shortsInfo.getShortsName() + ' ' + shortsInfo.getShortsId());
        f fVar = f.f60747a;
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(shortsInfo.getCover());
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
        if (!z10) {
            a(0);
        }
    }

    @Nullable
    public final b getMListener() {
        return this.f47334j;
    }

    @Override // nj.a
    public void k(@NotNull BaseEpisode episode, boolean z10) {
        Intrinsics.checkNotNullParameter(episode, "episode");
    }

    public final void setMListener(@Nullable b bVar) {
        this.f47334j = bVar;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmersionCoverView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionCoverView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        setOnClickListener(new a());
    }
}
