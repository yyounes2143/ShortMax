package com.startshorts.androidplayer.ui.view.shortsV2.adapter;

import android.content.Context;
import android.graphics.drawable.Animatable;
import android.util.AttributeSet;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.bean.shorts.ShortsEpisode;
import com.startshorts.androidplayer.ui.view.base.SwipingFrameLayout;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.ui.view.pagestate.SLoadingView;
import com.startshorts.androidplayer.ui.view.shortsV2.menu.ShortsIconTextView;
import com.startshorts.androidplayer.ui.view.shortsV2.notification.ShortsNotificationLayout;
import com.startshorts.androidplayer.ui.view.shortsV2.notification.ShortsNotificationType;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.ArrayList;
import java.util.List;
import jk.g;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import y3.m;
/* compiled from: BaseShortsAdapterView.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBaseShortsAdapterView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseShortsAdapterView.kt\ncom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,258:1\n1863#2,2:259\n*S KotlinDebug\n*F\n+ 1 BaseShortsAdapterView.kt\ncom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView\n*L\n87#1:259,2\n*E\n"})
/* loaded from: classes7.dex */
public abstract class BaseShortsAdapterView extends SwipingFrameLayout {
    @NotNull
    public static final a D = new a(null);
    private static final int E;
    private static final int F;
    @Nullable
    private ShortsEpisode A;
    private boolean B;
    private boolean C;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private TextureView f47878v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private CustomFrescoView f47879w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private ImageView f47880x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private SLoadingView f47881y;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    private ShortsNotificationLayout f47882z;

