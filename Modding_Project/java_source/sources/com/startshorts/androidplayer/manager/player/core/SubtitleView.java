package com.startshorts.androidplayer.manager.player.core;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.ss.ttvideoengine.utils.ScreenUtils;
import com.startshorts.androidplayer.R$styleable;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.SubtitleConfig;
import com.startshorts.androidplayer.bean.shorts.SubtitleDataKt;
import com.startshorts.androidplayer.bean.shorts.SubtitleStyle;
import com.startshorts.androidplayer.databinding.ViewSubtitleBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.player.core.SubtitleView;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import jk.g;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SubtitleView.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSubtitleView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubtitleView.kt\ncom/startshorts/androidplayer/manager/player/core/SubtitleView\n+ 2 Context.kt\nandroidx/core/content/ContextKt\n+ 3 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,170:1\n59#2,2:171\n470#3:173\n470#3:174\n470#3:175\n470#3:176\n*S KotlinDebug\n*F\n+ 1 SubtitleView.kt\ncom/startshorts/androidplayer/manager/player/core/SubtitleView\n*L\n42#1:171,2\n109#1:173\n111#1:174\n114#1:175\n116#1:176\n*E\n"})
/* loaded from: classes6.dex */
public final class SubtitleView extends ConstraintLayout {
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public static final a f42688k = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private boolean f42689a;

    /* renamed from: b  reason: collision with root package name */
    public ViewSubtitleBinding f42690b;

    /* renamed from: c  reason: collision with root package name */
    private final int f42691c;

    /* renamed from: d  reason: collision with root package name */
    private final int f42692d;

    /* renamed from: e  reason: collision with root package name */
    private final int f42693e;

    /* renamed from: f  reason: collision with root package name */
    private final int f42694f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private BaseEpisode f42695g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f42696h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f42697i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private SubtitleStyle f42698j;

