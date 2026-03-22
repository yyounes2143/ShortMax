package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer;

import android.view.View;
import androidx.annotation.MainThread;
import androidx.compose.runtime.internal.StabilityInferred;
import at.n;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.l;
import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@MainThread
/* loaded from: classes6.dex */
public final class f implements h {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final c f36422a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final g0 f36423b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final kt.d<Boolean> f36424c;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.VisibilityAwareVideoPlayer$1", f = "VisibilityAwareVideoPlayer.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements n<Boolean, Boolean, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f36425h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ boolean f36426i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ boolean f36427j;

        public a(rs.c<? super a> cVar) {
            super(3, cVar);
        }

        public final Object i(boolean z10, boolean z11, rs.c<? super Unit> cVar) {
            a aVar = new a(cVar);
            aVar.f36426i = z10;
            aVar.f36427j = z11;
            return aVar.invokeSuspend(Unit.f60915a);
        }

        @Override // at.n
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Boolean bool2, rs.c<? super Unit> cVar) {
            return i(bool.booleanValue(), bool2.booleanValue(), cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f36425h == 0) {
                kotlin.f.b(obj);
                boolean z10 = this.f36426i;
                boolean z11 = this.f36427j;
                if (z10 && z11) {
                    f.this.f36422a.play();
                } else {
                    f.this.f36422a.pause();
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public f(@NotNull c basePlayer, @NotNull a0 viewVisibilityTracker) {
        kt.b b10;
        Intrinsics.checkNotNullParameter(basePlayer, "basePlayer");
        Intrinsics.checkNotNullParameter(viewVisibilityTracker, "viewVisibilityTracker");
        this.f36422a = basePlayer;
        g0 b11 = kotlinx.coroutines.i.b();
        this.f36423b = b11;
        kt.d<Boolean> b12 = kt.g.b(1, 0, BufferOverflow.DROP_OLDEST, 2, null);
        this.f36424c = b12;
        b10 = i.b(viewVisibilityTracker, basePlayer.u());
        kotlinx.coroutines.flow.c.J(kotlinx.coroutines.flow.c.n(b10, b12, new a(null)), b11);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h
    @Nullable
    public Object a(@NotNull rs.c<? super Unit> cVar) {
        return this.f36422a.a(cVar);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h
    public void b(boolean z10) {
        this.f36422a.b(z10);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.t
    public void destroy() {
        kotlinx.coroutines.i.e(this.f36423b, null, 1, null);
        this.f36422a.destroy();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h
    @NotNull
    public kt.i<l> f() {
        return this.f36422a.f();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h
    @NotNull
    public kt.i<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.a> isPlaying() {
        return this.f36422a.isPlaying();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h
    public void pause() {
        this.f36424c.g(Boolean.FALSE);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h
    public void play() {
        this.f36424c.g(Boolean.TRUE);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h
    public void seekTo(long j10) {
        this.f36422a.seekTo(j10);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h
    @NotNull
    public kt.i<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i> t() {
        return this.f36422a.t();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h
    @Nullable
    public View u() {
        return this.f36422a.u();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.h
    public void a(@Nullable String str) {
        this.f36422a.a(str);
    }
}
