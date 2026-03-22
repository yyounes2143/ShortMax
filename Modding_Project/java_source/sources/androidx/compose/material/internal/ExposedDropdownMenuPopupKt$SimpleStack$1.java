package androidx.compose.material.internal;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ExposedDropdownMenuPopup.kt */
@Metadata
/* loaded from: classes.dex */
public final class ExposedDropdownMenuPopupKt$SimpleStack$1 implements MeasurePolicy {
    public static final ExposedDropdownMenuPopupKt$SimpleStack$1 INSTANCE = new ExposedDropdownMenuPopupKt$SimpleStack$1();

    @Override // androidx.compose.ui.layout.MeasurePolicy
    @NotNull
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo42measure3p2s80s(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> measurables, long j10) {
        int i10;
        int i11;
        Intrinsics.checkNotNullParameter(Layout, "$this$Layout");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        int size = measurables.size();
        if (size != 0) {
            int i12 = 0;
            if (size != 1) {
                final ArrayList arrayList = new ArrayList(measurables.size());
                int size2 = measurables.size();
                for (int i13 = 0; i13 < size2; i13++) {
                    arrayList.add(measurables.get(i13).mo3335measureBRTryo0(j10));
                }
                int p10 = CollectionsKt.p(arrayList);
                if (p10 >= 0) {
                    int i14 = 0;
                    int i15 = 0;
                    while (true) {
                        Placeable placeable = (Placeable) arrayList.get(i12);
                        i14 = Math.max(i14, placeable.getWidth());
                        i15 = Math.max(i15, placeable.getHeight());
                        if (i12 == p10) {
                            break;
                        }
                        i12++;
                    }
                    i10 = i14;
                    i11 = i15;
                } else {
                    i10 = 0;
                    i11 = 0;
                }
                return MeasureScope.layout$default(Layout, i10, i11, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material.internal.ExposedDropdownMenuPopupKt$SimpleStack$1$measure$3
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
                        int p11 = CollectionsKt.p(arrayList);
                        if (p11 < 0) {
                            return;
                        }
                        int i16 = 0;
                        while (true) {
                            Placeable.PlacementScope.placeRelative$default(layout, arrayList.get(i16), 0, 0, 0.0f, 4, null);
                            if (i16 == p11) {
                                return;
                            }
                            i16++;
                        }
                    }
                }, 4, null);
            }
            final Placeable mo3335measureBRTryo0 = measurables.get(0).mo3335measureBRTryo0(j10);
            return MeasureScope.layout$default(Layout, mo3335measureBRTryo0.getWidth(), mo3335measureBRTryo0.getHeight(), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material.internal.ExposedDropdownMenuPopupKt$SimpleStack$1$measure$2
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
                    Placeable.PlacementScope.placeRelative$default(layout, Placeable.this, 0, 0, 0.0f, 4, null);
                }
            }, 4, null);
        }
        return MeasureScope.layout$default(Layout, 0, 0, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material.internal.ExposedDropdownMenuPopupKt$SimpleStack$1$measure$1
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
}
