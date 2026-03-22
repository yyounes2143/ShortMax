package androidx.compose.foundation.lazy;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.foundation.gestures.ScrollExtensionsKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import gt.g;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: LazySemantics.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazySemanticsKt {
    @Composable
    @ExperimentalFoundationApi
    @NotNull
    public static final Modifier lazyListSemantics(@NotNull Modifier modifier, @NotNull final LazyListItemProvider itemProvider, @NotNull final LazyListState state, @NotNull final g0 coroutineScope, final boolean z10, boolean z11, boolean z12, @Nullable Composer composer, int i10) {
        Function2<Float, Float, Boolean> function2;
        Function1<Integer, Boolean> function1;
        int i11;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(itemProvider, "itemProvider");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        composer.startReplaceableGroup(-1728067365);
        Object[] objArr = {itemProvider, state, Boolean.valueOf(z10), Boolean.valueOf(z11), Boolean.valueOf(z12)};
        composer.startReplaceableGroup(-568225417);
        boolean z13 = false;
        for (int i12 = 0; i12 < 5; i12++) {
            z13 |= composer.changed(objArr[i12]);
        }
        Object rememberedValue = composer.rememberedValue();
        if (z13 || rememberedValue == Composer.Companion.getEmpty()) {
            final Function1<Object, Integer> function12 = new Function1<Object, Integer>() { // from class: androidx.compose.foundation.lazy.LazySemanticsKt$lazyListSemantics$1$indexForKeyMapping$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Integer invoke(@NotNull Object needle) {
                    Intrinsics.checkNotNullParameter(needle, "needle");
                    LazySemanticsKt$lazyListSemantics$1$indexForKeyMapping$1$key$1 lazySemanticsKt$lazyListSemantics$1$indexForKeyMapping$1$key$1 = new LazySemanticsKt$lazyListSemantics$1$indexForKeyMapping$1$key$1(LazyListItemProvider.this);
                    int itemCount = LazyListItemProvider.this.getItemCount();
                    int i13 = 0;
                    while (true) {
                        if (i13 >= itemCount) {
                            i13 = -1;
                            break;
                        } else if (Intrinsics.areEqual(lazySemanticsKt$lazyListSemantics$1$indexForKeyMapping$1$key$1.invoke((LazySemanticsKt$lazyListSemantics$1$indexForKeyMapping$1$key$1) Integer.valueOf(i13)), needle)) {
                            break;
                        } else {
                            i13++;
                        }
                    }
                    return Integer.valueOf(i13);
                }
            };
            final ScrollAxisRange scrollAxisRange = new ScrollAxisRange(new Function0<Float>() { // from class: androidx.compose.foundation.lazy.LazySemanticsKt$lazyListSemantics$1$accessibilityScrollState$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Float invoke() {
                    return Float.valueOf(LazyListState.this.getFirstVisibleItemIndex() + (LazyListState.this.getFirstVisibleItemScrollOffset() / 100000.0f));
                }
            }, new Function0<Float>() { // from class: androidx.compose.foundation.lazy.LazySemanticsKt$lazyListSemantics$1$accessibilityScrollState$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Float invoke() {
                    float firstVisibleItemIndex;
                    float firstVisibleItemScrollOffset;
                    if (LazyListState.this.getCanScrollForward$foundation_release()) {
                        firstVisibleItemIndex = itemProvider.getItemCount();
                        firstVisibleItemScrollOffset = 1.0f;
                    } else {
                        firstVisibleItemIndex = LazyListState.this.getFirstVisibleItemIndex();
                        firstVisibleItemScrollOffset = LazyListState.this.getFirstVisibleItemScrollOffset() / 100000.0f;
                    }
                    return Float.valueOf(firstVisibleItemIndex + firstVisibleItemScrollOffset);
                }
            }, z11);
            if (z12) {
                function2 = new Function2<Float, Float, Boolean>() { // from class: androidx.compose.foundation.lazy.LazySemanticsKt$lazyListSemantics$1$scrollByAction$1

                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* compiled from: LazySemantics.kt */
                    @Metadata
                    @d(c = "androidx.compose.foundation.lazy.LazySemanticsKt$lazyListSemantics$1$scrollByAction$1$1", f = "LazySemantics.kt", l = {95}, m = "invokeSuspend")
                    /* renamed from: androidx.compose.foundation.lazy.LazySemanticsKt$lazyListSemantics$1$scrollByAction$1$1  reason: invalid class name */
                    /* loaded from: classes.dex */
                    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
                        final /* synthetic */ float $delta;
                        final /* synthetic */ LazyListState $state;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        AnonymousClass1(LazyListState lazyListState, float f10, c<? super AnonymousClass1> cVar) {
                            super(2, cVar);
                            this.$state = lazyListState;
                            this.$delta = f10;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        @NotNull
                        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                            return new AnonymousClass1(this.$state, this.$delta, cVar);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        @Nullable
                        public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
                            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
                                LazyListState lazyListState = this.$state;
                                float f11 = this.$delta;
                                this.label = 1;
                                if (ScrollExtensionsKt.animateScrollBy$default(lazyListState, f11, null, this, 2, null) == f10) {
                                    return f10;
                                }
                            }
                            return Unit.f60915a;
                        }
                    }

                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Boolean invoke(Float f10, Float f11) {
                        return invoke(f10.floatValue(), f11.floatValue());
                    }

                    @NotNull
                    public final Boolean invoke(float f10, float f11) {
                        if (z10) {
                            f10 = f11;
                        }
                        g.d(coroutineScope, null, null, new AnonymousClass1(state, f10, null), 3, null);
                        return Boolean.TRUE;
                    }
                };
            } else {
                function2 = null;
            }
            if (z12) {
                function1 = new Function1<Integer, Boolean>() { // from class: androidx.compose.foundation.lazy.LazySemanticsKt$lazyListSemantics$1$scrollToIndexAction$1

                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* compiled from: LazySemantics.kt */
                    @Metadata
                    @d(c = "androidx.compose.foundation.lazy.LazySemanticsKt$lazyListSemantics$1$scrollToIndexAction$1$2", f = "LazySemantics.kt", l = {111}, m = "invokeSuspend")
                    /* renamed from: androidx.compose.foundation.lazy.LazySemanticsKt$lazyListSemantics$1$scrollToIndexAction$1$2  reason: invalid class name */
                    /* loaded from: classes.dex */
                    public static final class AnonymousClass2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
                        final /* synthetic */ int $index;
                        final /* synthetic */ LazyListState $state;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        AnonymousClass2(LazyListState lazyListState, int i10, c<? super AnonymousClass2> cVar) {
                            super(2, cVar);
                            this.$state = lazyListState;
                            this.$index = i10;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        @NotNull
                        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                            return new AnonymousClass2(this.$state, this.$index, cVar);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        @Nullable
                        public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
                            return ((AnonymousClass2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
                                LazyListState lazyListState = this.$state;
                                int i11 = this.$index;
                                this.label = 1;
                                if (LazyListState.scrollToItem$default(lazyListState, i11, 0, this, 2, null) == f10) {
                                    return f10;
                                }
                            }
                            return Unit.f60915a;
                        }
                    }

                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Boolean invoke(Integer num) {
                        return invoke(num.intValue());
                    }

                    @NotNull
                    public final Boolean invoke(int i13) {
                        boolean z14 = i13 >= 0 && i13 < LazyListState.this.getLayoutInfo().getTotalItemsCount();
                        LazyListState lazyListState = LazyListState.this;
                        if (z14) {
                            g.d(coroutineScope, null, null, new AnonymousClass2(lazyListState, i13, null), 3, null);
                            return Boolean.TRUE;
                        }
                        throw new IllegalArgumentException(("Can't scroll to index " + i13 + ", it is out of bounds [0, " + lazyListState.getLayoutInfo().getTotalItemsCount() + ')').toString());
                    }
                };
            } else {
                function1 = null;
            }
            int i13 = -1;
            if (z10) {
                i11 = -1;
            } else {
                i11 = 1;
            }
            if (z10) {
                i13 = 1;
            }
            final CollectionInfo collectionInfo = new CollectionInfo(i11, i13);
            final Function2<Float, Float, Boolean> function22 = function2;
            final Function1<Integer, Boolean> function13 = function1;
            rememberedValue = SemanticsModifierKt.semantics$default(Modifier.Companion, false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.foundation.lazy.LazySemanticsKt$lazyListSemantics$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
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
                    SemanticsPropertiesKt.indexForKey(semantics, function12);
                    if (z10) {
                        SemanticsPropertiesKt.setVerticalScrollAxisRange(semantics, scrollAxisRange);
                    } else {
                        SemanticsPropertiesKt.setHorizontalScrollAxisRange(semantics, scrollAxisRange);
                    }
                    Function2<Float, Float, Boolean> function23 = function22;
                    if (function23 != null) {
                        SemanticsPropertiesKt.scrollBy$default(semantics, null, function23, 1, null);
                    }
                    Function1<Integer, Boolean> function14 = function13;
                    if (function14 != null) {
                        SemanticsPropertiesKt.scrollToIndex$default(semantics, null, function14, 1, null);
                    }
                    SemanticsPropertiesKt.setCollectionInfo(semantics, collectionInfo);
                }
            }, 1, null);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        Modifier then = modifier.then((Modifier) rememberedValue);
        composer.endReplaceableGroup();
        return then;
    }
}
