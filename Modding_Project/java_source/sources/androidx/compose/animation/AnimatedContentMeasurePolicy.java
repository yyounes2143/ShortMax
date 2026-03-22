package androidx.compose.animation;

import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.j;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AnimatedContent.kt */
@Metadata
/* loaded from: classes.dex */
public final class AnimatedContentMeasurePolicy implements MeasurePolicy {
    @NotNull
    private final AnimatedContentScope<?> rootScope;

    public AnimatedContentMeasurePolicy(@NotNull AnimatedContentScope<?> rootScope) {
        Intrinsics.checkNotNullParameter(rootScope, "rootScope");
        this.rootScope = rootScope;
    }

    @NotNull
    public final AnimatedContentScope<?> getRootScope() {
        return this.rootScope;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int maxIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, final int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        Integer num = (Integer) j.H(j.F(CollectionsKt.e0(measurables), new Function1<IntrinsicMeasurable, Integer>() { // from class: androidx.compose.animation.AnimatedContentMeasurePolicy$maxIntrinsicHeight$1
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
        Integer num = (Integer) j.H(j.F(CollectionsKt.e0(measurables), new Function1<IntrinsicMeasurable, Integer>() { // from class: androidx.compose.animation.AnimatedContentMeasurePolicy$maxIntrinsicWidth$1
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

    @Override // androidx.compose.ui.layout.MeasurePolicy
    @NotNull
    /* renamed from: measure-3p2s80s  reason: not valid java name */
    public MeasureResult mo42measure3p2s80s(@NotNull MeasureScope measure, @NotNull List<? extends Measurable> measurables, long j10) {
        Placeable placeable;
        int i10;
        Placeable placeable2;
        int i11;
        int i12;
        final int i13;
        final int i14;
        int i15;
        int i16;
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        int size = measurables.size();
        final Placeable[] placeableArr = new Placeable[size];
        int size2 = measurables.size();
        int i17 = 0;
        while (true) {
            placeable = null;
            AnimatedContentScope.ChildData childData = null;
            i10 = 1;
            if (i17 >= size2) {
                break;
            }
            Measurable measurable = measurables.get(i17);
            Object parentData = measurable.getParentData();
            if (parentData instanceof AnimatedContentScope.ChildData) {
                childData = (AnimatedContentScope.ChildData) parentData;
            }
            if (childData != null && childData.isTarget()) {
                placeableArr[i17] = measurable.mo3335measureBRTryo0(j10);
            }
            i17++;
        }
        int size3 = measurables.size();
        for (int i18 = 0; i18 < size3; i18++) {
            Measurable measurable2 = measurables.get(i18);
            if (placeableArr[i18] == null) {
                placeableArr[i18] = measurable2.mo3335measureBRTryo0(j10);
            }
        }
        if (size == 0) {
            placeable2 = null;
        } else {
            placeable2 = placeableArr[0];
            int r02 = n.r0(placeableArr);
            if (r02 != 0) {
                if (placeable2 != null) {
                    i11 = placeable2.getWidth();
                } else {
                    i11 = 0;
                }
                if (1 <= r02) {
                    int i19 = 1;
                    while (true) {
                        Placeable placeable3 = placeableArr[i19];
                        if (placeable3 != null) {
                            i12 = placeable3.getWidth();
                        } else {
                            i12 = 0;
                        }
                        if (i11 < i12) {
                            placeable2 = placeable3;
                            i11 = i12;
                        }
                        if (i19 == r02) {
                            break;
                        }
                        i19++;
                    }
                }
            }
        }
        if (placeable2 != null) {
            i13 = placeable2.getWidth();
        } else {
            i13 = 0;
        }
        if (size != 0) {
            placeable = placeableArr[0];
            int r03 = n.r0(placeableArr);
            if (r03 != 0) {
                if (placeable != null) {
                    i15 = placeable.getHeight();
                } else {
                    i15 = 0;
                }
                if (1 <= r03) {
                    while (true) {
                        Placeable placeable4 = placeableArr[i10];
                        if (placeable4 != null) {
                            i16 = placeable4.getHeight();
                        } else {
                            i16 = 0;
                        }
                        if (i15 < i16) {
                            placeable = placeable4;
                            i15 = i16;
                        }
                        if (i10 == r03) {
                            break;
                        }
                        i10++;
                    }
                }
            }
        }
        if (placeable != null) {
            i14 = placeable.getHeight();
        } else {
            i14 = 0;
        }
        this.rootScope.m54setMeasuredSizeozmzZPI$animation_release(IntSizeKt.IntSize(i13, i14));
        return MeasureScope.layout$default(measure, i13, i14, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.AnimatedContentMeasurePolicy$measure$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                Placeable[] placeableArr2 = placeableArr;
                AnimatedContentMeasurePolicy animatedContentMeasurePolicy = this;
                int i20 = i13;
                int i21 = i14;
                for (Placeable placeable5 : placeableArr2) {
                    if (placeable5 != null) {
                        long mo1514alignKFBX0sM = animatedContentMeasurePolicy.getRootScope().getContentAlignment$animation_release().mo1514alignKFBX0sM(IntSizeKt.IntSize(placeable5.getWidth(), placeable5.getHeight()), IntSizeKt.IntSize(i20, i21), LayoutDirection.Ltr);
                        Placeable.PlacementScope.place$default(layout, placeable5, IntOffset.m4167getXimpl(mo1514alignKFBX0sM), IntOffset.m4168getYimpl(mo1514alignKFBX0sM), 0.0f, 4, null);
                    }
                }
            }
        }, 4, null);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int minIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, final int i10) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        Integer num = (Integer) j.H(j.F(CollectionsKt.e0(measurables), new Function1<IntrinsicMeasurable, Integer>() { // from class: androidx.compose.animation.AnimatedContentMeasurePolicy$minIntrinsicHeight$1
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
        Integer num = (Integer) j.H(j.F(CollectionsKt.e0(measurables), new Function1<IntrinsicMeasurable, Integer>() { // from class: androidx.compose.animation.AnimatedContentMeasurePolicy$minIntrinsicWidth$1
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
