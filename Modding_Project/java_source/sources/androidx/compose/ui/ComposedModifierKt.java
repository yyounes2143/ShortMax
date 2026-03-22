package androidx.compose.ui;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusEventModifier;
import androidx.compose.ui.focus.FocusEventModifierLocal;
import androidx.compose.ui.focus.FocusRequesterModifier;
import androidx.compose.ui.focus.FocusRequesterModifierLocal;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ComposedModifier.kt */
@Metadata
/* loaded from: classes.dex */
public final class ComposedModifierKt {
    @NotNull
    private static final n<FocusEventModifier, Composer, Integer, Modifier> WrapFocusEventModifier = new n<FocusEventModifier, Composer, Integer, FocusEventModifierLocal>() { // from class: androidx.compose.ui.ComposedModifierKt$WrapFocusEventModifier$1
        @Override // at.n
        public /* bridge */ /* synthetic */ FocusEventModifierLocal invoke(FocusEventModifier focusEventModifier, Composer composer, Integer num) {
            return invoke(focusEventModifier, composer, num.intValue());
        }

        @Composable
        @NotNull
        public final FocusEventModifierLocal invoke(@NotNull FocusEventModifier mod, @Nullable Composer composer, int i10) {
            Intrinsics.checkNotNullParameter(mod, "mod");
            composer.startReplaceableGroup(-1790596922);
            composer.startReplaceableGroup(1157296644);
            boolean changed = composer.changed(mod);
            Object rememberedValue = composer.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new FocusEventModifierLocal(new ComposedModifierKt$WrapFocusEventModifier$1$modifier$1$1(mod));
                composer.updateRememberedValue(rememberedValue);
            }
            composer.endReplaceableGroup();
            final FocusEventModifierLocal focusEventModifierLocal = (FocusEventModifierLocal) rememberedValue;
            EffectsKt.SideEffect(new Function0<Unit>() { // from class: androidx.compose.ui.ComposedModifierKt$WrapFocusEventModifier$1.1
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
                    FocusEventModifierLocal.this.notifyIfNoFocusModifiers();
                }
            }, composer, 0);
            composer.endReplaceableGroup();
            return focusEventModifierLocal;
        }
    };
    @NotNull
    private static final n<FocusRequesterModifier, Composer, Integer, Modifier> WrapFocusRequesterModifier = new n<FocusRequesterModifier, Composer, Integer, FocusRequesterModifierLocal>() { // from class: androidx.compose.ui.ComposedModifierKt$WrapFocusRequesterModifier$1
        @Override // at.n
        public /* bridge */ /* synthetic */ FocusRequesterModifierLocal invoke(FocusRequesterModifier focusRequesterModifier, Composer composer, Integer num) {
            return invoke(focusRequesterModifier, composer, num.intValue());
        }

        @Composable
        @NotNull
        public final FocusRequesterModifierLocal invoke(@NotNull FocusRequesterModifier mod, @Nullable Composer composer, int i10) {
            Intrinsics.checkNotNullParameter(mod, "mod");
            composer.startReplaceableGroup(945678692);
            composer.startReplaceableGroup(1157296644);
            boolean changed = composer.changed(mod);
            Object rememberedValue = composer.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new FocusRequesterModifierLocal(mod.getFocusRequester());
                composer.updateRememberedValue(rememberedValue);
            }
            composer.endReplaceableGroup();
            FocusRequesterModifierLocal focusRequesterModifierLocal = (FocusRequesterModifierLocal) rememberedValue;
            composer.endReplaceableGroup();
            return focusRequesterModifierLocal;
        }
    };

    @NotNull
    public static final Modifier composed(@NotNull Modifier modifier, @NotNull Function1<? super InspectorInfo, Unit> inspectorInfo, @NotNull n<? super Modifier, ? super Composer, ? super Integer, ? extends Modifier> factory) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        Intrinsics.checkNotNullParameter(factory, "factory");
        return modifier.then(new ComposedModifier(inspectorInfo, factory));
    }

    public static /* synthetic */ Modifier composed$default(Modifier modifier, Function1 function1, n nVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            function1 = InspectableValueKt.getNoInspectorInfo();
        }
        return composed(modifier, function1, nVar);
    }

    @NotNull
    public static final Modifier materialize(@NotNull final Composer composer, @NotNull Modifier modifier) {
        Intrinsics.checkNotNullParameter(composer, "<this>");
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        if (modifier.all(new Function1<Modifier.Element, Boolean>() { // from class: androidx.compose.ui.ComposedModifierKt$materialize$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Modifier.Element it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.valueOf(((it instanceof ComposedModifier) || (it instanceof FocusEventModifier) || (it instanceof FocusRequesterModifier)) ? false : true);
            }
        })) {
            return modifier;
        }
        composer.startReplaceableGroup(1219399079);
        Modifier modifier2 = (Modifier) modifier.foldIn(Modifier.Companion, new Function2<Modifier, Modifier.Element, Modifier>() { // from class: androidx.compose.ui.ComposedModifierKt$materialize$result$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final Modifier invoke(@NotNull Modifier acc, @NotNull Modifier.Element element) {
                Modifier modifier3;
                Modifier modifier4;
                n nVar;
                n nVar2;
                Intrinsics.checkNotNullParameter(acc, "acc");
                Intrinsics.checkNotNullParameter(element, "element");
                if (element instanceof ComposedModifier) {
                    modifier4 = ComposedModifierKt.materialize(Composer.this, (Modifier) ((n) TypeIntrinsics.beforeCheckcastToFunctionOfArity(((ComposedModifier) element).getFactory(), 3)).invoke(Modifier.Companion, Composer.this, 0));
                } else {
                    if (element instanceof FocusEventModifier) {
                        nVar2 = ComposedModifierKt.WrapFocusEventModifier;
                        modifier3 = element.then((Modifier) ((n) TypeIntrinsics.beforeCheckcastToFunctionOfArity(nVar2, 3)).invoke(element, Composer.this, 0));
                    } else {
                        modifier3 = element;
                    }
                    if (element instanceof FocusRequesterModifier) {
                        nVar = ComposedModifierKt.WrapFocusRequesterModifier;
                        modifier4 = modifier3.then((Modifier) ((n) TypeIntrinsics.beforeCheckcastToFunctionOfArity(nVar, 3)).invoke(element, Composer.this, 0));
                    } else {
                        modifier4 = modifier3;
                    }
                }
                return acc.then(modifier4);
            }
        });
        composer.endReplaceableGroup();
        return modifier2;
    }

    @ExperimentalComposeUiApi
    @NotNull
    public static final Modifier composed(@NotNull Modifier modifier, @NotNull String fullyQualifiedName, @Nullable Object obj, @NotNull Function1<? super InspectorInfo, Unit> inspectorInfo, @NotNull n<? super Modifier, ? super Composer, ? super Integer, ? extends Modifier> factory) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(fullyQualifiedName, "fullyQualifiedName");
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        Intrinsics.checkNotNullParameter(factory, "factory");
        return modifier.then(new KeyedComposedModifier1(fullyQualifiedName, obj, inspectorInfo, factory));
    }

    public static /* synthetic */ Modifier composed$default(Modifier modifier, String str, Object obj, Function1 function1, n nVar, int i10, Object obj2) {
        if ((i10 & 4) != 0) {
            function1 = InspectableValueKt.getNoInspectorInfo();
        }
        return composed(modifier, str, obj, function1, nVar);
    }

    @ExperimentalComposeUiApi
    @NotNull
    public static final Modifier composed(@NotNull Modifier modifier, @NotNull String fullyQualifiedName, @Nullable Object obj, @Nullable Object obj2, @NotNull Function1<? super InspectorInfo, Unit> inspectorInfo, @NotNull n<? super Modifier, ? super Composer, ? super Integer, ? extends Modifier> factory) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(fullyQualifiedName, "fullyQualifiedName");
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        Intrinsics.checkNotNullParameter(factory, "factory");
        return modifier.then(new KeyedComposedModifier2(fullyQualifiedName, obj, obj2, inspectorInfo, factory));
    }

    public static /* synthetic */ Modifier composed$default(Modifier modifier, String str, Object obj, Object obj2, Function1 function1, n nVar, int i10, Object obj3) {
        if ((i10 & 8) != 0) {
            function1 = InspectableValueKt.getNoInspectorInfo();
        }
        return composed(modifier, str, obj, obj2, function1, nVar);
    }

    @ExperimentalComposeUiApi
    @NotNull
    public static final Modifier composed(@NotNull Modifier modifier, @NotNull String fullyQualifiedName, @Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @NotNull Function1<? super InspectorInfo, Unit> inspectorInfo, @NotNull n<? super Modifier, ? super Composer, ? super Integer, ? extends Modifier> factory) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(fullyQualifiedName, "fullyQualifiedName");
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        Intrinsics.checkNotNullParameter(factory, "factory");
        return modifier.then(new KeyedComposedModifier3(fullyQualifiedName, obj, obj2, obj3, inspectorInfo, factory));
    }

    public static /* synthetic */ Modifier composed$default(Modifier modifier, String str, Object obj, Object obj2, Object obj3, Function1 function1, n nVar, int i10, Object obj4) {
        if ((i10 & 16) != 0) {
            function1 = InspectableValueKt.getNoInspectorInfo();
        }
        return composed(modifier, str, obj, obj2, obj3, function1, nVar);
    }

    @ExperimentalComposeUiApi
    @NotNull
    public static final Modifier composed(@NotNull Modifier modifier, @NotNull String fullyQualifiedName, @NotNull Object[] keys, @NotNull Function1<? super InspectorInfo, Unit> inspectorInfo, @NotNull n<? super Modifier, ? super Composer, ? super Integer, ? extends Modifier> factory) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(fullyQualifiedName, "fullyQualifiedName");
        Intrinsics.checkNotNullParameter(keys, "keys");
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        Intrinsics.checkNotNullParameter(factory, "factory");
        return modifier.then(new KeyedComposedModifierN(fullyQualifiedName, keys, inspectorInfo, factory));
    }

    public static /* synthetic */ Modifier composed$default(Modifier modifier, String str, Object[] objArr, Function1 function1, n nVar, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            function1 = InspectableValueKt.getNoInspectorInfo();
        }
        return composed(modifier, str, objArr, (Function1<? super InspectorInfo, Unit>) function1, (n<? super Modifier, ? super Composer, ? super Integer, ? extends Modifier>) nVar);
    }
}
