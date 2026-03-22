package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.IntrinsicMeasurable;
import at.n;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: RowColumnImpl.kt */
@Metadata
/* loaded from: classes.dex */
final class IntrinsicMeasureBlocks {
    @NotNull
    public static final IntrinsicMeasureBlocks INSTANCE = new IntrinsicMeasureBlocks();
    @NotNull
    private static final n<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> HorizontalMinWidth = new n<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$HorizontalMinWidth$1
        @Override // at.n
        public /* bridge */ /* synthetic */ Integer invoke(List<? extends IntrinsicMeasurable> list, Integer num, Integer num2) {
            return invoke(list, num.intValue(), num2.intValue());
        }

        @NotNull
        public final Integer invoke(@NotNull List<? extends IntrinsicMeasurable> measurables, int i10, int i11) {
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            AnonymousClass1 anonymousClass1 = new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$HorizontalMinWidth$1.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                @NotNull
                public final Integer invoke(@NotNull IntrinsicMeasurable intrinsicSize, int i12) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.minIntrinsicWidth(i12));
                }
            };
            AnonymousClass2 anonymousClass2 = new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$HorizontalMinWidth$1.2
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                @NotNull
                public final Integer invoke(@NotNull IntrinsicMeasurable intrinsicSize, int i12) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.maxIntrinsicHeight(i12));
                }
            };
            LayoutOrientation layoutOrientation = LayoutOrientation.Horizontal;
            return Integer.valueOf(RowColumnImplKt.access$intrinsicSize(measurables, anonymousClass1, anonymousClass2, i10, i11, layoutOrientation, layoutOrientation));
        }
    };
    @NotNull
    private static final n<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> VerticalMinWidth = new n<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$VerticalMinWidth$1
        @Override // at.n
        public /* bridge */ /* synthetic */ Integer invoke(List<? extends IntrinsicMeasurable> list, Integer num, Integer num2) {
            return invoke(list, num.intValue(), num2.intValue());
        }

        @NotNull
        public final Integer invoke(@NotNull List<? extends IntrinsicMeasurable> measurables, int i10, int i11) {
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            return Integer.valueOf(RowColumnImplKt.access$intrinsicSize(measurables, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$VerticalMinWidth$1.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                @NotNull
                public final Integer invoke(@NotNull IntrinsicMeasurable intrinsicSize, int i12) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.minIntrinsicWidth(i12));
                }
            }, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$VerticalMinWidth$1.2
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                @NotNull
                public final Integer invoke(@NotNull IntrinsicMeasurable intrinsicSize, int i12) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.maxIntrinsicHeight(i12));
                }
            }, i10, i11, LayoutOrientation.Vertical, LayoutOrientation.Horizontal));
        }
    };
    @NotNull
    private static final n<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> HorizontalMinHeight = new n<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$HorizontalMinHeight$1
        @Override // at.n
        public /* bridge */ /* synthetic */ Integer invoke(List<? extends IntrinsicMeasurable> list, Integer num, Integer num2) {
            return invoke(list, num.intValue(), num2.intValue());
        }

        @NotNull
        public final Integer invoke(@NotNull List<? extends IntrinsicMeasurable> measurables, int i10, int i11) {
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            return Integer.valueOf(RowColumnImplKt.access$intrinsicSize(measurables, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$HorizontalMinHeight$1.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                @NotNull
                public final Integer invoke(@NotNull IntrinsicMeasurable intrinsicSize, int i12) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.minIntrinsicHeight(i12));
                }
            }, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$HorizontalMinHeight$1.2
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                @NotNull
                public final Integer invoke(@NotNull IntrinsicMeasurable intrinsicSize, int i12) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.maxIntrinsicWidth(i12));
                }
            }, i10, i11, LayoutOrientation.Horizontal, LayoutOrientation.Vertical));
        }
    };
    @NotNull
    private static final n<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> VerticalMinHeight = new n<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$VerticalMinHeight$1
        @Override // at.n
        public /* bridge */ /* synthetic */ Integer invoke(List<? extends IntrinsicMeasurable> list, Integer num, Integer num2) {
            return invoke(list, num.intValue(), num2.intValue());
        }

        @NotNull
        public final Integer invoke(@NotNull List<? extends IntrinsicMeasurable> measurables, int i10, int i11) {
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            AnonymousClass1 anonymousClass1 = new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$VerticalMinHeight$1.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                @NotNull
                public final Integer invoke(@NotNull IntrinsicMeasurable intrinsicSize, int i12) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.minIntrinsicHeight(i12));
                }
            };
            AnonymousClass2 anonymousClass2 = new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$VerticalMinHeight$1.2
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                @NotNull
                public final Integer invoke(@NotNull IntrinsicMeasurable intrinsicSize, int i12) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.maxIntrinsicWidth(i12));
                }
            };
            LayoutOrientation layoutOrientation = LayoutOrientation.Vertical;
            return Integer.valueOf(RowColumnImplKt.access$intrinsicSize(measurables, anonymousClass1, anonymousClass2, i10, i11, layoutOrientation, layoutOrientation));
        }
    };
    @NotNull
    private static final n<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> HorizontalMaxWidth = new n<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$HorizontalMaxWidth$1
        @Override // at.n
        public /* bridge */ /* synthetic */ Integer invoke(List<? extends IntrinsicMeasurable> list, Integer num, Integer num2) {
            return invoke(list, num.intValue(), num2.intValue());
        }

        @NotNull
        public final Integer invoke(@NotNull List<? extends IntrinsicMeasurable> measurables, int i10, int i11) {
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            AnonymousClass1 anonymousClass1 = new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$HorizontalMaxWidth$1.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                @NotNull
                public final Integer invoke(@NotNull IntrinsicMeasurable intrinsicSize, int i12) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.maxIntrinsicWidth(i12));
                }
            };
            AnonymousClass2 anonymousClass2 = new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$HorizontalMaxWidth$1.2
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                @NotNull
                public final Integer invoke(@NotNull IntrinsicMeasurable intrinsicSize, int i12) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.maxIntrinsicHeight(i12));
                }
            };
            LayoutOrientation layoutOrientation = LayoutOrientation.Horizontal;
            return Integer.valueOf(RowColumnImplKt.access$intrinsicSize(measurables, anonymousClass1, anonymousClass2, i10, i11, layoutOrientation, layoutOrientation));
        }
    };
    @NotNull
    private static final n<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> VerticalMaxWidth = new n<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$VerticalMaxWidth$1
        @Override // at.n
        public /* bridge */ /* synthetic */ Integer invoke(List<? extends IntrinsicMeasurable> list, Integer num, Integer num2) {
            return invoke(list, num.intValue(), num2.intValue());
        }

        @NotNull
        public final Integer invoke(@NotNull List<? extends IntrinsicMeasurable> measurables, int i10, int i11) {
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            return Integer.valueOf(RowColumnImplKt.access$intrinsicSize(measurables, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$VerticalMaxWidth$1.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                @NotNull
                public final Integer invoke(@NotNull IntrinsicMeasurable intrinsicSize, int i12) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.maxIntrinsicWidth(i12));
                }
            }, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$VerticalMaxWidth$1.2
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                @NotNull
                public final Integer invoke(@NotNull IntrinsicMeasurable intrinsicSize, int i12) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.maxIntrinsicHeight(i12));
                }
            }, i10, i11, LayoutOrientation.Vertical, LayoutOrientation.Horizontal));
        }
    };
    @NotNull
    private static final n<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> HorizontalMaxHeight = new n<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$HorizontalMaxHeight$1
        @Override // at.n
        public /* bridge */ /* synthetic */ Integer invoke(List<? extends IntrinsicMeasurable> list, Integer num, Integer num2) {
            return invoke(list, num.intValue(), num2.intValue());
        }

        @NotNull
        public final Integer invoke(@NotNull List<? extends IntrinsicMeasurable> measurables, int i10, int i11) {
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            return Integer.valueOf(RowColumnImplKt.access$intrinsicSize(measurables, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$HorizontalMaxHeight$1.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                @NotNull
                public final Integer invoke(@NotNull IntrinsicMeasurable intrinsicSize, int i12) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.maxIntrinsicHeight(i12));
                }
            }, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$HorizontalMaxHeight$1.2
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                @NotNull
                public final Integer invoke(@NotNull IntrinsicMeasurable intrinsicSize, int i12) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.maxIntrinsicWidth(i12));
                }
            }, i10, i11, LayoutOrientation.Horizontal, LayoutOrientation.Vertical));
        }
    };
    @NotNull
    private static final n<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> VerticalMaxHeight = new n<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$VerticalMaxHeight$1
        @Override // at.n
        public /* bridge */ /* synthetic */ Integer invoke(List<? extends IntrinsicMeasurable> list, Integer num, Integer num2) {
            return invoke(list, num.intValue(), num2.intValue());
        }

        @NotNull
        public final Integer invoke(@NotNull List<? extends IntrinsicMeasurable> measurables, int i10, int i11) {
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            AnonymousClass1 anonymousClass1 = new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$VerticalMaxHeight$1.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                @NotNull
                public final Integer invoke(@NotNull IntrinsicMeasurable intrinsicSize, int i12) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.maxIntrinsicHeight(i12));
                }
            };
            AnonymousClass2 anonymousClass2 = new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$VerticalMaxHeight$1.2
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                @NotNull
                public final Integer invoke(@NotNull IntrinsicMeasurable intrinsicSize, int i12) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.maxIntrinsicWidth(i12));
                }
            };
            LayoutOrientation layoutOrientation = LayoutOrientation.Vertical;
            return Integer.valueOf(RowColumnImplKt.access$intrinsicSize(measurables, anonymousClass1, anonymousClass2, i10, i11, layoutOrientation, layoutOrientation));
        }
    };

    private IntrinsicMeasureBlocks() {
    }

    @NotNull
    public final n<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> getHorizontalMaxHeight() {
        return HorizontalMaxHeight;
    }

    @NotNull
    public final n<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> getHorizontalMaxWidth() {
        return HorizontalMaxWidth;
    }

    @NotNull
    public final n<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> getHorizontalMinHeight() {
        return HorizontalMinHeight;
    }

    @NotNull
    public final n<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> getHorizontalMinWidth() {
        return HorizontalMinWidth;
    }

    @NotNull
    public final n<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> getVerticalMaxHeight() {
        return VerticalMaxHeight;
    }

    @NotNull
    public final n<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> getVerticalMaxWidth() {
        return VerticalMaxWidth;
    }

    @NotNull
    public final n<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> getVerticalMinHeight() {
        return VerticalMinHeight;
    }

    @NotNull
    public final n<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> getVerticalMinWidth() {
        return VerticalMinWidth;
    }
}
