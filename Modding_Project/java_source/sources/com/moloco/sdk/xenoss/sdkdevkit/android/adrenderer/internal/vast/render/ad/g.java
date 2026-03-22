package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad;

import android.content.Context;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.s;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.k;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import com.ss.ttm.player.MediaPlayer;
import gt.g0;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class g {

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.AdPlaylistControllerImplKt$isLinearPlaylistItemPlayingFlow$1", f = "AdPlaylistControllerImpl.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_400}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35742h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ kt.b<k> f35743i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ kt.e<Boolean> f35744j;

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.AdPlaylistControllerImplKt$isLinearPlaylistItemPlayingFlow$1$1", f = "AdPlaylistControllerImpl.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_POST_STALL_500}, m = "invokeSuspend")
        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.g$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0563a extends SuspendLambda implements Function2<k, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f35745h;

            /* renamed from: i  reason: collision with root package name */
            public /* synthetic */ Object f35746i;

            /* renamed from: j  reason: collision with root package name */
            public final /* synthetic */ kt.e<Boolean> f35747j;

            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.g$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0564a<T> implements kt.c {

                /* renamed from: a  reason: collision with root package name */
                public final /* synthetic */ kt.e<Boolean> f35748a;

                public C0564a(kt.e<Boolean> eVar) {
                    this.f35748a = eVar;
                }

                public final Object a(boolean z10, rs.c<? super Unit> cVar) {
                    this.f35748a.setValue(kotlin.coroutines.jvm.internal.a.a(z10));
                    return Unit.f60915a;
                }

                @Override // kt.c
                public /* bridge */ /* synthetic */ Object emit(Object obj, rs.c cVar) {
                    return a(((Boolean) obj).booleanValue(), cVar);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0563a(kt.e<Boolean> eVar, rs.c<? super C0563a> cVar) {
                super(2, cVar);
                this.f35747j = eVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                C0563a c0563a = new C0563a(this.f35747j, cVar);
                c0563a.f35746i = obj;
                return c0563a;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: i */
            public final Object invoke(k kVar, rs.c<? super Unit> cVar) {
                return ((C0563a) create(kVar, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object f10 = kotlin.coroutines.intrinsics.a.f();
                int i10 = this.f35745h;
                if (i10 != 0) {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    kotlin.f.b(obj);
                } else {
                    kotlin.f.b(obj);
                    k kVar = (k) this.f35746i;
                    if (kVar instanceof k.c) {
                        kt.i<Boolean> isPlaying = ((k.c) kVar).a().isPlaying();
                        C0564a c0564a = new C0564a(this.f35747j);
                        this.f35745h = 1;
                        if (isPlaying.collect(c0564a, this) == f10) {
                            return f10;
                        }
                    } else {
                        this.f35747j.setValue(null);
                        return Unit.f60915a;
                    }
                }
                throw new KotlinNothingValueException();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(kt.b<? extends k> bVar, kt.e<Boolean> eVar, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f35743i = bVar;
            this.f35744j = eVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(this.f35743i, this.f35744j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f35742h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                kt.b<k> bVar = this.f35743i;
                C0563a c0563a = new C0563a(this.f35744j, null);
                this.f35742h = 1;
                if (kotlinx.coroutines.flow.c.m(bVar, c0563a, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    @NotNull
    public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a a(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.f mraidAdData, @NotNull n0 externalLinkHandler, @NotNull Context context, @NotNull s mraidFullscreenContentController, int i10, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService) {
        Intrinsics.checkNotNullParameter(mraidAdData, "mraidAdData");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(mraidFullscreenContentController, "mraidFullscreenContentController");
        Intrinsics.checkNotNullParameter(customUserEventBuilderService, "customUserEventBuilderService");
        return new f(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.h.a(mraidAdData, mraidFullscreenContentController, i10, context, externalLinkHandler, customUserEventBuilderService), null);
    }

    @NotNull
    public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.a b(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a ad2, @NotNull n0 externalLinkHandler, @NotNull Context context, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService, boolean z10, @Nullable Boolean bool, int i10, int i11, int i12, boolean z11, boolean z12) {
        Intrinsics.checkNotNullParameter(ad2, "ad");
        Intrinsics.checkNotNullParameter(externalLinkHandler, "externalLinkHandler");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(customUserEventBuilderService, "customUserEventBuilderService");
        return new f(j.a(ad2, externalLinkHandler, context, customUserEventBuilderService, z10, bool, i10, i11, i12, z11, z12), new h(ad2.f(), ad2.g().i().b(), ad2.e(), null, 8, null));
    }

    public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.dec.a g(List<? extends k> list, k kVar) {
        k.b bVar;
        k kVar2 = (k) CollectionsKt.t0(list, CollectionsKt.v0(list, kVar) + 1);
        if (kVar2 instanceof k.b) {
            bVar = (k.b) kVar2;
        } else {
            bVar = null;
        }
        if (bVar == null) {
            return null;
        }
        return bVar.a();
    }

    public static final a.AbstractC0597a.c.EnumC0599a h(List<? extends k> list, k kVar, a.AbstractC0597a.c.EnumC0599a enumC0599a) {
        if (enumC0599a == a.AbstractC0597a.c.EnumC0599a.f36603c && g(list, kVar) != null) {
            return a.AbstractC0597a.c.EnumC0599a.f36604d;
        }
        return enumC0599a;
    }

    public static final a.AbstractC0597a.c i(List<? extends k> list, k kVar, a.AbstractC0597a.c cVar) {
        a.AbstractC0597a.c.EnumC0599a h10 = h(list, kVar, cVar.c());
        if (h10 != cVar.c()) {
            return a.AbstractC0597a.c.b(cVar, h10, null, null, 6, null);
        }
        return cVar;
    }

    public static final kt.b<Boolean> j(kt.b<? extends k> bVar, g0 g0Var) {
        kt.e a10 = o.a(null);
        gt.g.d(g0Var, null, null, new a(bVar, a10, null), 3, null);
        return a10;
    }
}
