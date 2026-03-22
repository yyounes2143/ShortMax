package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpec;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kt.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: Swipeable.kt */
@Metadata
/* loaded from: classes.dex */
public final class SwipeableState$animateTo$2<T> implements c<Map<Float, ? extends T>> {
    final /* synthetic */ AnimationSpec<Float> $anim;
    final /* synthetic */ T $targetValue;
    final /* synthetic */ SwipeableState<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SwipeableState$animateTo$2(T t10, SwipeableState<T> swipeableState, AnimationSpec<Float> animationSpec) {
        this.$targetValue = t10;
        this.this$0 = swipeableState;
        this.$anim = animationSpec;
    }

    @Override // kt.c
    public /* bridge */ /* synthetic */ Object emit(Object obj, rs.c cVar) {
        return emit((Map) ((Map) obj), (rs.c<? super Unit>) cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0120  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(@org.jetbrains.annotations.NotNull java.util.Map<java.lang.Float, ? extends T> r7, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r8) {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.SwipeableState$animateTo$2.emit(java.util.Map, rs.c):java.lang.Object");
    }
}
