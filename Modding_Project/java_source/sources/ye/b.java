package ye;

import android.content.Context;
import android.graphics.drawable.Animatable;
import android.os.Bundle;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.bean.act.CallAppDataKey;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.bean.discover.VideoPreviewInfo;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment;
import com.startshorts.androidplayer.ui.view.discover.VideoPreview;
import com.startshorts.androidplayer.viewmodel.player.PlayerViewModel;
import com.startshorts.androidplayer.viewmodel.player.b;
import com.startshorts.androidplayer.viewmodel.player.c;
import fk.u;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import lf.s;
import ms.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.l;
import y3.m;
/* compiled from: VideoPreviewManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class b {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f70785d = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private Fragment f70786a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private VideoPreviewInfo f70787b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private PlayerViewModel f70788c;

    /* compiled from: VideoPreviewManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: VideoPreviewManager.kt */
    @Metadata
    /* renamed from: ye.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0975b implements VideoPreview.a {
        C0975b() {
        }

        @Override // com.startshorts.androidplayer.ui.view.discover.VideoPreview.a
        public void a(boolean z10) {
            Logger logger = Logger.f41511a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("play: isMute: ");
            sb2.append(!z10);
            logger.h("VideoPreviewManager", sb2.toString());
            PlayerViewModel playerViewModel = b.this.f70788c;
            if (playerViewModel != null) {
                playerViewModel.M(new b.c(!z10));
            }
        }
    }

    /* compiled from: VideoPreviewManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class c extends z2.a<m> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ VideoPreviewInfo f70790b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ VideoPreview f70791c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ b f70792d;

        c(VideoPreviewInfo videoPreviewInfo, VideoPreview videoPreview, b bVar) {
            this.f70790b = videoPreviewInfo;
            this.f70791c = videoPreview;
            this.f70792d = bVar;
        }

        @Override // z2.a, z2.b
        public void c(String str, Throwable th2) {
            super.c(str, th2);
            this.f70790b.getVideoPreview().setBackgroundColor(ContextCompat.getColor(this.f70791c.getContext(), R$color.color_discover_fragment_horizontal_image_video_preview_bg));
            b.h(this.f70792d, this.f70790b);
            this.f70791c.setMControllerListener(null);
            Logger.f41511a.h("VideoPreviewManager", "play: doPlay by onFailure");
        }

        @Override // z2.a, z2.b
        /* renamed from: g */
        public void d(String str, m mVar, Animatable animatable) {
            super.d(str, mVar, animatable);
            b.h(this.f70792d, this.f70790b);
            this.f70791c.setMControllerListener(null);
            Logger.f41511a.h("VideoPreviewManager", "play: doPlay by onFinalImageSet");
        }
    }

    /* compiled from: VideoPreviewManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    static final class d implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f70793a;

        d(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f70793a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter)) {
                return false;
            }
            return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final f<?> getFunctionDelegate() {
            return this.f70793a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f70793a.invoke(obj);
        }
    }

    public b(@Nullable Fragment fragment) {
        this.f70786a = fragment;
        if (fragment != null) {
            PlayerViewModel playerViewModel = (PlayerViewModel) new ViewModelProvider(fragment).get(PlayerViewModel.class);
            playerViewModel.H().observe(fragment, new d(new Function1() { // from class: ye.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit e10;
                    e10 = b.e(b.this, (c) obj);
                    return e10;
                }
            }));
            this.f70788c = playerViewModel;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit e(b bVar, com.startshorts.androidplayer.viewmodel.player.c cVar) {
        VideoPreview videoPreview;
        MainActivity mainActivity;
        String num;
        DiscoverTabFragment f02;
        if (cVar instanceof c.g) {
            VideoPreviewInfo videoPreviewInfo = bVar.f70787b;
            if (videoPreviewInfo != null) {
                Context context = videoPreviewInfo.getVideoPreview().getContext();
                DiscoverTab discoverTab = null;
                if (context instanceof MainActivity) {
                    mainActivity = (MainActivity) context;
                } else {
                    mainActivity = null;
                }
                if (mainActivity != null && (f02 = mainActivity.f0()) != null) {
                    discoverTab = f02.H0();
                }
                EventManager eventManager = EventManager.f42463a;
                Bundle B = eventManager.B(discoverTab);
                String shortPlayCode = videoPreviewInfo.getShorts().getShortPlayCode();
                String str = "";
                if (shortPlayCode == null) {
                    shortPlayCode = "";
                }
                B.putString("reel_id", shortPlayCode);
                B.putString("scene", "discover");
                B.putString("module_name", videoPreviewInfo.getDiscoverModule().getTitle());
                B.putString("module_id", videoPreviewInfo.getDiscoverModule().getBannerId());
                B.putInt("position_id", videoPreviewInfo.getDiscoverModule().getPosition() + 1);
                Integer recommendId = videoPreviewInfo.getDiscoverModule().getRecommendId();
                if (recommendId != null && (num = recommendId.toString()) != null) {
                    str = num;
                }
                B.putString(CallAppDataKey.KEY_AUDIENCE_RECOMMEND_ID, str);
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "reel_video_preview_play", B, 0L, 4, null);
            }
            Logger.f41511a.h("VideoPreviewManager", "onPrepared");
        } else if (cVar instanceof c.j) {
            Logger.f41511a.h("VideoPreviewManager", "onTimeInfo");
        } else if (cVar instanceof c.h) {
            Logger.f41511a.h("VideoPreviewManager", "onRenderStart");
            VideoPreviewInfo videoPreviewInfo2 = bVar.f70787b;
            if (videoPreviewInfo2 != null && (videoPreview = videoPreviewInfo2.getVideoPreview()) != null) {
                videoPreview.setSoundViewVisibility(0);
            }
        } else if (cVar instanceof c.f) {
            Logger.f41511a.h("VideoPreviewManager", "onPlaying");
        } else if (cVar instanceof c.e) {
            Logger.f41511a.h("VideoPreviewManager", "onPaused");
        } else if (cVar instanceof c.b) {
            Logger.f41511a.h("VideoPreviewManager", "OnBufferStart");
        } else if (cVar instanceof c.a) {
            Logger.f41511a.h("VideoPreviewManager", "OnBufferEnd");
        } else if (cVar instanceof c.C0672c) {
            Logger.f41511a.h("VideoPreviewManager", "OnCompleted");
            VideoPreviewInfo videoPreviewInfo3 = bVar.f70787b;
            if (videoPreviewInfo3 != null && !videoPreviewInfo3.isAuto()) {
                bVar.k();
                PlayerViewModel playerViewModel = bVar.f70788c;
                if (playerViewModel != null) {
                    playerViewModel.M(b.f.f48940a);
                }
            }
        } else if (cVar instanceof c.d) {
            Logger.f41511a.h("VideoPreviewManager", "OnError");
            bVar.k();
            PlayerViewModel playerViewModel2 = bVar.f70788c;
            if (playerViewModel2 != null) {
                playerViewModel2.M(b.f.f48940a);
            }
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(b bVar, VideoPreviewInfo videoPreviewInfo) {
        PlayerViewModel playerViewModel = bVar.f70788c;
        if (playerViewModel != null) {
            Context b10 = u.f51776a.b();
            s sVar = new s();
            sVar.y("preview");
            sVar.u(videoPreviewInfo.getVideoPreview().getMTextureView());
            sVar.w(l.f64869a.b(videoPreviewInfo.getUrl()));
            sVar.v(0);
            sVar.p(videoPreviewInfo.isAuto());
            sVar.r(true);
            sVar.n(videoPreviewInfo.getDisplayMode());
            if (videoPreviewInfo.getNeedDecrypt()) {
                sVar.o(CollectionsKt.t(new com.startshorts.androidplayer.manager.player.feature.d()));
            }
            Unit unit = Unit.f60915a;
            playerViewModel.M(new b.e(b10, sVar));
        }
    }

    private final void k() {
        VideoPreview videoPreview;
        VideoPreviewInfo videoPreviewInfo = this.f70787b;
        if (videoPreviewInfo != null && (videoPreview = videoPreviewInfo.getVideoPreview()) != null) {
            videoPreview.setVisibility(8);
            videoPreview.setMControllerListener(null);
        }
        this.f70787b = null;
    }

    @Nullable
    public final VideoPreviewInfo d() {
        return this.f70787b;
    }

    public final void f() {
        String str;
        PlayerViewModel playerViewModel = this.f70788c;
        if (playerViewModel != null) {
            playerViewModel.M(b.d.f48937a);
            Unit unit = Unit.f60915a;
            Logger logger = Logger.f41511a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("pause,url: ");
            VideoPreviewInfo videoPreviewInfo = this.f70787b;
            VideoPreview videoPreview = null;
            if (videoPreviewInfo != null) {
                str = videoPreviewInfo.getUrl();
            } else {
                str = null;
            }
            sb2.append(str);
            sb2.append(",view: ");
            VideoPreviewInfo videoPreviewInfo2 = this.f70787b;
            if (videoPreviewInfo2 != null) {
                videoPreview = videoPreviewInfo2.getVideoPreview();
            }
            sb2.append(videoPreview);
            logger.h("VideoPreviewManager", sb2.toString());
        }
    }

    public final void g(@Nullable VideoPreviewInfo videoPreviewInfo) {
        VideoPreview videoPreview;
        String str;
        if (videoPreviewInfo == null) {
            k();
            PlayerViewModel playerViewModel = this.f70788c;
            if (playerViewModel != null) {
                playerViewModel.M(b.f.f48940a);
            }
            Logger.f41511a.h("VideoPreviewManager", "play : videoPreviewInfo null -> release");
            return;
        }
        VideoPreview videoPreview2 = videoPreviewInfo.getVideoPreview();
        VideoPreviewInfo videoPreviewInfo2 = this.f70787b;
        VideoPreview videoPreview3 = null;
        if (videoPreviewInfo2 != null) {
            videoPreview = videoPreviewInfo2.getVideoPreview();
        } else {
            videoPreview = null;
        }
        if (!Intrinsics.areEqual(videoPreview2, videoPreview)) {
            k();
            this.f70787b = videoPreviewInfo;
            VideoPreview videoPreview4 = videoPreviewInfo.getVideoPreview();
            videoPreview4.setSoundViewVisibility(8);
            videoPreview4.k(false);
            videoPreview4.setListener(new C0975b());
            String mBgUrl = videoPreviewInfo.getVideoPreview().getMBgUrl();
            if (mBgUrl != null && mBgUrl.length() != 0) {
                if (videoPreviewInfo.getVideoPreview().getMHasBgLoaded()) {
                    videoPreview4.setMControllerListener(null);
                    h(this, videoPreviewInfo);
                    Logger.f41511a.h("VideoPreviewManager", "play: doPlay by mHasBgLoaded true");
                } else {
                    videoPreview4.setMControllerListener(new c(videoPreviewInfo, videoPreview4, this));
                }
            } else {
                if (videoPreviewInfo.isShowDefaultBg()) {
                    videoPreviewInfo.getVideoPreview().setBackgroundColor(ContextCompat.getColor(videoPreview4.getContext(), R$color.color_discover_fragment_horizontal_image_video_preview_bg));
                }
                h(this, videoPreviewInfo);
            }
            videoPreview4.setVisibility(0);
            Logger.f41511a.h("VideoPreviewManager", "play: play new video,url: " + videoPreviewInfo.getUrl() + ",view: " + videoPreviewInfo.getVideoPreview() + ",mHasBgLoaded:" + videoPreviewInfo.getVideoPreview().getMHasBgLoaded());
            return;
        }
        Logger logger = Logger.f41511a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("play:no play -> videoPreviewInfo is same,,url: ");
        VideoPreviewInfo videoPreviewInfo3 = this.f70787b;
        if (videoPreviewInfo3 != null) {
            str = videoPreviewInfo3.getUrl();
        } else {
            str = null;
        }
        sb2.append(str);
        sb2.append(",view: ");
        VideoPreviewInfo videoPreviewInfo4 = this.f70787b;
        if (videoPreviewInfo4 != null) {
            videoPreview3 = videoPreviewInfo4.getVideoPreview();
        }
        sb2.append(videoPreview3);
        logger.h("VideoPreviewManager", sb2.toString());
    }

    public final void i() {
        String str;
        VideoPreview videoPreview;
        Logger logger = Logger.f41511a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("release,url: ");
        VideoPreviewInfo videoPreviewInfo = this.f70787b;
        if (videoPreviewInfo != null) {
            str = videoPreviewInfo.getUrl();
        } else {
            str = null;
        }
        sb2.append(str);
        sb2.append(",view: ");
        VideoPreviewInfo videoPreviewInfo2 = this.f70787b;
        if (videoPreviewInfo2 != null) {
            videoPreview = videoPreviewInfo2.getVideoPreview();
        } else {
            videoPreview = null;
        }
        sb2.append(videoPreview);
        logger.h("VideoPreviewManager", sb2.toString());
        k();
        PlayerViewModel playerViewModel = this.f70788c;
        if (playerViewModel != null) {
            playerViewModel.M(b.f.f48940a);
        }
        this.f70786a = null;
    }

    public final void j(@NotNull VideoPreviewInfo videoPreviewInfo) {
        VideoPreview videoPreview;
        Intrinsics.checkNotNullParameter(videoPreviewInfo, "videoPreviewInfo");
        VideoPreview videoPreview2 = videoPreviewInfo.getVideoPreview();
        VideoPreviewInfo videoPreviewInfo2 = this.f70787b;
        if (videoPreviewInfo2 != null) {
            videoPreview = videoPreviewInfo2.getVideoPreview();
        } else {
            videoPreview = null;
        }
        if (Intrinsics.areEqual(videoPreview2, videoPreview)) {
            g(null);
        }
    }

    public final void l() {
        String str;
        PlayerViewModel playerViewModel = this.f70788c;
        if (playerViewModel != null) {
            playerViewModel.M(b.g.f48941a);
            Unit unit = Unit.f60915a;
            Logger logger = Logger.f41511a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("resume,url: ");
            VideoPreviewInfo videoPreviewInfo = this.f70787b;
            VideoPreview videoPreview = null;
            if (videoPreviewInfo != null) {
                str = videoPreviewInfo.getUrl();
            } else {
                str = null;
            }
            sb2.append(str);
            sb2.append(",view: ");
            VideoPreviewInfo videoPreviewInfo2 = this.f70787b;
            if (videoPreviewInfo2 != null) {
                videoPreview = videoPreviewInfo2.getVideoPreview();
            }
            sb2.append(videoPreview);
            logger.h("VideoPreviewManager", sb2.toString());
        }
    }
}
