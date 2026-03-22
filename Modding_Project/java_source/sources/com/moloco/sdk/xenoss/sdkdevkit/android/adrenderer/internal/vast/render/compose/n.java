package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose;

import android.content.Context;
import android.view.View;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.material.MaterialTheme;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Dp;
import androidx.profileinstaller.ProfileVerifier;
import com.moloco.sdk.service_locator.b;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.n;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.DataLoaderHelper;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KFunction;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nVastRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastRenderer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastRendererKt\n+ 2 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 7 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 8 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,386:1\n67#2,6:387\n73#2:419\n77#2:443\n75#3:393\n76#3,11:395\n89#3:442\n76#4:394\n460#5,13:406\n473#5,3:439\n1057#6,6:420\n1057#6,6:426\n1057#6,6:433\n155#7:432\n155#7:444\n76#8:445\n76#8:446\n*S KotlinDebug\n*F\n+ 1 VastRenderer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastRendererKt\n*L\n81#1:387,6\n81#1:419\n81#1:443\n81#1:393\n81#1:395,11\n81#1:442\n81#1:394\n81#1:406,13\n81#1:439,3\n129#1:420,6\n130#1:426,6\n138#1:433,6\n137#1:432\n368#1:444\n86#1:445\n125#1:446\n*E\n"})
/* loaded from: classes6.dex */
public final class n {

