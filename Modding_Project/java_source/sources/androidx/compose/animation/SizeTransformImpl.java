package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AnimatedContent.kt */
@Metadata
@ExperimentalAnimationApi
/* loaded from: classes.dex */
final class SizeTransformImpl implements SizeTransform {
    private final boolean clip;
    @NotNull
    private final Function2<IntSize, IntSize, FiniteAnimationSpec<IntSize>> sizeAnimationSpec;

    /* JADX WARN: Multi-variable type inference failed */
    public SizeTransformImpl(boolean z10, @NotNull Function2<? super IntSize, ? super IntSize, ? extends FiniteAnimationSpec<IntSize>> sizeAnimationSpec) {
        Intrinsics.checkNotNullParameter(sizeAnimationSpec, "sizeAnimationSpec");
        this.clip = z10;
        this.sizeAnimationSpec = sizeAnimationSpec;
    }

    @Override // androidx.compose.animation.SizeTransform
    @NotNull
    /* renamed from: createAnimationSpec-TemP2vQ */
    public FiniteAnimationSpec<IntSize> mo123createAnimationSpecTemP2vQ(long j10, long j11) {
        return this.sizeAnimationSpec.invoke(IntSize.m4201boximpl(j10), IntSize.m4201boximpl(j11));
    }

    @Override // androidx.compose.animation.SizeTransform
    public boolean getClip() {
        return this.clip;
    }

    @NotNull
    public final Function2<IntSize, IntSize, FiniteAnimationSpec<IntSize>> getSizeAnimationSpec() {
        return this.sizeAnimationSpec;
    }

    public /* synthetic */ SizeTransformImpl(boolean z10, Function2 function2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? true : z10, function2);
    }
}
