package com.moloco.sdk.internal;

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
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.profileinstaller.ProfileVerifier;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nMolocoVastCTA.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MolocoVastCTA.kt\ncom/moloco/sdk/internal/MolocoVastCTAKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 6 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,154:1\n155#2:155\n155#2:156\n155#2:186\n155#2:187\n155#2:188\n155#2:189\n79#3,2:157\n81#3:185\n85#3:194\n75#4:159\n76#4,11:161\n89#4:193\n76#5:160\n460#6,13:172\n473#6,3:190\n*S KotlinDebug\n*F\n+ 1 MolocoVastCTA.kt\ncom/moloco/sdk/internal/MolocoVastCTAKt\n*L\n115#1:155\n119#1:156\n128#1:186\n132#1:187\n141#1:188\n142#1:189\n117#1:157,2\n117#1:185\n117#1:194\n117#1:159\n117#1:161,11\n117#1:193\n117#1:160\n117#1:172,13\n117#1:190,3\n*E\n"})
/* loaded from: classes6.dex */
public final class f0 {

    /* renamed from: a  reason: collision with root package name */
    public static final long f32118a = ColorKt.Color(4278354171L);

    @SourceDebugExtension({"SMAP\nMolocoVastCTA.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MolocoVastCTA.kt\ncom/moloco/sdk/internal/MolocoVastCTAKt$molocoCTAButton$1\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,154:1\n76#2:155\n*S KotlinDebug\n*F\n+ 1 MolocoVastCTA.kt\ncom/moloco/sdk/internal/MolocoVastCTAKt$molocoCTAButton$1\n*L\n49#1:155\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class a implements at.r<BoxScope, Boolean, kt.i<? extends i.a>, Function1<? super a.AbstractC0597a.c, ? extends Unit>, Function0<? extends Unit>, Composer, Integer, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Alignment f32119a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ PaddingValues f32120b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ String f32121c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ String f32122d;

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ long f32123e;

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ long f32124f;

        /* renamed from: com.moloco.sdk.internal.f0$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0464a implements at.n<AnimatedVisibilityScope, Composer, Integer, Unit> {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ Function1<a.AbstractC0597a.c, Unit> f32125a;

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ State<i.a> f32126b;

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ String f32127c;

            /* renamed from: d  reason: collision with root package name */
            public final /* synthetic */ String f32128d;

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ long f32129e;

            /* renamed from: f  reason: collision with root package name */
            public final /* synthetic */ long f32130f;

            /* renamed from: g  reason: collision with root package name */
            public final /* synthetic */ Function0<Unit> f32131g;

            /* renamed from: com.moloco.sdk.internal.f0$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0465a implements at.n<Modifier, Composer, Integer, Unit> {

                /* renamed from: a  reason: collision with root package name */
                public final /* synthetic */ String f32132a;

                /* renamed from: b  reason: collision with root package name */
                public final /* synthetic */ String f32133b;

                /* renamed from: c  reason: collision with root package name */
                public final /* synthetic */ long f32134c;

                /* renamed from: d  reason: collision with root package name */
                public final /* synthetic */ long f32135d;

                /* renamed from: e  reason: collision with root package name */
                public final /* synthetic */ Function0<Unit> f32136e;

                public C0465a(String str, String str2, long j10, long j11, Function0<Unit> function0) {
                    this.f32132a = str;
                    this.f32133b = str2;
                    this.f32134c = j10;
                    this.f32135d = j11;
                    this.f32136e = function0;
                }

                @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
                @Composable
                public final void a(Modifier it, Composer composer, int i10) {
                    int i11;
                    int i12;
                    Intrinsics.checkNotNullParameter(it, "it");
                    if ((i10 & 6) == 0) {
                        if (composer.changed(it)) {
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
                        ComposerKt.traceEventStart(-1938502477, i11, -1, "com.moloco.sdk.internal.molocoCTAButton.<anonymous>.<anonymous>.<anonymous> (MolocoVastCTA.kt:72)");
                    }
                    f0.d(it, this.f32132a, this.f32133b, this.f32134c, this.f32135d, this.f32136e, composer, i11 & 14, 0);
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

            /* renamed from: com.moloco.sdk.internal.f0$a$a$b */
            /* loaded from: classes6.dex */
            public static final class b implements at.n<Modifier, Composer, Integer, Unit> {

                /* renamed from: a  reason: collision with root package name */
                public final /* synthetic */ String f32137a;

                /* renamed from: b  reason: collision with root package name */
                public final /* synthetic */ String f32138b;

                /* renamed from: c  reason: collision with root package name */
                public final /* synthetic */ long f32139c;

                /* renamed from: d  reason: collision with root package name */
                public final /* synthetic */ long f32140d;

                /* renamed from: e  reason: collision with root package name */
                public final /* synthetic */ Function0<Unit> f32141e;

                public b(String str, String str2, long j10, long j11, Function0<Unit> function0) {
                    this.f32137a = str;
                    this.f32138b = str2;
                    this.f32139c = j10;
                    this.f32140d = j11;
                    this.f32141e = function0;
                }

                @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
                @Composable
                public final void a(Modifier it, Composer composer, int i10) {
                    int i11;
                    int i12;
                    Intrinsics.checkNotNullParameter(it, "it");
                    if ((i10 & 6) == 0) {
                        if (composer.changed(it)) {
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
                        ComposerKt.traceEventStart(-868048676, i11, -1, "com.moloco.sdk.internal.molocoCTAButton.<anonymous>.<anonymous>.<anonymous> (MolocoVastCTA.kt:87)");
                    }
                    f0.d(it, this.f32137a, this.f32138b, this.f32139c, this.f32140d, this.f32141e, composer, i11 & 14, 0);
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
            public C0464a(Function1<? super a.AbstractC0597a.c, Unit> function1, State<? extends i.a> state, String str, String str2, long j10, long j11, Function0<Unit> function0) {
                this.f32125a = function1;
                this.f32126b = state;
                this.f32127c = str;
                this.f32128d = str2;
                this.f32129e = j10;
                this.f32130f = j11;
                this.f32131g = function0;
            }

            @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
            @Composable
            public final void a(AnimatedVisibilityScope AnimatedVisibility, Composer composer, int i10) {
                Intrinsics.checkNotNullParameter(AnimatedVisibility, "$this$AnimatedVisibility");
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-657845797, i10, -1, "com.moloco.sdk.internal.molocoCTAButton.<anonymous>.<anonymous> (MolocoVastCTA.kt:66)");
                }
                i.a c10 = a.c(this.f32126b);
                if (c10 instanceof i.a.C0565a) {
                    composer.startReplaceableGroup(-388830153);
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.k0.e(null, a.AbstractC0597a.c.EnumC0599a.f36607g, this.f32125a, ComposableLambdaKt.composableLambda(composer, -1938502477, true, new C0465a(this.f32127c, this.f32128d, this.f32129e, this.f32130f, this.f32131g)), composer, 3120, 1);
                    composer.endReplaceableGroup();
                } else if (c10 instanceof i.a.c) {
                    composer.startReplaceableGroup(-388268681);
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.k0.e(null, a.AbstractC0597a.c.EnumC0599a.f36607g, this.f32125a, ComposableLambdaKt.composableLambda(composer, -868048676, true, new b(this.f32127c, this.f32128d, this.f32129e, this.f32130f, this.f32131g)), composer, 3120, 1);
                    composer.endReplaceableGroup();
                } else if (c10 instanceof i.a.b) {
                    composer.startReplaceableGroup(-387725902);
                    composer.endReplaceableGroup();
                } else if (c10 instanceof i.a.d) {
                    composer.startReplaceableGroup(-387668366);
                    composer.endReplaceableGroup();
                } else if (c10 == null) {
                    composer.startReplaceableGroup(-387633677);
                    composer.endReplaceableGroup();
                } else {
                    composer.startReplaceableGroup(-843828347);
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

        public a(Alignment alignment, PaddingValues paddingValues, String str, String str2, long j10, long j11) {
            this.f32119a = alignment;
            this.f32120b = paddingValues;
            this.f32121c = str;
            this.f32122d = str2;
            this.f32123e = j10;
            this.f32124f = j11;
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
                ComposerKt.traceEventStart(-927135997, i10, -1, "com.moloco.sdk.internal.molocoCTAButton.<anonymous> (MolocoVastCTA.kt:48)");
            }
            AnimatedVisibilityKt.AnimatedVisibility(z10, PaddingKt.padding(WindowInsetsPadding_androidKt.displayCutoutPadding(boxScope.align(Modifier.Companion, this.f32119a)), this.f32120b), (EnterTransition) null, (ExitTransition) null, (String) null, ComposableLambdaKt.composableLambda(composer, -657845797, true, new C0464a(onButtonRendered, SnapshotStateKt.collectAsState(currentAdPartFlow, null, composer, (i10 >> 6) & 14, 1), this.f32121c, this.f32122d, this.f32123e, this.f32124f, onCTA)), composer, ((i10 >> 3) & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 28);
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

    public static final long a() {
        return f32118a;
    }

    @Composable
    @NotNull
    public static final at.r<BoxScope, Boolean, kt.i<? extends i.a>, Function1<? super a.AbstractC0597a.c, Unit>, Function0<Unit>, Composer, Integer, Unit> b(@Nullable Alignment alignment, @Nullable PaddingValues paddingValues, @Nullable String str, long j10, long j11, @Nullable String str2, @Nullable Composer composer, int i10, int i11) {
        Alignment alignment2;
        PaddingValues paddingValues2;
        String str3;
        long j12;
        long j13;
        String str4;
        composer.startReplaceableGroup(959702933);
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
            str3 = StringResources_androidKt.stringResource(com.moloco.sdk.q.f33617a, composer, 0);
        } else {
            str3 = str;
        }
        if ((i11 & 8) != 0) {
            j12 = Color.Companion.m1879getWhite0d7_KjU();
        } else {
            j12 = j10;
        }
        if ((i11 & 16) != 0) {
            j13 = f32118a;
        } else {
            j13 = j11;
        }
        if ((i11 & 32) != 0) {
            str4 = null;
        } else {
            str4 = str2;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(959702933, i10, -1, "com.moloco.sdk.internal.molocoCTAButton (MolocoVastCTA.kt:47)");
        }
        ComposableLambda composableLambda = ComposableLambdaKt.composableLambda(composer, -927135997, true, new a(alignment2, paddingValues2, str4, str3, j12, j13));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return composableLambda;
    }

    public static final Unit c(Modifier modifier, String str, String str2, long j10, long j11, Function0 function0, int i10, int i11, Composer composer, int i12) {
        d(modifier, str, str2, j10, j11, function0, composer, i10 | 1, i11);
        return Unit.f60915a;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0287  */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void d(androidx.compose.ui.Modifier r34, java.lang.String r35, final java.lang.String r36, final long r37, final long r39, final kotlin.jvm.functions.Function0<kotlin.Unit> r41, androidx.compose.runtime.Composer r42, final int r43, final int r44) {
        /*
            Method dump skipped, instructions count: 669
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.f0.d(androidx.compose.ui.Modifier, java.lang.String, java.lang.String, long, long, kotlin.jvm.functions.Function0, androidx.compose.runtime.Composer, int, int):void");
    }
}
