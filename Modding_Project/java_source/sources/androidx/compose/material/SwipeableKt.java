package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.DraggableKt$draggable$1;
import androidx.compose.foundation.gestures.DraggableKt$draggable$2;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import at.n;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import gt.g;
import gt.g0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
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
/* compiled from: Swipeable.kt */
@Metadata
/* loaded from: classes.dex */
public final class SwipeableKt {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003f, code lost:
        if (r3 < r6.invoke(java.lang.Float.valueOf(r0), java.lang.Float.valueOf(r5)).floatValue()) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005c, code lost:
        if (r3 > r6.invoke(java.lang.Float.valueOf(r5), java.lang.Float.valueOf(r0)).floatValue()) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:?, code lost:
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:?, code lost:
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final float computeTarget(float r3, float r4, java.util.Set<java.lang.Float> r5, kotlin.jvm.functions.Function2<? super java.lang.Float, ? super java.lang.Float, java.lang.Float> r6, float r7, float r8) {
        /*
            java.util.List r5 = findBounds(r3, r5)
            int r0 = r5.size()
            if (r0 == 0) goto L6c
            r1 = 0
            r2 = 1
            if (r0 == r2) goto L62
            java.lang.Object r0 = r5.get(r1)
            java.lang.Number r0 = (java.lang.Number) r0
            float r0 = r0.floatValue()
            java.lang.Object r5 = r5.get(r2)
            java.lang.Number r5 = (java.lang.Number) r5
            float r5 = r5.floatValue()
            int r4 = (r4 > r3 ? 1 : (r4 == r3 ? 0 : -1))
            if (r4 > 0) goto L42
            int r4 = (r7 > r8 ? 1 : (r7 == r8 ? 0 : -1))
            if (r4 < 0) goto L2b
            return r5
        L2b:
            java.lang.Float r4 = java.lang.Float.valueOf(r0)
            java.lang.Float r7 = java.lang.Float.valueOf(r5)
            java.lang.Object r4 = r6.invoke(r4, r7)
            java.lang.Number r4 = (java.lang.Number) r4
            float r4 = r4.floatValue()
            int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r3 >= 0) goto L5e
            goto L60
        L42:
            float r4 = -r8
            int r4 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r4 > 0) goto L48
            return r0
        L48:
            java.lang.Float r4 = java.lang.Float.valueOf(r5)
            java.lang.Float r7 = java.lang.Float.valueOf(r0)
            java.lang.Object r4 = r6.invoke(r4, r7)
            java.lang.Number r4 = (java.lang.Number) r4
            float r4 = r4.floatValue()
            int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r3 <= 0) goto L60
        L5e:
            r4 = r5
            goto L6c
        L60:
            r4 = r0
            goto L6c
        L62:
            java.lang.Object r3 = r5.get(r1)
            java.lang.Number r3 = (java.lang.Number) r3
            float r4 = r3.floatValue()
        L6c:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.SwipeableKt.computeTarget(float, float, java.util.Set, kotlin.jvm.functions.Function2, float, float):float");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<Float> findBounds(float f10, Set<Float> set) {
        Set<Float> set2 = set;
        ArrayList arrayList = new ArrayList();
        for (Object obj : set2) {
            if (((Number) obj).floatValue() <= f10 + 0.001d) {
                arrayList.add(obj);
            }
        }
        Float F0 = CollectionsKt.F0(arrayList);
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : set2) {
            if (((Number) obj2).floatValue() >= f10 - 0.001d) {
                arrayList2.add(obj2);
            }
        }
        Float H0 = CollectionsKt.H0(arrayList2);
        if (F0 == null) {
            return CollectionsKt.r(H0);
        }
        if (H0 == null) {
            return CollectionsKt.e(F0);
        }
        if (Intrinsics.areEqual(F0, H0)) {
            return CollectionsKt.e(F0);
        }
        return CollectionsKt.q(F0, H0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> Float getOffset(Map<Float, ? extends T> map, T t10) {
        T t11;
        Iterator<T> it = map.entrySet().iterator();
        while (true) {
            if (it.hasNext()) {
                t11 = it.next();
                if (Intrinsics.areEqual(((Map.Entry) t11).getValue(), t10)) {
                    break;
                }
            } else {
                t11 = null;
                break;
            }
        }
        Map.Entry entry = (Map.Entry) t11;
        if (entry == null) {
            return null;
        }
        return (Float) entry.getKey();
    }

    @NotNull
    public static final <T> NestedScrollConnection getPreUpPostDownNestedScrollConnection(@NotNull SwipeableState<T> swipeableState) {
        Intrinsics.checkNotNullParameter(swipeableState, "<this>");
        return new SwipeableKt$PreUpPostDownNestedScrollConnection$1(swipeableState);
    }

    @Composable
    @ExperimentalMaterialApi
    @NotNull
    public static final <T> SwipeableState<T> rememberSwipeableState(@NotNull final T initialValue, @Nullable final AnimationSpec<Float> animationSpec, @Nullable final Function1<? super T, Boolean> function1, @Nullable Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        composer.startReplaceableGroup(-1237755169);
        if ((i11 & 2) != 0) {
            animationSpec = SwipeableDefaults.INSTANCE.getAnimationSpec();
        }
        if ((i11 & 4) != 0) {
            function1 = new Function1<T, Boolean>() { // from class: androidx.compose.material.SwipeableKt$rememberSwipeableState$1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull T it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Boolean.TRUE;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Boolean invoke(Object obj) {
                    return invoke((SwipeableKt$rememberSwipeableState$1<T>) obj);
                }
            };
        }
        SwipeableState<T> swipeableState = (SwipeableState) RememberSaveableKt.m1492rememberSaveable(new Object[0], (Saver<Object, ? extends Object>) SwipeableState.Companion.Saver(animationSpec, function1), (String) null, (Function0<? extends Object>) new Function0<SwipeableState<T>>() { // from class: androidx.compose.material.SwipeableKt$rememberSwipeableState$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                return invoke();
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SwipeableState<T> invoke() {
                return new SwipeableState<>(initialValue, animationSpec, function1);
            }
        }, composer, 72, 4);
        composer.endReplaceableGroup();
        return swipeableState;
    }

    @Composable
    @ExperimentalMaterialApi
    @NotNull
    public static final <T> SwipeableState<T> rememberSwipeableStateFor(@NotNull final T value, @NotNull final Function1<? super T, Unit> onValueChange, @Nullable AnimationSpec<Float> animationSpec, @Nullable Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(onValueChange, "onValueChange");
        composer.startReplaceableGroup(1156387078);
        if ((i11 & 4) != 0) {
            animationSpec = SwipeableDefaults.INSTANCE.getAnimationSpec();
        }
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (rememberedValue == companion.getEmpty()) {
            rememberedValue = new SwipeableState(value, animationSpec, new Function1<T, Boolean>() { // from class: androidx.compose.material.SwipeableKt$rememberSwipeableStateFor$swipeableState$1$1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull T it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Boolean.TRUE;
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Boolean invoke(Object obj) {
                    return invoke((SwipeableKt$rememberSwipeableStateFor$swipeableState$1$1<T>) obj);
                }
            });
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        final SwipeableState<T> swipeableState = (SwipeableState) rememberedValue;
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue2 = composer.rememberedValue();
        if (rememberedValue2 == companion.getEmpty()) {
            rememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
            composer.updateRememberedValue(rememberedValue2);
        }
        composer.endReplaceableGroup();
        final MutableState mutableState = (MutableState) rememberedValue2;
        EffectsKt.LaunchedEffect(value, mutableState.getValue(), new SwipeableKt$rememberSwipeableStateFor$1(value, swipeableState, null), composer, i10 & 14);
        EffectsKt.DisposableEffect(swipeableState.getCurrentValue(), new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.material.SwipeableKt$rememberSwipeableStateFor$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ DisposableEffectResult invoke(DisposableEffectScope disposableEffectScope) {
                return invoke2(disposableEffectScope);
            }

            @NotNull
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final DisposableEffectResult invoke2(@NotNull DisposableEffectScope DisposableEffect) {
                Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
                if (!Intrinsics.areEqual(value, swipeableState.getCurrentValue())) {
                    onValueChange.invoke(swipeableState.getCurrentValue());
                    MutableState<Boolean> mutableState2 = mutableState;
                    mutableState2.setValue(Boolean.valueOf(!mutableState2.getValue().booleanValue()));
                }
                return new DisposableEffectResult() { // from class: androidx.compose.material.SwipeableKt$rememberSwipeableStateFor$2$invoke$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public void dispose() {
                    }
                };
            }
        }, composer, i10 & 8);
        composer.endReplaceableGroup();
        return swipeableState;
    }

    @ExperimentalMaterialApi
    @NotNull
    /* renamed from: swipeable-pPrIpRY  reason: not valid java name */
    public static final <T> Modifier m1209swipeablepPrIpRY(@NotNull Modifier swipeable, @NotNull final SwipeableState<T> state, @NotNull final Map<Float, ? extends T> anchors, @NotNull final Orientation orientation, final boolean z10, final boolean z11, @Nullable final MutableInteractionSource mutableInteractionSource, @NotNull final Function2<? super T, ? super T, ? extends ThresholdConfig> thresholds, @Nullable final ResistanceConfig resistanceConfig, final float f10) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(swipeable, "$this$swipeable");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(anchors, "anchors");
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Intrinsics.checkNotNullParameter(thresholds, "thresholds");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.material.SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("swipeable");
                    inspectorInfo.getProperties().set("state", SwipeableState.this);
                    inspectorInfo.getProperties().set("anchors", anchors);
                    inspectorInfo.getProperties().set(AdUnitActivity.EXTRA_ORIENTATION, orientation);
                    inspectorInfo.getProperties().set("enabled", Boolean.valueOf(z10));
                    inspectorInfo.getProperties().set("reverseDirection", Boolean.valueOf(z11));
                    inspectorInfo.getProperties().set("interactionSource", mutableInteractionSource);
                    inspectorInfo.getProperties().set("thresholds", thresholds);
                    inspectorInfo.getProperties().set("resistance", resistanceConfig);
                    inspectorInfo.getProperties().set("velocityThreshold", Dp.m4047boximpl(f10));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return ComposedModifierKt.composed(swipeable, noInspectorInfo, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.material.SwipeableKt$swipeable$3

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: Swipeable.kt */
            @Metadata
            @d(c = "androidx.compose.material.SwipeableKt$swipeable$3$3", f = "Swipeable.kt", l = {607}, m = "invokeSuspend")
            /* renamed from: androidx.compose.material.SwipeableKt$swipeable$3$3  reason: invalid class name */
            /* loaded from: classes.dex */
            public static final class AnonymousClass3 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
                final /* synthetic */ Map<Float, T> $anchors;
                final /* synthetic */ Density $density;
                final /* synthetic */ ResistanceConfig $resistance;
                final /* synthetic */ SwipeableState<T> $state;
                final /* synthetic */ Function2<T, T, ThresholdConfig> $thresholds;
                final /* synthetic */ float $velocityThreshold;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                AnonymousClass3(SwipeableState<T> swipeableState, Map<Float, ? extends T> map, ResistanceConfig resistanceConfig, Density density, Function2<? super T, ? super T, ? extends ThresholdConfig> function2, float f10, c<? super AnonymousClass3> cVar) {
                    super(2, cVar);
                    this.$state = swipeableState;
                    this.$anchors = map;
                    this.$resistance = resistanceConfig;
                    this.$density = density;
                    this.$thresholds = function2;
                    this.$velocityThreshold = f10;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @NotNull
                public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                    return new AnonymousClass3(this.$state, this.$anchors, this.$resistance, this.$density, this.$thresholds, this.$velocityThreshold, cVar);
                }

                @Override // kotlin.jvm.functions.Function2
                @Nullable
                public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
                    return ((AnonymousClass3) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
                        Map anchors$material_release = this.$state.getAnchors$material_release();
                        this.$state.setAnchors$material_release(this.$anchors);
                        this.$state.setResistance$material_release(this.$resistance);
                        SwipeableState<T> swipeableState = this.$state;
                        final Map<Float, T> map = this.$anchors;
                        final Function2<T, T, ThresholdConfig> function2 = this.$thresholds;
                        final Density density = this.$density;
                        swipeableState.setThresholds$material_release(new Function2<Float, Float, Float>() { // from class: androidx.compose.material.SwipeableKt.swipeable.3.3.1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Float invoke(Float f11, Float f12) {
                                return invoke(f11.floatValue(), f12.floatValue());
                            }

                            @NotNull
                            public final Float invoke(float f11, float f12) {
                                return Float.valueOf(function2.invoke(p0.j(map, Float.valueOf(f11)), p0.j(map, Float.valueOf(f12))).computeThreshold(density, f11, f12));
                            }
                        });
                        this.$state.setVelocityThreshold$material_release(this.$density.mo342toPx0680j_4(this.$velocityThreshold));
                        SwipeableState<T> swipeableState2 = this.$state;
                        Object obj2 = this.$anchors;
                        this.label = 1;
                        if (swipeableState2.processNewAnchors$material_release(anchors$material_release, obj2, this) == f10) {
                            return f10;
                        }
                    }
                    return Unit.f60915a;
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: Swipeable.kt */
            @Metadata
            @d(c = "androidx.compose.material.SwipeableKt$swipeable$3$4", f = "Swipeable.kt", l = {}, m = "invokeSuspend")
            /* renamed from: androidx.compose.material.SwipeableKt$swipeable$3$4  reason: invalid class name */
            /* loaded from: classes.dex */
            public static final class AnonymousClass4 extends SuspendLambda implements n<g0, Float, c<? super Unit>, Object> {
                final /* synthetic */ SwipeableState<T> $state;
                /* synthetic */ float F$0;
                private /* synthetic */ Object L$0;
                int label;

                /* JADX INFO: Access modifiers changed from: package-private */
                /* compiled from: Swipeable.kt */
                @Metadata
                @d(c = "androidx.compose.material.SwipeableKt$swipeable$3$4$1", f = "Swipeable.kt", l = {616}, m = "invokeSuspend")
                /* renamed from: androidx.compose.material.SwipeableKt$swipeable$3$4$1  reason: invalid class name */
                /* loaded from: classes.dex */
                public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
                    final /* synthetic */ SwipeableState<T> $state;
                    final /* synthetic */ float $velocity;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    AnonymousClass1(SwipeableState<T> swipeableState, float f10, c<? super AnonymousClass1> cVar) {
                        super(2, cVar);
                        this.$state = swipeableState;
                        this.$velocity = f10;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @NotNull
                    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                        return new AnonymousClass1(this.$state, this.$velocity, cVar);
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
                            SwipeableState<T> swipeableState = this.$state;
                            float f11 = this.$velocity;
                            this.label = 1;
                            if (swipeableState.performFling(f11, this) == f10) {
                                return f10;
                            }
                        }
                        return Unit.f60915a;
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass4(SwipeableState<T> swipeableState, c<? super AnonymousClass4> cVar) {
                    super(3, cVar);
                    this.$state = swipeableState;
                }

                @Nullable
                public final Object invoke(@NotNull g0 g0Var, float f10, @Nullable c<? super Unit> cVar) {
                    AnonymousClass4 anonymousClass4 = new AnonymousClass4(this.$state, cVar);
                    anonymousClass4.L$0 = g0Var;
                    anonymousClass4.F$0 = f10;
                    return anonymousClass4.invokeSuspend(Unit.f60915a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    a.f();
                    if (this.label == 0) {
                        f.b(obj);
                        g.d((g0) this.L$0, null, null, new AnonymousClass1(this.$state, this.F$0, null), 3, null);
                        return Unit.f60915a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }

                @Override // at.n
                public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, Float f10, c<? super Unit> cVar) {
                    return invoke(g0Var, f10.floatValue(), cVar);
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(3);
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
                return invoke(modifier, composer, num.intValue());
            }

            @Composable
            @NotNull
            public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
                Modifier draggable;
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(43594985);
                if (!anchors.isEmpty()) {
                    if (CollectionsKt.i0(anchors.values()).size() == anchors.size()) {
                        Density density = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
                        state.ensureInit$material_release(anchors);
                        Map<Float, T> map = anchors;
                        SwipeableState<T> swipeableState = state;
                        EffectsKt.LaunchedEffect(map, swipeableState, new AnonymousClass3(swipeableState, map, resistanceConfig, density, thresholds, f10, null), composer, 8);
                        draggable = DraggableKt.draggable(Modifier.Companion, state.getDraggableState$material_release(), orientation, (r20 & 4) != 0 ? true : z10, (r20 & 8) != 0 ? null : mutableInteractionSource, (r20 & 16) != 0 ? false : state.isAnimationRunning(), (r20 & 32) != 0 ? new DraggableKt$draggable$1(null) : null, (r20 & 64) != 0 ? new DraggableKt$draggable$2(null) : new AnonymousClass4(state, null), (r20 & 128) != 0 ? false : z11);
                        composer.endReplaceableGroup();
                        return draggable;
                    }
                    throw new IllegalArgumentException("You cannot have two anchors mapped to the same state.");
                }
                throw new IllegalArgumentException("You must have at least one anchor.");
            }
        });
    }

    /* renamed from: swipeable-pPrIpRY$default  reason: not valid java name */
    public static /* synthetic */ Modifier m1210swipeablepPrIpRY$default(Modifier modifier, SwipeableState swipeableState, Map map, Orientation orientation, boolean z10, boolean z11, MutableInteractionSource mutableInteractionSource, Function2 function2, ResistanceConfig resistanceConfig, float f10, int i10, Object obj) {
        boolean z12;
        boolean z13;
        MutableInteractionSource mutableInteractionSource2;
        SwipeableKt$swipeable$1 swipeableKt$swipeable$1;
        ResistanceConfig resistanceConfig2;
        float f11;
        if ((i10 & 8) != 0) {
            z12 = true;
        } else {
            z12 = z10;
        }
        if ((i10 & 16) != 0) {
            z13 = false;
        } else {
            z13 = z11;
        }
        if ((i10 & 32) != 0) {
            mutableInteractionSource2 = null;
        } else {
            mutableInteractionSource2 = mutableInteractionSource;
        }
        if ((i10 & 64) != 0) {
            swipeableKt$swipeable$1 = new Function2() { // from class: androidx.compose.material.SwipeableKt$swipeable$1
                @Override // kotlin.jvm.functions.Function2
                @NotNull
                public final FixedThreshold invoke(Object obj2, Object obj3) {
                    return new FixedThreshold(Dp.m4049constructorimpl(56), null);
                }
            };
        } else {
            swipeableKt$swipeable$1 = function2;
        }
        if ((i10 & 128) != 0) {
            resistanceConfig2 = SwipeableDefaults.resistanceConfig$default(SwipeableDefaults.INSTANCE, map.keySet(), 0.0f, 0.0f, 6, null);
        } else {
            resistanceConfig2 = resistanceConfig;
        }
        if ((i10 & 256) != 0) {
            f11 = SwipeableDefaults.INSTANCE.m1208getVelocityThresholdD9Ej5fM();
        } else {
            f11 = f10;
        }
        return m1209swipeablepPrIpRY(modifier, swipeableState, map, orientation, z12, z13, mutableInteractionSource2, swipeableKt$swipeable$1, resistanceConfig2, f11);
    }

    @ExperimentalMaterialApi
    public static /* synthetic */ void getPreUpPostDownNestedScrollConnection$annotations(SwipeableState swipeableState) {
    }
}
