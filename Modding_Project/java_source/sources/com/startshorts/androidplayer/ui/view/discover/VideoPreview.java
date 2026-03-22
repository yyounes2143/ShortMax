package com.startshorts.androidplayer.ui.view.discover;

import android.content.Context;
import android.graphics.Outline;
import android.graphics.drawable.Animatable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.TextureView;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.ImageView;
import c3.q;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.ui.view.discover.VideoPreview;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import y3.m;
/* compiled from: VideoPreview.kt */
@Metadata
/* loaded from: classes7.dex */
public final class VideoPreview extends FrameLayout {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final i f47248a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final i f47249b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final i f47250c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f47251d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private a f47252e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private z2.a<m> f47253f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private String f47254g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f47255h;

    /* compiled from: VideoPreview.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface a {
        void a(boolean z10);
    }

    /* compiled from: VideoPreview.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends ViewOutlineProvider {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Float f47256a;

        b(Float f10) {
            this.f47256a = f10;
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(outline, "outline");
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), this.f47256a.floatValue());
        }
    }

    /* compiled from: VideoPreview.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends z2.a<m> {
        c() {
        }

        @Override // z2.a, z2.b
        public void b(String str, Object obj) {
            super.b(str, obj);
            VideoPreview.this.setMHasBgLoaded(false);
        }

        @Override // z2.a, z2.b
        public void c(String str, Throwable th2) {
            super.c(str, th2);
            z2.a<m> mControllerListener = VideoPreview.this.getMControllerListener();
            if (mControllerListener != null) {
                mControllerListener.c(str, th2);
            }
            VideoPreview.this.setMHasBgLoaded(true);
        }

        @Override // z2.a, z2.b
        /* renamed from: g */
        public void d(String str, m mVar, Animatable animatable) {
            super.d(str, mVar, animatable);
            z2.a<m> mControllerListener = VideoPreview.this.getMControllerListener();
            if (mControllerListener != null) {
                mControllerListener.d(str, mVar, animatable);
            }
            VideoPreview.this.setMHasBgLoaded(true);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public VideoPreview(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void e(AttributeSet attributeSet, int i10) {
        LayoutInflater.from(getContext()).inflate(R$layout.view_discover_video_preview, this);
        getSoundIv().setOnClickListener(new View.OnClickListener() { // from class: gj.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoPreview.f(VideoPreview.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(VideoPreview videoPreview, View view) {
        videoPreview.k(!videoPreview.f47251d);
        a aVar = videoPreview.f47252e;
        if (aVar != null) {
            aVar.a(videoPreview.f47251d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CustomFrescoView g(VideoPreview videoPreview) {
        return (CustomFrescoView) videoPreview.findViewById(R$id.bg_iv);
    }

    private final CustomFrescoView getMBgIv() {
        Object value = this.f47249b.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (CustomFrescoView) value;
    }

    private final ImageView getSoundIv() {
        Object value = this.f47250c.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (ImageView) value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextureView h(VideoPreview videoPreview) {
        return (TextureView) videoPreview.findViewById(R$id.video_render_view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ImageView j(VideoPreview videoPreview) {
        return (ImageView) videoPreview.findViewById(R$id.sound_iv);
    }

    @Nullable
    public final String getMBgUrl() {
        return this.f47254g;
    }

    @Nullable
    public final z2.a<m> getMControllerListener() {
        return this.f47253f;
    }

    public final boolean getMHasBgLoaded() {
        return this.f47255h;
    }

    @NotNull
    public final TextureView getMTextureView() {
        Object value = this.f47248a.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (TextureView) value;
    }

    public final void i(@NotNull String imgUrl, int i10, int i11) {
        Intrinsics.checkNotNullParameter(imgUrl, "imgUrl");
        this.f47254g = imgUrl;
        f fVar = f.f60747a;
        CustomFrescoView mBgIv = getMBgIv();
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(imgUrl);
        frescoConfig.setOssWidth(i10);
        frescoConfig.setOssHeight(i11);
        frescoConfig.setResizeWidth(i10);
        frescoConfig.setResizeHeight(i11);
        frescoConfig.setIterativeBoxBlurPostProcessor(new d4.a(3, 6));
        frescoConfig.setPlaceholderScaleType(q.f3025g);
        frescoConfig.setFadeDuration(0);
        frescoConfig.setControllerListener(new c());
        Unit unit = Unit.f60915a;
        fVar.A(mBgIv, frescoConfig);
    }

    public final void k(boolean z10) {
        int i10;
        this.f47251d = z10;
        ImageView soundIv = getSoundIv();
        if (this.f47251d) {
            i10 = R$drawable.ic_video_preview_sound;
        } else {
            i10 = R$drawable.ic_video_preview_no_sound;
        }
        soundIv.setImageResource(i10);
    }

    public final void setCornerRadius(@Nullable Float f10) {
        if (f10 != null && f10.floatValue() >= 0.0f) {
            setOutlineProvider(new b(f10));
            setClipToOutline(true);
        }
    }

    public final void setListener(@NotNull a listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f47252e = listener;
    }

    public final void setMBgUrl(@Nullable String str) {
        this.f47254g = str;
    }

    public final void setMControllerListener(@Nullable z2.a<m> aVar) {
        this.f47253f = aVar;
    }

    public final void setMHasBgLoaded(boolean z10) {
        this.f47255h = z10;
    }

    public final void setSoundViewVisibility(int i10) {
        getSoundIv().setVisibility(i10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public VideoPreview(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoPreview(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47248a = kotlin.c.b(new Function0() { // from class: gj.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                TextureView h10;
                h10 = VideoPreview.h(VideoPreview.this);
                return h10;
            }
        });
        this.f47249b = kotlin.c.b(new Function0() { // from class: gj.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                CustomFrescoView g10;
                g10 = VideoPreview.g(VideoPreview.this);
                return g10;
            }
        });
        this.f47250c = kotlin.c.b(new Function0() { // from class: gj.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                ImageView j10;
                j10 = VideoPreview.j(VideoPreview.this);
                return j10;
            }
        });
        e(attributeSet, i10);
    }
}
