package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.PressGestureScope;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import at.n;
import gt.g;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: TextFieldPressGestureFilter.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextFieldPressGestureFilterKt {
    @NotNull
    public static final Modifier tapPressTextFieldModifier(@NotNull Modifier modifier, @Nullable final MutableInteractionSource mutableInteractionSource, boolean z10, @NotNull final Function1<? super Offset, Unit> onTap) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(onTap, "onTap");
        if (z10) {
            return ComposedModifierKt.composed$default(modifier, null, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1

                /* JADX INFO: Access modifiers changed from: package-private */
                /* compiled from: TextFieldPressGestureFilter.kt */
                @Metadata
                @d(c = "androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2", f = "TextFieldPressGestureFilter.kt", l = {55}, m = "invokeSuspend")
                /* renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2  reason: invalid class name */
                /* loaded from: classes.dex */
                public static final class AnonymousClass2 extends SuspendLambda implements Function2<PointerInputScope, c<? super Unit>, Object> {
                    final /* synthetic */ MutableInteractionSource $interactionSource;
                    final /* synthetic */ State<Function1<Offset, Unit>> $onTapState;
                    final /* synthetic */ MutableState<PressInteraction.Press> $pressedInteraction;
                    final /* synthetic */ g0 $scope;
                    private /* synthetic */ Object L$0;
                    int label;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* compiled from: TextFieldPressGestureFilter.kt */
                    @Metadata
                    @d(c = "androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1", f = "TextFieldPressGestureFilter.kt", l = {68}, m = "invokeSuspend")
                    /* renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1  reason: invalid class name */
                    /* loaded from: classes.dex */
                    public static final class AnonymousClass1 extends SuspendLambda implements n<PressGestureScope, Offset, c<? super Unit>, Object> {
                        final /* synthetic */ MutableInteractionSource $interactionSource;
                        final /* synthetic */ MutableState<PressInteraction.Press> $pressedInteraction;
                        final /* synthetic */ g0 $scope;
                        /* synthetic */ long J$0;
                        private /* synthetic */ Object L$0;
                        int label;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* compiled from: TextFieldPressGestureFilter.kt */
                        @Metadata
                        @d(c = "androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1", f = "TextFieldPressGestureFilter.kt", l = {61, 65}, m = "invokeSuspend")
                        /* renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1  reason: invalid class name and collision with other inner class name */
                        /* loaded from: classes.dex */
                        public static final class C00251 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
                            final /* synthetic */ MutableInteractionSource $interactionSource;
                            final /* synthetic */ long $it;
                            final /* synthetic */ MutableState<PressInteraction.Press> $pressedInteraction;
                            Object L$0;
                            int label;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            C00251(MutableState<PressInteraction.Press> mutableState, long j10, MutableInteractionSource mutableInteractionSource, c<? super C00251> cVar) {
                                super(2, cVar);
                                this.$pressedInteraction = mutableState;
                                this.$it = j10;
                                this.$interactionSource = mutableInteractionSource;
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            @NotNull
                            public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                                return new C00251(this.$pressedInteraction, this.$it, this.$interactionSource, cVar);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            @Nullable
                            public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
                                return ((C00251) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                            }

                            /* JADX WARN: Removed duplicated region for block: B:22:0x005a  */
                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            @org.jetbrains.annotations.Nullable
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                                To view partially-correct add '--show-bad-code' argument
                            */
                            public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r8) {
                                /*
                                    r7 = this;
                                    java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                                    int r1 = r7.label
                                    r2 = 0
                                    r3 = 2
                                    r4 = 1
                                    if (r1 == 0) goto L27
                                    if (r1 == r4) goto L1f
                                    if (r1 != r3) goto L17
                                    java.lang.Object r0 = r7.L$0
                                    androidx.compose.foundation.interaction.PressInteraction$Press r0 = (androidx.compose.foundation.interaction.PressInteraction.Press) r0
                                    kotlin.f.b(r8)
                                    goto L66
                                L17:
                                    java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                                    java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                                    r8.<init>(r0)
                                    throw r8
                                L1f:
                                    java.lang.Object r1 = r7.L$0
                                    androidx.compose.runtime.MutableState r1 = (androidx.compose.runtime.MutableState) r1
                                    kotlin.f.b(r8)
                                    goto L4b
                                L27:
                                    kotlin.f.b(r8)
                                    androidx.compose.runtime.MutableState<androidx.compose.foundation.interaction.PressInteraction$Press> r8 = r7.$pressedInteraction
                                    java.lang.Object r8 = r8.getValue()
                                    androidx.compose.foundation.interaction.PressInteraction$Press r8 = (androidx.compose.foundation.interaction.PressInteraction.Press) r8
                                    if (r8 == 0) goto L4f
                                    androidx.compose.foundation.interaction.MutableInteractionSource r1 = r7.$interactionSource
                                    androidx.compose.runtime.MutableState<androidx.compose.foundation.interaction.PressInteraction$Press> r5 = r7.$pressedInteraction
                                    androidx.compose.foundation.interaction.PressInteraction$Cancel r6 = new androidx.compose.foundation.interaction.PressInteraction$Cancel
                                    r6.<init>(r8)
                                    if (r1 == 0) goto L4c
                                    r7.L$0 = r5
                                    r7.label = r4
                                    java.lang.Object r8 = r1.emit(r6, r7)
                                    if (r8 != r0) goto L4a
                                    return r0
                                L4a:
                                    r1 = r5
                                L4b:
                                    r5 = r1
                                L4c:
                                    r5.setValue(r2)
                                L4f:
                                    androidx.compose.foundation.interaction.PressInteraction$Press r8 = new androidx.compose.foundation.interaction.PressInteraction$Press
                                    long r4 = r7.$it
                                    r8.<init>(r4, r2)
                                    androidx.compose.foundation.interaction.MutableInteractionSource r1 = r7.$interactionSource
                                    if (r1 == 0) goto L67
                                    r7.L$0 = r8
                                    r7.label = r3
                                    java.lang.Object r1 = r1.emit(r8, r7)
                                    if (r1 != r0) goto L65
                                    return r0
                                L65:
                                    r0 = r8
                                L66:
                                    r8 = r0
                                L67:
                                    androidx.compose.runtime.MutableState<androidx.compose.foundation.interaction.PressInteraction$Press> r0 = r7.$pressedInteraction
                                    r0.setValue(r8)
                                    kotlin.Unit r8 = kotlin.Unit.f60915a
                                    return r8
                                */
                                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1.AnonymousClass2.AnonymousClass1.C00251.invokeSuspend(java.lang.Object):java.lang.Object");
                            }
                        }

                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* compiled from: TextFieldPressGestureFilter.kt */
                        @Metadata
                        @d(c = "androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$2", f = "TextFieldPressGestureFilter.kt", l = {77}, m = "invokeSuspend")
                        /* renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$2  reason: invalid class name and collision with other inner class name */
                        /* loaded from: classes.dex */
                        public static final class C00262 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
                            final /* synthetic */ MutableInteractionSource $interactionSource;
                            final /* synthetic */ MutableState<PressInteraction.Press> $pressedInteraction;
                            final /* synthetic */ boolean $success;
                            Object L$0;
                            int label;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            C00262(MutableState<PressInteraction.Press> mutableState, boolean z10, MutableInteractionSource mutableInteractionSource, c<? super C00262> cVar) {
                                super(2, cVar);
                                this.$pressedInteraction = mutableState;
                                this.$success = z10;
                                this.$interactionSource = mutableInteractionSource;
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            @NotNull
                            public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                                return new C00262(this.$pressedInteraction, this.$success, this.$interactionSource, cVar);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            @Nullable
                            public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
                                return ((C00262) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            @Nullable
                            public final Object invokeSuspend(@NotNull Object obj) {
                                MutableState<PressInteraction.Press> mutableState;
                                Interaction cancel;
                                MutableState<PressInteraction.Press> mutableState2;
                                Object f10 = a.f();
                                int i10 = this.label;
                                if (i10 != 0) {
                                    if (i10 == 1) {
                                        mutableState2 = (MutableState) this.L$0;
                                        f.b(obj);
                                    } else {
                                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                    }
                                } else {
                                    f.b(obj);
                                    PressInteraction.Press value = this.$pressedInteraction.getValue();
                                    if (value != null) {
                                        boolean z10 = this.$success;
                                        MutableInteractionSource mutableInteractionSource = this.$interactionSource;
                                        mutableState = this.$pressedInteraction;
                                        if (z10) {
                                            cancel = new PressInteraction.Release(value);
                                        } else {
                                            cancel = new PressInteraction.Cancel(value);
                                        }
                                        if (mutableInteractionSource != null) {
                                            this.L$0 = mutableState;
                                            this.label = 1;
                                            if (mutableInteractionSource.emit(cancel, this) == f10) {
                                                return f10;
                                            }
                                            mutableState2 = mutableState;
                                        }
                                        mutableState.setValue(null);
                                    }
                                    return Unit.f60915a;
                                }
                                mutableState = mutableState2;
                                mutableState.setValue(null);
                                return Unit.f60915a;
                            }
                        }

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        AnonymousClass1(g0 g0Var, MutableState<PressInteraction.Press> mutableState, MutableInteractionSource mutableInteractionSource, c<? super AnonymousClass1> cVar) {
                            super(3, cVar);
                            this.$scope = g0Var;
                            this.$pressedInteraction = mutableState;
                            this.$interactionSource = mutableInteractionSource;
                        }

                        @Override // at.n
                        public /* bridge */ /* synthetic */ Object invoke(PressGestureScope pressGestureScope, Offset offset, c<? super Unit> cVar) {
                            return m781invoked4ec7I(pressGestureScope, offset.m1616unboximpl(), cVar);
                        }

                        @Nullable
                        /* renamed from: invoke-d-4ec7I  reason: not valid java name */
                        public final Object m781invoked4ec7I(@NotNull PressGestureScope pressGestureScope, long j10, @Nullable c<? super Unit> cVar) {
                            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$scope, this.$pressedInteraction, this.$interactionSource, cVar);
                            anonymousClass1.L$0 = pressGestureScope;
                            anonymousClass1.J$0 = j10;
                            return anonymousClass1.invokeSuspend(Unit.f60915a);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        @Nullable
                        public final Object invokeSuspend(@NotNull Object obj) {
                            Object f10 = a.f();
                            int i10 = this.label;
                            if (i10 != 0) {
                                if (i10 == 1) {
                                    f.b(obj);
                                } else {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                            } else {
                                f.b(obj);
                                g.d(this.$scope, null, null, new C00251(this.$pressedInteraction, this.J$0, this.$interactionSource, null), 3, null);
                                this.label = 1;
                                obj = ((PressGestureScope) this.L$0).tryAwaitRelease(this);
                                if (obj == f10) {
                                    return f10;
                                }
                            }
                            g.d(this.$scope, null, null, new C00262(this.$pressedInteraction, ((Boolean) obj).booleanValue(), this.$interactionSource, null), 3, null);
                            return Unit.f60915a;
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    AnonymousClass2(g0 g0Var, MutableState<PressInteraction.Press> mutableState, MutableInteractionSource mutableInteractionSource, State<? extends Function1<? super Offset, Unit>> state, c<? super AnonymousClass2> cVar) {
                        super(2, cVar);
                        this.$scope = g0Var;
                        this.$pressedInteraction = mutableState;
                        this.$interactionSource = mutableInteractionSource;
                        this.$onTapState = state;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @NotNull
                    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                        AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$scope, this.$pressedInteraction, this.$interactionSource, this.$onTapState, cVar);
                        anonymousClass2.L$0 = obj;
                        return anonymousClass2;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    @Nullable
                    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable c<? super Unit> cVar) {
                        return ((AnonymousClass2) create(pointerInputScope, cVar)).invokeSuspend(Unit.f60915a);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        Object f10 = a.f();
                        int i10 = this.label;
                        if (i10 != 0) {
                            if (i10 == 1) {
                                f.b(obj);
                            } else {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                        } else {
                            f.b(obj);
                            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$scope, this.$pressedInteraction, this.$interactionSource, null);
                            final State<Function1<Offset, Unit>> state = this.$onTapState;
                            Function1<Offset, Unit> function1 = new Function1<Offset, Unit>() { // from class: androidx.compose.foundation.text.TextFieldPressGestureFilterKt.tapPressTextFieldModifier.1.2.2
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                /* JADX WARN: Multi-variable type inference failed */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(Offset offset) {
                                    m782invokek4lQ0M(offset.m1616unboximpl());
                                    return Unit.f60915a;
                                }

                                /* renamed from: invoke-k-4lQ0M  reason: not valid java name */
                                public final void m782invokek4lQ0M(long j10) {
                                    state.getValue().invoke(Offset.m1595boximpl(j10));
                                }
                            };
                            this.label = 1;
                            if (TapGestureDetectorKt.detectTapAndPress((PointerInputScope) this.L$0, anonymousClass1, function1, this) == f10) {
                                return f10;
                            }
                        }
                        return Unit.f60915a;
                    }
                }

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
                    composer.startReplaceableGroup(-102778667);
                    composer.startReplaceableGroup(773894976);
                    composer.startReplaceableGroup(-492369756);
                    Object rememberedValue = composer.rememberedValue();
                    Composer.Companion companion = Composer.Companion;
                    if (rememberedValue == companion.getEmpty()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.f61040a, composer));
                        composer.updateRememberedValue(compositionScopedCoroutineScopeCanceller);
                        rememberedValue = compositionScopedCoroutineScopeCanceller;
                    }
                    composer.endReplaceableGroup();
                    g0 coroutineScope = ((CompositionScopedCoroutineScopeCanceller) rememberedValue).getCoroutineScope();
                    composer.endReplaceableGroup();
                    composer.startReplaceableGroup(-492369756);
                    Object rememberedValue2 = composer.rememberedValue();
                    if (rememberedValue2 == companion.getEmpty()) {
                        rememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                        composer.updateRememberedValue(rememberedValue2);
                    }
                    composer.endReplaceableGroup();
                    final MutableState mutableState = (MutableState) rememberedValue2;
                    State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(onTap, composer, 0);
                    final MutableInteractionSource mutableInteractionSource2 = mutableInteractionSource;
                    EffectsKt.DisposableEffect(mutableInteractionSource2, new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        @NotNull
                        public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
                            Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
                            final MutableState<PressInteraction.Press> mutableState2 = mutableState;
                            final MutableInteractionSource mutableInteractionSource3 = mutableInteractionSource2;
                            return new DisposableEffectResult() { // from class: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$1$invoke$$inlined$onDispose$1
                                @Override // androidx.compose.runtime.DisposableEffectResult
                                public void dispose() {
                                    PressInteraction.Press press = (PressInteraction.Press) MutableState.this.getValue();
                                    if (press != null) {
                                        PressInteraction.Cancel cancel = new PressInteraction.Cancel(press);
                                        MutableInteractionSource mutableInteractionSource4 = mutableInteractionSource3;
                                        if (mutableInteractionSource4 != null) {
                                            mutableInteractionSource4.tryEmit(cancel);
                                        }
                                        MutableState.this.setValue(null);
                                    }
                                }
                            };
                        }
                    }, composer, 0);
                    Modifier.Companion companion2 = Modifier.Companion;
                    MutableInteractionSource mutableInteractionSource3 = mutableInteractionSource;
                    Modifier pointerInput = SuspendingPointerInputFilterKt.pointerInput(companion2, mutableInteractionSource3, new AnonymousClass2(coroutineScope, mutableState, mutableInteractionSource3, rememberUpdatedState, null));
                    composer.endReplaceableGroup();
                    return pointerInput;
                }
            }, 1, null);
        }
        return modifier;
    }

    public static /* synthetic */ Modifier tapPressTextFieldModifier$default(Modifier modifier, MutableInteractionSource mutableInteractionSource, boolean z10, Function1 function1, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        return tapPressTextFieldModifier(modifier, mutableInteractionSource, z10, function1);
    }
}