    /* compiled from: SubtitleView.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SubtitleView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void r(float f10) {
        int parseColor;
        int parseColor2;
        float f11 = this.f42694f * f10;
        int i10 = this.f42692d;
        float f12 = i10 * f10;
        if (!this.f42689a) {
            i10 = this.f42693e;
        }
        float f13 = i10 * f10;
        ViewGroup.LayoutParams layoutParams = getBinding().f41425d.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = (int) f12;
            getBinding().f41425d.setLayoutParams(layoutParams);
        }
        ViewGroup.LayoutParams layoutParams2 = getBinding().f41423b.getLayoutParams();
        if (layoutParams2 != null) {
            layoutParams2.width = (int) f13;
            getBinding().f41423b.setLayoutParams(layoutParams2);
        }
        try {
            parseColor = Color.parseColor(this.f42698j.getShadowColor());
        } catch (Exception unused) {
            parseColor = Color.parseColor(SubtitleDataKt.DEFAULT_SUBTITLE_SHADOW_COLOR);
        }
        int i11 = parseColor;
        try {
            parseColor2 = Color.parseColor(this.f42698j.getColor());
        } catch (Exception unused2) {
            parseColor2 = Color.parseColor(SubtitleDataKt.DEFAULT_SUBTITLE_TEXT_COLOR);
        }
        getBinding().f41426e.setTextSize(this.f42698j.getFontSize() * f10);
        getBinding().f41426e.setLetterSpacing((this.f42698j.getLetterSpacing() / 100.0f) * f10);
        getBinding().f41426e.setTextColor(parseColor2);
        BaseTextView subtitleTv = getBinding().f41426e;
        Intrinsics.checkNotNullExpressionValue(subtitleTv, "subtitleTv");
        v(subtitleTv, i11, this.f42698j.getShadowRadius() * f10, this.f42698j.getShadowDx() * f10, this.f42698j.getShadowDy() * f10);
        getBinding().f41422a.setPadding(0, 0, 0, (int) f11);
    }

    static /* synthetic */ void s(SubtitleView subtitleView, float f10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = 1.0f;
        }
        subtitleView.r(f10);
    }

    private final void v(TextView textView, int i10, float f10, float f11, float f12) {
        textView.setShadowLayer(f10, f11, f12, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(BaseTextView baseTextView, SubtitleView subtitleView, String str) {
        if (baseTextView.getLayout().getLineCount() > 3) {
            EventManager eventManager = EventManager.f42463a;
            Bundle C = eventManager.C(subtitleView.f42695g);
            C.putString("content", str);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "long_subtitles", C, 0L, 4, null);
        }
    }

    public final boolean getAttached() {
        return this.f42697i;
    }

    @NotNull
    public final ViewSubtitleBinding getBinding() {
        ViewSubtitleBinding viewSubtitleBinding = this.f42690b;
        if (viewSubtitleBinding != null) {
            return viewSubtitleBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    public final boolean getEnableSubtitle() {
        return this.f42696h;
    }

    @Nullable
    public final BaseEpisode getMEpisode() {
        return this.f42695g;
    }

    public final int getScreenWidth() {
        return this.f42691c;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f42697i = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f42697i = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (this.f42689a && this.f42696h) {
            float f10 = (i12 - i10) / this.f42691c;
            if (f10 > 1.0f || f10 <= 0.0f) {
                f10 = 1.0f;
            }
            r(f10);
        }
    }

    public final void setAttached(boolean z10) {
        this.f42697i = z10;
    }

    public final void setBinding(@NotNull ViewSubtitleBinding viewSubtitleBinding) {
        Intrinsics.checkNotNullParameter(viewSubtitleBinding, "<set-?>");
        this.f42690b = viewSubtitleBinding;
    }

    public final void setEnableSubtitle(boolean z10) {
        this.f42696h = z10;
    }

    public final void setMEpisode(@Nullable BaseEpisode baseEpisode) {
        this.f42695g = baseEpisode;
    }

    public final void t(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        setBinding(ViewSubtitleBinding.b(LayoutInflater.from(context), this, true));
        if (attributeSet != null) {
            int[] SubtitleView = R$styleable.SubtitleView;
            Intrinsics.checkNotNullExpressionValue(SubtitleView, "SubtitleView");
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, SubtitleView, i10, 0);
            this.f42689a = obtainStyledAttributes.getBoolean(R$styleable.SubtitleView_isFitScale, false);
            obtainStyledAttributes.recycle();
        }
    }

    public final boolean u(@Nullable BaseEpisode baseEpisode) {
        SubtitleStyle subtitleStyle;
        boolean z10;
        this.f42695g = baseEpisode;
        boolean z11 = false;
        if (baseEpisode == null) {
            this.f42696h = false;
            return false;
        }
        if (baseEpisode != null) {
            SubtitleConfig subtitlingConfig = baseEpisode.getSubtitlingConfig();
            if (subtitlingConfig == null || (subtitleStyle = subtitlingConfig.getSubtitleStyle()) == null) {
                subtitleStyle = new SubtitleStyle(null, 0, 0, null, 0, 0, 0, 0.0f, 255, null);
            }
            this.f42698j = subtitleStyle;
            SubtitleConfig subtitlingConfig2 = baseEpisode.getSubtitlingConfig();
            if (subtitlingConfig2 != null) {
                z10 = subtitlingConfig2.isEnable();
            } else {
                z10 = false;
            }
            if (!z10) {
                this.f42696h = false;
                return false;
            }
            float topPercentage = this.f42698j.getTopPercentage();
            getBinding().f41424c.setGuidelinePercent(1 - ((topPercentage > 1.0f || topPercentage < 0.0f) ? 0.33f : 0.33f));
            s(this, 0.0f, 1, null);
            getBinding().f41426e.setText("");
        }
        if (this.f42695g != null) {
            z11 = true;
        }
        this.f42696h = z11;
        return z11;
    }

    public final void w(@NotNull final String content) {
        Intrinsics.checkNotNullParameter(content, "content");
        if (this.f42697i && this.f42696h) {
            final BaseTextView baseTextView = getBinding().f41426e;
            baseTextView.setText(content);
            baseTextView.post(new Runnable() { // from class: lf.b
                @Override // java.lang.Runnable
                public final void run() {
                    SubtitleView.x(BaseTextView.this, this, content);
                }
            });
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SubtitleView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubtitleView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f42691c = ScreenUtils.getScreenWidth();
        this.f42692d = g.a(28.0f);
        this.f42693e = g.a(56.0f);
        this.f42694f = g.a(40.0f);
        this.f42698j = new SubtitleStyle(null, 0, 0, null, 0, 0, 0, 0.0f, 255, null);
        t(context, attributeSet, i10);
    }
}
