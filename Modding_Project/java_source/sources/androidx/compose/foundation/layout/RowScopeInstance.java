package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.SiblingsAlignedModifier;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.Measured;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Row.kt */
@Metadata
/* loaded from: classes.dex */
public final class RowScopeInstance implements RowScope {
    @NotNull
    public static final RowScopeInstance INSTANCE = new RowScopeInstance();

    private RowScopeInstance() {
    }

    @Override // androidx.compose.foundation.layout.RowScope
    @Stable
    @NotNull
    public Modifier align(@NotNull Modifier modifier, @NotNull final Alignment.Vertical alignment) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.RowScopeInstance$align$$inlined$debugInspectorInfo$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                    invoke2(inspectorInfo);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull InspectorInfo inspectorInfo) {
                    Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                    inspectorInfo.setName("align");
                    inspectorInfo.setValue(Alignment.Vertical.this);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return modifier.then(new VerticalAlignModifier(alignment, noInspectorInfo));
    }

    @Override // androidx.compose.foundation.layout.RowScope
    @Stable
    @NotNull
    public Modifier alignBy(@NotNull Modifier modifier, @NotNull final HorizontalAlignmentLine alignmentLine) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(alignmentLine, "alignmentLine");
        return modifier.then(new SiblingsAlignedModifier.WithAlignmentLine(alignmentLine, InspectableValueKt.isDebugInspectorInfoEnabled() ? new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.RowScopeInstance$alignBy$$inlined$debugInspectorInfo$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                invoke2(inspectorInfo);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull InspectorInfo inspectorInfo) {
                Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                inspectorInfo.setName("alignBy");
                inspectorInfo.setValue(HorizontalAlignmentLine.this);
            }
        } : InspectableValueKt.getNoInspectorInfo()));
    }

    @Override // androidx.compose.foundation.layout.RowScope
    @Stable
    @NotNull
    public Modifier alignByBaseline(@NotNull Modifier modifier) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        return alignBy(modifier, androidx.compose.ui.layout.AlignmentLineKt.getFirstBaseline());
    }

    @Override // androidx.compose.foundation.layout.RowScope
    @Stable
    @NotNull
    public Modifier weight(@NotNull Modifier modifier, final float f10, final boolean z10) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        if (f10 > 0.0d) {
            if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
                noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.RowScopeInstance$weight$$inlined$debugInspectorInfo$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                        invoke2(inspectorInfo);
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull InspectorInfo inspectorInfo) {
                        Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                        inspectorInfo.setName("weight");
                        inspectorInfo.setValue(Float.valueOf(f10));
                        inspectorInfo.getProperties().set("weight", Float.valueOf(f10));
                        inspectorInfo.getProperties().set("fill", Boolean.valueOf(z10));
                    }
                };
            } else {
                noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
            }
            return modifier.then(new LayoutWeightImpl(f10, z10, noInspectorInfo));
        }
        throw new IllegalArgumentException(("invalid weight " + f10 + "; must be greater than zero").toString());
    }

    @Override // androidx.compose.foundation.layout.RowScope
    @NotNull
    public Modifier alignBy(@NotNull Modifier modifier, @NotNull final Function1<? super Measured, Integer> alignmentLineBlock) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(alignmentLineBlock, "alignmentLineBlock");
        return modifier.then(new SiblingsAlignedModifier.WithAlignmentLineBlock(alignmentLineBlock, InspectableValueKt.isDebugInspectorInfoEnabled() ? new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.RowScopeInstance$alignBy$$inlined$debugInspectorInfo$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                invoke2(inspectorInfo);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull InspectorInfo inspectorInfo) {
                Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                inspectorInfo.setName("alignBy");
                inspectorInfo.setValue(Function1.this);
            }
        } : InspectableValueKt.getNoInspectorInfo()));
    }
}
