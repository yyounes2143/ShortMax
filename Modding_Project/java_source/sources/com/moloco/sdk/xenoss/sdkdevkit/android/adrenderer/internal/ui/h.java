package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui;

import android.annotation.SuppressLint;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material.IconKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Dp;
import com.moloco.sdk.service_locator.b;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import com.ss.ttm.player.MediaPlayer;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nAdBadge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdBadge.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/AdBadgeKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,173:1\n1057#2,6:174\n1057#2,6:181\n1057#2,6:187\n1057#2,6:193\n1057#2,6:199\n155#3:180\n*S KotlinDebug\n*F\n+ 1 AdBadge.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/AdBadgeKt\n*L\n49#1:174,6\n56#1:181,6\n80#1:187,6\n131#1:193,6\n155#1:199,6\n55#1:180\n*E\n"})
/* loaded from: classes6.dex */
public final class h {

    @SourceDebugExtension({"SMAP\nAdBadge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdBadge.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/AdBadgeKt$defaultVastAdBadge$2\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,173:1\n76#2:174\n*S KotlinDebug\n*F\n+ 1 AdBadge.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/AdBadgeKt$defaultVastAdBadge$2\n*L\n83#1:174\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class a implements at.p<BoxScope, Function1<? super a.AbstractC0597a.c, ? extends Unit>, kt.i<? extends i.a>, Composer, Integer, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Modifier f34788a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ String f34789b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ Function1<String, Unit> f34790c;

        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.h$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0542a implements at.n<Modifier, Composer, Integer, Unit> {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ Modifier f34791a;

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ String f34792b;

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Function1<String, Unit> f34793c;

            /* JADX WARN: Multi-variable type inference failed */
            public C0542a(Modifier modifier, String str, Function1<? super String, Unit> function1) {
                this.f34791a = modifier;
                this.f34792b = str;
                this.f34793c = function1;
            }

            @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
            @Composable
            public final void a(Modifier trackableModifier, Composer composer, int i10) {
                int i11;
                Intrinsics.checkNotNullParameter(trackableModifier, "trackableModifier");
                if ((i10 & 6) == 0) {
                    if (composer.changed(trackableModifier)) {
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
                    ComposerKt.traceEventStart(1901554514, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.defaultVastAdBadge.<anonymous>.<anonymous>.<anonymous> (AdBadge.kt:89)");
                }
                h.d(this.f34791a.then(trackableModifier), this.f34792b, this.f34793c, composer, 0, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Unit invoke(Modifier modifier, Composer composer, Integer num) {
                a(modifier, composer, num.intValue());
                return Unit.f60915a;
            }
        }

        /* loaded from: classes6.dex */
        public static final class b implements at.n<Modifier, Composer, Integer, Unit> {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ Modifier f34794a;

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ String f34795b;

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Function1<String, Unit> f34796c;

            /* JADX WARN: Multi-variable type inference failed */
            public b(Modifier modifier, String str, Function1<? super String, Unit> function1) {
                this.f34794a = modifier;
                this.f34795b = str;
                this.f34796c = function1;
            }

            @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
            @Composable
            public final void a(Modifier trackableModifier, Composer composer, int i10) {
                int i11;
                Intrinsics.checkNotNullParameter(trackableModifier, "trackableModifier");
                if ((i10 & 6) == 0) {
                    if (composer.changed(trackableModifier)) {
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
                    ComposerKt.traceEventStart(1149096507, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.defaultVastAdBadge.<anonymous>.<anonymous>.<anonymous> (AdBadge.kt:101)");
                }
                h.d(this.f34794a.then(trackableModifier), this.f34795b, this.f34796c, composer, 0, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Unit invoke(Modifier modifier, Composer composer, Integer num) {
                a(modifier, composer, num.intValue());
                return Unit.f60915a;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public a(Modifier modifier, String str, Function1<? super String, Unit> function1) {
            this.f34788a = modifier;
            this.f34789b = str;
            this.f34790c = function1;
        }

        public static final i.a a(State<? extends i.a> state) {
            return state.getValue();
        }

        @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
        @Composable
        public final void b(BoxScope boxScope, Function1<? super a.AbstractC0597a.c, Unit> onButtonRendered, kt.i<? extends i.a> iVar, Composer composer, int i10) {
            Intrinsics.checkNotNullParameter(boxScope, "<this>");
            Intrinsics.checkNotNullParameter(onButtonRendered, "onButtonRendered");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(781429248, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.defaultVastAdBadge.<anonymous> (AdBadge.kt:81)");
            }
            if (iVar != null) {
                Modifier modifier = this.f34788a;
                String str = this.f34789b;
                Function1<String, Unit> function1 = this.f34790c;
                i.a a10 = a(SnapshotStateKt.collectAsState(iVar, null, composer, 0, 1));
                if (a10 instanceof i.a.c) {
                    composer.startReplaceableGroup(-784877573);
                    k0.e(null, a.AbstractC0597a.c.EnumC0599a.f36609i, onButtonRendered, ComposableLambdaKt.composableLambda(composer, 1901554514, true, new C0542a(modifier, str, function1)), composer, ((i10 << 3) & 896) | 3120, 1);
                    composer.endReplaceableGroup();
                } else if (a10 instanceof i.a.C0565a) {
                    composer.startReplaceableGroup(-784430181);
                    k0.e(null, a.AbstractC0597a.c.EnumC0599a.f36609i, onButtonRendered, ComposableLambdaKt.composableLambda(composer, 1149096507, true, new b(modifier, str, function1)), composer, ((i10 << 3) & 896) | 3120, 1);
                    composer.endReplaceableGroup();
                } else if (a10 instanceof i.a.b) {
                    composer.startReplaceableGroup(-784000800);
                    composer.endReplaceableGroup();
                } else if (a10 instanceof i.a.d) {
                    composer.startReplaceableGroup(-783943264);
                    composer.endReplaceableGroup();
                } else if (a10 == null) {
                    composer.startReplaceableGroup(-783908544);
                    composer.endReplaceableGroup();
                } else {
                    composer.startReplaceableGroup(-1687888084);
                    composer.endReplaceableGroup();
                    throw new NoWhenBranchMatchedException();
                }
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // at.p
        public /* bridge */ /* synthetic */ Unit invoke(BoxScope boxScope, Function1<? super a.AbstractC0597a.c, ? extends Unit> function1, kt.i<? extends i.a> iVar, Composer composer, Integer num) {
            b(boxScope, function1, iVar, composer, num.intValue());
            return Unit.f60915a;
        }
    }

    /* loaded from: classes6.dex */
    public static final class b implements at.o<BoxScope, Function1<? super a.AbstractC0597a.c, ? extends Unit>, Composer, Integer, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Modifier f34797a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ String f34798b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ Function1<String, Unit> f34799c;

        /* loaded from: classes6.dex */
        public static final class a implements at.n<Modifier, Composer, Integer, Unit> {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ Modifier f34800a;

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ String f34801b;

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Function1<String, Unit> f34802c;

            /* JADX WARN: Multi-variable type inference failed */
            public a(Modifier modifier, String str, Function1<? super String, Unit> function1) {
                this.f34800a = modifier;
                this.f34801b = str;
                this.f34802c = function1;
            }

            @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
            @Composable
            public final void a(Modifier trackableModifier, Composer composer, int i10) {
                int i11;
                Intrinsics.checkNotNullParameter(trackableModifier, "trackableModifier");
                if ((i10 & 6) == 0) {
                    if (composer.changed(trackableModifier)) {
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
                    ComposerKt.traceEventStart(592042825, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.defaultWebViewAdBadge.<anonymous>.<anonymous> (AdBadge.kt:136)");
                }
                h.d(this.f34800a.then(trackableModifier), this.f34801b, this.f34802c, composer, 0, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Unit invoke(Modifier modifier, Composer composer, Integer num) {
                a(modifier, composer, num.intValue());
                return Unit.f60915a;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public b(Modifier modifier, String str, Function1<? super String, Unit> function1) {
            this.f34797a = modifier;
            this.f34798b = str;
            this.f34799c = function1;
        }

        @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
        @Composable
        public final void a(BoxScope boxScope, Function1<? super a.AbstractC0597a.c, Unit> onButtonRendered, Composer composer, int i10) {
            int i11;
            Intrinsics.checkNotNullParameter(boxScope, "<this>");
            Intrinsics.checkNotNullParameter(onButtonRendered, "onButtonRendered");
            if ((i10 & 48) == 0) {
                if (composer.changed(onButtonRendered)) {
                    i11 = 32;
                } else {
                    i11 = 16;
                }
                i10 |= i11;
            }
            if ((i10 & 145) == 144 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-652534615, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.defaultWebViewAdBadge.<anonymous> (AdBadge.kt:132)");
            }
            k0.e(null, a.AbstractC0597a.c.EnumC0599a.f36609i, onButtonRendered, ComposableLambdaKt.composableLambda(composer, 592042825, true, new a(this.f34797a, this.f34798b, this.f34799c)), composer, ((i10 << 3) & 896) | 3120, 1);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // at.o
        public /* bridge */ /* synthetic */ Unit invoke(BoxScope boxScope, Function1<? super a.AbstractC0597a.c, ? extends Unit> function1, Composer composer, Integer num) {
            a(boxScope, function1, composer, num.intValue());
            return Unit.f60915a;
        }
    }

    public static final Unit a(Modifier modifier, String str, Function1 function1, int i10, int i11, Composer composer, int i12) {
        d(modifier, str, function1, composer, i10 | 1, i11);
        return Unit.f60915a;
    }

    public static final Unit b(String str, SemanticsPropertyReceiver semantics) {
        Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
        SemanticsPropertiesKt.setContentDescription(semantics, str);
        SemanticsPropertiesKt.setTestTag(semantics, str);
        return Unit.f60915a;
    }

    public static final Unit c(Function1 function1, String str) {
        function1.invoke(str);
        return Unit.f60915a;
    }

    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    public static final void d(@Nullable Modifier modifier, @NotNull final String clickUrl, @NotNull final Function1<? super String, Unit> onClick, @Nullable Composer composer, final int i10, final int i11) {
        Object obj;
        int i12;
        int i13;
        int i14;
        int i15;
        Modifier.Companion companion;
        Intrinsics.checkNotNullParameter(clickUrl, "clickUrl");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        Composer startRestartGroup = composer.startRestartGroup(1037954372);
        int i16 = i11 & 1;
        if (i16 != 0) {
            i12 = i10 | 6;
            obj = modifier;
        } else if ((i10 & 6) == 0) {
            obj = modifier;
            if (startRestartGroup.changed(obj)) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i12 = i13 | i10;
        } else {
            obj = modifier;
            i12 = i10;
        }
        if ((i11 & 2) != 0) {
            i12 |= 48;
        } else if ((i10 & 48) == 0) {
            if (startRestartGroup.changed(clickUrl)) {
                i14 = 32;
            } else {
                i14 = 16;
            }
            i12 |= i14;
        }
        if ((i11 & 4) != 0) {
            i12 |= MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500;
        } else if ((i10 & MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500) == 0) {
            if (startRestartGroup.changed(onClick)) {
                i15 = 256;
            } else {
                i15 = 128;
            }
            i12 |= i15;
        }
        if ((i12 & 147) == 146 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
            companion = obj;
        } else {
            if (i16 != 0) {
                companion = Modifier.Companion;
            } else {
                companion = obj;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1037954372, i12, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.AdBadge (AdBadge.kt:43)");
            }
            startRestartGroup.startReplaceableGroup(-363689698);
            boolean changed = startRestartGroup.changed("Ad Badge");
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new Function1() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.d
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return h.b(r1, (SemanticsPropertyReceiver) obj2);
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            Modifier m480requiredSize3ABfNKs = SizeKt.m480requiredSize3ABfNKs(SemanticsModifierKt.semantics$default(companion, false, (Function1) rememberedValue, 1, null), Dp.m4049constructorimpl(12));
            startRestartGroup.startReplaceableGroup(-363682862);
            boolean changed2 = startRestartGroup.changed(onClick) | startRestartGroup.changed(clickUrl);
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (changed2 || rememberedValue2 == Composer.Companion.getEmpty()) {
                rememberedValue2 = new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.f
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return h.c(Function1.this, clickUrl);
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue2);
            }
            startRestartGroup.endReplaceableGroup();
            IconKt.m1100Iconww6aTOc(PainterResources_androidKt.painterResource(com.moloco.sdk.o.f33600e, startRestartGroup, 0), "Ad Badge", ClickableKt.m219clickableXHw0xAI$default(m480requiredSize3ABfNKs, false, null, null, (Function0) rememberedValue2, 7, null), Color.Companion.m1878getUnspecified0d7_KjU(), startRestartGroup, 3120, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            final Modifier modifier2 = companion;
            endRestartGroup.updateScope(new Function2() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.g
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return h.a(Modifier.this, clickUrl, onClick, i10, i11, (Composer) obj2, ((Integer) obj3).intValue());
                }
            });
        }
    }

    @Composable
    @SuppressLint({"ComposableNaming"})
    @NotNull
    public static final at.p<BoxScope, Function1<? super a.AbstractC0597a.c, Unit>, kt.i<? extends i.a>, Composer, Integer, Unit> e(@Nullable Modifier modifier, @Nullable final String str, @Nullable final n0 n0Var, @Nullable Function1<? super String, Unit> function1, @Nullable Composer composer, int i10, int i11) {
        composer.startReplaceableGroup(-1665380566);
        if ((i11 & 1) != 0) {
            modifier = Modifier.Companion;
        }
        if ((i11 & 2) != 0) {
            str = "https://cdn-f.adsmoloco.com/moloco-cdn/privacy.html";
        }
        if ((i11 & 4) != 0) {
            n0Var = b.h.f33655a.f();
        }
        if ((i11 & 8) != 0) {
            composer.startReplaceableGroup(-819746825);
            boolean changed = composer.changed(n0Var) | composer.changed(str);
            Object rememberedValue = composer.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new Function1() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.a
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return h.f(n0.this, str, (String) obj);
                    }
                };
                composer.updateRememberedValue(rememberedValue);
            }
            function1 = (Function1) rememberedValue;
            composer.endReplaceableGroup();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1665380566, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.defaultVastAdBadge (AdBadge.kt:80)");
        }
        ComposableLambda composableLambda = ComposableLambdaKt.composableLambda(composer, 781429248, true, new a(modifier, str, function1));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return composableLambda;
    }

    public static final Unit f(n0 n0Var, String str, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        n0Var.a(str);
        return Unit.f60915a;
    }

    @Composable
    @SuppressLint({"ComposableNaming"})
    @NotNull
    public static final at.o<BoxScope, Function1<? super a.AbstractC0597a.c, Unit>, Composer, Integer, Unit> g(@Nullable Modifier modifier, @Nullable final String str, @Nullable final n0 n0Var, @Nullable Function1<? super String, Unit> function1, @Nullable Composer composer, int i10, int i11) {
        composer.startReplaceableGroup(-1806921710);
        if ((i11 & 1) != 0) {
            modifier = Modifier.Companion;
        }
        if ((i11 & 2) != 0) {
            str = "https://cdn-f.adsmoloco.com/moloco-cdn/privacy.html";
        }
        if ((i11 & 4) != 0) {
            n0Var = b.h.f33655a.f();
        }
        if ((i11 & 8) != 0) {
            composer.startReplaceableGroup(-763782490);
            boolean changed = composer.changed(n0Var) | composer.changed(str);
            Object rememberedValue = composer.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new Function1() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.c
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return h.h(n0.this, str, (String) obj);
                    }
                };
                composer.updateRememberedValue(rememberedValue);
            }
            function1 = (Function1) rememberedValue;
            composer.endReplaceableGroup();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1806921710, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.defaultWebViewAdBadge (AdBadge.kt:131)");
        }
        ComposableLambda composableLambda = ComposableLambdaKt.composableLambda(composer, -652534615, true, new b(modifier, str, function1));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return composableLambda;
    }

    public static final Unit h(n0 n0Var, String str, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        n0Var.a(str);
        return Unit.f60915a;
    }
}
