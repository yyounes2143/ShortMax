package androidx.compose.ui.input.nestedscroll;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import at.n;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NestedScrollModifier.kt */
@Metadata
/* loaded from: classes.dex */
public final class NestedScrollModifierKt {
    @NotNull
    public static final Modifier nestedScroll(@NotNull Modifier modifier, @NotNull final NestedScrollConnection connection, @Nullable final NestedScrollDispatcher nestedScrollDispatcher) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt$nestedScroll$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("nestedScroll");
                    inspectorInfo.getProperties().set("connection", NestedScrollConnection.this);
                    inspectorInfo.getProperties().set("dispatcher", nestedScrollDispatcher);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return ComposedModifierKt.composed(modifier, noInspectorInfo, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt$nestedScroll$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                composer.startReplaceableGroup(410346167);
                composer.startReplaceableGroup(773894976);
                composer.startReplaceableGroup(-492369756);
                Object rememberedValue = composer.rememberedValue();
                Composer.Companion companion = Composer.Companion;
                if (rememberedValue == companion.getEmpty()) {
                    Object compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.f61040a, composer));
                    composer.updateRememberedValue(compositionScopedCoroutineScopeCanceller);
                    rememberedValue = compositionScopedCoroutineScopeCanceller;
                }
                composer.endReplaceableGroup();
                g0 coroutineScope = ((CompositionScopedCoroutineScopeCanceller) rememberedValue).getCoroutineScope();
                composer.endReplaceableGroup();
                NestedScrollDispatcher nestedScrollDispatcher2 = NestedScrollDispatcher.this;
                composer.startReplaceableGroup(100475938);
                if (nestedScrollDispatcher2 == null) {
                    composer.startReplaceableGroup(-492369756);
                    Object rememberedValue2 = composer.rememberedValue();
                    if (rememberedValue2 == companion.getEmpty()) {
                        rememberedValue2 = new NestedScrollDispatcher();
                        composer.updateRememberedValue(rememberedValue2);
                    }
                    composer.endReplaceableGroup();
                    nestedScrollDispatcher2 = (NestedScrollDispatcher) rememberedValue2;
                }
                composer.endReplaceableGroup();
                NestedScrollConnection nestedScrollConnection = connection;
                composer.startReplaceableGroup(1618982084);
                boolean changed = composer.changed(nestedScrollConnection) | composer.changed(nestedScrollDispatcher2) | composer.changed(coroutineScope);
                Object rememberedValue3 = composer.rememberedValue();
                if (changed || rememberedValue3 == companion.getEmpty()) {
                    nestedScrollDispatcher2.setOriginNestedScrollScope$ui_release(coroutineScope);
                    rememberedValue3 = new NestedScrollModifierLocal(nestedScrollDispatcher2, nestedScrollConnection);
                    composer.updateRememberedValue(rememberedValue3);
                }
                composer.endReplaceableGroup();
                NestedScrollModifierLocal nestedScrollModifierLocal = (NestedScrollModifierLocal) rememberedValue3;
                composer.endReplaceableGroup();
                return nestedScrollModifierLocal;
            }
        });
    }

    public static /* synthetic */ Modifier nestedScroll$default(Modifier modifier, NestedScrollConnection nestedScrollConnection, NestedScrollDispatcher nestedScrollDispatcher, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            nestedScrollDispatcher = null;
        }
        return nestedScroll(modifier, nestedScrollConnection, nestedScrollDispatcher);
    }
}
