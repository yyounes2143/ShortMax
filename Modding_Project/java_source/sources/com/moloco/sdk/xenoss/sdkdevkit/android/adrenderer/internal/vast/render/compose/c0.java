package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose;

import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material.TextKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.unit.Dp;
import coil.compose.SingletonAsyncImageKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
@SourceDebugExtension({"SMAP\nVastCTA.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastCTA.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastCTAKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,68:1\n155#2:69\n155#2:70\n155#2:71\n*S KotlinDebug\n*F\n+ 1 VastCTA.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastCTAKt\n*L\n33#1:69\n34#1:70\n55#1:71\n*E\n"})
/* loaded from: classes6.dex */
public final class c0 {

    /* renamed from: a  reason: collision with root package name */
    public static final float f35839a = Dp.m4049constructorimpl(4);

    @SourceDebugExtension({"SMAP\nVastCTA.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastCTA.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastCTAKt$VastCTA$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,68:1\n155#2:69\n*S KotlinDebug\n*F\n+ 1 VastCTA.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastCTAKt$VastCTA$1\n*L\n43#1:69\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class a implements at.n<RowScope, Composer, Integer, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ String f35840a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ String f35841b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ long f35842c;

        public a(String str, String str2, long j10) {
            this.f35840a = str;
            this.f35841b = str2;
            this.f35842c = j10;
        }

        @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
        @Composable
        public final void a(RowScope OutlinedButton, Composer composer, int i10) {
            Intrinsics.checkNotNullParameter(OutlinedButton, "$this$OutlinedButton");
            if ((i10 & 17) == 16 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1553541117, i10, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.VastCTA.<anonymous> (VastCTA.kt:38)");
            }
            String str = this.f35840a;
            composer.startReplaceableGroup(-1632172008);
            if (str != null) {
                String str2 = this.f35840a;
                Modifier.Companion companion = Modifier.Companion;
                SingletonAsyncImageKt.a(str2, null, SizeKt.m488size3ABfNKs(ClipKt.clip(companion, RoundedCornerShapeKt.m697RoundedCornerShape0680j_4(c0.f35839a)), Dp.m4049constructorimpl(36)), null, null, null, null, 0.0f, null, 0, composer, 48, 1016);
                SpacerKt.Spacer(SizeKt.m493width3ABfNKs(companion, c0.f35839a), composer, 6);
                Unit unit = Unit.f60915a;
            }
            composer.endReplaceableGroup();
            TextKt.m1270TextfLXpl1I(this.f35841b, null, this.f35842c, 0L, null, null, null, 0L, null, null, 0L, 0, false, 1, null, null, composer, 0, 3072, 57338);
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

    public static final Unit b(Modifier modifier, String str, String str2, long j10, Function0 function0, int i10, int i11, Composer composer, int i12) {
        c(modifier, str, str2, j10, function0, composer, i10 | 1, i11);
        return Unit.f60915a;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:91:? A[RETURN, SYNTHETIC] */
    @androidx.compose.runtime.ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void c(@org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r23, @org.jetbrains.annotations.Nullable java.lang.String r24, @org.jetbrains.annotations.NotNull final java.lang.String r25, long r26, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function0<kotlin.Unit> r28, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r29, final int r30, final int r31) {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.c0.c(androidx.compose.ui.Modifier, java.lang.String, java.lang.String, long, kotlin.jvm.functions.Function0, androidx.compose.runtime.Composer, int, int):void");
    }
}
