package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ComposeUiNode.kt */
@Metadata
/* loaded from: classes.dex */
public interface ComposeUiNode {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: ComposeUiNode.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        @NotNull
        private static final Function0<ComposeUiNode> Constructor = LayoutNode.Companion.getConstructor$ui_release();
        @NotNull
        private static final Function2<ComposeUiNode, Modifier, Unit> SetModifier = new Function2<ComposeUiNode, Modifier, Unit>() { // from class: androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(ComposeUiNode composeUiNode, Modifier modifier) {
                invoke2(composeUiNode, modifier);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ComposeUiNode composeUiNode, @NotNull Modifier it) {
                Intrinsics.checkNotNullParameter(composeUiNode, "$this$null");
                Intrinsics.checkNotNullParameter(it, "it");
                composeUiNode.setModifier(it);
            }
        };
        @NotNull
        private static final Function2<ComposeUiNode, Density, Unit> SetDensity = new Function2<ComposeUiNode, Density, Unit>() { // from class: androidx.compose.ui.node.ComposeUiNode$Companion$SetDensity$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(ComposeUiNode composeUiNode, Density density) {
                invoke2(composeUiNode, density);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ComposeUiNode composeUiNode, @NotNull Density it) {
                Intrinsics.checkNotNullParameter(composeUiNode, "$this$null");
                Intrinsics.checkNotNullParameter(it, "it");
                composeUiNode.setDensity(it);
            }
        };
        @NotNull
        private static final Function2<ComposeUiNode, MeasurePolicy, Unit> SetMeasurePolicy = new Function2<ComposeUiNode, MeasurePolicy, Unit>() { // from class: androidx.compose.ui.node.ComposeUiNode$Companion$SetMeasurePolicy$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(ComposeUiNode composeUiNode, MeasurePolicy measurePolicy) {
                invoke2(composeUiNode, measurePolicy);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ComposeUiNode composeUiNode, @NotNull MeasurePolicy it) {
                Intrinsics.checkNotNullParameter(composeUiNode, "$this$null");
                Intrinsics.checkNotNullParameter(it, "it");
                composeUiNode.setMeasurePolicy(it);
            }
        };
        @NotNull
        private static final Function2<ComposeUiNode, LayoutDirection, Unit> SetLayoutDirection = new Function2<ComposeUiNode, LayoutDirection, Unit>() { // from class: androidx.compose.ui.node.ComposeUiNode$Companion$SetLayoutDirection$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(ComposeUiNode composeUiNode, LayoutDirection layoutDirection) {
                invoke2(composeUiNode, layoutDirection);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ComposeUiNode composeUiNode, @NotNull LayoutDirection it) {
                Intrinsics.checkNotNullParameter(composeUiNode, "$this$null");
                Intrinsics.checkNotNullParameter(it, "it");
                composeUiNode.setLayoutDirection(it);
            }
        };
        @NotNull
        private static final Function2<ComposeUiNode, ViewConfiguration, Unit> SetViewConfiguration = new Function2<ComposeUiNode, ViewConfiguration, Unit>() { // from class: androidx.compose.ui.node.ComposeUiNode$Companion$SetViewConfiguration$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(ComposeUiNode composeUiNode, ViewConfiguration viewConfiguration) {
                invoke2(composeUiNode, viewConfiguration);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ComposeUiNode composeUiNode, @NotNull ViewConfiguration it) {
                Intrinsics.checkNotNullParameter(composeUiNode, "$this$null");
                Intrinsics.checkNotNullParameter(it, "it");
                composeUiNode.setViewConfiguration(it);
            }
        };

        private Companion() {
        }

        @NotNull
        public final Function0<ComposeUiNode> getConstructor() {
            return Constructor;
        }

        @NotNull
        public final Function2<ComposeUiNode, Density, Unit> getSetDensity() {
            return SetDensity;
        }

        @NotNull
        public final Function2<ComposeUiNode, LayoutDirection, Unit> getSetLayoutDirection() {
            return SetLayoutDirection;
        }

        @NotNull
        public final Function2<ComposeUiNode, MeasurePolicy, Unit> getSetMeasurePolicy() {
            return SetMeasurePolicy;
        }

        @NotNull
        public final Function2<ComposeUiNode, Modifier, Unit> getSetModifier() {
            return SetModifier;
        }

        @NotNull
        public final Function2<ComposeUiNode, ViewConfiguration, Unit> getSetViewConfiguration() {
            return SetViewConfiguration;
        }
    }

    @NotNull
    Density getDensity();

    @NotNull
    LayoutDirection getLayoutDirection();

    @NotNull
    MeasurePolicy getMeasurePolicy();

    @NotNull
    Modifier getModifier();

    @NotNull
    ViewConfiguration getViewConfiguration();

    void setDensity(@NotNull Density density);

    void setLayoutDirection(@NotNull LayoutDirection layoutDirection);

    void setMeasurePolicy(@NotNull MeasurePolicy measurePolicy);

    void setModifier(@NotNull Modifier modifier);

    void setViewConfiguration(@NotNull ViewConfiguration viewConfiguration);
}
