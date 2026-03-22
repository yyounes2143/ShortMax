package androidx.compose.ui.platform;

import android.view.View;
import android.view.ViewParent;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.tooling.CompositionData;
import androidx.compose.runtime.tooling.InspectionTablesKt;
import androidx.compose.ui.R;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Wrapper.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class WrappedComposition implements Composition, LifecycleEventObserver {
    @Nullable
    private Lifecycle addedToLifecycle;
    private boolean disposed;
    @NotNull
    private Function2<? super Composer, ? super Integer, Unit> lastContent;
    @NotNull
    private final Composition original;
    @NotNull
    private final AndroidComposeView owner;

    public WrappedComposition(@NotNull AndroidComposeView owner, @NotNull Composition original) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(original, "original");
        this.owner = owner;
        this.original = original;
        this.lastContent = ComposableSingletons$Wrapper_androidKt.INSTANCE.m3534getLambda1$ui_release();
    }

    @Override // androidx.compose.runtime.Composition
    public void dispose() {
        if (!this.disposed) {
            this.disposed = true;
            this.owner.getView().setTag(R.id.wrapped_composition_tag, null);
            Lifecycle lifecycle = this.addedToLifecycle;
            if (lifecycle != null) {
                lifecycle.removeObserver(this);
            }
        }
        this.original.dispose();
    }

    @Override // androidx.compose.runtime.Composition
    public boolean getHasInvalidations() {
        return this.original.getHasInvalidations();
    }

    @NotNull
    public final Composition getOriginal() {
        return this.original;
    }

    @NotNull
    public final AndroidComposeView getOwner() {
        return this.owner;
    }

    @Override // androidx.compose.runtime.Composition
    public boolean isDisposed() {
        return this.original.isDisposed();
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NotNull LifecycleOwner source, @NotNull Lifecycle.Event event) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(event, "event");
        if (event == Lifecycle.Event.ON_DESTROY) {
            dispose();
        } else if (event == Lifecycle.Event.ON_CREATE && !this.disposed) {
            setContent(this.lastContent);
        }
    }

    @Override // androidx.compose.runtime.Composition
    @ComposableInferredTarget(scheme = "[0[0]]")
    public void setContent(@NotNull final Function2<? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(content, "content");
        this.owner.setOnViewTreeOwnersAvailable(new Function1<AndroidComposeView.ViewTreeOwners, Unit>() { // from class: androidx.compose.ui.platform.WrappedComposition$setContent$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(AndroidComposeView.ViewTreeOwners viewTreeOwners) {
                invoke2(viewTreeOwners);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull AndroidComposeView.ViewTreeOwners it) {
                boolean z10;
                Lifecycle lifecycle;
                Intrinsics.checkNotNullParameter(it, "it");
                z10 = WrappedComposition.this.disposed;
                if (z10) {
                    return;
                }
                Lifecycle lifecycle2 = it.getLifecycleOwner().getLifecycle();
                Intrinsics.checkNotNullExpressionValue(lifecycle2, "it.lifecycleOwner.lifecycle");
                WrappedComposition.this.lastContent = content;
                lifecycle = WrappedComposition.this.addedToLifecycle;
                if (lifecycle == null) {
                    WrappedComposition.this.addedToLifecycle = lifecycle2;
                    lifecycle2.addObserver(WrappedComposition.this);
                } else if (lifecycle2.getCurrentState().isAtLeast(Lifecycle.State.CREATED)) {
                    Composition original = WrappedComposition.this.getOriginal();
                    final WrappedComposition wrappedComposition = WrappedComposition.this;
                    final Function2<Composer, Integer, Unit> function2 = content;
                    original.setContent(ComposableLambdaKt.composableLambdaInstance(-2000640158, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.platform.WrappedComposition$setContent$1.1

                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* compiled from: Wrapper.android.kt */
                        @Metadata
                        @kotlin.coroutines.jvm.internal.d(c = "androidx.compose.ui.platform.WrappedComposition$setContent$1$1$1", f = "Wrapper.android.kt", l = {153}, m = "invokeSuspend")
                        /* renamed from: androidx.compose.ui.platform.WrappedComposition$setContent$1$1$1  reason: invalid class name and collision with other inner class name */
                        /* loaded from: classes.dex */
                        public static final class C00561 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {
                            int label;
                            final /* synthetic */ WrappedComposition this$0;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            C00561(WrappedComposition wrappedComposition, rs.c<? super C00561> cVar) {
                                super(2, cVar);
                                this.this$0 = wrappedComposition;
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            @NotNull
                            public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
                                return new C00561(this.this$0, cVar);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            @Nullable
                            public final Object invoke(@NotNull gt.g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
                                return ((C00561) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            @Nullable
                            public final Object invokeSuspend(@NotNull Object obj) {
                                Object f10 = kotlin.coroutines.intrinsics.a.f();
                                int i10 = this.label;
                                if (i10 != 0) {
                                    if (i10 == 1) {
                                        kotlin.f.b(obj);
                                    } else {
                                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                    }
                                } else {
                                    kotlin.f.b(obj);
                                    AndroidComposeView owner = this.this$0.getOwner();
                                    this.label = 1;
                                    if (owner.keyboardVisibilityEventLoop(this) == f10) {
                                        return f10;
                                    }
                                }
                                return Unit.f60915a;
                            }
                        }

                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* compiled from: Wrapper.android.kt */
                        @Metadata
                        @kotlin.coroutines.jvm.internal.d(c = "androidx.compose.ui.platform.WrappedComposition$setContent$1$1$2", f = "Wrapper.android.kt", l = {154}, m = "invokeSuspend")
                        /* renamed from: androidx.compose.ui.platform.WrappedComposition$setContent$1$1$2  reason: invalid class name */
                        /* loaded from: classes.dex */
                        public static final class AnonymousClass2 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {
                            int label;
                            final /* synthetic */ WrappedComposition this$0;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            AnonymousClass2(WrappedComposition wrappedComposition, rs.c<? super AnonymousClass2> cVar) {
                                super(2, cVar);
                                this.this$0 = wrappedComposition;
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            @NotNull
                            public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
                                return new AnonymousClass2(this.this$0, cVar);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            @Nullable
                            public final Object invoke(@NotNull gt.g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
                                return ((AnonymousClass2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            @Nullable
                            public final Object invokeSuspend(@NotNull Object obj) {
                                Object f10 = kotlin.coroutines.intrinsics.a.f();
                                int i10 = this.label;
                                if (i10 != 0) {
                                    if (i10 == 1) {
                                        kotlin.f.b(obj);
                                    } else {
                                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                    }
                                } else {
                                    kotlin.f.b(obj);
                                    AndroidComposeView owner = this.this$0.getOwner();
                                    this.label = 1;
                                    if (owner.boundsUpdatesEventLoop(this) == f10) {
                                        return f10;
                                    }
                                }
                                return Unit.f60915a;
                            }
                        }

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                            invoke(composer, num.intValue());
                            return Unit.f60915a;
                        }

                        @Composable
                        public final void invoke(@Nullable Composer composer, int i10) {
                            if ((i10 & 11) == 2 && composer.getSkipping()) {
                                composer.skipToGroupEnd();
                                return;
                            }
                            Object tag = WrappedComposition.this.getOwner().getTag(R.id.inspection_slot_table_set);
                            Set<CompositionData> set = TypeIntrinsics.isMutableSet(tag) ? (Set) tag : null;
                            if (set == null) {
                                ViewParent parent = WrappedComposition.this.getOwner().getParent();
                                View view = parent instanceof View ? (View) parent : null;
                                Object tag2 = view != null ? view.getTag(R.id.inspection_slot_table_set) : null;
                                set = TypeIntrinsics.isMutableSet(tag2) ? (Set) tag2 : null;
                            }
                            if (set != null) {
                                set.add(composer.getCompositionData());
                                composer.collectParameterInformation();
                            }
                            EffectsKt.LaunchedEffect(WrappedComposition.this.getOwner(), new C00561(WrappedComposition.this, null), composer, 8);
                            EffectsKt.LaunchedEffect(WrappedComposition.this.getOwner(), new AnonymousClass2(WrappedComposition.this, null), composer, 8);
                            final WrappedComposition wrappedComposition2 = WrappedComposition.this;
                            final Function2<Composer, Integer, Unit> function22 = function2;
                            CompositionLocalKt.CompositionLocalProvider(new ProvidedValue[]{InspectionTablesKt.getLocalInspectionTables().provides(set)}, ComposableLambdaKt.composableLambda(composer, -1193460702, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.platform.WrappedComposition.setContent.1.1.3
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

                                @Composable
                                public final void invoke(@Nullable Composer composer2, int i11) {
                                    if ((i11 & 11) == 2 && composer2.getSkipping()) {
                                        composer2.skipToGroupEnd();
                                    } else {
                                        AndroidCompositionLocals_androidKt.ProvideAndroidCompositionLocals(WrappedComposition.this.getOwner(), function22, composer2, 8);
                                    }
                                }
                            }), composer, 56);
                        }
                    }));
                }
            }
        });
    }
}
