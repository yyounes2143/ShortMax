package androidx.activity.compose;

import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.lifecycle.LifecycleOwner;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BackHandler.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBackHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackHandler.kt\nandroidx/activity/compose/BackHandlerKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt\n*L\n1#1,110:1\n25#2:111\n50#2:118\n49#2:119\n955#3,6:112\n955#3,6:120\n76#4:126\n89#5:127\n*S KotlinDebug\n*F\n+ 1 BackHandler.kt\nandroidx/activity/compose/BackHandlerKt\n*L\n86#1:111\n94#1:118\n94#1:119\n86#1:112,6\n94#1:120,6\n100#1:126\n84#1:127\n*E\n"})
/* loaded from: classes.dex */
public final class BackHandlerKt {
    @Composable
    public static final void BackHandler(final boolean z10, @NotNull final Function0<Unit> function0, @Nullable Composer composer, final int i10, final int i11) {
        int i12;
        int i13;
        int i14;
        Composer startRestartGroup = composer.startRestartGroup(-361453782);
        int i15 = i11 & 1;
        if (i15 != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(z10)) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i12 = i13 | i10;
        } else {
            i12 = i10;
        }
        if ((i11 & 2) != 0) {
            i12 |= 48;
        } else if ((i10 & 112) == 0) {
            if (startRestartGroup.changed(function0)) {
                i14 = 32;
            } else {
                i14 = 16;
            }
            i12 |= i14;
        }
        if ((i12 & 91) == 18 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            if (i15 != 0) {
                z10 = true;
            }
            final State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(function0, startRestartGroup, (i12 >> 3) & 14);
            startRestartGroup.startReplaceableGroup(-3687241);
            Object rememberedValue = startRestartGroup.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            if (rememberedValue == companion.getEmpty()) {
                rememberedValue = new OnBackPressedCallback(z10) { // from class: androidx.activity.compose.BackHandlerKt$BackHandler$backCallback$1$1
                    @Override // androidx.activity.OnBackPressedCallback
                    public void handleOnBackPressed() {
                        Function0 BackHandler$lambda$0;
                        BackHandler$lambda$0 = BackHandlerKt.BackHandler$lambda$0(rememberUpdatedState);
                        BackHandler$lambda$0.invoke();
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            final BackHandlerKt$BackHandler$backCallback$1$1 backHandlerKt$BackHandler$backCallback$1$1 = (BackHandlerKt$BackHandler$backCallback$1$1) rememberedValue;
            Boolean valueOf = Boolean.valueOf(z10);
            startRestartGroup.startReplaceableGroup(-3686552);
            boolean changed = startRestartGroup.changed(valueOf) | startRestartGroup.changed(backHandlerKt$BackHandler$backCallback$1$1);
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (changed || rememberedValue2 == companion.getEmpty()) {
                rememberedValue2 = new Function0<Unit>() { // from class: androidx.activity.compose.BackHandlerKt$BackHandler$1$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        setEnabled(z10);
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue2);
            }
            startRestartGroup.endReplaceableGroup();
            EffectsKt.SideEffect((Function0) rememberedValue2, startRestartGroup, 0);
            OnBackPressedDispatcherOwner current = LocalOnBackPressedDispatcherOwner.INSTANCE.getCurrent(startRestartGroup, 6);
            if (current != null) {
                final OnBackPressedDispatcher onBackPressedDispatcher = current.getOnBackPressedDispatcher();
                final LifecycleOwner lifecycleOwner = (LifecycleOwner) startRestartGroup.consume(AndroidCompositionLocals_androidKt.getLocalLifecycleOwner());
                EffectsKt.DisposableEffect(lifecycleOwner, onBackPressedDispatcher, new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.activity.compose.BackHandlerKt$BackHandler$2
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final DisposableEffectResult invoke(@NotNull DisposableEffectScope disposableEffectScope) {
                        OnBackPressedDispatcher.this.addCallback(lifecycleOwner, backHandlerKt$BackHandler$backCallback$1$1);
                        final BackHandlerKt$BackHandler$backCallback$1$1 backHandlerKt$BackHandler$backCallback$1$12 = backHandlerKt$BackHandler$backCallback$1$1;
                        return new DisposableEffectResult() { // from class: androidx.activity.compose.BackHandlerKt$BackHandler$2$invoke$$inlined$onDispose$1
                            @Override // androidx.compose.runtime.DisposableEffectResult
                            public void dispose() {
                                remove();
                            }
                        };
                    }
                }, startRestartGroup, 72);
            } else {
                throw new IllegalStateException("No OnBackPressedDispatcherOwner was provided via LocalOnBackPressedDispatcherOwner");
            }
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.activity.compose.BackHandlerKt$BackHandler$3
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.f60915a;
                }

                public final void invoke(@Nullable Composer composer2, int i16) {
                    BackHandlerKt.BackHandler(z10, function0, composer2, i10 | 1, i11);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Function0<Unit> BackHandler$lambda$0(State<? extends Function0<Unit>> state) {
        return state.getValue();
    }
}
