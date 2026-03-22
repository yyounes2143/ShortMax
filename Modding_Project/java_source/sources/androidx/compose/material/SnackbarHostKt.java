package androidx.compose.material;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.platform.AccessibilityManager;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SnackbarHost.kt */
@Metadata
/* loaded from: classes.dex */
public final class SnackbarHostKt {
    private static final int SnackbarFadeInMillis = 150;
    private static final int SnackbarFadeOutMillis = 75;
    private static final int SnackbarInBetweenDelayMillis = 0;

    /* compiled from: SnackbarHost.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SnackbarDuration.values().length];
            iArr[SnackbarDuration.Indefinite.ordinal()] = 1;
            iArr[SnackbarDuration.Long.ordinal()] = 2;
            iArr[SnackbarDuration.Short.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01c6 A[LOOP:2: B:67:0x01c4->B:68:0x01c6, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:78:? A[RETURN, SYNTHETIC] */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void FadeInFadeOutWithScale(final androidx.compose.material.SnackbarData r17, androidx.compose.ui.Modifier r18, final at.n<? super androidx.compose.material.SnackbarData, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r19, androidx.compose.runtime.Composer r20, final int r21, final int r22) {
        /*
            Method dump skipped, instructions count: 546
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.SnackbarHostKt.FadeInFadeOutWithScale(androidx.compose.material.SnackbarData, androidx.compose.ui.Modifier, at.n, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:53:? A[RETURN, SYNTHETIC] */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void SnackbarHost(@org.jetbrains.annotations.NotNull final androidx.compose.material.SnackbarHostState r12, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r13, @org.jetbrains.annotations.Nullable at.n<? super androidx.compose.material.SnackbarData, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r14, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r15, final int r16, final int r17) {
        /*
            r1 = r12
            r4 = r16
            java.lang.String r0 = "hostState"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r0)
            r0 = 431012348(0x19b0b9fc, float:1.8273092E-23)
            r2 = r15
            androidx.compose.runtime.Composer r0 = r15.startRestartGroup(r0)
            r2 = r17 & 1
            if (r2 == 0) goto L17
            r2 = r4 | 6
            goto L27
        L17:
            r2 = r4 & 14
            if (r2 != 0) goto L26
            boolean r2 = r0.changed(r12)
            if (r2 == 0) goto L23
            r2 = 4
            goto L24
        L23:
            r2 = 2
        L24:
            r2 = r2 | r4
            goto L27
        L26:
            r2 = r4
        L27:
            r3 = r17 & 2
            if (r3 == 0) goto L2f
            r2 = r2 | 48
        L2d:
            r5 = r13
            goto L40
        L2f:
            r5 = r4 & 112(0x70, float:1.57E-43)
            if (r5 != 0) goto L2d
            r5 = r13
            boolean r6 = r0.changed(r13)
            if (r6 == 0) goto L3d
            r6 = 32
            goto L3f
        L3d:
            r6 = 16
        L3f:
            r2 = r2 | r6
        L40:
            r6 = r17 & 4
            if (r6 == 0) goto L48
            r2 = r2 | 384(0x180, float:5.38E-43)
        L46:
            r7 = r14
            goto L59
        L48:
            r7 = r4 & 896(0x380, float:1.256E-42)
            if (r7 != 0) goto L46
            r7 = r14
            boolean r8 = r0.changed(r14)
            if (r8 == 0) goto L56
            r8 = 256(0x100, float:3.59E-43)
            goto L58
        L56:
            r8 = 128(0x80, float:1.794E-43)
        L58:
            r2 = r2 | r8
        L59:
            r8 = r2 & 731(0x2db, float:1.024E-42)
            r9 = 146(0x92, float:2.05E-43)
            if (r8 != r9) goto L6c
            boolean r8 = r0.getSkipping()
            if (r8 != 0) goto L66
            goto L6c
        L66:
            r0.skipToGroupEnd()
            r2 = r5
            r3 = r7
            goto La4
        L6c:
            if (r3 == 0) goto L71
            androidx.compose.ui.Modifier$Companion r3 = androidx.compose.ui.Modifier.Companion
            goto L72
        L71:
            r3 = r5
        L72:
            if (r6 == 0) goto L7c
            androidx.compose.material.ComposableSingletons$SnackbarHostKt r5 = androidx.compose.material.ComposableSingletons$SnackbarHostKt.INSTANCE
            at.n r5 = r5.m1033getLambda1$material_release()
            r11 = r5
            goto L7d
        L7c:
            r11 = r7
        L7d:
            androidx.compose.material.SnackbarData r5 = r12.getCurrentSnackbarData()
            androidx.compose.runtime.ProvidableCompositionLocal r6 = androidx.compose.ui.platform.CompositionLocalsKt.getLocalAccessibilityManager()
            java.lang.Object r6 = r0.consume(r6)
            androidx.compose.ui.platform.AccessibilityManager r6 = (androidx.compose.ui.platform.AccessibilityManager) r6
            androidx.compose.material.SnackbarHostKt$SnackbarHost$1 r7 = new androidx.compose.material.SnackbarHostKt$SnackbarHost$1
            r8 = 0
            r7.<init>(r5, r6, r8)
            r6 = 0
            androidx.compose.runtime.EffectsKt.LaunchedEffect(r5, r7, r0, r6)
            androidx.compose.material.SnackbarData r5 = r12.getCurrentSnackbarData()
            r9 = r2 & 1008(0x3f0, float:1.413E-42)
            r10 = 0
            r6 = r3
            r7 = r11
            r8 = r0
            FadeInFadeOutWithScale(r5, r6, r7, r8, r9, r10)
            r2 = r3
            r3 = r11
        La4:
            androidx.compose.runtime.ScopeUpdateScope r6 = r0.endRestartGroup()
            if (r6 != 0) goto Lab
            goto Lb9
        Lab:
            androidx.compose.material.SnackbarHostKt$SnackbarHost$2 r7 = new androidx.compose.material.SnackbarHostKt$SnackbarHost$2
            r0 = r7
            r1 = r12
            r4 = r16
            r5 = r17
            r0.<init>()
            r6.updateScope(r7)
        Lb9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.SnackbarHostKt.SnackbarHost(androidx.compose.material.SnackbarHostState, androidx.compose.ui.Modifier, at.n, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    public static final State<Float> animatedOpacity(AnimationSpec<Float> animationSpec, boolean z10, Function0<Unit> function0, Composer composer, int i10, int i11) {
        float f10;
        composer.startReplaceableGroup(1016418159);
        if ((i11 & 4) != 0) {
            function0 = new Function0<Unit>() { // from class: androidx.compose.material.SnackbarHostKt$animatedOpacity$1
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.f60915a;
                }
            };
        }
        Function0<Unit> function02 = function0;
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.Companion.getEmpty()) {
            if (!z10) {
                f10 = 1.0f;
            } else {
                f10 = 0.0f;
            }
            rememberedValue = AnimatableKt.Animatable$default(f10, 0.0f, 2, null);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        Animatable animatable = (Animatable) rememberedValue;
        EffectsKt.LaunchedEffect(Boolean.valueOf(z10), new SnackbarHostKt$animatedOpacity$2(animatable, z10, animationSpec, function02, null), composer, (i10 >> 3) & 14);
        State<Float> asState = animatable.asState();
        composer.endReplaceableGroup();
        return asState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    public static final State<Float> animatedScale(AnimationSpec<Float> animationSpec, boolean z10, Composer composer, int i10) {
        float f10;
        composer.startReplaceableGroup(2003504988);
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.Companion.getEmpty()) {
            if (!z10) {
                f10 = 1.0f;
            } else {
                f10 = 0.8f;
            }
            rememberedValue = AnimatableKt.Animatable$default(f10, 0.0f, 2, null);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        Animatable animatable = (Animatable) rememberedValue;
        EffectsKt.LaunchedEffect(Boolean.valueOf(z10), new SnackbarHostKt$animatedScale$1(animatable, z10, animationSpec, null), composer, (i10 >> 3) & 14);
        State<Float> asState = animatable.asState();
        composer.endReplaceableGroup();
        return asState;
    }

    public static final long toMillis(@NotNull SnackbarDuration snackbarDuration, boolean z10, @Nullable AccessibilityManager accessibilityManager) {
        long j10;
        Intrinsics.checkNotNullParameter(snackbarDuration, "<this>");
        int i10 = WhenMappings.$EnumSwitchMapping$0[snackbarDuration.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    j10 = 4000;
                } else {
                    throw new NoWhenBranchMatchedException();
                }
            } else {
                j10 = 10000;
            }
        } else {
            j10 = Long.MAX_VALUE;
        }
        long j11 = j10;
        if (accessibilityManager == null) {
            return j11;
        }
        return accessibilityManager.calculateRecommendedTimeoutMillis(j11, true, true, z10);
    }
}
