package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui;

import androidx.compose.foundation.layout.RowScope;
import androidx.compose.material.ButtonDefaults;
import androidx.compose.material.ButtonKt;
import androidx.compose.material.MaterialTheme;
import androidx.compose.material.TextKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.z;
import com.ss.ttm.player.MediaPlayer;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
@SourceDebugExtension({"SMAP\nCountdownButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CountdownButton.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/CountdownButtonKt\n+ 2 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,111:1\n68#2,5:112\n73#2:143\n77#2:148\n75#3:117\n76#3,11:119\n89#3:147\n76#4:118\n460#5,13:130\n473#5,3:144\n*S KotlinDebug\n*F\n+ 1 CountdownButton.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/CountdownButtonKt\n*L\n38#1:112,5\n38#1:143\n38#1:148\n38#1:117\n38#1:119,11\n38#1:147\n38#1:118\n38#1:130,13\n38#1:144,3\n*E\n"})
/* loaded from: classes6.dex */
public final class y {

    /* loaded from: classes6.dex */
    public static final class a implements at.n<z, Composer, Integer, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Function0<Unit> f34995a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ boolean f34996b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ long f34997c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ long f34998d;

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ long f34999e;

        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.y$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0550a implements at.n<RowScope, Composer, Integer, Unit> {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ z f35000a;

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ long f35001b;

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ TextStyle f35002c;

            public C0550a(z zVar, long j10, TextStyle textStyle) {
                this.f35000a = zVar;
                this.f35001b = j10;
                this.f35002c = textStyle;
            }

            @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
            @Composable
            public final void a(RowScope TextButton, Composer composer, int i10) {
                Intrinsics.checkNotNullParameter(TextButton, "$this$TextButton");
                if ((i10 & 17) == 16 && composer.getSkipping()) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-291791758, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.CountdownButton.<anonymous>.<anonymous>.<anonymous> (CountdownButton.kt:84)");
                }
                TextKt.m1270TextfLXpl1I(((z.c) this.f35000a).a(), null, 0L, this.f35001b, null, null, null, 0L, null, TextAlign.m3950boximpl(TextAlign.Companion.m3957getCentere0LSkKk()), 0L, 0, false, 1, null, this.f35002c, composer, 0, 3072, 24054);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                a(rowScope, composer, num.intValue());
                return Unit.f60915a;
            }
        }

        public a(Function0<Unit> function0, boolean z10, long j10, long j11, long j12) {
            this.f34995a = function0;
            this.f34996b = z10;
            this.f34997c = j10;
            this.f34998d = j11;
            this.f34999e = j12;
        }

        @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
        @Composable
        public final void a(z buttonPart, Composer composer, int i10) {
            int i11;
            int i12;
            Intrinsics.checkNotNullParameter(buttonPart, "buttonPart");
            if ((i10 & 6) == 0) {
                if (composer.changed(buttonPart)) {
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
                ComposerKt.traceEventStart(-1264027403, i11, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.CountdownButton.<anonymous>.<anonymous> (CountdownButton.kt:56)");
            }
            TextStyle h62 = MaterialTheme.INSTANCE.getTypography(composer, MaterialTheme.$stable).getH6();
            if (buttonPart instanceof z.a) {
                composer.startReplaceableGroup(1000154410);
                composer.endReplaceableGroup();
            } else if (buttonPart instanceof z.b) {
                composer.startReplaceableGroup(1000496526);
                z.b bVar = (z.b) buttonPart;
                Painter e10 = bVar.e();
                long d10 = bVar.d();
                Shape b10 = bVar.b();
                long a10 = bVar.a();
                e0.b(e10, this.f34995a, null, this.f34996b, bVar.c(), this.f34997c, this.f34998d, d10, b10, a10, composer, 0, 4);
                composer.endReplaceableGroup();
            } else if (buttonPart instanceof z.c) {
                composer.startReplaceableGroup(-1491726713);
                Function0<Unit> function0 = this.f34995a;
                boolean z10 = this.f34996b;
                ButtonDefaults buttonDefaults = ButtonDefaults.INSTANCE;
                long j10 = this.f34997c;
                ButtonKt.TextButton(function0, null, z10, null, null, null, null, buttonDefaults.m962textButtonColorsRGew2ao(0L, j10, j10, composer, ButtonDefaults.$stable << 9, 1), null, ComposableLambdaKt.composableLambda(composer, -291791758, true, new C0550a(buttonPart, this.f34999e, h62)), composer, 805306368, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AUDIO_DEVICE_TYPE);
                composer.endReplaceableGroup();
            } else {
                composer.startReplaceableGroup(-1491758567);
                composer.endReplaceableGroup();
                throw new NoWhenBranchMatchedException();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // at.n
        public /* bridge */ /* synthetic */ Unit invoke(z zVar, Composer composer, Integer num) {
            a(zVar, composer, num.intValue());
            return Unit.f60915a;
        }
    }

    public static final Unit a(z zVar, Modifier modifier, Function0 function0, boolean z10, long j10, long j11, long j12, com.moloco.sdk.internal.ortb.model.i iVar, int i10, int i11, Composer composer, int i12) {
        b(zVar, modifier, function0, z10, j10, j11, j12, iVar, composer, i10 | 1, i11);
        return Unit.f60915a;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0236 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02a8  */
    /* JADX WARN: Removed duplicated region for block: B:137:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x011d  */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void b(@org.jetbrains.annotations.NotNull final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.z r24, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r25, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function0<kotlin.Unit> r26, final boolean r27, long r28, long r30, long r32, @org.jetbrains.annotations.Nullable final com.moloco.sdk.internal.ortb.model.i r34, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r35, final int r36, final int r37) {
        /*
            Method dump skipped, instructions count: 705
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.y.b(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.z, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function0, boolean, long, long, long, com.moloco.sdk.internal.ortb.model.i, androidx.compose.runtime.Composer, int, int):void");
    }
}
