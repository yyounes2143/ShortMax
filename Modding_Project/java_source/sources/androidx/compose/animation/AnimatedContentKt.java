package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AnimatedContent.kt */
@Metadata
/* loaded from: classes.dex */
public final class AnimatedContentKt {
    /* JADX WARN: Removed duplicated region for block: B:104:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:155:? A[RETURN, SYNTHETIC] */
    @androidx.compose.runtime.Composable
    @androidx.compose.animation.ExperimentalAnimationApi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <S> void AnimatedContent(final S r16, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r17, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function1<? super androidx.compose.animation.AnimatedContentScope<S>, androidx.compose.animation.ContentTransform> r18, @org.jetbrains.annotations.Nullable androidx.compose.ui.Alignment r19, @org.jetbrains.annotations.NotNull final at.o<? super androidx.compose.animation.AnimatedVisibilityScope, ? super S, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r20, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r21, final int r22, final int r23) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.AnimatedContentKt.AnimatedContent(java.lang.Object, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function1, androidx.compose.ui.Alignment, at.o, androidx.compose.runtime.Composer, int, int):void");
    }

    @ExperimentalAnimationApi
    @NotNull
    public static final SizeTransform SizeTransform(boolean z10, @NotNull Function2<? super IntSize, ? super IntSize, ? extends FiniteAnimationSpec<IntSize>> sizeAnimationSpec) {
        Intrinsics.checkNotNullParameter(sizeAnimationSpec, "sizeAnimationSpec");
        return new SizeTransformImpl(z10, sizeAnimationSpec);
    }

    public static /* synthetic */ SizeTransform SizeTransform$default(boolean z10, Function2 function2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        if ((i10 & 2) != 0) {
            function2 = new Function2<IntSize, IntSize, SpringSpec<IntSize>>() { // from class: androidx.compose.animation.AnimatedContentKt$SizeTransform$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ SpringSpec<IntSize> invoke(IntSize intSize, IntSize intSize2) {
                    return m41invokeTemP2vQ(intSize.m4213unboximpl(), intSize2.m4213unboximpl());
                }

                @NotNull
                /* renamed from: invoke-TemP2vQ  reason: not valid java name */
                public final SpringSpec<IntSize> m41invokeTemP2vQ(long j10, long j11) {
                    return AnimationSpecKt.spring$default(0.0f, 0.0f, IntSize.m4201boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntSize.Companion)), 3, null);
                }
            };
        }
        return SizeTransform(z10, function2);
    }

    @ExperimentalAnimationApi
    @NotNull
    public static final ContentTransform with(@NotNull EnterTransition enterTransition, @NotNull ExitTransition exit) {
        Intrinsics.checkNotNullParameter(enterTransition, "<this>");
        Intrinsics.checkNotNullParameter(exit, "exit");
        return new ContentTransform(enterTransition, exit, 0.0f, null, 12, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:192:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x01f5  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x02b0  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x02f1  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x0301  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x034f  */
    /* JADX WARN: Removed duplicated region for block: B:323:0x038b  */
    /* JADX WARN: Removed duplicated region for block: B:325:0x01f1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:331:? A[RETURN, SYNTHETIC] */
    @androidx.compose.runtime.Composable
    @androidx.compose.animation.ExperimentalAnimationApi
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <S> void AnimatedContent(@org.jetbrains.annotations.NotNull final androidx.compose.animation.core.Transition<S> r20, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r21, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function1<? super androidx.compose.animation.AnimatedContentScope<S>, androidx.compose.animation.ContentTransform> r22, @org.jetbrains.annotations.Nullable androidx.compose.ui.Alignment r23, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function1<? super S, ? extends java.lang.Object> r24, @org.jetbrains.annotations.NotNull final at.o<? super androidx.compose.animation.AnimatedVisibilityScope, ? super S, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r25, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r26, final int r27, final int r28) {
        /*
            Method dump skipped, instructions count: 925
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.AnimatedContentKt.AnimatedContent(androidx.compose.animation.core.Transition, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function1, androidx.compose.ui.Alignment, kotlin.jvm.functions.Function1, at.o, androidx.compose.runtime.Composer, int, int):void");
    }
}
