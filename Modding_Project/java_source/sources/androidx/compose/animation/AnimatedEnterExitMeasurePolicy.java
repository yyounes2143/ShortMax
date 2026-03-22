package androidx.compose.animation;

import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.j;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AnimatedVisibility.kt */
@Metadata
/* loaded from: classes.dex */
public final class AnimatedEnterExitMeasurePolicy implements MeasurePolicy {
    @NotNull
    private final AnimatedVisibilityScopeImpl scope;

    public AnimatedEnterExitMeasurePolicy(@NotNull AnimatedVisibilityScopeImpl scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.scope = scope;
    }

    @NotNull
    public final AnimatedVisibilityScopeImpl getScope() {
        return this.scope;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int maxIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, final int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        Integer num = (Integer) j.H(j.F(CollectionsKt.e0(measurables), new Function1<IntrinsicMeasurable, Integer>() { // from class: androidx.compose.animation.AnimatedEnterExitMeasurePolicy$maxIntrinsicHeight$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Integer invoke(@NotNull IntrinsicMeasurable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Integer.valueOf(it.maxIntrinsicHeight(i10));
            }
        }));
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int maxIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, final int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        Integer num = (Integer) j.H(j.F(CollectionsKt.e0(measurables), new Function1<IntrinsicMeasurable, Integer>() { // from class: androidx.compose.animation.AnimatedEnterExitMeasurePolicy$maxIntrinsicWidth$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Integer invoke(@NotNull IntrinsicMeasurable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Integer.valueOf(it.maxIntrinsicWidth(i10));
            }
        }));
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v16 */
    @Override // androidx.compose.ui.layout.MeasurePolicy
    @NotNull
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo42measure3p2s80s(@NotNull MeasureScope measure, @NotNull List<? extends Measurable> measurables, long j10) {
        Object obj;
        int i10;
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        List<? extends Measurable> list = measurables;
        final ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
        for (Measurable measurable : list) {
            arrayList.add(measurable.mo3335measureBRTryo0(j10));
        }
        Placeable placeable = null;
        int i11 = 1;
        int i12 = 0;
        if (arrayList.isEmpty()) {
            obj = null;
        } else {
            obj = arrayList.get(0);
            int width = ((Placeable) obj).getWidth();
            int p10 = CollectionsKt.p(arrayList);
            if (1 <= p10) {
                int i13 = 1;
                while (true) {
                    Object obj2 = arrayList.get(i13);
                    int width2 = ((Placeable) obj2).getWidth();
                    if (width < width2) {
                        obj = obj2;
                        width = width2;
                    }
                    if (i13 == p10) {
                        break;
                    }
                    i13++;
                }
            }
        }
        Placeable placeable2 = (Placeable) obj;
        if (placeable2 != null) {
            i10 = placeable2.getWidth();
        } else {
            i10 = 0;
        }
        if (!arrayList.isEmpty()) {
            Object obj3 = arrayList.get(0);
            int height = ((Placeable) obj3).getHeight();
            int p11 = CollectionsKt.p(arrayList);
            Object obj4 = obj3;
            if (1 <= p11) {
                while (true) {
                    Object obj5 = arrayList.get(i11);
                    int height2 = ((Placeable) obj5).getHeight();
                    obj3 = obj4;
                    if (height < height2) {
                        obj3 = obj5;
                        height = height2;
                    }
                    if (i11 == p11) {
                        break;
                    }
                    i11++;
                    obj4 = obj3;
                }
            }
            placeable = obj3;
        }
        Placeable placeable3 = placeable;
        if (placeable3 != null) {
            i12 = placeable3.getHeight();
        }
        int i14 = i12;
        this.scope.getTargetSize$animation_release().setValue(IntSize.m4201boximpl(IntSizeKt.IntSize(i10, i14)));
        return MeasureScope.layout$default(measure, i10, i14, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.AnimatedEnterExitMeasurePolicy$measure$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                invoke2(placementScope);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Placeable.PlacementScope layout) {
                Intrinsics.checkNotNullParameter(layout, "$this$layout");
                List<Placeable> list2 = arrayList;
                int size = list2.size();
                for (int i15 = 0; i15 < size; i15++) {
                    Placeable.PlacementScope.place$default(layout, list2.get(i15), 0, 0, 0.0f, 4, null);
                }
            }
        }, 4, null);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int minIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, final int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        Integer num = (Integer) j.H(j.F(CollectionsKt.e0(measurables), new Function1<IntrinsicMeasurable, Integer>() { // from class: androidx.compose.animation.AnimatedEnterExitMeasurePolicy$minIntrinsicHeight$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Integer invoke(@NotNull IntrinsicMeasurable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Integer.valueOf(it.minIntrinsicHeight(i10));
            }
        }));
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int minIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, final int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        Integer num = (Integer) j.H(j.F(CollectionsKt.e0(measurables), new Function1<IntrinsicMeasurable, Integer>() { // from class: androidx.compose.animation.AnimatedEnterExitMeasurePolicy$minIntrinsicWidth$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Integer invoke(@NotNull IntrinsicMeasurable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Integer.valueOf(it.minIntrinsicWidth(i10));
            }
        }));
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }
}
