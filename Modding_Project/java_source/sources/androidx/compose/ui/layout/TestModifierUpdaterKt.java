package androidx.compose.ui.layout;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TestModifierUpdater.kt */
@Metadata
/* loaded from: classes.dex */
public final class TestModifierUpdaterKt {
    @c
    @Composable
    public static final void TestModifierUpdaterLayout(@NotNull final Function1<? super TestModifierUpdater, Unit> onAttached, @Nullable Composer composer, final int i10) {
        int i11;
        int i12;
        Intrinsics.checkNotNullParameter(onAttached, "onAttached");
        Composer startRestartGroup = composer.startRestartGroup(-1673066036);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(onAttached)) {
                i12 = 4;
            } else {
                i12 = 2;
            }
            i11 = i12 | i10;
        } else {
            i11 = i10;
        }
        if ((i11 & 11) == 2 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            TestModifierUpdaterKt$TestModifierUpdaterLayout$measurePolicy$1 testModifierUpdaterKt$TestModifierUpdaterLayout$measurePolicy$1 = new MeasurePolicy() { // from class: androidx.compose.ui.layout.TestModifierUpdaterKt$TestModifierUpdaterLayout$measurePolicy$1
                @Override // androidx.compose.ui.layout.MeasurePolicy
                @NotNull
                /* renamed from: measure-3p2s80s */
                public final MeasureResult mo42measure3p2s80s(@NotNull MeasureScope MeasurePolicy, @NotNull List<? extends Measurable> list, long j10) {
                    Intrinsics.checkNotNullParameter(MeasurePolicy, "$this$MeasurePolicy");
                    Intrinsics.checkNotNullParameter(list, "<anonymous parameter 0>");
                    return MeasureScope.layout$default(MeasurePolicy, Constraints.m4005getMaxWidthimpl(j10), Constraints.m4004getMaxHeightimpl(j10), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.layout.TestModifierUpdaterKt$TestModifierUpdaterLayout$measurePolicy$1$measure$1
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
            };
            final Function0<LayoutNode> constructor$ui_release = LayoutNode.Companion.getConstructor$ui_release();
            startRestartGroup.startReplaceableGroup(1886828752);
            if (startRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(new Function0<LayoutNode>() { // from class: androidx.compose.ui.layout.TestModifierUpdaterKt$TestModifierUpdaterLayout$$inlined$ComposeNode$1
                    {
                        super(0);
                    }

                    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.compose.ui.node.LayoutNode, java.lang.Object] */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final LayoutNode invoke() {
                        return Function0.this.invoke();
                    }
                });
            } else {
                startRestartGroup.useNode();
            }
            Composer m1376constructorimpl = Updater.m1376constructorimpl(startRestartGroup);
            Updater.m1383setimpl(m1376constructorimpl, testModifierUpdaterKt$TestModifierUpdaterLayout$measurePolicy$1, ComposeUiNode.Companion.getSetMeasurePolicy());
            Updater.m1380initimpl(m1376constructorimpl, new Function1<LayoutNode, Unit>() { // from class: androidx.compose.ui.layout.TestModifierUpdaterKt$TestModifierUpdaterLayout$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(LayoutNode layoutNode) {
                    invoke2(layoutNode);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull LayoutNode init) {
                    Intrinsics.checkNotNullParameter(init, "$this$init");
                    onAttached.invoke(new TestModifierUpdater(init));
                }
            });
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.layout.TestModifierUpdaterKt$TestModifierUpdaterLayout$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.f60915a;
                }

                public final void invoke(@Nullable Composer composer2, int i13) {
                    TestModifierUpdaterKt.TestModifierUpdaterLayout(onAttached, composer2, i10 | 1);
                }
            });
        }
    }
}