    /* compiled from: BaseShortsAdapterView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: BaseShortsAdapterView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends z2.a<m> {
        b() {
        }

        @Override // z2.a, z2.b
        /* renamed from: g */
        public void d(String str, m mVar, Animatable animatable) {
            BaseShortsAdapterView.this.B = true;
        }
    }

    static {
        DeviceUtil deviceUtil = DeviceUtil.f48146a;
        E = deviceUtil.G();
        F = deviceUtil.F() - g.a(49.0f);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BaseShortsAdapterView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001d, code lost:
        if (r2.isBrandAdVideo() == true) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void C(com.startshorts.androidplayer.bean.shorts.ShortsEpisode r11) {
        /*
            r10 = this;
            boolean r0 = r10.C
            if (r0 != 0) goto L74
            boolean r0 = r10.B
            if (r0 == 0) goto L9
            goto L74
        L9:
            com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView r0 = r10.f47879w
            if (r0 != 0) goto Le
            return
        Le:
            r1 = 0
            r0.setVisibility(r1)
            com.startshorts.androidplayer.bean.act.ActResource r2 = r11.getExtraAdInfo()
            if (r2 == 0) goto L20
            boolean r2 = r2.isBrandAdVideo()
            r3 = 1
            if (r2 != r3) goto L20
            goto L21
        L20:
            r3 = r1
        L21:
            if (r3 == 0) goto L3a
            int r6 = r11.getFirstFrameWidthForAdOfShorts()
            int r7 = r11.getFirstFrameHeightForAdOfShorts()
            int r8 = r11.getCoverWidthForAdOfShorts()
            int r9 = r11.getCoverHeightForAdOfShorts()
            r5 = 1
            r4 = r11
            java.lang.String r11 = r4.getVideoCover(r5, r6, r7, r8, r9)
            goto L53
        L3a:
            boolean r5 = r11.fromRecommendPool()
            int r6 = r11.getFirstFrameWidthForShorts()
            int r7 = r11.getFirstFrameHeightForShorts()
            int r8 = r11.getCoverWidthForShorts()
            int r9 = r11.getCoverHeightForShorts()
            r4 = r11
            java.lang.String r11 = r4.getVideoCover(r5, r6, r7, r8, r9)
        L53:
            kk.f r2 = kk.f.f60747a
            com.startshorts.androidplayer.bean.fresco.FrescoConfig r4 = new com.startshorts.androidplayer.bean.fresco.FrescoConfig
            r4.<init>()
            r4.setUrl(r11)
            r4.setOssProcess(r1)
            com.startshorts.androidplayer.ui.view.shortsV2.adapter.BaseShortsAdapterView$b r11 = new com.startshorts.androidplayer.ui.view.shortsV2.adapter.BaseShortsAdapterView$b
            r11.<init>()
            r4.setControllerListener(r11)
            if (r3 == 0) goto L6f
            c3.q r11 = c3.q.f3020b
            r4.setScaleType(r11)
        L6f:
            kotlin.Unit r11 = kotlin.Unit.f60915a
            r2.A(r0, r4)
        L74:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.shortsV2.adapter.BaseShortsAdapterView.C(com.startshorts.androidplayer.bean.shorts.ShortsEpisode):void");
    }

    private final ShortsNotificationLayout getNotificationLayout() {
        ViewStub viewStub;
        View view;
        ShortsNotificationLayout shortsNotificationLayout;
        if (this.f47882z == null) {
            View findViewById = findViewById(R$id.notification_layout_viewstub);
            if (findViewById instanceof ShortsNotificationLayout) {
                shortsNotificationLayout = (ShortsNotificationLayout) findViewById;
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
                if (view instanceof ShortsNotificationLayout) {
                    shortsNotificationLayout = (ShortsNotificationLayout) view;
                } else {
                    shortsNotificationLayout = null;
                }
            }
            this.f47882z = shortsNotificationLayout;
        }
        return this.f47882z;
    }

    private final void v() {
        CustomFrescoView customFrescoView = this.f47879w;
        if (customFrescoView != null) {
            customFrescoView.setVisibility(8);
        }
    }

    public final void A() {
        ShortsNotificationLayout notificationLayout = getNotificationLayout();
        if (notificationLayout != null) {
            notificationLayout.removeAllViews();
        }
    }

    public final void B(@NotNull ShortsNotificationType type, boolean z10, @Nullable yd.a aVar) {
        Intrinsics.checkNotNullParameter(type, "type");
        ShortsNotificationLayout notificationLayout = getNotificationLayout();
        if (notificationLayout != null) {
            notificationLayout.h(type, z10, aVar);
        }
    }

    public final void D() {
        SLoadingView sLoadingView;
        ViewStub viewStub;
        View view;
        SLoadingView sLoadingView2;
        if (this.f47881y == null) {
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
            this.f47881y = sLoadingView2;
            if (sLoadingView2 != null) {
                sLoadingView2.b();
            }
        } else if (!z() && (sLoadingView = this.f47881y) != null) {
            sLoadingView.setVisibility(0);
            sLoadingView.b();
        }
    }

    public final void E() {
        ViewStub viewStub;
        View view;
        ImageView imageView;
        ImageView imageView2 = this.f47880x;
        if (imageView2 == null) {
            View findViewById = findViewById(R$id.play_button_viewstub);
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
            this.f47880x = imageView;
        } else if (imageView2 != null) {
            imageView2.setVisibility(0);
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseFrameLayout
    public void e(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47879w = (CustomFrescoView) findViewById(R$id.cover_iv);
    }

    @Nullable
    public final List<zj.a> getAllMenus() {
        ViewGroup viewGroup = (ViewGroup) findViewById(R$id.menu_layout);
        if (viewGroup == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if (childAt instanceof zj.a) {
                arrayList.add(childAt);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final ShortsEpisode getMEpisode() {
        return this.A;
    }

    public final boolean getMVideoRendered() {
        return this.C;
    }

    public final /* synthetic */ <T extends zj.a> T getMenu() {
        ViewGroup viewGroup = (ViewGroup) findViewById(R$id.menu_layout);
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            Intrinsics.reifiedOperationMarker(3, "T");
            if (childAt instanceof zj.a) {
                return (T) childAt;
            }
        }
        return null;
    }

    @Nullable
    public final TextureView getVideoRenderView() {
        ViewStub viewStub;
        View view;
        TextureView textureView;
        if (this.f47878v == null) {
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
            this.f47878v = textureView;
        }
        return this.f47878v;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ShortsEpisode shortsEpisode = this.A;
        if (shortsEpisode != null) {
            C(shortsEpisode);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setMVideoRendered(false);
        this.B = false;
    }

    public void setEpisode(@NotNull ShortsEpisode episode) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        this.A = episode;
        y(episode);
    }

    protected final void setMEpisode(@Nullable ShortsEpisode shortsEpisode) {
        this.A = shortsEpisode;
    }

    public final void setMVideoRendered(boolean z10) {
        Integer num;
        this.C = z10;
        if (z10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("episode(");
            ShortsEpisode shortsEpisode = this.A;
            if (shortsEpisode != null) {
                num = Integer.valueOf(shortsEpisode.getShortPlayId());
            } else {
                num = null;
            }
            sb2.append(num);
            sb2.append(") mVideoRendered(true)");
            c(sb2.toString());
            v();
        }
    }

    public final void t(@NotNull ak.a notification, @NotNull LinearLayout.LayoutParams layoutParams, @Nullable yd.a aVar) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        Intrinsics.checkNotNullParameter(layoutParams, "layoutParams");
        ShortsNotificationLayout notificationLayout = getNotificationLayout();
        if (notificationLayout != null) {
            notificationLayout.f(notification, layoutParams, aVar);
        }
    }

    @Nullable
    public final ShortsIconTextView u(int i10) {
        ViewGroup viewGroup = (ViewGroup) findViewById(R$id.menu_layout);
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = viewGroup.getChildAt(i11);
            if (childAt instanceof ShortsIconTextView) {
                ShortsIconTextView shortsIconTextView = (ShortsIconTextView) childAt;
                if (shortsIconTextView.x() == i10) {
                    return shortsIconTextView;
                }
            }
        }
        return null;
    }

    public final void w() {
        SLoadingView sLoadingView = this.f47881y;
        if (sLoadingView != null) {
            sLoadingView.d();
            sLoadingView.setVisibility(8);
        }
    }

    public final void x() {
        ImageView imageView = this.f47880x;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
    }

    public void y(@NotNull ShortsEpisode episode) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        List<zj.a> allMenus = getAllMenus();
        if (allMenus != null) {
            for (zj.a aVar : allMenus) {
                aVar.e(episode);
            }
        }
    }

    public final boolean z() {
        SLoadingView sLoadingView = this.f47881y;
        if (sLoadingView == null || sLoadingView.getVisibility() != 0) {
            return false;
        }
        return true;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BaseShortsAdapterView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseShortsAdapterView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