    @SourceDebugExtension({"SMAP\nVastRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastRenderer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastRendererKt$VastRenderer$1$1\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,386:1\n1057#2,6:387\n*S KotlinDebug\n*F\n+ 1 VastRenderer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastRendererKt$VastRenderer$1$1\n*L\n104#1:387,6\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class a implements at.n<i.a, Composer, Integer, Unit> {

        /* renamed from: a */
        public final /* synthetic */ y f35940a;

        /* renamed from: b */
        public final /* synthetic */ at.r<BoxScope, Boolean, Boolean, Function2<? super a.AbstractC0597a.c, ? super a.AbstractC0597a.c.EnumC0599a, Unit>, Function1<? super Boolean, Unit>, Composer, Integer, Unit> f35941b;

        /* renamed from: c */
        public final /* synthetic */ at.p<BoxScope, Boolean, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, Composer, Integer, Unit> f35942c;

        /* renamed from: d */
        public final /* synthetic */ at.q<BoxScope, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j, Function0<Unit>, Function0<Unit>, Composer, Integer, Unit> f35943d;

        /* renamed from: e */
        public final /* synthetic */ at.r<BoxScope, Boolean, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, Function1<? super Boolean, Unit>, Function0<Unit>, Composer, Integer, Unit> f35944e;

        /* renamed from: f */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0 f35945f;

        /* renamed from: g */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i f35946g;

        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.n$a$a */
        /* loaded from: classes6.dex */
        public /* synthetic */ class C0576a extends FunctionReferenceImpl implements Function0<Unit> {
            public C0576a(Object obj) {
                super(0, obj, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i.class, "onReplay", "onReplay()V", 0);
            }

            public final void b() {
                ((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i) this.receiver).L();
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                b();
                return Unit.f60915a;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public a(y yVar, at.r<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function2<? super a.AbstractC0597a.c, ? super a.AbstractC0597a.c.EnumC0599a, Unit>, ? super Function1<? super Boolean, Unit>, ? super Composer, ? super Integer, Unit> rVar, at.p<? super BoxScope, ? super Boolean, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, ? super Composer, ? super Integer, Unit> pVar, at.q<? super BoxScope, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j, ? super Function0<Unit>, ? super Function0<Unit>, ? super Composer, ? super Integer, Unit> qVar, at.r<? super BoxScope, ? super Boolean, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, ? super Function1<? super Boolean, Unit>, ? super Function0<Unit>, ? super Composer, ? super Integer, Unit> rVar2, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0 a0Var, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i iVar) {
            this.f35940a = yVar;
            this.f35941b = rVar;
            this.f35942c = pVar;
            this.f35943d = qVar;
            this.f35944e = rVar2;
            this.f35945f = a0Var;
            this.f35946g = iVar;
        }

        @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
        @Composable
        public final void a(i.a aVar, Composer composer, int i10) {
            int i11;
            Function0<Unit> function0;
            Function0<Unit> function02;
            Function0<Unit> function03;
            int i12;
            if ((i10 & 6) == 0) {
                if (composer.changed(aVar)) {
                    i12 = 4;
                } else {
                    i12 = 2;
                }
                i11 = i10 | i12;
            } else {
                i11 = i10;
            }
            if ((i11 & 19) == 18 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1837331254, i11, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.VastRenderer.<anonymous>.<anonymous> (VastRenderer.kt:88)");
            }
            if (aVar instanceof i.a.C0565a) {
                composer.startReplaceableGroup(1864270639);
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.companion.j b10 = ((i.a.C0565a) aVar).b();
                y yVar = this.f35940a;
                if (yVar != null) {
                    function03 = yVar.a();
                } else {
                    function03 = null;
                }
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.a.e(b10, function03, SizeKt.fillMaxSize$default(Modifier.Companion, 0.0f, 1, null), composer, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500, 0);
                composer.endReplaceableGroup();
            } else if (aVar instanceof i.a.c) {
                composer.startReplaceableGroup(1864278356);
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.m b11 = ((i.a.c) aVar).b();
                y yVar2 = this.f35940a;
                if (yVar2 != null) {
                    function02 = yVar2.c();
                } else {
                    function02 = null;
                }
                Modifier fillMaxSize$default = SizeKt.fillMaxSize$default(Modifier.Companion, 0.0f, 1, null);
                at.r<BoxScope, Boolean, Boolean, Function2<? super a.AbstractC0597a.c, ? super a.AbstractC0597a.c.EnumC0599a, Unit>, Function1<? super Boolean, Unit>, Composer, Integer, Unit> rVar = this.f35941b;
                at.p<BoxScope, Boolean, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, Composer, Integer, Unit> pVar = this.f35942c;
                at.q<BoxScope, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j, Function0<Unit>, Function0<Unit>, Composer, Integer, Unit> qVar = this.f35943d;
                at.r<BoxScope, Boolean, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, Function1<? super Boolean, Unit>, Function0<Unit>, Composer, Integer, Unit> rVar2 = this.f35944e;
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0 a0Var = this.f35945f;
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i iVar = this.f35946g;
                composer.startReplaceableGroup(1864289963);
                boolean changed = composer.changed(iVar);
                Object rememberedValue = composer.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = new C0576a(iVar);
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.h.l(b11, function02, fillMaxSize$default, rVar, pVar, qVar, rVar2, a0Var, (Function0) ((KFunction) rememberedValue), composer, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500, 0);
                composer.endReplaceableGroup();
            } else if (aVar instanceof i.a.b) {
                composer.startReplaceableGroup(1864292898);
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.dec.e b12 = ((i.a.b) aVar).b();
                y yVar3 = this.f35940a;
                if (yVar3 != null) {
                    function0 = yVar3.b();
                } else {
                    function0 = null;
                }
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.f.d(b12, function0, this.f35943d, SizeKt.fillMaxSize$default(Modifier.Companion, 0.0f, 1, null), composer, 3072, 0);
                composer.endReplaceableGroup();
            } else if (aVar instanceof i.a.d) {
                composer.startReplaceableGroup(1958779838);
                composer.endReplaceableGroup();
            } else if (aVar == null) {
                composer.startReplaceableGroup(1958818154);
                composer.endReplaceableGroup();
            } else {
                composer.startReplaceableGroup(1864269410);
                composer.endReplaceableGroup();
                throw new NoWhenBranchMatchedException();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // at.n
        public /* bridge */ /* synthetic */ Unit invoke(i.a aVar, Composer composer, Integer num) {
            a(aVar, composer, num.intValue());
            return Unit.f60915a;
        }
    }

    /* loaded from: classes6.dex */
    public /* synthetic */ class b extends FunctionReferenceImpl implements Function1<a.AbstractC0597a.c, Unit> {
        public b(Object obj) {
            super(1, obj, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i.class, "onButtonRendered", "onButtonRendered(Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/CustomUserEventBuilderService$UserInteraction$Button;)V", 0);
        }

        public final void b(a.AbstractC0597a.c p02) {
            Intrinsics.checkNotNullParameter(p02, "p0");
            ((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i) this.receiver).h(p02);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(a.AbstractC0597a.c cVar) {
            b(cVar);
            return Unit.f60915a;
        }
    }

    /* loaded from: classes6.dex */
    public /* synthetic */ class c extends FunctionReferenceImpl implements Function0<Unit> {
        public c(Object obj) {
            super(0, obj, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i.class, "onCTA", "onCTA()V", 0);
        }

        public final void b() {
            ((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i) this.receiver).M();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            b();
            return Unit.f60915a;
        }
    }

    /* loaded from: classes6.dex */
    public /* synthetic */ class d extends FunctionReferenceImpl implements Function1<a.AbstractC0597a.c, Unit> {
        public d(Object obj) {
            super(1, obj, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i.class, "onButtonRendered", "onButtonRendered(Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/CustomUserEventBuilderService$UserInteraction$Button;)V", 0);
        }

        public final void b(a.AbstractC0597a.c p02) {
            Intrinsics.checkNotNullParameter(p02, "p0");
            ((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i) this.receiver).h(p02);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(a.AbstractC0597a.c cVar) {
            b(cVar);
            return Unit.f60915a;
        }
    }

    @SourceDebugExtension({"SMAP\nVastRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastRenderer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastRendererKt$defaultCTAButton$1\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,386:1\n76#2:387\n*S KotlinDebug\n*F\n+ 1 VastRenderer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastRendererKt$defaultCTAButton$1\n*L\n296#1:387\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class e implements at.r<BoxScope, Boolean, kt.i<? extends i.a>, Function1<? super a.AbstractC0597a.c, ? extends Unit>, Function0<? extends Unit>, Composer, Integer, Unit> {

        /* renamed from: a */
        public final /* synthetic */ Alignment f35947a;

        /* renamed from: b */
        public final /* synthetic */ PaddingValues f35948b;

        /* renamed from: c */
        public final /* synthetic */ String f35949c;

        /* renamed from: d */
        public final /* synthetic */ String f35950d;

        /* renamed from: e */
        public final /* synthetic */ long f35951e;

        /* renamed from: f */
        public final /* synthetic */ Function0<Unit> f35952f;

        /* loaded from: classes6.dex */
        public static final class a implements at.n<AnimatedVisibilityScope, Composer, Integer, Unit> {

            /* renamed from: a */
            public final /* synthetic */ Function1<a.AbstractC0597a.c, Unit> f35953a;

            /* renamed from: b */
            public final /* synthetic */ State<i.a> f35954b;

            /* renamed from: c */
            public final /* synthetic */ String f35955c;

            /* renamed from: d */
            public final /* synthetic */ String f35956d;

            /* renamed from: e */
            public final /* synthetic */ long f35957e;

            /* renamed from: f */
            public final /* synthetic */ Function0<Unit> f35958f;

            /* renamed from: g */
            public final /* synthetic */ Function0<Unit> f35959g;

            @SourceDebugExtension({"SMAP\nVastRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastRenderer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastRendererKt$defaultCTAButton$1$1$1\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,386:1\n1057#2,6:387\n*S KotlinDebug\n*F\n+ 1 VastRenderer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastRendererKt$defaultCTAButton$1$1$1\n*L\n323#1:387,6\n*E\n"})
            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.n$e$a$a */
            /* loaded from: classes6.dex */
            public static final class C0577a implements at.n<Modifier, Composer, Integer, Unit> {

                /* renamed from: a */
                public final /* synthetic */ String f35960a;

                /* renamed from: b */
                public final /* synthetic */ String f35961b;

                /* renamed from: c */
                public final /* synthetic */ long f35962c;

                /* renamed from: d */
                public final /* synthetic */ Function0<Unit> f35963d;

                /* renamed from: e */
                public final /* synthetic */ Function0<Unit> f35964e;

                public C0577a(String str, String str2, long j10, Function0<Unit> function0, Function0<Unit> function02) {
                    this.f35960a = str;
                    this.f35961b = str2;
                    this.f35962c = j10;
                    this.f35963d = function0;
                    this.f35964e = function02;
                }

                public static final Unit a(Function0 function0, Function0 function02) {
                    function0.invoke();
                    if (function02 != null) {
                        function02.invoke();
                    }
                    return Unit.f60915a;
                }

                @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
                @Composable
                public final void b(Modifier it, Composer composer, int i10) {
                    int i11;
                    Intrinsics.checkNotNullParameter(it, "it");
                    if ((i10 & 6) == 0) {
                        if (composer.changed(it)) {
                            i11 = 4;
                        } else {
                            i11 = 2;
                        }
                        i10 |= i11;
                    }
                    if ((i10 & 19) == 18 && composer.getSkipping()) {
                        composer.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-832302220, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultCTAButton.<anonymous>.<anonymous>.<anonymous> (VastRenderer.kt:320)");
                    }
                    String str = this.f35960a;
                    String str2 = this.f35961b;
                    long j10 = this.f35962c;
                    composer.startReplaceableGroup(-1483998215);
                    boolean changed = composer.changed(this.f35963d) | composer.changed(this.f35964e);
                    final Function0<Unit> function0 = this.f35963d;
                    final Function0<Unit> function02 = this.f35964e;
                    Object rememberedValue = composer.rememberedValue();
                    if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                        rememberedValue = new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.j0
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return n.e.a.C0577a.a(Function0.this, function02);
                            }
                        };
                        composer.updateRememberedValue(rememberedValue);
                    }
                    composer.endReplaceableGroup();
                    c0.c(it, str, str2, j10, (Function0) rememberedValue, composer, i10 & 14, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // at.n
                public /* bridge */ /* synthetic */ Unit invoke(Modifier modifier, Composer composer, Integer num) {
                    b(modifier, composer, num.intValue());
                    return Unit.f60915a;
                }
            }

            @SourceDebugExtension({"SMAP\nVastRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastRenderer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastRendererKt$defaultCTAButton$1$1$2\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,386:1\n1057#2,6:387\n*S KotlinDebug\n*F\n+ 1 VastRenderer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastRendererKt$defaultCTAButton$1$1$2\n*L\n340#1:387,6\n*E\n"})
            /* loaded from: classes6.dex */
            public static final class b implements at.n<Modifier, Composer, Integer, Unit> {

                /* renamed from: a */
                public final /* synthetic */ String f35965a;

                /* renamed from: b */
                public final /* synthetic */ String f35966b;

                /* renamed from: c */
                public final /* synthetic */ long f35967c;

                /* renamed from: d */
                public final /* synthetic */ Function0<Unit> f35968d;

                /* renamed from: e */
                public final /* synthetic */ Function0<Unit> f35969e;

                public b(String str, String str2, long j10, Function0<Unit> function0, Function0<Unit> function02) {
                    this.f35965a = str;
                    this.f35966b = str2;
                    this.f35967c = j10;
                    this.f35968d = function0;
                    this.f35969e = function02;
                }

                public static final Unit a(Function0 function0, Function0 function02) {
                    function0.invoke();
                    if (function02 != null) {
                        function02.invoke();
                    }
                    return Unit.f60915a;
                }

                @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
                @Composable
                public final void b(Modifier it, Composer composer, int i10) {
                    int i11;
                    Intrinsics.checkNotNullParameter(it, "it");
                    if ((i10 & 6) == 0) {
                        if (composer.changed(it)) {
                            i11 = 4;
                        } else {
                            i11 = 2;
                        }
                        i10 |= i11;
                    }
                    if ((i10 & 19) == 18 && composer.getSkipping()) {
                        composer.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1517460509, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultCTAButton.<anonymous>.<anonymous>.<anonymous> (VastRenderer.kt:337)");
                    }
                    String str = this.f35965a;
                    String str2 = this.f35966b;
                    long j10 = this.f35967c;
                    composer.startReplaceableGroup(-1483979143);
                    boolean changed = composer.changed(this.f35968d) | composer.changed(this.f35969e);
                    final Function0<Unit> function0 = this.f35968d;
                    final Function0<Unit> function02 = this.f35969e;
                    Object rememberedValue = composer.rememberedValue();
                    if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                        rememberedValue = new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.k0
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return n.e.a.b.a(Function0.this, function02);
                            }
                        };
                        composer.updateRememberedValue(rememberedValue);
                    }
                    composer.endReplaceableGroup();
                    c0.c(it, str, str2, j10, (Function0) rememberedValue, composer, i10 & 14, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // at.n
                public /* bridge */ /* synthetic */ Unit invoke(Modifier modifier, Composer composer, Integer num) {
                    b(modifier, composer, num.intValue());
                    return Unit.f60915a;
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            public a(Function1<? super a.AbstractC0597a.c, Unit> function1, State<? extends i.a> state, String str, String str2, long j10, Function0<Unit> function0, Function0<Unit> function02) {
                this.f35953a = function1;
                this.f35954b = state;
                this.f35955c = str;
                this.f35956d = str2;
                this.f35957e = j10;
                this.f35958f = function0;
                this.f35959g = function02;
            }

            @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
            @Composable
            public final void a(AnimatedVisibilityScope AnimatedVisibility, Composer composer, int i10) {
                Intrinsics.checkNotNullParameter(AnimatedVisibility, "$this$AnimatedVisibility");
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1004334236, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultCTAButton.<anonymous>.<anonymous> (VastRenderer.kt:314)");
                }
                i.a c10 = e.c(this.f35954b);
                if (c10 instanceof i.a.C0565a) {
                    composer.startReplaceableGroup(1203578611);
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.k0.e(null, a.AbstractC0597a.c.EnumC0599a.f36607g, this.f35953a, ComposableLambdaKt.composableLambda(composer, -832302220, true, new C0577a(this.f35955c, this.f35956d, this.f35957e, this.f35958f, this.f35959g)), composer, 3120, 1);
                    composer.endReplaceableGroup();
                } else if (c10 instanceof i.a.c) {
                    composer.startReplaceableGroup(1204169843);
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.k0.e(null, a.AbstractC0597a.c.EnumC0599a.f36607g, this.f35953a, ComposableLambdaKt.composableLambda(composer, 1517460509, true, new b(this.f35955c, this.f35956d, this.f35957e, this.f35958f, this.f35959g)), composer, 3120, 1);
                    composer.endReplaceableGroup();
                } else if (c10 instanceof i.a.b) {
                    composer.startReplaceableGroup(1204743343);
                    composer.endReplaceableGroup();
                } else if (c10 instanceof i.a.d) {
                    composer.startReplaceableGroup(1204828748);
                    composer.endReplaceableGroup();
                } else if (c10 == null) {
                    composer.startReplaceableGroup(1204863499);
                    composer.endReplaceableGroup();
                } else {
                    composer.startReplaceableGroup(-1485196921);
                    composer.endReplaceableGroup();
                    throw new NoWhenBranchMatchedException();
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Unit invoke(AnimatedVisibilityScope animatedVisibilityScope, Composer composer, Integer num) {
                a(animatedVisibilityScope, composer, num.intValue());
                return Unit.f60915a;
            }
        }

        public e(Alignment alignment, PaddingValues paddingValues, String str, String str2, long j10, Function0<Unit> function0) {
            this.f35947a = alignment;
            this.f35948b = paddingValues;
            this.f35949c = str;
            this.f35950d = str2;
            this.f35951e = j10;
            this.f35952f = function0;
        }

        public static final i.a c(State<? extends i.a> state) {
            return state.getValue();
        }

        @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
        @Composable
        public final void b(BoxScope boxScope, boolean z10, kt.i<? extends i.a> currentAdPartFlow, Function1<? super a.AbstractC0597a.c, Unit> onButtonRendered, Function0<Unit> onCTA, Composer composer, int i10) {
            Intrinsics.checkNotNullParameter(boxScope, "<this>");
            Intrinsics.checkNotNullParameter(currentAdPartFlow, "currentAdPartFlow");
            Intrinsics.checkNotNullParameter(onButtonRendered, "onButtonRendered");
            Intrinsics.checkNotNullParameter(onCTA, "onCTA");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(432764356, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultCTAButton.<anonymous> (VastRenderer.kt:295)");
            }
            AnimatedVisibilityKt.AnimatedVisibility(z10, PaddingKt.padding(WindowInsetsPadding_androidKt.displayCutoutPadding(boxScope.align(Modifier.Companion, this.f35947a)), this.f35948b), (EnterTransition) null, (ExitTransition) null, (String) null, ComposableLambdaKt.composableLambda(composer, 1004334236, true, new a(onButtonRendered, SnapshotStateKt.collectAsState(currentAdPartFlow, null, composer, (i10 >> 6) & 14, 1), this.f35949c, this.f35950d, this.f35951e, onCTA, this.f35952f)), composer, ((i10 >> 3) & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 28);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // at.r
        public /* bridge */ /* synthetic */ Unit invoke(BoxScope boxScope, Boolean bool, kt.i<? extends i.a> iVar, Function1<? super a.AbstractC0597a.c, ? extends Unit> function1, Function0<? extends Unit> function0, Composer composer, Integer num) {
            b(boxScope, bool.booleanValue(), iVar, function1, function0, composer, num.intValue());
            return Unit.f60915a;
        }
    }

    @SourceDebugExtension({"SMAP\nVastRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastRenderer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastRendererKt$defaultMuteButton$1\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,386:1\n1057#2,6:387\n76#3:393\n102#3,2:394\n*S KotlinDebug\n*F\n+ 1 VastRenderer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastRendererKt$defaultMuteButton$1\n*L\n232#1:387,6\n232#1:393\n232#1:394,2\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class f implements at.r<BoxScope, Boolean, Boolean, Function2<? super a.AbstractC0597a.c, ? super a.AbstractC0597a.c.EnumC0599a, ? extends Unit>, Function1<? super Boolean, ? extends Unit>, Composer, Integer, Unit> {

        /* renamed from: a */
        public final /* synthetic */ Alignment f35970a;

        /* renamed from: b */
        public final /* synthetic */ PaddingValues f35971b;

        /* renamed from: c */
        public final /* synthetic */ Painter f35972c;

        /* renamed from: d */
        public final /* synthetic */ Painter f35973d;

        /* renamed from: e */
        public final /* synthetic */ Function0<Unit> f35974e;

        /* renamed from: f */
        public final /* synthetic */ long f35975f;

        /* renamed from: g */
        public final /* synthetic */ long f35976g;

        /* renamed from: h */
        public final /* synthetic */ long f35977h;

        /* renamed from: i */
        public final /* synthetic */ Shape f35978i;

        /* renamed from: j */
        public final /* synthetic */ long f35979j;

        @SourceDebugExtension({"SMAP\nVastRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastRenderer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastRendererKt$defaultMuteButton$1$1\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,386:1\n1057#2,6:387\n1057#2,6:393\n1057#2,6:399\n*S KotlinDebug\n*F\n+ 1 VastRenderer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastRendererKt$defaultMuteButton$1$1\n*L\n247#1:387,6\n253#1:393,6\n259#1:399,6\n*E\n"})
        /* loaded from: classes6.dex */
        public static final class a implements at.n<AnimatedVisibilityScope, Composer, Integer, Unit> {

            /* renamed from: a */
            public final /* synthetic */ boolean f35980a;

            /* renamed from: b */
            public final /* synthetic */ Painter f35981b;

            /* renamed from: c */
            public final /* synthetic */ Painter f35982c;

            /* renamed from: d */
            public final /* synthetic */ MutableState<a.AbstractC0597a.c> f35983d;

            /* renamed from: e */
            public final /* synthetic */ Function2<a.AbstractC0597a.c, a.AbstractC0597a.c.EnumC0599a, Unit> f35984e;

            /* renamed from: f */
            public final /* synthetic */ Function1<Boolean, Unit> f35985f;

            /* renamed from: g */
            public final /* synthetic */ Function0<Unit> f35986g;

            /* renamed from: h */
            public final /* synthetic */ boolean f35987h;

            /* renamed from: i */
            public final /* synthetic */ long f35988i;

            /* renamed from: j */
            public final /* synthetic */ long f35989j;

            /* renamed from: k */
            public final /* synthetic */ long f35990k;

            /* renamed from: l */
            public final /* synthetic */ Shape f35991l;

            /* renamed from: m */
            public final /* synthetic */ long f35992m;

            /* JADX WARN: Multi-variable type inference failed */
            public a(boolean z10, Painter painter, Painter painter2, MutableState<a.AbstractC0597a.c> mutableState, Function2<? super a.AbstractC0597a.c, ? super a.AbstractC0597a.c.EnumC0599a, Unit> function2, Function1<? super Boolean, Unit> function1, Function0<Unit> function0, boolean z11, long j10, long j11, long j12, Shape shape, long j13) {
                this.f35980a = z10;
                this.f35981b = painter;
                this.f35982c = painter2;
                this.f35983d = mutableState;
                this.f35984e = function2;
                this.f35985f = function1;
                this.f35986g = function0;
                this.f35987h = z11;
                this.f35988i = j10;
                this.f35989j = j11;
                this.f35990k = j12;
                this.f35991l = shape;
                this.f35992m = j13;
            }

            public static final Unit a(String str, SemanticsPropertyReceiver semantics) {
                Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
                SemanticsPropertiesKt.setContentDescription(semantics, str);
                SemanticsPropertiesKt.setTestTag(semantics, str);
                return Unit.f60915a;
            }

            public static final Unit b(Function1 function1, boolean z10, Function2 function2, Function0 function0, MutableState mutableState) {
                a.AbstractC0597a.c.EnumC0599a enumC0599a;
                a.AbstractC0597a.c.EnumC0599a enumC0599a2;
                function1.invoke(Boolean.valueOf(!z10));
                if (z10) {
                    enumC0599a = a.AbstractC0597a.c.EnumC0599a.f36605e;
                } else {
                    enumC0599a = a.AbstractC0597a.c.EnumC0599a.f36606f;
                }
                f.e(mutableState, new a.AbstractC0597a.c(enumC0599a, f.d(mutableState).d(), f.d(mutableState).e()));
                a.AbstractC0597a.c d10 = f.d(mutableState);
                if (z10) {
                    enumC0599a2 = a.AbstractC0597a.c.EnumC0599a.f36606f;
                } else {
                    enumC0599a2 = a.AbstractC0597a.c.EnumC0599a.f36605e;
                }
                function2.invoke(d10, enumC0599a2);
                if (function0 != null) {
                    function0.invoke();
                }
                return Unit.f60915a;
            }

            public static final Unit c(Function2 function2, boolean z10, MutableState mutableState, a.AbstractC0597a.c it) {
                a.AbstractC0597a.c.EnumC0599a enumC0599a;
                Intrinsics.checkNotNullParameter(it, "it");
                f.e(mutableState, it);
                a.AbstractC0597a.c d10 = f.d(mutableState);
                if (z10) {
                    enumC0599a = a.AbstractC0597a.c.EnumC0599a.f36605e;
                } else {
                    enumC0599a = a.AbstractC0597a.c.EnumC0599a.f36606f;
                }
                function2.invoke(d10, enumC0599a);
                return Unit.f60915a;
            }

            /* JADX WARN: Code restructure failed: missing block: B:51:0x00d8, code lost:
                if (r4 == androidx.compose.runtime.Composer.Companion.getEmpty()) goto L25;
             */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r4v16, types: [com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.n0] */
            @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
            @androidx.compose.runtime.Composable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void d(androidx.compose.animation.AnimatedVisibilityScope r19, androidx.compose.runtime.Composer r20, int r21) {
                /*
                    Method dump skipped, instructions count: 266
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.n.f.a.d(androidx.compose.animation.AnimatedVisibilityScope, androidx.compose.runtime.Composer, int):void");
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Unit invoke(AnimatedVisibilityScope animatedVisibilityScope, Composer composer, Integer num) {
                d(animatedVisibilityScope, composer, num.intValue());
                return Unit.f60915a;
            }
        }

        public f(Alignment alignment, PaddingValues paddingValues, Painter painter, Painter painter2, Function0<Unit> function0, long j10, long j11, long j12, Shape shape, long j13) {
            this.f35970a = alignment;
            this.f35971b = paddingValues;
            this.f35972c = painter;
            this.f35973d = painter2;
            this.f35974e = function0;
            this.f35975f = j10;
            this.f35976g = j11;
            this.f35977h = j12;
            this.f35978i = shape;
            this.f35979j = j13;
        }

        public static final a.AbstractC0597a.c d(MutableState<a.AbstractC0597a.c> mutableState) {
            return mutableState.getValue();
        }

        public static final void e(MutableState<a.AbstractC0597a.c> mutableState, a.AbstractC0597a.c cVar) {
            mutableState.setValue(cVar);
        }

        @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
        @Composable
        public final void b(BoxScope boxScope, boolean z10, boolean z11, Function2<? super a.AbstractC0597a.c, ? super a.AbstractC0597a.c.EnumC0599a, Unit> onButtonReplaced, Function1<? super Boolean, Unit> onMuteChange, Composer composer, int i10) {
            int i11;
            int i12;
            int i13;
            int i14;
            int i15;
            int i16;
            Intrinsics.checkNotNullParameter(boxScope, "<this>");
            Intrinsics.checkNotNullParameter(onButtonReplaced, "onButtonReplaced");
            Intrinsics.checkNotNullParameter(onMuteChange, "onMuteChange");
            if ((i10 & 6) == 0) {
                if (composer.changed(boxScope)) {
                    i16 = 4;
                } else {
                    i16 = 2;
                }
                i11 = i16 | i10;
            } else {
                i11 = i10;
            }
            if ((i10 & 48) == 0) {
                if (composer.changed(z10)) {
                    i15 = 32;
                } else {
                    i15 = 16;
                }
                i11 |= i15;
            }
            if ((i10 & MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500) == 0) {
                if (composer.changed(z11)) {
                    i14 = 256;
                } else {
                    i14 = 128;
                }
                i11 |= i14;
            }
            if ((i10 & 3072) == 0) {
                if (composer.changed(onButtonReplaced)) {
                    i13 = 2048;
                } else {
                    i13 = 1024;
                }
                i11 |= i13;
            }
            if ((i10 & 24576) == 0) {
                if (composer.changed(onMuteChange)) {
                    i12 = 16384;
                } else {
                    i12 = 8192;
                }
                i11 |= i12;
            }
            if ((74899 & i11) == 74898 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-545982054, i11, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultMuteButton.<anonymous> (VastRenderer.kt:231)");
            }
            composer.startReplaceableGroup(-1304253431);
            Object rememberedValue = composer.rememberedValue();
            if (rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.utils.b.a(a.AbstractC0597a.c.EnumC0599a.f36605e), null, 2, null);
                composer.updateRememberedValue(rememberedValue);
            }
            composer.endReplaceableGroup();
            AnimatedVisibilityKt.AnimatedVisibility(z10, PaddingKt.padding(WindowInsetsPadding_androidKt.displayCutoutPadding(boxScope.align(Modifier.Companion, this.f35970a)), this.f35971b), (EnterTransition) null, (ExitTransition) null, (String) null, ComposableLambdaKt.composableLambda(composer, -2071462974, true, new a(z11, this.f35972c, this.f35973d, (MutableState) rememberedValue, onButtonReplaced, onMuteChange, this.f35974e, z10, this.f35975f, this.f35976g, this.f35977h, this.f35978i, this.f35979j)), composer, ((i11 >> 3) & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 28);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // at.r
        public /* bridge */ /* synthetic */ Unit invoke(BoxScope boxScope, Boolean bool, Boolean bool2, Function2<? super a.AbstractC0597a.c, ? super a.AbstractC0597a.c.EnumC0599a, ? extends Unit> function2, Function1<? super Boolean, ? extends Unit> function1, Composer composer, Integer num) {
            b(boxScope, bool.booleanValue(), bool2.booleanValue(), function2, function1, composer, num.intValue());
            return Unit.f60915a;
        }
    }

    /* loaded from: classes6.dex */
    public static final class g implements at.p<BoxScope, Boolean, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, Composer, Integer, Unit> {

        /* renamed from: a */
        public final /* synthetic */ Alignment f35993a;

        /* renamed from: b */
        public final /* synthetic */ PaddingValues f35994b;

        /* renamed from: c */
        public final /* synthetic */ long f35995c;

        /* loaded from: classes6.dex */
        public static final class a implements at.n<AnimatedVisibilityScope, Composer, Integer, Unit> {

            /* renamed from: a */
            public final /* synthetic */ boolean f35996a;

            /* renamed from: b */
            public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i f35997b;

            /* renamed from: c */
            public final /* synthetic */ long f35998c;

            public a(boolean z10, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i iVar, long j10) {
                this.f35996a = z10;
                this.f35997b = iVar;
                this.f35998c = j10;
            }

            @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
            @Composable
            public final void a(AnimatedVisibilityScope AnimatedVisibility, Composer composer, int i10) {
                Intrinsics.checkNotNullParameter(AnimatedVisibility, "$this$AnimatedVisibility");
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1435522410, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultProgressBar.<anonymous>.<anonymous> (VastRenderer.kt:378)");
                }
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.m.g(this.f35996a, this.f35997b, null, this.f35998c, composer, 0, 4);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Unit invoke(AnimatedVisibilityScope animatedVisibilityScope, Composer composer, Integer num) {
                a(animatedVisibilityScope, composer, num.intValue());
                return Unit.f60915a;
            }
        }

        public g(Alignment alignment, PaddingValues paddingValues, long j10) {
            this.f35993a = alignment;
            this.f35994b = paddingValues;
            this.f35995c = j10;
        }

        @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
        @Composable
        public final void a(BoxScope boxScope, boolean z10, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i progress, Composer composer, int i10) {
            int i11;
            boolean z11;
            int i12;
            int i13;
            int i14;
            Intrinsics.checkNotNullParameter(boxScope, "<this>");
            Intrinsics.checkNotNullParameter(progress, "progress");
            if ((i10 & 6) == 0) {
                if (composer.changed(boxScope)) {
                    i14 = 4;
                } else {
                    i14 = 2;
                }
                i11 = i14 | i10;
            } else {
                i11 = i10;
            }
            if ((i10 & 48) == 0) {
                if (composer.changed(z10)) {
                    i13 = 32;
                } else {
                    i13 = 16;
                }
                i11 |= i13;
            }
            if ((i10 & MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500) == 0) {
                if (composer.changed(progress)) {
                    i12 = 256;
                } else {
                    i12 = 128;
                }
                i11 |= i12;
            }
            if ((i11 & DataLoaderHelper.DATALOADER_KEY_INT_ENABLE_SPEED_ENGINE) == 1170 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1967084142, i11, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultProgressBar.<anonymous> (VastRenderer.kt:370)");
            }
            if (!z10 && (!(progress instanceof i.c) || ((i.c) progress).a() <= 0)) {
                z11 = false;
            } else {
                z11 = true;
            }
            AnimatedVisibilityKt.AnimatedVisibility(z11, PaddingKt.padding(boxScope.align(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, null), this.f35993a), this.f35994b), (EnterTransition) null, (ExitTransition) null, (String) null, ComposableLambdaKt.composableLambda(composer, -1435522410, true, new a(z10, progress, this.f35995c)), composer, (int) ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 28);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // at.p
        public /* bridge */ /* synthetic */ Unit invoke(BoxScope boxScope, Boolean bool, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i iVar, Composer composer, Integer num) {
            a(boxScope, bool.booleanValue(), iVar, composer, num.intValue());
            return Unit.f60915a;
        }
    }

    /* loaded from: classes6.dex */
    public static final class h implements Function2<Composer, Integer, at.r<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function2<? super a.AbstractC0597a.c, ? super a.AbstractC0597a.c.EnumC0599a, ? extends Unit>, ? super Function1<? super Boolean, ? extends Unit>, ? super Composer, ? super Integer, ? extends Unit>> {

        /* renamed from: a */
        public static final h f35999a = new h();

        @Composable
        public final at.r<BoxScope, Boolean, Boolean, Function2<? super a.AbstractC0597a.c, ? super a.AbstractC0597a.c.EnumC0599a, Unit>, Function1<? super Boolean, Unit>, Composer, Integer, Unit> a(Composer composer, int i10) {
            composer.startReplaceableGroup(838284708);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(838284708, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultVastRenderer.<anonymous> (VastRenderer.kt:174)");
            }
            at.r<BoxScope, Boolean, Boolean, Function2<? super a.AbstractC0597a.c, ? super a.AbstractC0597a.c.EnumC0599a, Unit>, Function1<? super Boolean, Unit>, Composer, Integer, Unit> c10 = n.c(0L, 0L, null, 0L, null, null, 0L, null, null, null, composer, 0, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_SWITCH_DOWN_BUFFER_THRESHOLD);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceableGroup();
            return c10;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ at.r<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function2<? super a.AbstractC0597a.c, ? super a.AbstractC0597a.c.EnumC0599a, ? extends Unit>, ? super Function1<? super Boolean, ? extends Unit>, ? super Composer, ? super Integer, ? extends Unit> invoke(Composer composer, Integer num) {
            return a(composer, num.intValue());
        }
    }

    /* loaded from: classes6.dex */
    public static final class i implements Function2<Composer, Integer, at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<? extends Unit>, ? super Function1<? super a.AbstractC0597a.c, ? extends Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, ? extends Unit>> {

        /* renamed from: a */
        public static final i f36000a = new i();

        @Composable
        public final at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit> a(Composer composer, int i10) {
            composer.startReplaceableGroup(-562763068);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-562763068, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultVastRenderer.<anonymous> (VastRenderer.kt:175)");
            }
            at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit> a10 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.c0.a(null, null, 0L, 0L, 0L, null, null, null, composer, 0, 255);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceableGroup();
            return a10;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<? extends Unit>, ? super Function1<? super a.AbstractC0597a.c, ? extends Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, ? extends Unit> invoke(Composer composer, Integer num) {
            return a(composer, num.intValue());
        }
    }

    /* loaded from: classes6.dex */
    public static final class j implements Function2<Composer, Integer, at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<? extends Unit>, ? super Function1<? super a.AbstractC0597a.c, ? extends Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, ? extends Unit>> {

        /* renamed from: a */
        public static final j f36001a = new j();

        @Composable
        public final at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit> a(Composer composer, int i10) {
            composer.startReplaceableGroup(-450891997);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-450891997, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultVastRenderer.<anonymous> (VastRenderer.kt:176)");
            }
            at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit> a10 = p.a(null, null, 0L, 0L, 0L, null, null, null, composer, 0, 255);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceableGroup();
            return a10;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<? extends Unit>, ? super Function1<? super a.AbstractC0597a.c, ? extends Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, ? extends Unit> invoke(Composer composer, Integer num) {
            return a(composer, num.intValue());
        }
    }

    /* loaded from: classes6.dex */
    public static final class k implements Function2<Composer, Integer, at.r<? super BoxScope, ? super Boolean, ? super kt.i<? extends i.a>, ? super Function1<? super a.AbstractC0597a.c, ? extends Unit>, ? super Function0<? extends Unit>, ? super Composer, ? super Integer, ? extends Unit>> {

        /* renamed from: a */
        public static final k f36002a = new k();

        @Composable
        public final at.r<BoxScope, Boolean, kt.i<? extends i.a>, Function1<? super a.AbstractC0597a.c, Unit>, Function0<Unit>, Composer, Integer, Unit> a(Composer composer, int i10) {
            composer.startReplaceableGroup(-832109727);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-832109727, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultVastRenderer.<anonymous> (VastRenderer.kt:177)");
            }
            at.r<BoxScope, Boolean, kt.i<? extends i.a>, Function1<? super a.AbstractC0597a.c, Unit>, Function0<Unit>, Composer, Integer, Unit> d10 = n.d(null, null, 0L, null, null, null, composer, 0, 63);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceableGroup();
            return d10;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ at.r<? super BoxScope, ? super Boolean, ? super kt.i<? extends i.a>, ? super Function1<? super a.AbstractC0597a.c, ? extends Unit>, ? super Function0<? extends Unit>, ? super Composer, ? super Integer, ? extends Unit> invoke(Composer composer, Integer num) {
            return a(composer, num.intValue());
        }
    }

    /* loaded from: classes6.dex */
    public static final class l implements Function2<Composer, Integer, at.p<? super BoxScope, ? super Boolean, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, ? super Composer, ? super Integer, ? extends Unit>> {

        /* renamed from: a */
        public static final l f36003a = new l();

        @Composable
        public final at.p<BoxScope, Boolean, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, Composer, Integer, Unit> a(Composer composer, int i10) {
            composer.startReplaceableGroup(976926819);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(976926819, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultVastRenderer.<anonymous> (VastRenderer.kt:179)");
            }
            at.p<BoxScope, Boolean, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, Composer, Integer, Unit> b10 = n.b(null, null, 0L, composer, 0, 7);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceableGroup();
            return b10;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ at.p<? super BoxScope, ? super Boolean, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, ? super Composer, ? super Integer, ? extends Unit> invoke(Composer composer, Integer num) {
            return a(composer, num.intValue());
        }
    }

    /* loaded from: classes6.dex */
    public static final class m implements Function2<Composer, Integer, at.q<? super BoxScope, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j, ? super Function0<? extends Unit>, ? super Function0<? extends Unit>, ? super Composer, ? super Integer, ? extends Unit>> {

        /* renamed from: a */
        public static final m f36004a = new m();

        @Composable
        public final at.q<BoxScope, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j, Function0<Unit>, Function0<Unit>, Composer, Integer, Unit> a(Composer composer, int i10) {
            composer.startReplaceableGroup(658271039);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(658271039, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultVastRenderer.<anonymous> (VastRenderer.kt:180)");
            }
            at.q<BoxScope, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j, Function0<Unit>, Function0<Unit>, Composer, Integer, Unit> a10 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.h.a(null, null, composer, 0, 3);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceableGroup();
            return a10;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ at.q<? super BoxScope, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j, ? super Function0<? extends Unit>, ? super Function0<? extends Unit>, ? super Composer, ? super Integer, ? extends Unit> invoke(Composer composer, Integer num) {
            return a(composer, num.intValue());
        }
    }

    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.n$n */
    /* loaded from: classes6.dex */
    public static final class C0578n implements Function2 {

        /* renamed from: a */
        public static final C0578n f36005a = new C0578n();

        @Composable
        public final Void a(Composer composer, int i10) {
            composer.startReplaceableGroup(-1106742594);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1106742594, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultVastRenderer.<anonymous> (VastRenderer.kt:181)");
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceableGroup();
            return null;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            return a((Composer) obj, ((Number) obj2).intValue());
        }
    }

    /* loaded from: classes6.dex */
    public static final class o implements Function2<Composer, Integer, Unit> {

        /* renamed from: a */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i f36006a;

        /* renamed from: b */
        public final /* synthetic */ long f36007b;

        /* renamed from: c */
        public final /* synthetic */ Function2<Composer, Integer, at.r<BoxScope, Boolean, Boolean, Function2<? super a.AbstractC0597a.c, ? super a.AbstractC0597a.c.EnumC0599a, Unit>, Function1<? super Boolean, Unit>, Composer, Integer, Unit>> f36008c;

        /* renamed from: d */
        public final /* synthetic */ Function2<Composer, Integer, at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit>> f36009d;

        /* renamed from: e */
        public final /* synthetic */ Function2<Composer, Integer, at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit>> f36010e;

        /* renamed from: f */
        public final /* synthetic */ Function2<Composer, Integer, at.r<BoxScope, Boolean, kt.i<? extends i.a>, Function1<? super a.AbstractC0597a.c, Unit>, Function0<Unit>, Composer, Integer, Unit>> f36011f;

        /* renamed from: g */
        public final /* synthetic */ y f36012g;

        /* renamed from: h */
        public final /* synthetic */ Function2<Composer, Integer, at.p<BoxScope, Boolean, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, Composer, Integer, Unit>> f36013h;

        /* renamed from: i */
        public final /* synthetic */ Function2<Composer, Integer, at.q<BoxScope, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j, Function0<Unit>, Function0<Unit>, Composer, Integer, Unit>> f36014i;

        /* renamed from: j */
        public final /* synthetic */ Function2<Composer, Integer, at.r<BoxScope, Boolean, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, Function1<? super Boolean, Unit>, Function0<Unit>, Composer, Integer, Unit>> f36015j;

        /* renamed from: k */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0 f36016k;

        /* loaded from: classes6.dex */
        public static final class a implements Function2<Composer, Integer, Unit> {

            /* renamed from: a */
            public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i f36017a;

            /* renamed from: b */
            public final /* synthetic */ long f36018b;

            /* renamed from: c */
            public final /* synthetic */ Function2<Composer, Integer, at.r<BoxScope, Boolean, Boolean, Function2<? super a.AbstractC0597a.c, ? super a.AbstractC0597a.c.EnumC0599a, Unit>, Function1<? super Boolean, Unit>, Composer, Integer, Unit>> f36019c;

            /* renamed from: d */
            public final /* synthetic */ Function2<Composer, Integer, at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit>> f36020d;

            /* renamed from: e */
            public final /* synthetic */ Function2<Composer, Integer, at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit>> f36021e;

            /* renamed from: f */
            public final /* synthetic */ Function2<Composer, Integer, at.r<BoxScope, Boolean, kt.i<? extends i.a>, Function1<? super a.AbstractC0597a.c, Unit>, Function0<Unit>, Composer, Integer, Unit>> f36022f;

            /* renamed from: g */
            public final /* synthetic */ y f36023g;

            /* renamed from: h */
            public final /* synthetic */ Function2<Composer, Integer, at.p<BoxScope, Boolean, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, Composer, Integer, Unit>> f36024h;

            /* renamed from: i */
            public final /* synthetic */ Function2<Composer, Integer, at.q<BoxScope, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j, Function0<Unit>, Function0<Unit>, Composer, Integer, Unit>> f36025i;

            /* renamed from: j */
            public final /* synthetic */ Function2<Composer, Integer, at.r<BoxScope, Boolean, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, Function1<? super Boolean, Unit>, Function0<Unit>, Composer, Integer, Unit>> f36026j;

            /* renamed from: k */
            public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0 f36027k;

            /* JADX WARN: Multi-variable type inference failed */
            public a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i iVar, long j10, Function2<? super Composer, ? super Integer, ? extends at.r<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function2<? super a.AbstractC0597a.c, ? super a.AbstractC0597a.c.EnumC0599a, Unit>, ? super Function1<? super Boolean, Unit>, ? super Composer, ? super Integer, Unit>> function2, Function2<? super Composer, ? super Integer, ? extends at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<Unit>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, Unit>> function22, Function2<? super Composer, ? super Integer, ? extends at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<Unit>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, Unit>> function23, Function2<? super Composer, ? super Integer, ? extends at.r<? super BoxScope, ? super Boolean, ? super kt.i<? extends i.a>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Function0<Unit>, ? super Composer, ? super Integer, Unit>> function24, y yVar, Function2<? super Composer, ? super Integer, ? extends at.p<? super BoxScope, ? super Boolean, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, ? super Composer, ? super Integer, Unit>> function25, Function2<? super Composer, ? super Integer, ? extends at.q<? super BoxScope, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j, ? super Function0<Unit>, ? super Function0<Unit>, ? super Composer, ? super Integer, Unit>> function26, Function2<? super Composer, ? super Integer, ? extends at.r<? super BoxScope, ? super Boolean, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, ? super Function1<? super Boolean, Unit>, ? super Function0<Unit>, ? super Composer, ? super Integer, Unit>> function27, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0 a0Var) {
                this.f36017a = iVar;
                this.f36018b = j10;
                this.f36019c = function2;
                this.f36020d = function22;
                this.f36021e = function23;
                this.f36022f = function24;
                this.f36023g = yVar;
                this.f36024h = function25;
                this.f36025i = function26;
                this.f36026j = function27;
                this.f36027k = a0Var;
            }

            @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
            @Composable
            public final void a(Composer composer, int i10) {
                if ((i10 & 3) == 2 && composer.getSkipping()) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(831245532, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultVastRenderer.<anonymous>.<anonymous>.<anonymous>.<anonymous> (VastRenderer.kt:189)");
                }
                n.i(this.f36017a, null, this.f36018b, this.f36019c.invoke(composer, 0), this.f36020d.invoke(composer, 0), this.f36021e.invoke(composer, 0), this.f36022f.invoke(composer, 0), this.f36023g, this.f36024h.invoke(composer, 0), this.f36025i.invoke(composer, 0), this.f36026j.invoke(composer, 0), this.f36027k, composer, 0, 0, 2);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                a(composer, num.intValue());
                return Unit.f60915a;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public o(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i iVar, long j10, Function2<? super Composer, ? super Integer, ? extends at.r<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function2<? super a.AbstractC0597a.c, ? super a.AbstractC0597a.c.EnumC0599a, Unit>, ? super Function1<? super Boolean, Unit>, ? super Composer, ? super Integer, Unit>> function2, Function2<? super Composer, ? super Integer, ? extends at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<Unit>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, Unit>> function22, Function2<? super Composer, ? super Integer, ? extends at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<Unit>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, Unit>> function23, Function2<? super Composer, ? super Integer, ? extends at.r<? super BoxScope, ? super Boolean, ? super kt.i<? extends i.a>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Function0<Unit>, ? super Composer, ? super Integer, Unit>> function24, y yVar, Function2<? super Composer, ? super Integer, ? extends at.p<? super BoxScope, ? super Boolean, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, ? super Composer, ? super Integer, Unit>> function25, Function2<? super Composer, ? super Integer, ? extends at.q<? super BoxScope, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j, ? super Function0<Unit>, ? super Function0<Unit>, ? super Composer, ? super Integer, Unit>> function26, Function2<? super Composer, ? super Integer, ? extends at.r<? super BoxScope, ? super Boolean, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, ? super Function1<? super Boolean, Unit>, ? super Function0<Unit>, ? super Composer, ? super Integer, Unit>> function27, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0 a0Var) {
            this.f36006a = iVar;
            this.f36007b = j10;
            this.f36008c = function2;
            this.f36009d = function22;
            this.f36010e = function23;
            this.f36011f = function24;
            this.f36012g = yVar;
            this.f36013h = function25;
            this.f36014i = function26;
            this.f36015j = function27;
            this.f36016k = a0Var;
        }

        @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
        @Composable
        public final void a(Composer composer, int i10) {
            if ((i10 & 3) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(876197241, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultVastRenderer.<anonymous>.<anonymous>.<anonymous> (VastRenderer.kt:188)");
            }
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.theme.d.b(false, ComposableLambdaKt.composableLambda(composer, 831245532, true, new a(this.f36006a, this.f36007b, this.f36008c, this.f36009d, this.f36010e, this.f36011f, this.f36012g, this.f36013h, this.f36014i, this.f36015j, this.f36016k)), composer, 48, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return Unit.f60915a;
        }
    }

    public static final ComposeView a(long j10, Function2 function2, Function2 function22, Function2 function23, Function2 function24, y yVar, Function2 function25, Function2 function26, Function2 function27, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0 a0Var, Context context, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i adViewModel) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adViewModel, "adViewModel");
        ComposeView composeView = new ComposeView(context, null, 0, 6, null);
        composeView.setId(com.moloco.sdk.p.f33609a);
        composeView.setContent(ComposableLambdaKt.composableLambdaInstance(876197241, true, new o(adViewModel, j10, function2, function22, function23, function24, yVar, function25, function26, function27, a0Var)));
        return composeView;
    }

    @Composable
    @NotNull
    public static final at.p<BoxScope, Boolean, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, Composer, Integer, Unit> b(@Nullable Alignment alignment, @Nullable PaddingValues paddingValues, long j10, @Nullable Composer composer, int i10, int i11) {
        composer.startReplaceableGroup(716005120);
        if ((i11 & 1) != 0) {
            alignment = Alignment.Companion.getBottomCenter();
        }
        if ((i11 & 2) != 0) {
            paddingValues = PaddingKt.m440PaddingValues0680j_4(Dp.m4049constructorimpl(0));
        }
        if ((i11 & 4) != 0) {
            j10 = MaterialTheme.INSTANCE.getColors(composer, MaterialTheme.$stable).m1003getPrimary0d7_KjU();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(716005120, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultProgressBar (VastRenderer.kt:369)");
        }
        ComposableLambda composableLambda = ComposableLambdaKt.composableLambda(composer, 1967084142, true, new g(alignment, paddingValues, j10));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return composableLambda;
    }

    @Composable
    @NotNull
    public static final at.r<BoxScope, Boolean, Boolean, Function2<? super a.AbstractC0597a.c, ? super a.AbstractC0597a.c.EnumC0599a, Unit>, Function1<? super Boolean, Unit>, Composer, Integer, Unit> c(long j10, long j11, @Nullable Shape shape, long j12, @Nullable Alignment alignment, @Nullable PaddingValues paddingValues, long j13, @Nullable Painter painter, @Nullable Painter painter2, @Nullable Function0<Unit> function0, @Nullable Composer composer, int i10, int i11) {
        long j14;
        long j15;
        RoundedCornerShape roundedCornerShape;
        long j16;
        Alignment alignment2;
        PaddingValues paddingValues2;
        long j17;
        Painter painter3;
        Painter painter4;
        Function0<Unit> function02;
        composer.startReplaceableGroup(447650301);
        if ((i11 & 1) != 0) {
            j14 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.utils.a.b();
        } else {
            j14 = j10;
        }
        if ((i11 & 2) != 0) {
            j15 = j14;
        } else {
            j15 = j11;
        }
        if ((i11 & 4) != 0) {
            roundedCornerShape = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.utils.a.e();
        } else {
            roundedCornerShape = shape;
        }
        if ((i11 & 8) != 0) {
            j16 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.utils.a.d();
        } else {
            j16 = j12;
        }
        if ((i11 & 16) != 0) {
            alignment2 = Alignment.Companion.getTopStart();
        } else {
            alignment2 = alignment;
        }
        if ((i11 & 32) != 0) {
            paddingValues2 = PaddingKt.m440PaddingValues0680j_4(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.utils.a.a());
        } else {
            paddingValues2 = paddingValues;
        }
        if ((i11 & 64) != 0) {
            j17 = MaterialTheme.INSTANCE.getColors(composer, MaterialTheme.$stable).m1003getPrimary0d7_KjU();
        } else {
            j17 = j13;
        }
        if ((i11 & 128) != 0) {
            painter3 = PainterResources_androidKt.painterResource(com.moloco.sdk.o.f33598c, composer, 0);
        } else {
            painter3 = painter;
        }
        if ((i11 & 256) != 0) {
            painter4 = PainterResources_androidKt.painterResource(com.moloco.sdk.o.f33599d, composer, 0);
        } else {
            painter4 = painter2;
        }
        if ((i11 & 512) != 0) {
            function02 = null;
        } else {
            function02 = function0;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(447650301, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultMuteButton (VastRenderer.kt:226)");
        }
        ComposableLambda composableLambda = ComposableLambdaKt.composableLambda(composer, -545982054, true, new f(alignment2, paddingValues2, painter3, painter4, function02, j17, j14, j15, roundedCornerShape, j16));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return composableLambda;
    }

    @Composable
    @NotNull
    public static final at.r<BoxScope, Boolean, kt.i<? extends i.a>, Function1<? super a.AbstractC0597a.c, Unit>, Function0<Unit>, Composer, Integer, Unit> d(@Nullable Alignment alignment, @Nullable PaddingValues paddingValues, long j10, @Nullable String str, @Nullable String str2, @Nullable Function0<Unit> function0, @Nullable Composer composer, int i10, int i11) {
        Alignment alignment2;
        PaddingValues paddingValues2;
        long j11;
        String str3;
        String str4;
        Function0<Unit> function02;
        composer.startReplaceableGroup(-926425258);
        if ((i11 & 1) != 0) {
            alignment2 = Alignment.Companion.getBottomEnd();
        } else {
            alignment2 = alignment;
        }
        if ((i11 & 2) != 0) {
            paddingValues2 = PaddingKt.m440PaddingValues0680j_4(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.utils.a.a());
        } else {
            paddingValues2 = paddingValues;
        }
        if ((i11 & 4) != 0) {
            j11 = MaterialTheme.INSTANCE.getColors(composer, MaterialTheme.$stable).m1003getPrimary0d7_KjU();
        } else {
            j11 = j10;
        }
        if ((i11 & 8) != 0) {
            str3 = StringResources_androidKt.stringResource(com.moloco.sdk.q.f33617a, composer, 0);
        } else {
            str3 = str;
        }
        if ((i11 & 16) != 0) {
            str4 = null;
        } else {
            str4 = str2;
        }
        if ((i11 & 32) != 0) {
            function02 = null;
        } else {
            function02 = function0;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-926425258, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultCTAButton (VastRenderer.kt:294)");
        }
        ComposableLambda composableLambda = ComposableLambdaKt.composableLambda(composer, 432764356, true, new e(alignment2, paddingValues2, str4, str3, j11, function02));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return composableLambda;
    }

    public static final i.a e(State<? extends i.a> state) {
        return state.getValue();
    }

    public static final Unit f(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i iVar, Modifier modifier, long j10, at.r rVar, at.a aVar, at.a aVar2, at.r rVar2, y yVar, at.p pVar, at.q qVar, at.r rVar3, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0 a0Var, int i10, int i11, int i12, Composer composer, int i13) {
        i(iVar, modifier, j10, rVar, aVar, aVar2, rVar2, yVar, pVar, qVar, rVar3, a0Var, composer, i10 | 1, i11, i12);
        return Unit.f60915a;
    }

    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable:[androidx.compose.ui.UiComposable]][androidx.compose.ui.UiComposable:[_]][androidx.compose.ui.UiComposable:[_]][androidx.compose.ui.UiComposable:[androidx.compose.ui.UiComposable]][androidx.compose.ui.UiComposable:[androidx.compose.ui.UiComposable]][androidx.compose.ui.UiComposable:[androidx.compose.ui.UiComposable]][androidx.compose.ui.UiComposable:[androidx.compose.ui.UiComposable]]]")
    @NotNull
    public static final Function2<Context, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i, View> g(final long j10, @NotNull final Function2<? super Composer, ? super Integer, ? extends at.r<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function2<? super a.AbstractC0597a.c, ? super a.AbstractC0597a.c.EnumC0599a, Unit>, ? super Function1<? super Boolean, Unit>, ? super Composer, ? super Integer, Unit>> muteButton, @NotNull final Function2<? super Composer, ? super Integer, ? extends at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<Unit>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, Unit>> adCloseCountdownButton, @NotNull final Function2<? super Composer, ? super Integer, ? extends at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<Unit>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, Unit>> adSkipCountdownButton, @NotNull final Function2<? super Composer, ? super Integer, ? extends at.r<? super BoxScope, ? super Boolean, ? super kt.i<? extends i.a>, ? super Function1<? super a.AbstractC0597a.c, Unit>, ? super Function0<Unit>, ? super Composer, ? super Integer, Unit>> ctaButton, @Nullable final y yVar, @NotNull final Function2<? super Composer, ? super Integer, ? extends at.p<? super BoxScope, ? super Boolean, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, ? super Composer, ? super Integer, Unit>> progressBar, @NotNull final Function2<? super Composer, ? super Integer, ? extends at.q<? super BoxScope, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j, ? super Function0<Unit>, ? super Function0<Unit>, ? super Composer, ? super Integer, Unit>> vastIcon, @NotNull final Function2<? super Composer, ? super Integer, ? extends at.r<? super BoxScope, ? super Boolean, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, ? super Function1<? super Boolean, Unit>, ? super Function0<Unit>, ? super Composer, ? super Integer, Unit>> playbackControl, @NotNull final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0 viewVisibilityTracker) {
        Intrinsics.checkNotNullParameter(muteButton, "muteButton");
        Intrinsics.checkNotNullParameter(adCloseCountdownButton, "adCloseCountdownButton");
        Intrinsics.checkNotNullParameter(adSkipCountdownButton, "adSkipCountdownButton");
        Intrinsics.checkNotNullParameter(ctaButton, "ctaButton");
        Intrinsics.checkNotNullParameter(progressBar, "progressBar");
        Intrinsics.checkNotNullParameter(vastIcon, "vastIcon");
        Intrinsics.checkNotNullParameter(playbackControl, "playbackControl");
        Intrinsics.checkNotNullParameter(viewVisibilityTracker, "viewVisibilityTracker");
        return new Function2() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.h0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return n.a(j10, muteButton, adCloseCountdownButton, adSkipCountdownButton, ctaButton, yVar, progressBar, vastIcon, playbackControl, viewVisibilityTracker, (Context) obj, (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i) obj2);
            }
        };
    }

    public static /* synthetic */ Function2 h(long j10, Function2 function2, Function2 function22, Function2 function23, Function2 function24, y yVar, Function2 function25, Function2 function26, Function2 function27, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0 a0Var, int i10, Object obj) {
        long j11;
        Function2 function28;
        Function2 function29;
        Function2 function210;
        Function2 function211;
        y yVar2;
        Function2 function212;
        Function2 function213;
        Function2 function214;
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0 a0Var2;
        if ((i10 & 1) != 0) {
            j11 = Color.Companion.m1868getBlack0d7_KjU();
        } else {
            j11 = j10;
        }
        if ((i10 & 2) != 0) {
            function28 = h.f35999a;
        } else {
            function28 = function2;
        }
        if ((i10 & 4) != 0) {
            function29 = i.f36000a;
        } else {
            function29 = function22;
        }
        if ((i10 & 8) != 0) {
            function210 = j.f36001a;
        } else {
            function210 = function23;
        }
        if ((i10 & 16) != 0) {
            function211 = k.f36002a;
        } else {
            function211 = function24;
        }
        if ((i10 & 32) != 0) {
            yVar2 = null;
        } else {
            yVar2 = yVar;
        }
        if ((i10 & 64) != 0) {
            function212 = l.f36003a;
        } else {
            function212 = function25;
        }
        if ((i10 & 128) != 0) {
            function213 = m.f36004a;
        } else {
            function213 = function26;
        }
        if ((i10 & 256) != 0) {
            function214 = C0578n.f36005a;
        } else {
            function214 = function27;
        }
        if ((i10 & 512) != 0) {
            a0Var2 = b.h.f33655a.j();
        } else {
            a0Var2 = a0Var;
        }
        return g(j11, function28, function29, function210, function211, yVar2, function212, function213, function214, a0Var2);
    }

    /* JADX WARN: Removed duplicated region for block: B:434:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:437:0x036f  */
    /* JADX WARN: Removed duplicated region for block: B:440:0x037b  */
    /* JADX WARN: Removed duplicated region for block: B:441:0x037f  */
    /* JADX WARN: Removed duplicated region for block: B:444:0x0438  */
    /* JADX WARN: Removed duplicated region for block: B:445:0x043c  */
    /* JADX WARN: Removed duplicated region for block: B:463:0x053e  */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][_][_][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void i(@org.jetbrains.annotations.NotNull final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i r40, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r41, long r42, @org.jetbrains.annotations.Nullable at.r<? super androidx.compose.foundation.layout.BoxScope, ? super java.lang.Boolean, ? super java.lang.Boolean, ? super kotlin.jvm.functions.Function2<? super com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a.AbstractC0597a.c, ? super com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a.AbstractC0597a.c.EnumC0599a, kotlin.Unit>, ? super kotlin.jvm.functions.Function1<? super java.lang.Boolean, kotlin.Unit>, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r44, @org.jetbrains.annotations.Nullable at.a<? super androidx.compose.foundation.layout.BoxScope, ? super java.lang.Boolean, ? super java.lang.Boolean, ? super kotlin.jvm.functions.Function0<kotlin.Unit>, ? super kotlin.jvm.functions.Function1<? super com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a.AbstractC0597a.c, kotlin.Unit>, ? super java.lang.Boolean, ? super ms.n, ? super ms.n, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r45, @org.jetbrains.annotations.Nullable at.a<? super androidx.compose.foundation.layout.BoxScope, ? super java.lang.Boolean, ? super java.lang.Boolean, ? super kotlin.jvm.functions.Function0<kotlin.Unit>, ? super kotlin.jvm.functions.Function1<? super com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a.AbstractC0597a.c, kotlin.Unit>, ? super java.lang.Boolean, ? super ms.n, ? super ms.n, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r46, @org.jetbrains.annotations.Nullable at.r<? super androidx.compose.foundation.layout.BoxScope, ? super java.lang.Boolean, ? super kt.i<? extends com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i.a>, ? super kotlin.jvm.functions.Function1<? super com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a.AbstractC0597a.c, kotlin.Unit>, ? super kotlin.jvm.functions.Function0<kotlin.Unit>, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r47, @org.jetbrains.annotations.Nullable com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.y r48, @org.jetbrains.annotations.Nullable at.p<? super androidx.compose.foundation.layout.BoxScope, ? super java.lang.Boolean, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r49, @org.jetbrains.annotations.Nullable at.q<? super androidx.compose.foundation.layout.BoxScope, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j, ? super kotlin.jvm.functions.Function0<kotlin.Unit>, ? super kotlin.jvm.functions.Function0<kotlin.Unit>, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r50, @org.jetbrains.annotations.Nullable at.r<? super androidx.compose.foundation.layout.BoxScope, ? super java.lang.Boolean, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, ? super kotlin.jvm.functions.Function1<? super java.lang.Boolean, kotlin.Unit>, ? super kotlin.jvm.functions.Function0<kotlin.Unit>, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r51, @org.jetbrains.annotations.NotNull final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0 r52, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r53, final int r54, final int r55, final int r56) {
        /*
            Method dump skipped, instructions count: 1397
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.n.i(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i, androidx.compose.ui.Modifier, long, at.r, at.a, at.a, at.r, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.y, at.p, at.q, at.r, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0, androidx.compose.runtime.Composer, int, int, int):void");
    }

    public static final boolean j(State<Boolean> state) {
        return state.getValue().booleanValue();
    }
}
