package androidx.compose.ui.layout;

import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: RootMeasurePolicy.kt */
@Metadata
/* loaded from: classes.dex */
public final class RootMeasurePolicy extends LayoutNode.NoIntrinsicsMeasurePolicy {
    @NotNull
    public static final RootMeasurePolicy INSTANCE = new RootMeasurePolicy();

    private RootMeasurePolicy() {
        super("Undefined intrinsics block and it is required");
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    @NotNull
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo42measure3p2s80s(@NotNull MeasureScope measure, @NotNull List<? extends Measurable> measurables, long j10) {
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        if (measurables.isEmpty()) {
            return MeasureScope.layout$default(measure, Constraints.m4007getMinWidthimpl(j10), Constraints.m4006getMinHeightimpl(j10), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.layout.RootMeasurePolicy$measure$1
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull Placeable.PlacementScope layout) {
                    Intrinsics.checkNotNullParameter(layout, "$this$layout");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                    invoke2(placementScope);
                    return Unit.f60915a;
                }
            }, 4, null);
        }
        if (measurables.size() == 1) {
            final Placeable mo3335measureBRTryo0 = measurables.get(0).mo3335measureBRTryo0(j10);
            return MeasureScope.layout$default(measure, ConstraintsKt.m4019constrainWidthK40F9xA(j10, mo3335measureBRTryo0.getWidth()), ConstraintsKt.m4018constrainHeightK40F9xA(j10, mo3335measureBRTryo0.getHeight()), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.layout.RootMeasurePolicy$measure$2
                /* JADX INFO: Access modifiers changed from: package-private */
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
                    Placeable.PlacementScope.placeRelativeWithLayer$default(layout, Placeable.this, 0, 0, 0.0f, null, 12, null);
                }
            }, 4, null);
        }
        final ArrayList arrayList = new ArrayList(measurables.size());
        int size = measurables.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(measurables.get(i10).mo3335measureBRTryo0(j10));
        }
        int size2 = arrayList.size();
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < size2; i13++) {
            Placeable placeable = (Placeable) arrayList.get(i13);
            i11 = Math.max(placeable.getWidth(), i11);
            i12 = Math.max(placeable.getHeight(), i12);
        }
        return MeasureScope.layout$default(measure, ConstraintsKt.m4019constrainWidthK40F9xA(j10, i11), ConstraintsKt.m4018constrainHeightK40F9xA(j10, i12), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.layout.RootMeasurePolicy$measure$4
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
                List<Placeable> list = arrayList;
                int size3 = list.size();
                for (int i14 = 0; i14 < size3; i14++) {
                    Placeable.PlacementScope.placeRelativeWithLayer$default(layout, list.get(i14), 0, 0, 0.0f, null, 12, null);
                }
            }
        }, 4, null);
    }
}
