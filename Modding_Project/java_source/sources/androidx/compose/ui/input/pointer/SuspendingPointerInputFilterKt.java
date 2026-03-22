package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import at.n;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SpreadBuilder;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SuspendingPointerInputFilter.kt */
@Metadata
/* loaded from: classes.dex */
public final class SuspendingPointerInputFilterKt {
    @NotNull
    private static final PointerEvent EmptyPointerEvent = new PointerEvent(CollectionsKt.n());
    @NotNull
    private static final String PointerInputModifierNoParamError = "Modifier.pointerInput must provide one or more 'key' parameters that define the identity of the modifier and determine when its previous input processing coroutine should be cancelled and a new effect launched for the new key.";

    @c
    @NotNull
    public static final Modifier pointerInput(@NotNull Modifier modifier, @NotNull Function2<? super PointerInputScope, ? super rs.c<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        throw new IllegalStateException(PointerInputModifierNoParamError);
    }

    @NotNull
    public static final Modifier pointerInput(@NotNull Modifier modifier, @Nullable final Object obj, @NotNull final Function2<? super PointerInputScope, ? super rs.c<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        return ComposedModifierKt.composed(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt$pointerInput$$inlined$debugInspectorInfo$1
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
                inspectorInfo.setName("pointerInput");
                inspectorInfo.getProperties().set("key1", obj);
                inspectorInfo.getProperties().set("block", block);
            }
        } : InspectableValueKt.getNoInspectorInfo(), new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt$pointerInput$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(3);
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                return invoke(modifier2, composer, num.intValue());
            }

            @Composable
            @NotNull
            public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(-906157935);
                Density density = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
                ViewConfiguration viewConfiguration = (ViewConfiguration) composer.consume(CompositionLocalsKt.getLocalViewConfiguration());
                composer.startReplaceableGroup(1157296644);
                boolean changed = composer.changed(density);
                Object rememberedValue = composer.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = new SuspendingPointerInputFilter(viewConfiguration, density);
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                SuspendingPointerInputFilter suspendingPointerInputFilter = (SuspendingPointerInputFilter) rememberedValue;
                EffectsKt.LaunchedEffect(suspendingPointerInputFilter, obj, new SuspendingPointerInputFilterKt$pointerInput$2$2$1(suspendingPointerInputFilter, block, null), composer, 64);
                composer.endReplaceableGroup();
                return suspendingPointerInputFilter;
            }
        });
    }

    @NotNull
    public static final Modifier pointerInput(@NotNull Modifier modifier, @Nullable final Object obj, @Nullable final Object obj2, @NotNull final Function2<? super PointerInputScope, ? super rs.c<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        return ComposedModifierKt.composed(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt$pointerInput$$inlined$debugInspectorInfo$2
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
                inspectorInfo.setName("pointerInput");
                inspectorInfo.getProperties().set("key1", obj);
                inspectorInfo.getProperties().set("key2", obj2);
                inspectorInfo.getProperties().set("block", block);
            }
        } : InspectableValueKt.getNoInspectorInfo(), new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt$pointerInput$4
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(3);
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                return invoke(modifier2, composer, num.intValue());
            }

            @Composable
            @NotNull
            public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(1175567217);
                Density density = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
                ViewConfiguration viewConfiguration = (ViewConfiguration) composer.consume(CompositionLocalsKt.getLocalViewConfiguration());
                composer.startReplaceableGroup(1157296644);
                boolean changed = composer.changed(density);
                Object rememberedValue = composer.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = new SuspendingPointerInputFilter(viewConfiguration, density);
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                SuspendingPointerInputFilter suspendingPointerInputFilter = (SuspendingPointerInputFilter) rememberedValue;
                EffectsKt.LaunchedEffect(suspendingPointerInputFilter, obj, obj2, new SuspendingPointerInputFilterKt$pointerInput$4$2$1(suspendingPointerInputFilter, block, null), composer, 576);
                composer.endReplaceableGroup();
                return suspendingPointerInputFilter;
            }
        });
    }

    @NotNull
    public static final Modifier pointerInput(@NotNull Modifier modifier, @NotNull final Object[] keys, @NotNull final Function2<? super PointerInputScope, ? super rs.c<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(keys, "keys");
        Intrinsics.checkNotNullParameter(block, "block");
        return ComposedModifierKt.composed(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt$pointerInput$$inlined$debugInspectorInfo$3
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
                inspectorInfo.setName("pointerInput");
                inspectorInfo.getProperties().set("keys", keys);
                inspectorInfo.getProperties().set("block", block);
            }
        } : InspectableValueKt.getNoInspectorInfo(), new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt$pointerInput$6
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(3);
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                return invoke(modifier2, composer, num.intValue());
            }

            @Composable
            @NotNull
            public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(664422852);
                Density density = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
                ViewConfiguration viewConfiguration = (ViewConfiguration) composer.consume(CompositionLocalsKt.getLocalViewConfiguration());
                composer.startReplaceableGroup(1157296644);
                boolean changed = composer.changed(density);
                Object rememberedValue = composer.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = new SuspendingPointerInputFilter(viewConfiguration, density);
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                Object[] objArr = keys;
                Function2<PointerInputScope, rs.c<? super Unit>, Object> function2 = block;
                SuspendingPointerInputFilter suspendingPointerInputFilter = (SuspendingPointerInputFilter) rememberedValue;
                SpreadBuilder spreadBuilder = new SpreadBuilder(2);
                spreadBuilder.add(suspendingPointerInputFilter);
                spreadBuilder.addSpread(objArr);
                EffectsKt.LaunchedEffect(spreadBuilder.toArray(new Object[spreadBuilder.size()]), (Function2<? super g0, ? super rs.c<? super Unit>, ? extends Object>) new SuspendingPointerInputFilterKt$pointerInput$6$2$1(suspendingPointerInputFilter, function2, null), composer, 8);
                composer.endReplaceableGroup();
                return suspendingPointerInputFilter;
            }
        });
    }
}
