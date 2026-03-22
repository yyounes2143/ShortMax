package lf;

import android.content.Context;
import com.ss.ttvideoengine.Resolution;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.VideoEngineCallback;
import com.ss.ttvideoengine.VideoEngineInfoListener;
import com.ss.ttvideoengine.VideoEngineInfos;
import com.ss.ttvideoengine.utils.Error;
import com.startshorts.androidplayer.bean.shorts.PlayResolution;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.player.feature.IVideoPlayerFeature;
import fk.h0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import lf.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: VideoPlayer2.kt */
@Metadata
@SourceDebugExtension({"SMAP\nVideoPlayer2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoPlayer2.kt\ncom/startshorts/androidplayer/manager/player/core/VideoPlayer2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,337:1\n1863#2,2:338\n1863#2,2:340\n*S KotlinDebug\n*F\n+ 1 VideoPlayer2.kt\ncom/startshorts/androidplayer/manager/player/core/VideoPlayer2\n*L\n244#1:338,2\n270#1:340,2\n*E\n"})
/* loaded from: classes6.dex */
public final class r {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Context f62195a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f62196b;

    /* renamed from: c  reason: collision with root package name */
    private s f62197c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private lf.a f62198d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final List<IVideoPlayerFeature> f62199e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private TTVideoEngine f62200f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f62201g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private fk.p f62202h;

    /* renamed from: i  reason: collision with root package name */
    private int f62203i;

    /* renamed from: j  reason: collision with root package name */
    private int f62204j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f62205k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f62206l;

