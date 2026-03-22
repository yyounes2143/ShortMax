package androidx.compose.foundation;

import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.lazy.layout.PinnableParent;
import androidx.compose.foundation.relocation.BringIntoViewRequester;
import androidx.compose.foundation.relocation.BringIntoViewRequesterKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusChangedModifierKt;
import androidx.compose.ui.focus.FocusModifierKt;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import at.n;
import gt.g;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.CoroutineStart;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Focusable.kt */
@Metadata
/* loaded from: classes.dex */
public final class FocusableKt$focusable$2 extends Lambda implements n<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ MutableInteractionSource $interactionSource;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FocusableKt$focusable$2(MutableInteractionSource mutableInteractionSource, boolean z10) {
        super(3);
        this.$interactionSource = mutableInteractionSource;
        this.$enabled = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invoke$lambda-2  reason: not valid java name */
    public static final PinnableParent m240invoke$lambda2(MutableState<PinnableParent> mutableState) {
        return mutableState.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invoke$lambda-3  reason: not valid java name */
    public static final void m241invoke$lambda3(MutableState<PinnableParent> mutableState, PinnableParent pinnableParent) {
        mutableState.setValue(pinnableParent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invoke$lambda-5  reason: not valid java name */
    public static final boolean m242invoke$lambda5(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invoke$lambda-6  reason: not valid java name */
    public static final void m243invoke$lambda6(MutableState<Boolean> mutableState, boolean z10) {
        mutableState.setValue(Boolean.valueOf(z10));
    }

    @Override // at.n
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return invoke(modifier, composer, num.intValue());
    }

    @Composable
    @NotNull
    public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        Modifier modifier;
        Modifier modifier2;
        Modifier onPinnableParentAvailable;
        Intrinsics.checkNotNullParameter(composed, "$this$composed");
        composer.startReplaceableGroup(1871352361);
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
        final g0 coroutineScope = ((CompositionScopedCoroutineScopeCanceller) rememberedValue).getCoroutineScope();
        composer.endReplaceableGroup();
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue2 = composer.rememberedValue();
        if (rememberedValue2 == companion.getEmpty()) {
            rememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
            composer.updateRememberedValue(rememberedValue2);
        }
        composer.endReplaceableGroup();
        final MutableState mutableState = (MutableState) rememberedValue2;
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue3 = composer.rememberedValue();
        if (rememberedValue3 == companion.getEmpty()) {
            rememberedValue3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
            composer.updateRememberedValue(rememberedValue3);
        }
        composer.endReplaceableGroup();
        final MutableState mutableState2 = (MutableState) rememberedValue3;
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue4 = composer.rememberedValue();
        if (rememberedValue4 == companion.getEmpty()) {
            rememberedValue4 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
            composer.updateRememberedValue(rememberedValue4);
        }
        composer.endReplaceableGroup();
        final MutableState mutableState3 = (MutableState) rememberedValue4;
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue5 = composer.rememberedValue();
        if (rememberedValue5 == companion.getEmpty()) {
            rememberedValue5 = new FocusRequester();
            composer.updateRememberedValue(rememberedValue5);
        }
        composer.endReplaceableGroup();
        final FocusRequester focusRequester = (FocusRequester) rememberedValue5;
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue6 = composer.rememberedValue();
        if (rememberedValue6 == companion.getEmpty()) {
            rememberedValue6 = BringIntoViewRequesterKt.BringIntoViewRequester();
            composer.updateRememberedValue(rememberedValue6);
        }
        composer.endReplaceableGroup();
        final BringIntoViewRequester bringIntoViewRequester = (BringIntoViewRequester) rememberedValue6;
        final MutableInteractionSource mutableInteractionSource = this.$interactionSource;
        EffectsKt.DisposableEffect(mutableInteractionSource, new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.foundation.FocusableKt$focusable$2.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
                Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
                final MutableState<FocusInteraction.Focus> mutableState4 = mutableState;
                final MutableInteractionSource mutableInteractionSource2 = mutableInteractionSource;
                return new DisposableEffectResult() { // from class: androidx.compose.foundation.FocusableKt$focusable$2$1$invoke$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public void dispose() {
                        FocusInteraction.Focus focus = (FocusInteraction.Focus) MutableState.this.getValue();
                        if (focus != null) {
                            FocusInteraction.Unfocus unfocus = new FocusInteraction.Unfocus(focus);
                            MutableInteractionSource mutableInteractionSource3 = mutableInteractionSource2;
                            if (mutableInteractionSource3 != null) {
                                mutableInteractionSource3.tryEmit(unfocus);
                            }
                            MutableState.this.setValue(null);
                        }
                    }
                };
            }
        }, composer, 0);
        Boolean valueOf = Boolean.valueOf(this.$enabled);
        final boolean z10 = this.$enabled;
        final MutableInteractionSource mutableInteractionSource2 = this.$interactionSource;
        EffectsKt.DisposableEffect(valueOf, new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.foundation.FocusableKt$focusable$2.2

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: Focusable.kt */
            @Metadata
            @d(c = "androidx.compose.foundation.FocusableKt$focusable$2$2$1", f = "Focusable.kt", l = {105}, m = "invokeSuspend")
            /* renamed from: androidx.compose.foundation.FocusableKt$focusable$2$2$1  reason: invalid class name */
            /* loaded from: classes.dex */
            public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
                final /* synthetic */ MutableState<FocusInteraction.Focus> $focusedInteraction;
                final /* synthetic */ MutableInteractionSource $interactionSource;
                Object L$0;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(MutableState<FocusInteraction.Focus> mutableState, MutableInteractionSource mutableInteractionSource, c<? super AnonymousClass1> cVar) {
                    super(2, cVar);
                    this.$focusedInteraction = mutableState;
                    this.$interactionSource = mutableInteractionSource;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @NotNull
                public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                    return new AnonymousClass1(this.$focusedInteraction, this.$interactionSource, cVar);
                }

                @Override // kotlin.jvm.functions.Function2
                @Nullable
                public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
                    return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    MutableState<FocusInteraction.Focus> mutableState;
                    MutableState<FocusInteraction.Focus> mutableState2;
                    Object f10 = kotlin.coroutines.intrinsics.a.f();
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
                        FocusInteraction.Focus value = this.$focusedInteraction.getValue();
                        if (value != null) {
                            MutableInteractionSource mutableInteractionSource = this.$interactionSource;
                            mutableState = this.$focusedInteraction;
                            FocusInteraction.Unfocus unfocus = new FocusInteraction.Unfocus(value);
                            if (mutableInteractionSource != null) {
                                this.L$0 = mutableState;
                                this.label = 1;
                                if (mutableInteractionSource.emit(unfocus, this) == f10) {
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
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
                Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
                if (!z10) {
                    g.d(coroutineScope, null, null, new AnonymousClass1(mutableState, mutableInteractionSource2, null), 3, null);
                }
                return new DisposableEffectResult() { // from class: androidx.compose.foundation.FocusableKt$focusable$2$2$invoke$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public void dispose() {
                    }
                };
            }
        }, composer, 0);
        if (this.$enabled) {
            if (m242invoke$lambda5(mutableState3)) {
                composer.startReplaceableGroup(-492369756);
                Object rememberedValue7 = composer.rememberedValue();
                if (rememberedValue7 == companion.getEmpty()) {
                    rememberedValue7 = new FocusedBoundsModifier();
                    composer.updateRememberedValue(rememberedValue7);
                }
                composer.endReplaceableGroup();
                modifier2 = (Modifier) rememberedValue7;
            } else {
                modifier2 = Modifier.Companion;
            }
            onPinnableParentAvailable = FocusableKt.onPinnableParentAvailable(SemanticsModifierKt.semantics$default(Modifier.Companion, false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.foundation.FocusableKt$focusable$2.3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                    invoke2(semanticsPropertyReceiver);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull SemanticsPropertyReceiver semantics) {
                    Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
                    SemanticsPropertiesKt.setFocused(semantics, FocusableKt$focusable$2.m242invoke$lambda5(mutableState3));
                    final FocusRequester focusRequester2 = focusRequester;
                    final MutableState<Boolean> mutableState4 = mutableState3;
                    SemanticsPropertiesKt.requestFocus$default(semantics, null, new Function0<Boolean>() { // from class: androidx.compose.foundation.FocusableKt.focusable.2.3.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // kotlin.jvm.functions.Function0
                        @NotNull
                        public final Boolean invoke() {
                            FocusRequester.this.requestFocus();
                            return Boolean.valueOf(FocusableKt$focusable$2.m242invoke$lambda5(mutableState4));
                        }
                    }, 1, null);
                }
            }, 1, null), new Function1<PinnableParent, Unit>() { // from class: androidx.compose.foundation.FocusableKt$focusable$2.4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(PinnableParent pinnableParent) {
                    invoke2(pinnableParent);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable PinnableParent pinnableParent) {
                    FocusableKt$focusable$2.m241invoke$lambda3(mutableState2, pinnableParent);
                }
            });
            Modifier then = FocusRequesterModifierKt.focusRequester(BringIntoViewRequesterKt.bringIntoViewRequester(onPinnableParentAvailable, bringIntoViewRequester), focusRequester).then(modifier2);
            final MutableInteractionSource mutableInteractionSource3 = this.$interactionSource;
            modifier = FocusModifierKt.focusTarget(FocusChangedModifierKt.onFocusChanged(then, new Function1<FocusState, Unit>() { // from class: androidx.compose.foundation.FocusableKt$focusable$2.5

                /* JADX INFO: Access modifiers changed from: package-private */
                /* compiled from: Focusable.kt */
                @Metadata
                @d(c = "androidx.compose.foundation.FocusableKt$focusable$2$5$1", f = "Focusable.kt", l = {144}, m = "invokeSuspend")
                /* renamed from: androidx.compose.foundation.FocusableKt$focusable$2$5$1  reason: invalid class name */
                /* loaded from: classes.dex */
                public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
                    final /* synthetic */ BringIntoViewRequester $bringIntoViewRequester;
                    final /* synthetic */ MutableState<PinnableParent> $pinnableParent$delegate;
                    Object L$0;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    AnonymousClass1(BringIntoViewRequester bringIntoViewRequester, MutableState<PinnableParent> mutableState, c<? super AnonymousClass1> cVar) {
                        super(2, cVar);
                        this.$bringIntoViewRequester = bringIntoViewRequester;
                        this.$pinnableParent$delegate = mutableState;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @NotNull
                    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                        return new AnonymousClass1(this.$bringIntoViewRequester, this.$pinnableParent$delegate, cVar);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    @Nullable
                    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
                        return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                    }

                    /* JADX WARN: Removed duplicated region for block: B:31:0x004e  */
                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @org.jetbrains.annotations.Nullable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r6) {
                        /*
                            r5 = this;
                            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                            int r1 = r5.label
                            r2 = 1
                            if (r1 == 0) goto L1d
                            if (r1 != r2) goto L15
                            java.lang.Object r0 = r5.L$0
                            androidx.compose.foundation.lazy.layout.PinnableParent$PinnedItemsHandle r0 = (androidx.compose.foundation.lazy.layout.PinnableParent.PinnedItemsHandle) r0
                            kotlin.f.b(r6)     // Catch: java.lang.Throwable -> L13
                            goto L42
                        L13:
                            r6 = move-exception
                            goto L4c
                        L15:
                            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                            r6.<init>(r0)
                            throw r6
                        L1d:
                            kotlin.f.b(r6)
                            r6 = 0
                            androidx.compose.runtime.MutableState<androidx.compose.foundation.lazy.layout.PinnableParent> r1 = r5.$pinnableParent$delegate     // Catch: java.lang.Throwable -> L2e
                            androidx.compose.foundation.lazy.layout.PinnableParent r1 = androidx.compose.foundation.FocusableKt$focusable$2.m236access$invoke$lambda2(r1)     // Catch: java.lang.Throwable -> L2e
                            if (r1 == 0) goto L33
                            androidx.compose.foundation.lazy.layout.PinnableParent$PinnedItemsHandle r1 = r1.pinItems()     // Catch: java.lang.Throwable -> L2e
                            goto L34
                        L2e:
                            r0 = move-exception
                            r4 = r0
                            r0 = r6
                            r6 = r4
                            goto L4c
                        L33:
                            r1 = r6
                        L34:
                            androidx.compose.foundation.relocation.BringIntoViewRequester r3 = r5.$bringIntoViewRequester     // Catch: java.lang.Throwable -> L4a
                            r5.L$0 = r1     // Catch: java.lang.Throwable -> L4a
                            r5.label = r2     // Catch: java.lang.Throwable -> L4a
                            java.lang.Object r6 = androidx.compose.foundation.relocation.BringIntoViewRequester.bringIntoView$default(r3, r6, r5, r2, r6)     // Catch: java.lang.Throwable -> L4a
                            if (r6 != r0) goto L41
                            return r0
                        L41:
                            r0 = r1
                        L42:
                            if (r0 == 0) goto L47
                            r0.unpin()
                        L47:
                            kotlin.Unit r6 = kotlin.Unit.f60915a
                            return r6
                        L4a:
                            r6 = move-exception
                            r0 = r1
                        L4c:
                            if (r0 == 0) goto L51
                            r0.unpin()
                        L51:
                            throw r6
                        */
                        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.FocusableKt$focusable$2.AnonymousClass5.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
                    }
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                /* compiled from: Focusable.kt */
                @Metadata
                @d(c = "androidx.compose.foundation.FocusableKt$focusable$2$5$2", f = "Focusable.kt", l = {152, 156}, m = "invokeSuspend")
                /* renamed from: androidx.compose.foundation.FocusableKt$focusable$2$5$2  reason: invalid class name */
                /* loaded from: classes.dex */
                public static final class AnonymousClass2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
                    final /* synthetic */ MutableState<FocusInteraction.Focus> $focusedInteraction;
                    final /* synthetic */ MutableInteractionSource $interactionSource;
                    Object L$0;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    AnonymousClass2(MutableState<FocusInteraction.Focus> mutableState, MutableInteractionSource mutableInteractionSource, c<? super AnonymousClass2> cVar) {
                        super(2, cVar);
                        this.$focusedInteraction = mutableState;
                        this.$interactionSource = mutableInteractionSource;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @NotNull
                    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                        return new AnonymousClass2(this.$focusedInteraction, this.$interactionSource, cVar);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    @Nullable
                    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
                        return ((AnonymousClass2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                    }

                    /* JADX WARN: Removed duplicated region for block: B:22:0x0058  */
                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @org.jetbrains.annotations.Nullable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r7) {
                        /*
                            r6 = this;
                            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                            int r1 = r6.label
                            r2 = 2
                            r3 = 1
                            if (r1 == 0) goto L26
                            if (r1 == r3) goto L1e
                            if (r1 != r2) goto L16
                            java.lang.Object r0 = r6.L$0
                            androidx.compose.foundation.interaction.FocusInteraction$Focus r0 = (androidx.compose.foundation.interaction.FocusInteraction.Focus) r0
                            kotlin.f.b(r7)
                            goto L64
                        L16:
                            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                            r7.<init>(r0)
                            throw r7
                        L1e:
                            java.lang.Object r1 = r6.L$0
                            androidx.compose.runtime.MutableState r1 = (androidx.compose.runtime.MutableState) r1
                            kotlin.f.b(r7)
                            goto L4a
                        L26:
                            kotlin.f.b(r7)
                            androidx.compose.runtime.MutableState<androidx.compose.foundation.interaction.FocusInteraction$Focus> r7 = r6.$focusedInteraction
                            java.lang.Object r7 = r7.getValue()
                            androidx.compose.foundation.interaction.FocusInteraction$Focus r7 = (androidx.compose.foundation.interaction.FocusInteraction.Focus) r7
                            if (r7 == 0) goto L4f
                            androidx.compose.foundation.interaction.MutableInteractionSource r1 = r6.$interactionSource
                            androidx.compose.runtime.MutableState<androidx.compose.foundation.interaction.FocusInteraction$Focus> r4 = r6.$focusedInteraction
                            androidx.compose.foundation.interaction.FocusInteraction$Unfocus r5 = new androidx.compose.foundation.interaction.FocusInteraction$Unfocus
                            r5.<init>(r7)
                            if (r1 == 0) goto L4b
                            r6.L$0 = r4
                            r6.label = r3
                            java.lang.Object r7 = r1.emit(r5, r6)
                            if (r7 != r0) goto L49
                            return r0
                        L49:
                            r1 = r4
                        L4a:
                            r4 = r1
                        L4b:
                            r7 = 0
                            r4.setValue(r7)
                        L4f:
                            androidx.compose.foundation.interaction.FocusInteraction$Focus r7 = new androidx.compose.foundation.interaction.FocusInteraction$Focus
                            r7.<init>()
                            androidx.compose.foundation.interaction.MutableInteractionSource r1 = r6.$interactionSource
                            if (r1 == 0) goto L65
                            r6.L$0 = r7
                            r6.label = r2
                            java.lang.Object r1 = r1.emit(r7, r6)
                            if (r1 != r0) goto L63
                            return r0
                        L63:
                            r0 = r7
                        L64:
                            r7 = r0
                        L65:
                            androidx.compose.runtime.MutableState<androidx.compose.foundation.interaction.FocusInteraction$Focus> r0 = r6.$focusedInteraction
                            r0.setValue(r7)
                            kotlin.Unit r7 = kotlin.Unit.f60915a
                            return r7
                        */
                        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.FocusableKt$focusable$2.AnonymousClass5.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
                    }
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                /* compiled from: Focusable.kt */
                @Metadata
                @d(c = "androidx.compose.foundation.FocusableKt$focusable$2$5$3", f = "Focusable.kt", l = {163}, m = "invokeSuspend")
                /* renamed from: androidx.compose.foundation.FocusableKt$focusable$2$5$3  reason: invalid class name */
                /* loaded from: classes.dex */
                public static final class AnonymousClass3 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
                    final /* synthetic */ MutableState<FocusInteraction.Focus> $focusedInteraction;
                    final /* synthetic */ MutableInteractionSource $interactionSource;
                    Object L$0;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    AnonymousClass3(MutableState<FocusInteraction.Focus> mutableState, MutableInteractionSource mutableInteractionSource, c<? super AnonymousClass3> cVar) {
                        super(2, cVar);
                        this.$focusedInteraction = mutableState;
                        this.$interactionSource = mutableInteractionSource;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @NotNull
                    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                        return new AnonymousClass3(this.$focusedInteraction, this.$interactionSource, cVar);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    @Nullable
                    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
                        return ((AnonymousClass3) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        MutableState<FocusInteraction.Focus> mutableState;
                        MutableState<FocusInteraction.Focus> mutableState2;
                        Object f10 = kotlin.coroutines.intrinsics.a.f();
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
                            FocusInteraction.Focus value = this.$focusedInteraction.getValue();
                            if (value != null) {
                                MutableInteractionSource mutableInteractionSource = this.$interactionSource;
                                mutableState = this.$focusedInteraction;
                                FocusInteraction.Unfocus unfocus = new FocusInteraction.Unfocus(value);
                                if (mutableInteractionSource != null) {
                                    this.L$0 = mutableState;
                                    this.label = 1;
                                    if (mutableInteractionSource.emit(unfocus, this) == f10) {
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
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(FocusState focusState) {
                    invoke2(focusState);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull FocusState it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    FocusableKt$focusable$2.m243invoke$lambda6(mutableState3, it.isFocused());
                    if (FocusableKt$focusable$2.m242invoke$lambda5(mutableState3)) {
                        g.d(g0.this, null, CoroutineStart.UNDISPATCHED, new AnonymousClass1(bringIntoViewRequester, mutableState2, null), 1, null);
                        g.d(g0.this, null, null, new AnonymousClass2(mutableState, mutableInteractionSource3, null), 3, null);
                        return;
                    }
                    g.d(g0.this, null, null, new AnonymousClass3(mutableState, mutableInteractionSource3, null), 3, null);
                }
            }));
        } else {
            modifier = Modifier.Companion;
        }
        composer.endReplaceableGroup();
        return modifier;
    }
}
