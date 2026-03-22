package androidx.compose.foundation;

import android.os.Build;
import android.view.View;
import androidx.annotation.RequiresApi;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SystemGestureExclusion.kt */
@Metadata
/* loaded from: classes.dex */
public final class SystemGestureExclusionKt {
    @Composable
    @RequiresApi(30)
    private static final Modifier excludeFromSystemGestureR(Function1<? super LayoutCoordinates, Rect> function1, Composer composer, int i10) {
        composer.startReplaceableGroup(202618556);
        View view = (View) composer.consume(AndroidCompositionLocals_androidKt.getLocalView());
        composer.startReplaceableGroup(511388516);
        boolean changed = composer.changed(view) | composer.changed(function1);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new ExcludeFromSystemGestureModifier(view, function1);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        ExcludeFromSystemGestureModifier excludeFromSystemGestureModifier = (ExcludeFromSystemGestureModifier) rememberedValue;
        EffectsKt.DisposableEffect(excludeFromSystemGestureModifier, new SystemGestureExclusionKt$excludeFromSystemGestureR$1(excludeFromSystemGestureModifier), composer, 0);
        composer.endReplaceableGroup();
        return excludeFromSystemGestureModifier;
    }

    @NotNull
    public static final Modifier systemGestureExclusion(@NotNull Modifier modifier) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        if (Build.VERSION.SDK_INT < 30) {
            return modifier;
        }
        return ComposedModifierKt.composed(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.SystemGestureExclusionKt$systemGestureExclusion$$inlined$debugInspectorInfo$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                invoke2(inspectorInfo);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull InspectorInfo inspectorInfo) {
                Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                inspectorInfo.setName("systemGestureExclusion");
            }
        } : InspectableValueKt.getNoInspectorInfo(), new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.SystemGestureExclusionKt$systemGestureExclusion$2
            @Override // at.n
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                return invoke(modifier2, composer, num.intValue());
            }

            @Composable
            @NotNull
            public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(1120057036);
                composer.startReplaceableGroup(202618556);
                View view = (View) composer.consume(AndroidCompositionLocals_androidKt.getLocalView());
                composer.startReplaceableGroup(511388516);
                boolean changed = composer.changed(view) | composer.changed((Object) null);
                Object rememberedValue = composer.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = new ExcludeFromSystemGestureModifier(view, null);
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                ExcludeFromSystemGestureModifier excludeFromSystemGestureModifier = (ExcludeFromSystemGestureModifier) rememberedValue;
                EffectsKt.DisposableEffect(excludeFromSystemGestureModifier, new SystemGestureExclusionKt$excludeFromSystemGestureR$1(excludeFromSystemGestureModifier), composer, 0);
                composer.endReplaceableGroup();
                composer.endReplaceableGroup();
                return excludeFromSystemGestureModifier;
            }
        });
    }

    @NotNull
    public static final Modifier systemGestureExclusion(@NotNull Modifier modifier, @NotNull final Function1<? super LayoutCoordinates, Rect> exclusion) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(exclusion, "exclusion");
        if (Build.VERSION.SDK_INT < 30) {
            return modifier;
        }
        return ComposedModifierKt.composed(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.SystemGestureExclusionKt$systemGestureExclusion$$inlined$debugInspectorInfo$2
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
                inspectorInfo.setName("systemGestureExclusion");
                inspectorInfo.getProperties().set("exclusion", Function1.this);
            }
        } : InspectableValueKt.getNoInspectorInfo(), new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.SystemGestureExclusionKt$systemGestureExclusion$4
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
                composer.startReplaceableGroup(108999);
                Function1<LayoutCoordinates, Rect> function1 = exclusion;
                composer.startReplaceableGroup(202618556);
                View view = (View) composer.consume(AndroidCompositionLocals_androidKt.getLocalView());
                composer.startReplaceableGroup(511388516);
                boolean changed = composer.changed(view) | composer.changed(function1);
                Object rememberedValue = composer.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = new ExcludeFromSystemGestureModifier(view, function1);
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                ExcludeFromSystemGestureModifier excludeFromSystemGestureModifier = (ExcludeFromSystemGestureModifier) rememberedValue;
                EffectsKt.DisposableEffect(excludeFromSystemGestureModifier, new SystemGestureExclusionKt$excludeFromSystemGestureR$1(excludeFromSystemGestureModifier), composer, 0);
                composer.endReplaceableGroup();
                composer.endReplaceableGroup();
                return excludeFromSystemGestureModifier;
            }
        });
    }
}
