package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.profileinstaller.ProfileVerifier;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.m;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.z;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import com.ss.ttm.player.MediaPlayer;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class m {

    /* loaded from: classes6.dex */
    public static final class a implements at.a<BoxScope, Boolean, Boolean, Function0<? extends Unit>, Function1<? super a.AbstractC0597a.c, ? extends Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Alignment f34817a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ PaddingValues f34818b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ a.AbstractC0597a.c.EnumC0599a f34819c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ z f34820d;

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ Function0<Unit> f34821e;

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ long f34822f;

        /* renamed from: g  reason: collision with root package name */
        public final /* synthetic */ long f34823g;

        /* renamed from: h  reason: collision with root package name */
        public final /* synthetic */ long f34824h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.internal.ortb.model.i f34825i;

        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.m$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0543a implements at.n<AnimatedVisibilityScope, Composer, Integer, Unit> {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ a.AbstractC0597a.c.EnumC0599a f34826a;

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ Function1<a.AbstractC0597a.c, Unit> f34827b;

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ boolean f34828c;

            /* renamed from: d  reason: collision with root package name */
            public final /* synthetic */ z f34829d;

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ boolean f34830e;

            /* renamed from: f  reason: collision with root package name */
            public final /* synthetic */ int f34831f;

            /* renamed from: g  reason: collision with root package name */
            public final /* synthetic */ int f34832g;

            /* renamed from: h  reason: collision with root package name */
            public final /* synthetic */ Function0<Unit> f34833h;

            /* renamed from: i  reason: collision with root package name */
            public final /* synthetic */ Function0<Unit> f34834i;

            /* renamed from: j  reason: collision with root package name */
            public final /* synthetic */ long f34835j;

            /* renamed from: k  reason: collision with root package name */
            public final /* synthetic */ long f34836k;

            /* renamed from: l  reason: collision with root package name */
            public final /* synthetic */ long f34837l;

            /* renamed from: m  reason: collision with root package name */
            public final /* synthetic */ com.moloco.sdk.internal.ortb.model.i f34838m;

            @SourceDebugExtension({"SMAP\nAdCountdownButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdCountdownButton.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/AdCountdownButtonKt$adCountdownButton$1$1$1\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,88:1\n1057#2,6:89\n*S KotlinDebug\n*F\n+ 1 AdCountdownButton.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/AdCountdownButtonKt$adCountdownButton$1$1$1\n*L\n75#1:89,6\n*E\n"})
            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.m$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0544a implements at.n<Modifier, Composer, Integer, Unit> {

                /* renamed from: a  reason: collision with root package name */
                public final /* synthetic */ boolean f34839a;

                /* renamed from: b  reason: collision with root package name */
                public final /* synthetic */ z f34840b;

                /* renamed from: c  reason: collision with root package name */
                public final /* synthetic */ boolean f34841c;

                /* renamed from: d  reason: collision with root package name */
                public final /* synthetic */ int f34842d;

                /* renamed from: e  reason: collision with root package name */
                public final /* synthetic */ int f34843e;

                /* renamed from: f  reason: collision with root package name */
                public final /* synthetic */ Function0<Unit> f34844f;

                /* renamed from: g  reason: collision with root package name */
                public final /* synthetic */ Function0<Unit> f34845g;

                /* renamed from: h  reason: collision with root package name */
                public final /* synthetic */ long f34846h;

                /* renamed from: i  reason: collision with root package name */
                public final /* synthetic */ long f34847i;

                /* renamed from: j  reason: collision with root package name */
                public final /* synthetic */ long f34848j;

                /* renamed from: k  reason: collision with root package name */
                public final /* synthetic */ com.moloco.sdk.internal.ortb.model.i f34849k;

                public C0544a(boolean z10, z zVar, boolean z11, int i10, int i11, Function0<Unit> function0, Function0<Unit> function02, long j10, long j11, long j12, com.moloco.sdk.internal.ortb.model.i iVar) {
                    this.f34839a = z10;
                    this.f34840b = zVar;
                    this.f34841c = z11;
                    this.f34842d = i10;
                    this.f34843e = i11;
                    this.f34844f = function0;
                    this.f34845g = function02;
                    this.f34846h = j10;
                    this.f34847i = j11;
                    this.f34848j = j12;
                    this.f34849k = iVar;
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
                public final void b(Modifier modifier, Composer composer, int i10) {
                    int i11;
                    z aVar;
                    int i12;
                    Intrinsics.checkNotNullParameter(modifier, "modifier");
                    if ((i10 & 6) == 0) {
                        if (composer.changed(modifier)) {
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
                        ComposerKt.traceEventStart(1495696596, i11, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.adCountdownButton.<anonymous>.<anonymous>.<anonymous> (AdCountdownButton.kt:67)");
                    }
                    if (this.f34839a) {
                        aVar = this.f34840b;
                    } else {
                        aVar = new z.a(this.f34841c, this.f34842d, this.f34843e, null);
                    }
                    composer.startReplaceableGroup(1166285558);
                    boolean changed = composer.changed(this.f34844f) | composer.changed(this.f34845g);
                    final Function0<Unit> function0 = this.f34844f;
                    final Function0<Unit> function02 = this.f34845g;
                    Object rememberedValue = composer.rememberedValue();
                    if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                        rememberedValue = new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.l
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return m.a.C0543a.C0544a.a(Function0.this, function02);
                            }
                        };
                        composer.updateRememberedValue(rememberedValue);
                    }
                    composer.endReplaceableGroup();
                    int i13 = (i11 << 3) & 112;
                    y.b(aVar, modifier, (Function0) rememberedValue, this.f34839a, this.f34846h, this.f34847i, this.f34848j, this.f34849k, composer, i13, 0);
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
            public C0543a(a.AbstractC0597a.c.EnumC0599a enumC0599a, Function1<? super a.AbstractC0597a.c, Unit> function1, boolean z10, z zVar, boolean z11, int i10, int i11, Function0<Unit> function0, Function0<Unit> function02, long j10, long j11, long j12, com.moloco.sdk.internal.ortb.model.i iVar) {
                this.f34826a = enumC0599a;
                this.f34827b = function1;
                this.f34828c = z10;
                this.f34829d = zVar;
                this.f34830e = z11;
                this.f34831f = i10;
                this.f34832g = i11;
                this.f34833h = function0;
                this.f34834i = function02;
                this.f34835j = j10;
                this.f34836k = j11;
                this.f34837l = j12;
                this.f34838m = iVar;
            }

            @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
            @Composable
            public final void a(AnimatedVisibilityScope AnimatedVisibility, Composer composer, int i10) {
                Intrinsics.checkNotNullParameter(AnimatedVisibility, "$this$AnimatedVisibility");
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(411500084, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.adCountdownButton.<anonymous>.<anonymous> (AdCountdownButton.kt:62)");
                }
                k0.e(Modifier.Companion, this.f34826a, this.f34827b, ComposableLambdaKt.composableLambda(composer, 1495696596, true, new C0544a(this.f34828c, this.f34829d, this.f34830e, this.f34831f, this.f34832g, this.f34833h, this.f34834i, this.f34835j, this.f34836k, this.f34837l, this.f34838m)), composer, 3078, 0);
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

        public a(Alignment alignment, PaddingValues paddingValues, a.AbstractC0597a.c.EnumC0599a enumC0599a, z zVar, Function0<Unit> function0, long j10, long j11, long j12, com.moloco.sdk.internal.ortb.model.i iVar) {
            this.f34817a = alignment;
            this.f34818b = paddingValues;
            this.f34819c = enumC0599a;
            this.f34820d = zVar;
            this.f34821e = function0;
            this.f34822f = j10;
            this.f34823g = j11;
            this.f34824h = j12;
            this.f34825i = iVar;
        }

        @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
        @Composable
        public final void a(BoxScope boxScope, boolean z10, boolean z11, Function0<Unit> onClick, Function1<? super a.AbstractC0597a.c, Unit> onButtonRendered, boolean z12, int i10, int i11, Composer composer, int i12) {
            int i13;
            int i14;
            int i15;
            int i16;
            int i17;
            int i18;
            int i19;
            int i20;
            int i21;
            Intrinsics.checkNotNullParameter(boxScope, "<this>");
            Intrinsics.checkNotNullParameter(onClick, "onClick");
            Intrinsics.checkNotNullParameter(onButtonRendered, "onButtonRendered");
            if ((i12 & 6) == 0) {
                if (composer.changed(boxScope)) {
                    i21 = 4;
                } else {
                    i21 = 2;
                }
                i13 = i21 | i12;
            } else {
                i13 = i12;
            }
            if ((i12 & 48) == 0) {
                if (composer.changed(z10)) {
                    i20 = 32;
                } else {
                    i20 = 16;
                }
                i13 |= i20;
            }
            if ((i12 & MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500) == 0) {
                if (composer.changed(z11)) {
                    i19 = 256;
                } else {
                    i19 = 128;
                }
                i13 |= i19;
            }
            if ((i12 & 3072) == 0) {
                if (composer.changed(onClick)) {
                    i18 = 2048;
                } else {
                    i18 = 1024;
                }
                i13 |= i18;
            }
            if ((i12 & 24576) == 0) {
                if (composer.changed(onButtonRendered)) {
                    i17 = 16384;
                } else {
                    i17 = 8192;
                }
                i13 |= i17;
            }
            if ((i12 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composer.changed(z12)) {
                    i16 = 131072;
                } else {
                    i16 = 65536;
                }
                i13 |= i16;
            }
            if ((1572864 & i12) == 0) {
                if (composer.changed(i10)) {
                    i15 = 1048576;
                } else {
                    i15 = 524288;
                }
                i13 |= i15;
            }
            if ((i12 & 12582912) == 0) {
                if (composer.changed(i11)) {
                    i14 = 8388608;
                } else {
                    i14 = 4194304;
                }
                i13 |= i14;
            }
            if ((38347923 & i13) == 38347922 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-563618292, i13, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.adCountdownButton.<anonymous> (AdCountdownButton.kt:55)");
            }
            AnimatedVisibilityKt.AnimatedVisibility(z11, PaddingKt.padding(WindowInsetsPadding_androidKt.displayCutoutPadding(boxScope.align(Modifier.Companion, this.f34817a)), this.f34818b), (EnterTransition) null, (ExitTransition) null, (String) null, ComposableLambdaKt.composableLambda(composer, 411500084, true, new C0543a(this.f34819c, onButtonRendered, z10, this.f34820d, z12, i10, i11, onClick, this.f34821e, this.f34822f, this.f34823g, this.f34824h, this.f34825i)), composer, ((i13 >> 6) & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 28);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // at.a
        public /* bridge */ /* synthetic */ Unit invoke(BoxScope boxScope, Boolean bool, Boolean bool2, Function0<? extends Unit> function0, Function1<? super a.AbstractC0597a.c, ? extends Unit> function1, Boolean bool3, ms.n nVar, ms.n nVar2, Composer composer, Integer num) {
            a(boxScope, bool.booleanValue(), bool2.booleanValue(), function0, function1, bool3.booleanValue(), nVar.g(), nVar2.g(), composer, num.intValue());
            return Unit.f60915a;
        }
    }

    @Composable
    @NotNull
    public static final at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit> a(@NotNull Alignment alignment, @NotNull PaddingValues padding, long j10, long j11, long j12, @NotNull z afterCountdownButtonPart, @NotNull a.AbstractC0597a.c.EnumC0599a buttonType, @Nullable Function0<Unit> function0, @Nullable com.moloco.sdk.internal.ortb.model.i iVar, @Nullable Composer composer, int i10) {
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        Intrinsics.checkNotNullParameter(padding, "padding");
        Intrinsics.checkNotNullParameter(afterCountdownButtonPart, "afterCountdownButtonPart");
        Intrinsics.checkNotNullParameter(buttonType, "buttonType");
        composer.startReplaceableGroup(410719381);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(410719381, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.adCountdownButton (AdCountdownButton.kt:53)");
        }
        ComposableLambda composableLambda = ComposableLambdaKt.composableLambda(composer, -563618292, true, new a(alignment, padding, buttonType, afterCountdownButtonPart, function0, j10, j11, j12, iVar));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return composableLambda;
    }
}
