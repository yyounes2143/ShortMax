package androidx.compose.ui.layout;

import bt.a;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import org.jetbrains.annotations.NotNull;
/* compiled from: AlignmentLine.kt */
@Metadata
/* loaded from: classes.dex */
/* synthetic */ class AlignmentLineKt$FirstBaseline$1 extends FunctionReferenceImpl implements Function2<Integer, Integer, Integer> {
    public static final AlignmentLineKt$FirstBaseline$1 INSTANCE = new AlignmentLineKt$FirstBaseline$1();

    AlignmentLineKt$FirstBaseline$1() {
        super(2, a.class, "min", "min(II)I", 1);
    }

    @NotNull
    public final Integer invoke(int i10, int i11) {
        return Integer.valueOf(Math.min(i10, i11));
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Integer invoke(Integer num, Integer num2) {
        return invoke(num.intValue(), num2.intValue());
    }
}
