package com.startshorts.androidplayer.ui.view.immersion.adapter;

import android.content.Context;
import android.graphics.drawable.Animatable;
import android.util.AttributeSet;
import android.view.TextureView;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import c3.q;
import com.airbnb.lottie.LottieAnimationView;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.SwipingFrameLayout;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.ui.view.immersion.ImmersionControlLayout;
import com.startshorts.androidplayer.ui.view.immersion.adapter.BaseImmersionAdapterView;
import com.startshorts.androidplayer.ui.view.pagestate.SLoadingView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.h0;
import fk.z;
import jk.b0;
import jk.g;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import y3.m;
/* compiled from: BaseImmersionAdapterView.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class BaseImmersionAdapterView extends SwipingFrameLayout {
    @NotNull
    public static final a H = new a(null);
    private static final int I;
    private static final int J;
    @Nullable
    private SLoadingView A;
    @Nullable
    private ImageView B;
    @Nullable
    private ConstraintLayout C;
    @Nullable
    private BaseEpisode D;
    private boolean E;
    private boolean F;
    private boolean G;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private TextureView f47315v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private CustomFrescoView f47316w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private ImmersionControlLayout f47317x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private ViewStub f47318y;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    private ImageView f47319z;

    /* compiled from: BaseImmersionAdapterView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return BaseImmersionAdapterView.J;
        }

        public final int b() {
            return BaseImmersionAdapterView.I;
        }

        private a() {
        }
    }

    /* compiled from: BaseImmersionAdapterView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends z2.a<m> {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void i(BaseImmersionAdapterView baseImmersionAdapterView) {
            baseImmersionAdapterView.C();
        }

        @Override // z2.a, z2.b
        /* renamed from: h */
        public void d(String str, m mVar, Animatable animatable) {
            BaseImmersionAdapterView.this.E = true;
            h0 h0Var = h0.f51735a;
            final BaseImmersionAdapterView baseImmersionAdapterView = BaseImmersionAdapterView.this;
            h0Var.e(new Runnable() { // from class: com.startshorts.androidplayer.ui.view.immersion.adapter.b
                @Override // java.lang.Runnable
                public final void run() {
                    BaseImmersionAdapterView.b.i(BaseImmersionAdapterView.this);
                }
            });
        }
    }

    static {
        DeviceUtil deviceUtil = DeviceUtil.f48146a;
        I = deviceUtil.G();
        J = deviceUtil.F() - g.a(73.0f);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BaseImmersionAdapterView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(BaseImmersionAdapterView baseImmersionAdapterView, View view) {
        int i10;
        SwipingFrameLayout.b mListener = baseImmersionAdapterView.getMListener();
        if (mListener != null) {
            mListener.i();
        }
        boolean z10 = baseImmersionAdapterView.F;
        baseImmersionAdapterView.F = !z10;
        ImageView imageView = baseImmersionAdapterView.f47319z;
        if (!z10) {
            if (imageView != null) {
                i10 = R$drawable.ic_video_play;
            } else {
                return;
            }
        } else if (imageView != null) {
            i10 = R$drawable.ic_video_pause;
        } else {
            return;
        }
        imageView.setImageResource(i10);
    }

    private final boolean G() {
        ImageView imageView = this.B;
        if (imageView == null || imageView.getVisibility() != 0) {
            return false;
        }
        return true;
    }

    private final void H(BaseEpisode baseEpisode) {
        CustomFrescoView customFrescoView;
        if (this.G || this.E || (customFrescoView = this.f47316w) == null) {
            return;
        }
        customFrescoView.setVisibility(0);
        String videoCover = baseEpisode.getVideoCover(false, baseEpisode.getFirstFrameWidthForImmersion(), baseEpisode.getFirstFrameHeightForImmersion(), baseEpisode.getCoverWidthForImmersion(), baseEpisode.getCoverHeightForImmersion());
        f fVar = f.f60747a;
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(videoCover);
        frescoConfig.setOssProcess(false);
        frescoConfig.setControllerListener(new b());
        frescoConfig.setScaleType(q.f3020b);
        Unit unit = Unit.f60915a;
        fVar.A(customFrescoView, frescoConfig);
    }

    private final void w() {
        CustomFrescoView customFrescoView = this.f47316w;
        if (customFrescoView != null) {
            customFrescoView.setVisibility(8);
        }
    }

    public final void A() {
        ConstraintLayout constraintLayout = this.C;
        if (constraintLayout != null) {
            constraintLayout.setVisibility(8);
        }
    }

    public final void B() {
        pj.a aVar;
        int childCount = getChildCount();
        int i10 = 0;
        while (true) {
            if (i10 < childCount) {
                View childAt = getChildAt(i10);
                if (childAt instanceof pj.a) {
                    aVar = (pj.a) childAt;
                    break;
                }
                i10++;
            } else {
                aVar = null;
                break;
            }
        }
        if (aVar != null) {
            aVar.release();
            if (aVar instanceof View) {
                removeView((View) aVar);
            }
        }
    }

    public final void C() {
        ViewStub viewStub;
        View view;
        ImageView imageView;
        BaseEpisode baseEpisode = this.D;
        if (baseEpisode == null || G()) {
            return;
        }
        if (!this.E && !this.G) {
            return;
        }
        ImageView imageView2 = this.B;
        int i10 = 0;
        if (imageView2 == null) {
            View findViewById = findViewById(R$id.logo_viewstub);
            if (findViewById instanceof ImageView) {
                imageView = (ImageView) findViewById;
                imageView.setVisibility(0);
            } else {
                if (findViewById instanceof ViewStub) {
                    viewStub = (ViewStub) findViewById;
                } else {
                    viewStub = null;
                }
                if (viewStub != null) {
                    view = viewStub.inflate();
                } else {
                    view = null;
                }
                if (view instanceof ImageView) {
                    imageView = (ImageView) view;
                } else {
                    imageView = null;
                }
            }
            this.B = imageView;
        } else if (imageView2 != null) {
            imageView2.setVisibility(0);
        }
        int round = (J - Math.round(I / baseEpisode.getAspectRatio())) / 2;
        if (round >= 0) {
            i10 = round;
        }
        int d10 = i10 + z.f51786a.d();
        ImageView imageView3 = this.B;
        if (imageView3 != null) {
            b0.g(imageView3, d10);
        }
    }

    public final void D() {
        View view;
        Integer num;
        Integer num2;
        try {
            BaseEpisode baseEpisode = this.D;
            ImageView imageView = null;
            Integer num3 = null;
            if (baseEpisode != null && baseEpisode.isLocked()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("showPlayButton failed -> episodeNum(");
                BaseEpisode baseEpisode2 = this.D;
                if (baseEpisode2 != null) {
                    num = Integer.valueOf(baseEpisode2.getEpisodeNum());
                } else {
                    num = null;
                }
                sb2.append(num);
                sb2.append(") vipFree(");
                BaseEpisode baseEpisode3 = this.D;
                if (baseEpisode3 != null) {
                    num2 = Integer.valueOf(baseEpisode3.getVipFree());
                } else {
                    num2 = null;
                }
                sb2.append(num2);
                sb2.append(") alreadyLock(");
                BaseEpisode baseEpisode4 = this.D;
                if (baseEpisode4 != null) {
                    num3 = Integer.valueOf(baseEpisode4.getAlreadyLock());
                }
                sb2.append(num3);
                sb2.append(')');
                b(sb2.toString());
                return;
            }
            if (this.f47318y == null) {
                ViewStub viewStub = (ViewStub) findViewById(R$id.play_button_viewstub);
                this.f47318y = viewStub;
                if (viewStub != null) {
                    view = viewStub.inflate();
                } else {
                    view = null;
                }
                if (view instanceof ImageView) {
                    imageView = view;
                }
                this.f47319z = imageView;
            }
            ImageView imageView2 = this.f47319z;
            if (imageView2 != null) {
                imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.startshorts.androidplayer.ui.view.immersion.adapter.a
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        BaseImmersionAdapterView.E(BaseImmersionAdapterView.this, view2);
                    }
                });
            }
        } catch (Exception e10) {
            Logger.f41511a.e("initPlayButton", "inflate exception -> " + e10.getMessage());
        }
    }

    public final boolean F() {
        SLoadingView sLoadingView = this.A;
        if (sLoadingView == null || sLoadingView.getVisibility() != 0) {
            return false;
        }
        return true;
    }

    public final void I() {
        SLoadingView sLoadingView;
        ViewStub viewStub;
        View view;
        SLoadingView sLoadingView2;
        if (this.A == null) {
            View findViewById = findViewById(R$id.loading_viewstub);
            if (findViewById instanceof SLoadingView) {
                sLoadingView2 = (SLoadingView) findViewById;
                sLoadingView2.setVisibility(0);
            } else {
                if (findViewById instanceof ViewStub) {
                    viewStub = (ViewStub) findViewById;
                } else {
                    viewStub = null;
                }
                if (viewStub != null) {
                    view = viewStub.inflate();
                } else {
                    view = null;
                }
                if (view instanceof SLoadingView) {
                    sLoadingView2 = (SLoadingView) view;
                } else {
                    sLoadingView2 = null;
                }
            }
            this.A = sLoadingView2;
            if (sLoadingView2 != null) {
                sLoadingView2.b();
            }
        } else if (!F() && (sLoadingView = this.A) != null) {
            sLoadingView.setVisibility(0);
            sLoadingView.b();
        }
    }

    public final void J(boolean z10) {
        ImageView imageView;
        int i10;
        ImageView imageView2 = this.f47319z;
        if (imageView2 != null) {
            imageView2.setVisibility(0);
        }
        this.F = z10;
        if (z10) {
            imageView = this.f47319z;
            if (imageView != null) {
                i10 = R$drawable.ic_video_play;
            } else {
                return;
            }
        } else {
            imageView = this.f47319z;
            if (imageView != null) {
                i10 = R$drawable.ic_video_pause;
            } else {
                return;
            }
        }
        imageView.setImageResource(i10);
    }

    public final void K(@NotNull String tip) {
        ViewStub viewStub;
        View view;
        ConstraintLayout constraintLayout;
        Intrinsics.checkNotNullParameter(tip, "tip");
        if (this.C == null) {
            View findViewById = findViewById(R$id.switching_resolution_viewstub);
            if (findViewById instanceof ConstraintLayout) {
                constraintLayout = (ConstraintLayout) findViewById;
            } else {
                if (findViewById instanceof ViewStub) {
                    viewStub = (ViewStub) findViewById;
                } else {
                    viewStub = null;
                }
                if (viewStub != null) {
                    view = viewStub.inflate();
                } else {
                    view = null;
                }
                if (view instanceof ConstraintLayout) {
                    constraintLayout = (ConstraintLayout) view;
                } else {
                    constraintLayout = null;
                }
            }
            this.C = constraintLayout;
        }
        ConstraintLayout constraintLayout2 = this.C;
        if (constraintLayout2 != null) {
            constraintLayout2.setVisibility(0);
            BaseTextView baseTextView = (BaseTextView) constraintLayout2.findViewById(R$id.tip_tv);
            if (baseTextView != null) {
                baseTextView.setText(tip);
            }
            LottieAnimationView lottieAnimationView = (LottieAnimationView) constraintLayout2.findViewById(R$id.refresh_iv);
            if (lottieAnimationView != null) {
                lottieAnimationView.y();
            }
        }
    }

    public final void L(@NotNull pj.a view) {
        Intrinsics.checkNotNullParameter(view, "view");
        B();
        if (view instanceof View) {
            addView((View) view);
        }
    }

    public void M(@NotNull ImmersionShortsInfo shortsInfo, @NotNull BaseEpisode episode, boolean z10) {
        Intrinsics.checkNotNullParameter(shortsInfo, "shortsInfo");
        Intrinsics.checkNotNullParameter(episode, "episode");
        ImmersionControlLayout immersionControlLayout = this.f47317x;
        if (immersionControlLayout != null) {
            immersionControlLayout.w(shortsInfo, episode, z10);
        }
    }

    public void a(int i10) {
        ImmersionControlLayout immersionControlLayout = this.f47317x;
        if (immersionControlLayout != null) {
            immersionControlLayout.a(i10);
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseFrameLayout
    public void e(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47316w = (CustomFrescoView) findViewById(R$id.cover_iv);
        this.f47317x = (ImmersionControlLayout) findViewById(R$id.v_immersion_control);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final BaseEpisode getMEpisode() {
        return this.D;
    }

    public final boolean getMVideoRendered() {
        return this.G;
    }

    @Nullable
    public final TextureView getVideoRenderView() {
        ViewStub viewStub;
        View view;
        TextureView textureView;
        if (this.f47315v == null) {
            View findViewById = findViewById(R$id.video_render_viewstub);
            if (findViewById instanceof TextureView) {
                textureView = (TextureView) findViewById;
            } else {
                if (findViewById instanceof ViewStub) {
                    viewStub = (ViewStub) findViewById;
                } else {
                    viewStub = null;
                }
                if (viewStub != null) {
                    view = viewStub.inflate();
                } else {
                    view = null;
                }
                if (view instanceof TextureView) {
                    textureView = (TextureView) view;
                } else {
                    textureView = null;
                }
            }
            this.f47315v = textureView;
        }
        return this.f47315v;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        BaseEpisode baseEpisode = this.D;
        if (baseEpisode != null) {
            H(baseEpisode);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setMVideoRendered(false);
        this.E = false;
    }

    public void setEpisode(@NotNull BaseEpisode episode) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        this.D = episode;
    }

    protected final void setMEpisode(@Nullable BaseEpisode baseEpisode) {
        this.D = baseEpisode;
    }

    public final void setMVideoRendered(boolean z10) {
        Integer num;
        this.G = z10;
        if (z10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("episodeNum(");
            BaseEpisode baseEpisode = this.D;
            if (baseEpisode != null) {
                num = Integer.valueOf(baseEpisode.getEpisodeNum());
            } else {
                num = null;
            }
            sb2.append(num);
            sb2.append(") mVideoRendered(true)");
            c(sb2.toString());
            C();
            w();
        }
    }

    public final void x() {
        SLoadingView sLoadingView = this.A;
        if (sLoadingView != null) {
            sLoadingView.d();
            sLoadingView.setVisibility(8);
        }
    }

    public final void y() {
        ImageView imageView = this.B;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
    }

    public final void z() {
        ImageView imageView = this.f47319z;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BaseImmersionAdapterView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseImmersionAdapterView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
