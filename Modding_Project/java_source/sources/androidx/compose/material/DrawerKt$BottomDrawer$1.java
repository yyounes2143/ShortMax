package androidx.compose.material;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.BoxWithConstraintsScope;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import at.n;
import com.ss.ttm.player.MediaPlayer;
import gt.g;
import gt.g0;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Drawer.kt */
@Metadata
/* loaded from: classes.dex */
public final class DrawerKt$BottomDrawer$1 extends Lambda implements n<BoxWithConstraintsScope, Composer, Integer, Unit> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ Function2<Composer, Integer, Unit> $content;
    final /* synthetic */ long $drawerBackgroundColor;
    final /* synthetic */ n<ColumnScope, Composer, Integer, Unit> $drawerContent;
    final /* synthetic */ long $drawerContentColor;
    final /* synthetic */ float $drawerElevation;
    final /* synthetic */ Shape $drawerShape;
    final /* synthetic */ BottomDrawerState $drawerState;
    final /* synthetic */ boolean $gesturesEnabled;
    final /* synthetic */ g0 $scope;
    final /* synthetic */ long $scrimColor;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DrawerKt$BottomDrawer$1(boolean z10, BottomDrawerState bottomDrawerState, Function2<? super Composer, ? super Integer, Unit> function2, int i10, long j10, Shape shape, long j11, long j12, float f10, g0 g0Var, n<? super ColumnScope, ? super Composer, ? super Integer, Unit> nVar) {
        super(3);
        this.$gesturesEnabled = z10;
        this.$drawerState = bottomDrawerState;
        this.$content = function2;
        this.$$dirty = i10;
        this.$scrimColor = j10;
        this.$drawerShape = shape;
        this.$drawerBackgroundColor = j11;
        this.$drawerContentColor = j12;
        this.$drawerElevation = f10;
        this.$scope = g0Var;
        this.$drawerContent = nVar;
    }

    /* renamed from: invoke$lambda-1  reason: not valid java name */
    private static final float m1058invoke$lambda1(MutableState<Float> mutableState) {
        return mutableState.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invoke$lambda-2  reason: not valid java name */
    public static final void m1059invoke$lambda2(MutableState<Float> mutableState, float f10) {
        mutableState.setValue(Float.valueOf(f10));
    }

    @Override // at.n
    public /* bridge */ /* synthetic */ Unit invoke(BoxWithConstraintsScope boxWithConstraintsScope, Composer composer, Integer num) {
        invoke(boxWithConstraintsScope, composer, num.intValue());
        return Unit.f60915a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r29v0, types: [androidx.compose.runtime.Composer, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v2 */
    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    public final void invoke(@NotNull BoxWithConstraintsScope BoxWithConstraints, @Nullable Composer composer, int i10) {
        int i11;
        Map m10;
        Intrinsics.checkNotNullParameter(BoxWithConstraints, "$this$BoxWithConstraints");
        if ((i10 & 14) == 0) {
            i11 = i10 | (composer.changed(BoxWithConstraints) ? 4 : 2);
        } else {
            i11 = i10;
        }
        if ((i11 & 91) == 18 && composer.getSkipping()) {
            composer.skipToGroupEnd();
            return;
        }
        float m4004getMaxHeightimpl = Constraints.m4004getMaxHeightimpl(BoxWithConstraints.mo419getConstraintsmsEJaDk());
        Float valueOf = Float.valueOf(m4004getMaxHeightimpl);
        composer.startReplaceableGroup(1157296644);
        boolean changed = composer.changed(valueOf);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Float.valueOf(m4004getMaxHeightimpl), null, 2, null);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        final MutableState mutableState = rememberedValue;
        boolean z10 = Constraints.m4005getMaxWidthimpl(BoxWithConstraints.mo419getConstraintsmsEJaDk()) > Constraints.m4004getMaxHeightimpl(BoxWithConstraints.mo419getConstraintsmsEJaDk());
        float f10 = 0.5f * m4004getMaxHeightimpl;
        float max = Math.max(0.0f, m4004getMaxHeightimpl - m1058invoke$lambda1(mutableState));
        if (m1058invoke$lambda1(mutableState) >= f10 && !z10) {
            m10 = p0.m(k.a(Float.valueOf(m4004getMaxHeightimpl), BottomDrawerValue.Closed), k.a(Float.valueOf(f10), BottomDrawerValue.Open), k.a(Float.valueOf(max), BottomDrawerValue.Expanded));
        } else {
            m10 = p0.m(k.a(Float.valueOf(m4004getMaxHeightimpl), BottomDrawerValue.Closed), k.a(Float.valueOf(max), BottomDrawerValue.Expanded));
        }
        Map map = m10;
        Density density = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
        Modifier modifier = Modifier.Companion;
        Modifier m492sizeInqDBjuR0$default = SizeKt.m492sizeInqDBjuR0$default(modifier, 0.0f, 0.0f, density.mo339toDpu2uoSUM(Constraints.m4005getMaxWidthimpl(BoxWithConstraints.mo419getConstraintsmsEJaDk())), density.mo339toDpu2uoSUM(Constraints.m4004getMaxHeightimpl(BoxWithConstraints.mo419getConstraintsmsEJaDk())), 3, null);
        Modifier m1210swipeablepPrIpRY$default = SwipeableKt.m1210swipeablepPrIpRY$default(modifier.then(this.$gesturesEnabled ? NestedScrollModifierKt.nestedScroll$default(modifier, this.$drawerState.getNestedScrollConnection$material_release(), null, 2, null) : modifier), this.$drawerState, map, Orientation.Vertical, this.$gesturesEnabled, false, null, null, null, 0.0f, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_PTS_SYNCED_SEI_NOTIFICATION, null);
        Function2<Composer, Integer, Unit> function2 = this.$content;
        final int i12 = this.$$dirty;
        long j10 = this.$scrimColor;
        final BottomDrawerState bottomDrawerState = this.$drawerState;
        Shape shape = this.$drawerShape;
        long j11 = this.$drawerBackgroundColor;
        long j12 = this.$drawerContentColor;
        float f11 = this.$drawerElevation;
        final boolean z11 = this.$gesturesEnabled;
        final g0 g0Var = this.$scope;
        final n<ColumnScope, Composer, Integer, Unit> nVar = this.$drawerContent;
        composer.startReplaceableGroup(733328855);
        MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(Alignment.Companion.getTopStart(), false, composer, 0);
        composer.startReplaceableGroup(-1323940314);
        Density density2 = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
        LayoutDirection layoutDirection = (LayoutDirection) composer.consume(CompositionLocalsKt.getLocalLayoutDirection());
        ViewConfiguration viewConfiguration = (ViewConfiguration) composer.consume(CompositionLocalsKt.getLocalViewConfiguration());
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        Function0<ComposeUiNode> constructor = companion.getConstructor();
        n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(m1210swipeablepPrIpRY$default);
        if (composer.getApplier() == null) {
            ComposablesKt.invalidApplier();
        }
        composer.startReusableNode();
        if (composer.getInserting()) {
            composer.createNode(constructor);
        } else {
            composer.useNode();
        }
        composer.disableReusing();
        Composer m1376constructorimpl = Updater.m1376constructorimpl(composer);
        Updater.m1383setimpl(m1376constructorimpl, rememberBoxMeasurePolicy, companion.getSetMeasurePolicy());
        Updater.m1383setimpl(m1376constructorimpl, density2, companion.getSetDensity());
        Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion.getSetLayoutDirection());
        Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion.getSetViewConfiguration());
        composer.enableReusing();
        materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(composer)), composer, 0);
        composer.startReplaceableGroup(2058660585);
        composer.startReplaceableGroup(-2137368960);
        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
        composer.startReplaceableGroup(-1660053078);
        function2.invoke(composer, Integer.valueOf((i12 >> 27) & 14));
        DrawerKt.m1050BottomDrawerScrim3JVO9M(j10, new Function0<Unit>() { // from class: androidx.compose.material.DrawerKt$BottomDrawer$1$1$1

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: Drawer.kt */
            @Metadata
            @d(c = "androidx.compose.material.DrawerKt$BottomDrawer$1$1$1$1", f = "Drawer.kt", l = {562}, m = "invokeSuspend")
            /* renamed from: androidx.compose.material.DrawerKt$BottomDrawer$1$1$1$1  reason: invalid class name */
            /* loaded from: classes.dex */
            public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
                final /* synthetic */ BottomDrawerState $drawerState;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(BottomDrawerState bottomDrawerState, c<? super AnonymousClass1> cVar) {
                    super(2, cVar);
                    this.$drawerState = bottomDrawerState;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @NotNull
                public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                    return new AnonymousClass1(this.$drawerState, cVar);
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
                        BottomDrawerState bottomDrawerState = this.$drawerState;
                        this.label = 1;
                        if (bottomDrawerState.close(this) == f10) {
                            return f10;
                        }
                    }
                    return Unit.f60915a;
                }
            }

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
                if (z11 && bottomDrawerState.getConfirmStateChange$material_release().invoke(BottomDrawerValue.Closed).booleanValue()) {
                    g.d(g0Var, null, null, new AnonymousClass1(bottomDrawerState, null), 3, null);
                }
            }
        }, bottomDrawerState.getTargetValue() != BottomDrawerValue.Closed, composer, (i12 >> 24) & 14);
        final String m1197getString4foXLRw = Strings_androidKt.m1197getString4foXLRw(Strings.Companion.m1194getNavigationMenuUdPEhr4(), composer, 6);
        composer.startReplaceableGroup(1157296644);
        boolean changed2 = composer.changed(bottomDrawerState);
        Object rememberedValue2 = composer.rememberedValue();
        if (changed2 || rememberedValue2 == Composer.Companion.getEmpty()) {
            rememberedValue2 = new Function1<Density, IntOffset>() { // from class: androidx.compose.material.DrawerKt$BottomDrawer$1$1$2$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ IntOffset invoke(Density density3) {
                    return IntOffset.m4158boximpl(m1060invokeBjo55l4(density3));
                }

                /* renamed from: invoke-Bjo55l4  reason: not valid java name */
                public final long m1060invokeBjo55l4(@NotNull Density offset) {
                    Intrinsics.checkNotNullParameter(offset, "$this$offset");
                    return IntOffsetKt.IntOffset(0, bt.a.c(BottomDrawerState.this.getOffset().getValue().floatValue()));
                }
            };
            composer.updateRememberedValue(rememberedValue2);
        }
        composer.endReplaceableGroup();
        Modifier offset = OffsetKt.offset(m492sizeInqDBjuR0$default, (Function1) rememberedValue2);
        composer.startReplaceableGroup(1157296644);
        boolean changed3 = composer.changed(mutableState);
        Object rememberedValue3 = composer.rememberedValue();
        if (changed3 || rememberedValue3 == Composer.Companion.getEmpty()) {
            rememberedValue3 = new Function1<LayoutCoordinates, Unit>() { // from class: androidx.compose.material.DrawerKt$BottomDrawer$1$1$3$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(LayoutCoordinates layoutCoordinates) {
                    invoke2(layoutCoordinates);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull LayoutCoordinates position) {
                    Intrinsics.checkNotNullParameter(position, "position");
                    DrawerKt$BottomDrawer$1.m1059invoke$lambda2(mutableState, IntSize.m4208getHeightimpl(position.mo3337getSizeYbymL2g()));
                }
            };
            composer.updateRememberedValue(rememberedValue3);
        }
        composer.endReplaceableGroup();
        int i13 = i12 >> 12;
        SurfaceKt.m1199SurfaceFjzlyU(SemanticsModifierKt.semantics$default(OnGloballyPositionedModifierKt.onGloballyPositioned(offset, (Function1) rememberedValue3), false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material.DrawerKt$BottomDrawer$1$1$4
            /* JADX INFO: Access modifiers changed from: package-private */
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
                SemanticsPropertiesKt.setPaneTitle(semantics, m1197getString4foXLRw);
                if (bottomDrawerState.isOpen()) {
                    final BottomDrawerState bottomDrawerState2 = bottomDrawerState;
                    final g0 g0Var2 = g0Var;
                    SemanticsPropertiesKt.dismiss$default(semantics, null, new Function0<Boolean>() { // from class: androidx.compose.material.DrawerKt$BottomDrawer$1$1$4.1

                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* compiled from: Drawer.kt */
                        @Metadata
                        @d(c = "androidx.compose.material.DrawerKt$BottomDrawer$1$1$4$1$1", f = "Drawer.kt", l = {580}, m = "invokeSuspend")
                        /* renamed from: androidx.compose.material.DrawerKt$BottomDrawer$1$1$4$1$1  reason: invalid class name and collision with other inner class name */
                        /* loaded from: classes.dex */
                        public static final class C00401 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
                            final /* synthetic */ BottomDrawerState $drawerState;
                            int label;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            C00401(BottomDrawerState bottomDrawerState, c<? super C00401> cVar) {
                                super(2, cVar);
                                this.$drawerState = bottomDrawerState;
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            @NotNull
                            public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                                return new C00401(this.$drawerState, cVar);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            @Nullable
                            public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
                                return ((C00401) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
                                    BottomDrawerState bottomDrawerState = this.$drawerState;
                                    this.label = 1;
                                    if (bottomDrawerState.close(this) == f10) {
                                        return f10;
                                    }
                                }
                                return Unit.f60915a;
                            }
                        }

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // kotlin.jvm.functions.Function0
                        @NotNull
                        public final Boolean invoke() {
                            if (BottomDrawerState.this.getConfirmStateChange$material_release().invoke(BottomDrawerValue.Closed).booleanValue()) {
                                g.d(g0Var2, null, null, new C00401(BottomDrawerState.this, null), 3, null);
                            }
                            return Boolean.TRUE;
                        }
                    }, 1, null);
                }
            }
        }, 1, null), shape, j11, j12, null, f11, ComposableLambdaKt.composableLambda(composer, 457750254, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.DrawerKt$BottomDrawer$1$1$5
            /* JADX INFO: Access modifiers changed from: package-private */
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

            @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
            @Composable
            public final void invoke(@Nullable Composer composer2, int i14) {
                if ((i14 & 11) == 2 && composer2.getSkipping()) {
                    composer2.skipToGroupEnd();
                    return;
                }
                n<ColumnScope, Composer, Integer, Unit> nVar2 = nVar;
                int i15 = (i12 << 9) & 7168;
                composer2.startReplaceableGroup(-483455358);
                Modifier.Companion companion2 = Modifier.Companion;
                MeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composer2, 0);
                composer2.startReplaceableGroup(-1323940314);
                Density density3 = (Density) composer2.consume(CompositionLocalsKt.getLocalDensity());
                LayoutDirection layoutDirection2 = (LayoutDirection) composer2.consume(CompositionLocalsKt.getLocalLayoutDirection());
                ViewConfiguration viewConfiguration2 = (ViewConfiguration) composer2.consume(CompositionLocalsKt.getLocalViewConfiguration());
                ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
                Function0<ComposeUiNode> constructor2 = companion3.getConstructor();
                n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf2 = LayoutKt.materializerOf(companion2);
                if (composer2.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composer2.startReusableNode();
                if (composer2.getInserting()) {
                    composer2.createNode(constructor2);
                } else {
                    composer2.useNode();
                }
                composer2.disableReusing();
                Composer m1376constructorimpl2 = Updater.m1376constructorimpl(composer2);
                Updater.m1383setimpl(m1376constructorimpl2, columnMeasurePolicy, companion3.getSetMeasurePolicy());
                Updater.m1383setimpl(m1376constructorimpl2, density3, companion3.getSetDensity());
                Updater.m1383setimpl(m1376constructorimpl2, layoutDirection2, companion3.getSetLayoutDirection());
                Updater.m1383setimpl(m1376constructorimpl2, viewConfiguration2, companion3.getSetViewConfiguration());
                composer2.enableReusing();
                materializerOf2.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(composer2)), composer2, 0);
                composer2.startReplaceableGroup(2058660585);
                composer2.startReplaceableGroup(-1163856341);
                nVar2.invoke(ColumnScopeInstance.INSTANCE, composer2, Integer.valueOf(((i15 >> 6) & 112) | 6));
                composer2.endReplaceableGroup();
                composer2.endReplaceableGroup();
                composer2.endNode();
                composer2.endReplaceableGroup();
                composer2.endReplaceableGroup();
            }
        }), composer, ((i12 >> 9) & 112) | 1572864 | (i13 & 896) | (i13 & 7168) | (458752 & i12), 16);
        composer.endReplaceableGroup();
        composer.endReplaceableGroup();
        composer.endReplaceableGroup();
        composer.endNode();
        composer.endReplaceableGroup();
        composer.endReplaceableGroup();
    }
}