    /* compiled from: VideoPlayer2.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a implements VideoEngineCallback {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void l(r rVar, int i10) {
            lf.a aVar = rVar.f62198d;
            if (aVar != null) {
                aVar.onBufferEnd(i10);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void m(r rVar, int i10, int i11, int i12) {
            lf.a aVar = rVar.f62198d;
            if (aVar != null) {
                aVar.onBufferStart(i10, i11, i12);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void n(r rVar) {
            lf.a aVar = rVar.f62198d;
            if (aVar != null) {
                aVar.d(rVar.f62203i);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void o(r rVar, int i10) {
            lf.a aVar = rVar.f62198d;
            if (aVar != null) {
                aVar.c(i10, rVar.f62203i);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void p(r rVar, String str, Error error, Resolution resolution) {
            lf.a aVar = rVar.f62198d;
            if (aVar != null) {
                aVar.a(str, error.description, resolution);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void q(r rVar) {
            lf.a aVar = rVar.f62198d;
            if (aVar != null) {
                aVar.b();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void r(r rVar) {
            lf.a aVar = rVar.f62198d;
            if (aVar != null) {
                aVar.f();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void s(r rVar) {
            lf.a aVar = rVar.f62198d;
            if (aVar != null) {
                aVar.onPrepared();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void t(r rVar, fk.p pVar) {
            lf.a aVar = rVar.f62198d;
            if (aVar != null) {
                aVar.e(pVar.a());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void u(r rVar) {
            lf.a aVar = rVar.f62198d;
            if (aVar != null) {
                aVar.e(0L);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void v(r rVar, Resolution resolution, int i10) {
            lf.a aVar = rVar.f62198d;
            if (aVar != null) {
                aVar.onVideoStreamBitrateChanged(resolution, i10);
            }
        }

        @Override // com.ss.ttvideoengine.VideoEngineCallback
        public void onBufferEnd(final int i10) {
            Logger logger = Logger.f41511a;
            String str = r.this.f62196b;
            logger.e(str, "onBufferEnd -> code(" + i10 + ')');
            h0 h0Var = h0.f51735a;
            final r rVar = r.this;
            h0Var.e(new Runnable() { // from class: lf.i
                @Override // java.lang.Runnable
                public final void run() {
                    r.a.l(r.this, i10);
                }
            });
        }

        @Override // com.ss.ttvideoengine.VideoEngineCallback
        public void onBufferStart(final int i10, final int i11, final int i12) {
            Logger logger = Logger.f41511a;
            String str = r.this.f62196b;
            logger.e(str, "onBufferStart -> code(" + i10 + ") afterFirstFrame(" + i11 + ") action(" + i12 + ')');
            h0 h0Var = h0.f51735a;
            final r rVar = r.this;
            h0Var.e(new Runnable() { // from class: lf.o
                @Override // java.lang.Runnable
                public final void run() {
                    r.a.m(r.this, i10, i11, i12);
                }
            });
        }

        @Override // com.ss.ttvideoengine.VideoEngineCallback
        public void onCompletion(TTVideoEngine engine) {
            Intrinsics.checkNotNullParameter(engine, "engine");
            Logger logger = Logger.f41511a;
            String str = r.this.f62196b;
            logger.h(str, "onCompletion -> mTotalPosition(" + r.this.f62203i + ") mCurrentPosition(" + r.this.f62204j + ')');
            r.this.f62205k = true;
            h0 h0Var = h0.f51735a;
            final r rVar = r.this;
            h0Var.e(new Runnable() { // from class: lf.n
                @Override // java.lang.Runnable
                public final void run() {
                    r.a.n(r.this);
                }
            });
        }

        @Override // com.ss.ttvideoengine.VideoEngineCallback
        public void onCurrentPlaybackTimeUpdate(TTVideoEngine engine, final int i10) {
            Intrinsics.checkNotNullParameter(engine, "engine");
            if (r.this.f62205k && r.this.f62203i > 0 && i10 <= r.this.f62203i) {
                r.this.f62204j = i10;
                h0 h0Var = h0.f51735a;
                final r rVar = r.this;
                h0Var.e(new Runnable() { // from class: lf.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        r.a.o(r.this, i10);
                    }
                });
            }
        }

        @Override // com.ss.ttvideoengine.VideoEngineCallback
        public void onError(final Error error) {
            final Resolution resolution;
            Intrinsics.checkNotNullParameter(error, "error");
            super.onError(error);
            Logger.f41511a.e(r.this.f62196b, "onError -> code(" + error.code + ") errMsg(" + error.description + ')');
            r.this.f62205k = true;
            TTVideoEngine t10 = r.this.t();
            if (t10 != null) {
                resolution = t10.getCurrentResolution();
            } else {
                resolution = null;
            }
            r.this.f62200f = null;
            final String valueOf = String.valueOf(error.code);
            mf.b.f62506a.d(valueOf);
            h0 h0Var = h0.f51735a;
            final r rVar = r.this;
            h0Var.e(new Runnable() { // from class: lf.g
                @Override // java.lang.Runnable
                public final void run() {
                    r.a.p(r.this, valueOf, error, resolution);
                }
            });
        }

        @Override // com.ss.ttvideoengine.VideoEngineCallback
        public void onPlaybackStateChanged(TTVideoEngine engine, int i10) {
            Intrinsics.checkNotNullParameter(engine, "engine");
            Logger logger = Logger.f41511a;
            String str = r.this.f62196b;
            logger.h(str, "onPlaybackStateChanged -> " + i10);
            if (i10 != 1) {
                if (i10 == 2) {
                    h0 h0Var = h0.f51735a;
                    final r rVar = r.this;
                    h0Var.e(new Runnable() { // from class: lf.m
                        @Override // java.lang.Runnable
                        public final void run() {
                            r.a.r(r.this);
                        }
                    });
                    return;
                }
                return;
            }
            h0 h0Var2 = h0.f51735a;
            final r rVar2 = r.this;
            h0Var2.e(new Runnable() { // from class: lf.l
                @Override // java.lang.Runnable
                public final void run() {
                    r.a.q(r.this);
                }
            });
        }

        @Override // com.ss.ttvideoengine.VideoEngineCallback
        public void onPrepared(TTVideoEngine engine) {
            Intrinsics.checkNotNullParameter(engine, "engine");
            Logger.f41511a.h(r.this.f62196b, "onPrepared");
            h0 h0Var = h0.f51735a;
            final r rVar = r.this;
            h0Var.e(new Runnable() { // from class: lf.q
                @Override // java.lang.Runnable
                public final void run() {
                    r.a.s(r.this);
                }
            });
            r.this.z();
        }

        @Override // com.ss.ttvideoengine.VideoEngineCallback
        public void onRenderStart(TTVideoEngine engine) {
            Intrinsics.checkNotNullParameter(engine, "engine");
            Logger logger = Logger.f41511a;
            String str = r.this.f62196b;
            logger.h(str, "onRenderStart -> mFirstFrameTimePrint(" + r.this.f62201g + ')');
            if (!r.this.f62201g) {
                r.this.f62201g = true;
                final fk.p pVar = r.this.f62202h;
                if (pVar != null) {
                    final r rVar = r.this;
                    if (!pVar.c()) {
                        String str2 = rVar.f62196b;
                        logger.h(str2, "first frame cost " + pVar.b() + "ms");
                        h0.f51735a.e(new Runnable() { // from class: lf.j
                            @Override // java.lang.Runnable
                            public final void run() {
                                r.a.t(r.this, pVar);
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            h0 h0Var = h0.f51735a;
            final r rVar2 = r.this;
            h0Var.e(new Runnable() { // from class: lf.k
                @Override // java.lang.Runnable
                public final void run() {
                    r.a.u(r.this);
                }
            });
        }

        @Override // com.ss.ttvideoengine.VideoEngineCallback
        public void onVideoSizeChanged(TTVideoEngine tTVideoEngine, int i10, int i11) {
            Logger logger = Logger.f41511a;
            String str = r.this.f62196b;
            logger.e(str, "onVideoSizeChanged -> width(" + i10 + ") height(" + i11 + ')');
        }

        @Override // com.ss.ttvideoengine.VideoEngineCallback
        public void onVideoStreamBitrateChanged(final Resolution resolution, final int i10) {
            Intrinsics.checkNotNullParameter(resolution, "resolution");
            super.onVideoStreamBitrateChanged(resolution, i10);
            Logger logger = Logger.f41511a;
            String str = r.this.f62196b;
            logger.h(str, "onVideoStreamBitrateChanged -> " + resolution);
            h0 h0Var = h0.f51735a;
            final r rVar = r.this;
            h0Var.e(new Runnable() { // from class: lf.p
                @Override // java.lang.Runnable
                public final void run() {
                    r.a.v(r.this, resolution, i10);
                }
            });
        }
    }

    public r(@NotNull Context context, @NotNull String tag) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(tag, "tag");
        this.f62195a = context;
        this.f62196b = tag;
        this.f62199e = new ArrayList();
        this.f62205k = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A(final r rVar, int i10, int i11) {
        rVar.f62203i = i10;
        rVar.f62204j = i11;
        h0.f51735a.e(new Runnable() { // from class: lf.f
            @Override // java.lang.Runnable
            public final void run() {
                r.B(r.this);
            }
        });
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(r rVar) {
        lf.a aVar = rVar.f62198d;
        if (aVar != null) {
            aVar.g(rVar.f62203i, rVar.f62204j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F(r rVar, int i10, boolean z10) {
        if (z10) {
            rVar.f62204j = i10;
        }
        rVar.f62205k = true;
        return Unit.f60915a;
    }

    private final void G(TTVideoEngine tTVideoEngine) {
        tTVideoEngine.setVideoEngineCallback(new a());
    }

    private final void H(TTVideoEngine tTVideoEngine) {
        tTVideoEngine.setVideoEngineInfoListener(new VideoEngineInfoListener() { // from class: lf.c
            @Override // com.ss.ttvideoengine.VideoEngineInfoListener
            public final void onVideoEngineInfos(VideoEngineInfos videoEngineInfos) {
                r.I(r.this, videoEngineInfos);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(r rVar, VideoEngineInfos videoEngineInfos) {
        if (videoEngineInfos == null) {
            return;
        }
        if (Intrinsics.areEqual(videoEngineInfos.getKey(), VideoEngineInfos.USING_MDL_HIT_CACHE_SIZE)) {
            String usingMDLPlayTaskKey = videoEngineInfos.getUsingMDLPlayTaskKey();
            long usingMDLHitCacheSize = videoEngineInfos.getUsingMDLHitCacheSize();
            Logger logger = Logger.f41511a;
            String str = rVar.f62196b;
            logger.h(str, "cache hit -> taskKey(" + usingMDLPlayTaskKey + ") cacheSize(" + usingMDLHitCacheSize + ')');
        } else if (Intrinsics.areEqual(videoEngineInfos.getKey(), VideoEngineInfos.USING_RENDER_SEEK_COMPLETE)) {
            Logger.f41511a.h(rVar.f62196b, "seek render complete");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0038, code lost:
        if (kotlin.jvm.internal.Intrinsics.areEqual(r4.g(), r6.g()) == false) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void p(lf.s r6) {
        /*
            r5 = this;
            boolean r0 = r5.f62206l
            if (r0 == 0) goto L5
            return
        L5:
            lf.s r0 = r5.f62197c
            if (r0 != 0) goto La
            return
        La:
            r0 = 1
            r5.f62206l = r0
            com.startshorts.androidplayer.log.Logger r1 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.String r2 = r5.f62196b
            java.lang.String r3 = "clearLastPlayInfo"
            r1.h(r2, r3)
            fk.p r1 = new fk.p
            r1.<init>()
            fk.p r1 = r1.d()
            java.lang.String r2 = "mParams"
            r3 = 0
            if (r6 == 0) goto L3a
            lf.s r4 = r5.f62197c
            if (r4 != 0) goto L2c
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)
            r4 = r3
        L2c:
            android.view.View r4 = r4.g()
            android.view.View r6 = r6.g()
            boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r6)
            if (r6 != 0) goto L5e
        L3a:
            lf.s r6 = r5.f62197c
            if (r6 != 0) goto L42
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)
            r6 = r3
        L42:
            android.view.View r6 = r6.g()
            boolean r4 = r6 instanceof android.view.TextureView
            if (r4 == 0) goto L4d
            android.view.TextureView r6 = (android.view.TextureView) r6
            goto L4e
        L4d:
            r6 = r3
        L4e:
            if (r6 == 0) goto L53
            r6.setSurfaceTextureListener(r3)
        L53:
            lf.s r6 = r5.f62197c
            if (r6 != 0) goto L5b
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)
            r6 = r3
        L5b:
            r6.u(r3)
        L5e:
            r5.f62198d = r3
            r6 = 0
            r5.f62201g = r6
            r5.f62202h = r3
            r5.f62203i = r6
            r5.f62204j = r6
            r5.f62205k = r0
            java.util.List<com.startshorts.androidplayer.manager.player.feature.IVideoPlayerFeature> r6 = r5.f62199e
            java.lang.Iterable r6 = (java.lang.Iterable) r6
            java.util.Iterator r6 = r6.iterator()
        L73:
            boolean r0 = r6.hasNext()
            if (r0 == 0) goto L83
            java.lang.Object r0 = r6.next()
            com.startshorts.androidplayer.manager.player.feature.IVideoPlayerFeature r0 = (com.startshorts.androidplayer.manager.player.feature.IVideoPlayerFeature) r0
            r0.release()
            goto L73
        L83:
            java.util.List<com.startshorts.androidplayer.manager.player.feature.IVideoPlayerFeature> r6 = r5.f62199e
            r6.clear()
            com.ss.ttvideoengine.TTVideoEngine r6 = r5.f62200f
            if (r6 == 0) goto L8f
            r6.releaseAsync()
        L8f:
            r5.f62200f = r3
            com.startshorts.androidplayer.log.Logger r6 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.String r0 = r5.f62196b
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "clearLastPlayInfo cost "
            r2.append(r3)
            long r3 = r1.b()
            r2.append(r3)
            java.lang.String r1 = "ms"
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            r6.h(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: lf.r.p(lf.s):void");
    }

    static /* synthetic */ void q(r rVar, s sVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            sVar = null;
        }
        rVar.p(sVar);
    }

    private final com.startshorts.androidplayer.manager.player.feature.c r() {
        IVideoPlayerFeature s10 = s(IVideoPlayerFeature.FeatureType.BASE);
        if (s10 instanceof com.startshorts.androidplayer.manager.player.feature.c) {
            return (com.startshorts.androidplayer.manager.player.feature.c) s10;
        }
        return null;
    }

    private final IVideoPlayerFeature s(IVideoPlayerFeature.FeatureType featureType) {
        Object obj;
        IVideoPlayerFeature iVideoPlayerFeature;
        synchronized (this.f62199e) {
            try {
                Iterator<T> it = this.f62199e.iterator();
                while (true) {
                    if (it.hasNext()) {
                        obj = it.next();
                        if (((IVideoPlayerFeature) obj).type() == featureType) {
                            break;
                        }
                    } else {
                        obj = null;
                        break;
                    }
                }
                iVideoPlayerFeature = (IVideoPlayerFeature) obj;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iVideoPlayerFeature;
    }

    private final com.startshorts.androidplayer.manager.player.feature.e u() {
        IVideoPlayerFeature s10 = s(IVideoPlayerFeature.FeatureType.SEAMLESS_SWITCH);
        if (s10 instanceof com.startshorts.androidplayer.manager.player.feature.e) {
            return (com.startshorts.androidplayer.manager.player.feature.e) s10;
        }
        return null;
    }

    private final void v(TTVideoEngine tTVideoEngine) {
        s sVar = this.f62197c;
        s sVar2 = null;
        if (sVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mParams");
            sVar = null;
        }
        List<IVideoPlayerFeature> b10 = sVar.b();
        if (b10 != null) {
            this.f62199e.addAll(b10);
        }
        this.f62199e.add(new com.startshorts.androidplayer.manager.player.feature.c());
        IVideoPlayerFeature iVideoPlayerFeature = null;
        for (IVideoPlayerFeature iVideoPlayerFeature2 : this.f62199e) {
            try {
                if (iVideoPlayerFeature2 instanceof com.startshorts.androidplayer.manager.player.feature.f) {
                    iVideoPlayerFeature = iVideoPlayerFeature2;
                } else {
                    s sVar3 = this.f62197c;
                    if (sVar3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mParams");
                        sVar3 = null;
                    }
                    iVideoPlayerFeature2.a(tTVideoEngine, sVar3);
                }
            } catch (Exception e10) {
                Logger.f41511a.e(this.f62196b, "init feature(" + iVideoPlayerFeature2.type() + ") failed -> " + e10.getMessage());
            }
        }
        com.startshorts.androidplayer.manager.player.feature.f fVar = (com.startshorts.androidplayer.manager.player.feature.f) iVideoPlayerFeature;
        if (fVar != null) {
            s sVar4 = this.f62197c;
            if (sVar4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mParams");
            } else {
                sVar2 = sVar4;
            }
            fVar.a(tTVideoEngine, sVar2);
        }
    }

    private final void y() {
        Logger logger = Logger.f41511a;
        String str = this.f62196b;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("playInternal -> ");
        s sVar = this.f62197c;
        if (sVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mParams");
            sVar = null;
        }
        sb2.append(sVar);
        logger.h(str, sb2.toString());
        TTVideoEngine tTVideoEngine = new TTVideoEngine(this.f62195a, 0);
        G(tTVideoEngine);
        H(tTVideoEngine);
        v(tTVideoEngine);
        this.f62200f = tTVideoEngine;
        tTVideoEngine.play();
        this.f62202h = new fk.p().d();
    }

    public final void C() {
        Logger logger = Logger.f41511a;
        logger.h(this.f62196b, "releaseInternal");
        fk.p d10 = new fk.p().d();
        q(this, null, 1, null);
        String str = this.f62196b;
        logger.h(str, "release took " + d10.b() + "ms");
    }

    public void D() {
        com.startshorts.androidplayer.manager.player.feature.c r10 = r();
        if (r10 != null) {
            r10.i();
        }
    }

    public void E(final int i10) {
        com.startshorts.androidplayer.manager.player.feature.c r10 = r();
        if (r10 != null) {
            r10.j(i10, new Function1() { // from class: lf.d
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit F;
                    F = r.F(r.this, i10, ((Boolean) obj).booleanValue());
                    return F;
                }
            });
            Unit unit = Unit.f60915a;
            this.f62205k = false;
        }
    }

    public void J(boolean z10) {
        com.startshorts.androidplayer.manager.player.feature.c r10 = r();
        if (r10 != null) {
            r10.l(z10);
        }
    }

    public void K() {
        com.startshorts.androidplayer.manager.player.feature.c r10 = r();
        if (r10 != null) {
            r10.n();
        }
    }

    public final void L(@NotNull PlayResolution resolution) {
        Intrinsics.checkNotNullParameter(resolution, "resolution");
        com.startshorts.androidplayer.manager.player.feature.e u10 = u();
        if (u10 != null) {
            u10.c(resolution);
        }
    }

    public void M(float f10) {
        com.startshorts.androidplayer.manager.player.feature.c r10 = r();
        if (r10 != null) {
            r10.o(f10);
        }
    }

    @Nullable
    public final TTVideoEngine t() {
        return this.f62200f;
    }

    public void w() {
        com.startshorts.androidplayer.manager.player.feature.c r10 = r();
        if (r10 != null) {
            r10.g();
        }
    }

    public void x(@NotNull s params, @NotNull lf.a listener) {
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(listener, "listener");
        p(params);
        this.f62206l = false;
        this.f62197c = params;
        this.f62198d = listener;
        y();
    }

    public final void z() {
        com.startshorts.androidplayer.manager.player.feature.c r10 = r();
        if (r10 != null) {
            r10.h(new Function2() { // from class: lf.e
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit A;
                    A = r.A(r.this, ((Integer) obj).intValue(), ((Integer) obj2).intValue());
                    return A;
                }
            });
        }
    }

    public /* synthetic */ r(Context context, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? "Player" : str);
    }
}
