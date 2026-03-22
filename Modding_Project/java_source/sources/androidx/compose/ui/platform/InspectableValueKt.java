package androidx.compose.ui.platform;

import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: InspectableValue.kt */
@Metadata
/* loaded from: classes.dex */
public final class InspectableValueKt {
    @NotNull
    private static final Function1<InspectorInfo, Unit> NoInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.ui.platform.InspectableValueKt$NoInspectorInfo$1
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull InspectorInfo inspectorInfo) {
            Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
            invoke2(inspectorInfo);
            return Unit.f60915a;
        }
    };
    private static boolean isDebugInspectorInfoEnabled;

    @NotNull
    public static final Function1<InspectorInfo, Unit> debugInspectorInfo(@NotNull final Function1<? super InspectorInfo, Unit> definitions) {
        Intrinsics.checkNotNullParameter(definitions, "definitions");
        if (isDebugInspectorInfoEnabled()) {
            return new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.ui.platform.InspectableValueKt$debugInspectorInfo$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
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
                    definitions.invoke(inspectorInfo);
                }
            };
        }
        return getNoInspectorInfo();
    }

    @NotNull
    public static final Function1<InspectorInfo, Unit> getNoInspectorInfo() {
        return NoInspectorInfo;
    }

    @NotNull
    public static final Modifier inspectable(@NotNull Modifier modifier, @NotNull Function1<? super InspectorInfo, Unit> inspectorInfo, @NotNull Function1<? super Modifier, ? extends Modifier> factory) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        Intrinsics.checkNotNullParameter(factory, "factory");
        return inspectableWrapper(modifier, inspectorInfo, factory.invoke(Modifier.Companion));
    }

    @NotNull
    public static final Modifier inspectableWrapper(@NotNull Modifier modifier, @NotNull Function1<? super InspectorInfo, Unit> inspectorInfo, @NotNull Modifier wrapped) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        Intrinsics.checkNotNullParameter(wrapped, "wrapped");
        InspectableModifier inspectableModifier = new InspectableModifier(inspectorInfo);
        return modifier.then(inspectableModifier).then(wrapped).then(inspectableModifier.getEnd());
    }

    public static final boolean isDebugInspectorInfoEnabled() {
        return isDebugInspectorInfoEnabled;
    }

    public static final void setDebugInspectorInfoEnabled(boolean z10) {
        isDebugInspectorInfoEnabled = z10;
    }
}
