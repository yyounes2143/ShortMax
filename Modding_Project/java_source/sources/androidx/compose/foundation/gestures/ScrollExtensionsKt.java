package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.MutatePriority;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: ScrollExtensions.kt */
@Metadata
/* loaded from: classes.dex */
public final class ScrollExtensionsKt {
    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object animateScrollBy(@org.jetbrains.annotations.NotNull androidx.compose.foundation.gestures.ScrollableState r7, float r8, @org.jetbrains.annotations.NotNull androidx.compose.animation.core.AnimationSpec<java.lang.Float> r9, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.Float> r10) {
        /*
            boolean r0 = r10 instanceof androidx.compose.foundation.gestures.ScrollExtensionsKt$animateScrollBy$1
            if (r0 == 0) goto L14
            r0 = r10
            androidx.compose.foundation.gestures.ScrollExtensionsKt$animateScrollBy$1 r0 = (androidx.compose.foundation.gestures.ScrollExtensionsKt$animateScrollBy$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.label = r1
        L12:
            r4 = r0
            goto L1a
        L14:
            androidx.compose.foundation.gestures.ScrollExtensionsKt$animateScrollBy$1 r0 = new androidx.compose.foundation.gestures.ScrollExtensionsKt$animateScrollBy$1
            r0.<init>(r10)
            goto L12
        L1a:
            java.lang.Object r10 = r4.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r4.label
            r2 = 1
            if (r1 == 0) goto L37
            if (r1 != r2) goto L2f
            java.lang.Object r7 = r4.L$0
            kotlin.jvm.internal.Ref$FloatRef r7 = (kotlin.jvm.internal.Ref.FloatRef) r7
            kotlin.f.b(r10)
            goto L55
        L2f:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L37:
            kotlin.f.b(r10)
            kotlin.jvm.internal.Ref$FloatRef r10 = new kotlin.jvm.internal.Ref$FloatRef
            r10.<init>()
            androidx.compose.foundation.gestures.ScrollExtensionsKt$animateScrollBy$2 r3 = new androidx.compose.foundation.gestures.ScrollExtensionsKt$animateScrollBy$2
            r1 = 0
            r3.<init>(r8, r9, r10, r1)
            r4.L$0 = r10
            r4.label = r2
            r2 = 0
            r5 = 1
            r6 = 0
            r1 = r7
            java.lang.Object r7 = androidx.compose.foundation.gestures.ScrollableState.scroll$default(r1, r2, r3, r4, r5, r6)
            if (r7 != r0) goto L54
            return r0
        L54:
            r7 = r10
        L55:
            float r7 = r7.element
            java.lang.Float r7 = kotlin.coroutines.jvm.internal.a.c(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ScrollExtensionsKt.animateScrollBy(androidx.compose.foundation.gestures.ScrollableState, float, androidx.compose.animation.core.AnimationSpec, rs.c):java.lang.Object");
    }

    public static /* synthetic */ Object animateScrollBy$default(ScrollableState scrollableState, float f10, AnimationSpec animationSpec, c cVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            animationSpec = AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null);
        }
        return animateScrollBy(scrollableState, f10, animationSpec, cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object scrollBy(@org.jetbrains.annotations.NotNull androidx.compose.foundation.gestures.ScrollableState r7, float r8, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.Float> r9) {
        /*
            boolean r0 = r9 instanceof androidx.compose.foundation.gestures.ScrollExtensionsKt$scrollBy$1
            if (r0 == 0) goto L14
            r0 = r9
            androidx.compose.foundation.gestures.ScrollExtensionsKt$scrollBy$1 r0 = (androidx.compose.foundation.gestures.ScrollExtensionsKt$scrollBy$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.label = r1
        L12:
            r4 = r0
            goto L1a
        L14:
            androidx.compose.foundation.gestures.ScrollExtensionsKt$scrollBy$1 r0 = new androidx.compose.foundation.gestures.ScrollExtensionsKt$scrollBy$1
            r0.<init>(r9)
            goto L12
        L1a:
            java.lang.Object r9 = r4.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r4.label
            r2 = 1
            if (r1 == 0) goto L37
            if (r1 != r2) goto L2f
            java.lang.Object r7 = r4.L$0
            kotlin.jvm.internal.Ref$FloatRef r7 = (kotlin.jvm.internal.Ref.FloatRef) r7
            kotlin.f.b(r9)
            goto L55
        L2f:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L37:
            kotlin.f.b(r9)
            kotlin.jvm.internal.Ref$FloatRef r9 = new kotlin.jvm.internal.Ref$FloatRef
            r9.<init>()
            androidx.compose.foundation.gestures.ScrollExtensionsKt$scrollBy$2 r3 = new androidx.compose.foundation.gestures.ScrollExtensionsKt$scrollBy$2
            r1 = 0
            r3.<init>(r9, r8, r1)
            r4.L$0 = r9
            r4.label = r2
            r2 = 0
            r5 = 1
            r6 = 0
            r1 = r7
            java.lang.Object r7 = androidx.compose.foundation.gestures.ScrollableState.scroll$default(r1, r2, r3, r4, r5, r6)
            if (r7 != r0) goto L54
            return r0
        L54:
            r7 = r9
        L55:
            float r7 = r7.element
            java.lang.Float r7 = kotlin.coroutines.jvm.internal.a.c(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ScrollExtensionsKt.scrollBy(androidx.compose.foundation.gestures.ScrollableState, float, rs.c):java.lang.Object");
    }

    @Nullable
    public static final Object stopScroll(@NotNull ScrollableState scrollableState, @NotNull MutatePriority mutatePriority, @NotNull c<? super Unit> cVar) {
        Object scroll = scrollableState.scroll(mutatePriority, new ScrollExtensionsKt$stopScroll$2(null), cVar);
        if (scroll == a.f()) {
            return scroll;
        }
        return Unit.f60915a;
    }

    public static /* synthetic */ Object stopScroll$default(ScrollableState scrollableState, MutatePriority mutatePriority, c cVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            mutatePriority = MutatePriority.Default;
        }
        return stopScroll(scrollableState, mutatePriority, cVar);
    }
}
