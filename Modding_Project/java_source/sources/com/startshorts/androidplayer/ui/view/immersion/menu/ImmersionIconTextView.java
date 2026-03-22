package com.startshorts.androidplayer.ui.view.immersion.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionIconTextView;
import fk.w;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: ImmersionIconTextView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ImmersionIconTextView extends BaseConstraintLayout implements nj.a {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private ImageView f47340b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private BaseTextView f47341c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private a f47342d;

    /* renamed from: e  reason: collision with root package name */
    private int f47343e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private ImmersionShortsInfo f47344f;

    /* compiled from: ImmersionIconTextView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface a {
        void a();
    }

    /* compiled from: ImmersionIconTextView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            a mListener = ImmersionIconTextView.this.getMListener();
            if (mListener != null) {
                mListener.a();
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmersionIconTextView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(ImmersionIconTextView immersionIconTextView, String str) {
        BaseTextView baseTextView = immersionIconTextView.f47341c;
        if (baseTextView != null) {
            baseTextView.setText(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(ImmersionIconTextView immersionIconTextView, int i10) {
        ImageView imageView = immersionIconTextView.f47340b;
        if (imageView != null) {
            imageView.setImageResource(i10);
        }
    }

    @Override // nj.a
    public void a(int i10) {
        boolean z10;
        if (i10 == 0) {
            ImmersionShortsInfo immersionShortsInfo = this.f47344f;
            if (immersionShortsInfo != null) {
                if (immersionShortsInfo != null && immersionShortsInfo.isTrailer()) {
                    ImmersionShortsInfo immersionShortsInfo2 = this.f47344f;
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
        int i10;
        Intrinsics.checkNotNullParameter(shortsInfo, "shortsInfo");
        this.f47344f = shortsInfo;
        if (shortsInfo.isTrailer() && Intrinsics.areEqual(shortsInfo.isRelease(), Boolean.FALSE)) {
            a(4);
            return;
        }
        if (this.f47343e == 1) {
            if (shortsInfo.isCollected()) {
                i10 = R$drawable.ic_shorts_collected;
            } else {
                i10 = R$drawable.ic_shorts_uncollect;
            }
            x(i10);
            z(w.f51779a.a(shortsInfo.getCollectNum()));
        }
        if (!z10) {
            a(0);
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_immersion_icon_text;
    }

    @Nullable
    public final a getMListener() {
        return this.f47342d;
    }

    public final int getMType() {
        return this.f47343e;
    }

    @Override // nj.a
    public void k(@NotNull BaseEpisode episode, boolean z10) {
        Intrinsics.checkNotNullParameter(episode, "episode");
    }

    public final void setMListener(@Nullable a aVar) {
        this.f47342d = aVar;
    }

    public final void setMType(int i10) {
        this.f47343e = i10;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47340b = (ImageView) findViewById(R$id.icon_iv);
        this.f47341c = (BaseTextView) findViewById(R$id.text_tv);
        setOnClickListener(new b());
    }

    public void x(final int i10) {
        post(new Runnable() { // from class: nj.e
            @Override // java.lang.Runnable
            public final void run() {
                ImmersionIconTextView.y(ImmersionIconTextView.this, i10);
            }
        });
    }

    public void z(@NotNull final String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        post(new Runnable() { // from class: nj.d
            @Override // java.lang.Runnable
            public final void run() {
                ImmersionIconTextView.A(ImmersionIconTextView.this, text);
            }
        });
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmersionIconTextView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionIconTextView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47343e = -1;
    }
}
