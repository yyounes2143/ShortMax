package androidx.compose.material;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Dp;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Drawer.kt */
@Metadata
/* loaded from: classes.dex */
public final class DrawerKt {
    private static final float BottomDrawerOpenFraction = 0.5f;
    private static final float EndDrawerPadding = Dp.m4049constructorimpl(56);
    private static final float DrawerVelocityThreshold = Dp.m4049constructorimpl(400);
    @NotNull
    private static final TweenSpec<Float> AnimationSpec = new TweenSpec<>(256, 0, null, 6, null);

    /* JADX WARN: Removed duplicated region for block: B:100:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:176:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0101  */
    @androidx.compose.runtime.Composable
    @androidx.compose.material.ExperimentalMaterialApi
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    /* renamed from: BottomDrawer-Gs3lGvM  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1049BottomDrawerGs3lGvM(@org.jetbrains.annotations.NotNull final at.n<? super androidx.compose.foundation.layout.ColumnScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r33, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r34, @org.jetbrains.annotations.Nullable androidx.compose.material.BottomDrawerState r35, boolean r36, @org.jetbrains.annotations.Nullable androidx.compose.ui.graphics.Shape r37, float r38, long r39, long r41, long r43, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r45, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r46, final int r47, final int r48) {
        /*
            Method dump skipped, instructions count: 728
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.DrawerKt.m1049BottomDrawerGs3lGvM(at.n, androidx.compose.ui.Modifier, androidx.compose.material.BottomDrawerState, boolean, androidx.compose.ui.graphics.Shape, float, long, long, long, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    /* renamed from: BottomDrawerScrim-3J-VO9M  reason: not valid java name */
    public static final void m1050BottomDrawerScrim3JVO9M(final long j10, final Function0<Unit> function0, final boolean z10, Composer composer, final int i10) {
        int i11;
        float f10;
        Modifier modifier;
        int i12;
        int i13;
        int i14;
        Composer startRestartGroup = composer.startRestartGroup(-513067266);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(j10)) {
                i14 = 4;
            } else {
                i14 = 2;
            }
            i11 = i14 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (startRestartGroup.changed(function0)) {
                i13 = 32;
            } else {
                i13 = 16;
            }
            i11 |= i13;
        }
        if ((i10 & 896) == 0) {
            if (startRestartGroup.changed(z10)) {
                i12 = 256;
            } else {
                i12 = 128;
            }
            i11 |= i12;
        }
        if ((i11 & TTVideoEngineInterface.PLAYER_OPTION_ENABLE_RECEIVE_BINARY_SEI) == 146 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else if (j10 != Color.Companion.m1878getUnspecified0d7_KjU()) {
            if (z10) {
                f10 = 1.0f;
            } else {
                f10 = 0.0f;
            }
            final State<Float> animateFloatAsState = AnimateAsStateKt.animateFloatAsState(f10, new TweenSpec(0, 0, null, 7, null), 0.0f, null, startRestartGroup, 0, 12);
            final String m1197getString4foXLRw = Strings_androidKt.m1197getString4foXLRw(Strings.Companion.m1190getCloseDrawerUdPEhr4(), startRestartGroup, 6);
            startRestartGroup.startReplaceableGroup(-1298949409);
            if (z10) {
                Modifier.Companion companion = Modifier.Companion;
                startRestartGroup.startReplaceableGroup(1157296644);
                boolean changed = startRestartGroup.changed(function0);
                Object rememberedValue = startRestartGroup.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = new DrawerKt$BottomDrawerScrim$dismissModifier$1$1(function0, null);
                    startRestartGroup.updateRememberedValue(rememberedValue);
                }
                startRestartGroup.endReplaceableGroup();
                Modifier pointerInput = SuspendingPointerInputFilterKt.pointerInput(companion, function0, (Function2) rememberedValue);
                startRestartGroup.startReplaceableGroup(511388516);
                boolean changed2 = startRestartGroup.changed(m1197getString4foXLRw) | startRestartGroup.changed(function0);
                Object rememberedValue2 = startRestartGroup.rememberedValue();
                if (changed2 || rememberedValue2 == Composer.Companion.getEmpty()) {
                    rememberedValue2 = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material.DrawerKt$BottomDrawerScrim$dismissModifier$2$1
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
                            SemanticsPropertiesKt.setContentDescription(semantics, m1197getString4foXLRw);
                            final Function0<Unit> function02 = function0;
                            SemanticsPropertiesKt.onClick$default(semantics, null, new Function0<Boolean>() { // from class: androidx.compose.material.DrawerKt$BottomDrawerScrim$dismissModifier$2$1.1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(0);
                                }

                                /* JADX WARN: Can't rename method to resolve collision */
                                @Override // kotlin.jvm.functions.Function0
                                @NotNull
                                public final Boolean invoke() {
                                    function02.invoke();
                                    return Boolean.TRUE;
                                }
                            }, 1, null);
                        }
                    };
                    startRestartGroup.updateRememberedValue(rememberedValue2);
                }
                startRestartGroup.endReplaceableGroup();
                modifier = SemanticsModifierKt.semantics(pointerInput, true, (Function1) rememberedValue2);
            } else {
                modifier = Modifier.Companion;
            }
            startRestartGroup.endReplaceableGroup();
            Modifier then = SizeKt.fillMaxSize$default(Modifier.Companion, 0.0f, 1, null).then(modifier);
            Color m1832boximpl = Color.m1832boximpl(j10);
            startRestartGroup.startReplaceableGroup(511388516);
            boolean changed3 = startRestartGroup.changed(m1832boximpl) | startRestartGroup.changed(animateFloatAsState);
            Object rememberedValue3 = startRestartGroup.rememberedValue();
            if (changed3 || rememberedValue3 == Composer.Companion.getEmpty()) {
                rememberedValue3 = new Function1<DrawScope, Unit>() { // from class: androidx.compose.material.DrawerKt$BottomDrawerScrim$1$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(DrawScope drawScope) {
                        invoke2(drawScope);
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull DrawScope Canvas) {
                        float m1051BottomDrawerScrim_3J_VO9M$lambda0;
                        Intrinsics.checkNotNullParameter(Canvas, "$this$Canvas");
                        long j11 = j10;
                        m1051BottomDrawerScrim_3J_VO9M$lambda0 = DrawerKt.m1051BottomDrawerScrim_3J_VO9M$lambda0(animateFloatAsState);
                        DrawScope.m2331drawRectnJ9OG0$default(Canvas, j11, 0L, 0L, m1051BottomDrawerScrim_3J_VO9M$lambda0, null, null, 0, 118, null);
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue3);
            }
            startRestartGroup.endReplaceableGroup();
            CanvasKt.Canvas(then, (Function1) rememberedValue3, startRestartGroup, 0);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.DrawerKt$BottomDrawerScrim$2
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

                public final void invoke(@Nullable Composer composer2, int i15) {
                    DrawerKt.m1050BottomDrawerScrim3JVO9M(j10, function0, z10, composer2, i10 | 1);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: BottomDrawerScrim_3J_VO9M$lambda-0  reason: not valid java name */
    public static final float m1051BottomDrawerScrim_3J_VO9M$lambda0(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:176:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0101  */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    /* renamed from: ModalDrawer-Gs3lGvM  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1052ModalDrawerGs3lGvM(@org.jetbrains.annotations.NotNull final at.n<? super androidx.compose.foundation.layout.ColumnScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r33, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r34, @org.jetbrains.annotations.Nullable androidx.compose.material.DrawerState r35, boolean r36, @org.jetbrains.annotations.Nullable androidx.compose.ui.graphics.Shape r37, float r38, long r39, long r41, long r43, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r45, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r46, final int r47, final int r48) {
        /*
            Method dump skipped, instructions count: 721
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.DrawerKt.m1052ModalDrawerGs3lGvM(at.n, androidx.compose.ui.Modifier, androidx.compose.material.DrawerState, boolean, androidx.compose.ui.graphics.Shape, float, long, long, long, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    /* renamed from: Scrim-Bx497Mc  reason: not valid java name */
    public static final void m1053ScrimBx497Mc(final boolean z10, final Function0<Unit> function0, final Function0<Float> function02, final long j10, Composer composer, final int i10) {
        int i11;
        Modifier modifier;
        int i12;
        int i13;
        int i14;
        int i15;
        Composer startRestartGroup = composer.startRestartGroup(1983403750);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(z10)) {
                i15 = 4;
            } else {
                i15 = 2;
            }
            i11 = i15 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (startRestartGroup.changed(function0)) {
                i14 = 32;
            } else {
                i14 = 16;
            }
            i11 |= i14;
        }
        if ((i10 & 896) == 0) {
            if (startRestartGroup.changed(function02)) {
                i13 = 256;
            } else {
                i13 = 128;
            }
            i11 |= i13;
        }
        if ((i10 & 7168) == 0) {
            if (startRestartGroup.changed(j10)) {
                i12 = 2048;
            } else {
                i12 = 1024;
            }
            i11 |= i12;
        }
        if ((i11 & 5851) == 1170 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            final String m1197getString4foXLRw = Strings_androidKt.m1197getString4foXLRw(Strings.Companion.m1190getCloseDrawerUdPEhr4(), startRestartGroup, 6);
            startRestartGroup.startReplaceableGroup(1010554047);
            if (z10) {
                Modifier.Companion companion = Modifier.Companion;
                startRestartGroup.startReplaceableGroup(1157296644);
                boolean changed = startRestartGroup.changed(function0);
                Object rememberedValue = startRestartGroup.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = new DrawerKt$Scrim$dismissDrawer$1$1(function0, null);
                    startRestartGroup.updateRememberedValue(rememberedValue);
                }
                startRestartGroup.endReplaceableGroup();
                Modifier pointerInput = SuspendingPointerInputFilterKt.pointerInput(companion, function0, (Function2) rememberedValue);
                startRestartGroup.startReplaceableGroup(511388516);
                boolean changed2 = startRestartGroup.changed(m1197getString4foXLRw) | startRestartGroup.changed(function0);
                Object rememberedValue2 = startRestartGroup.rememberedValue();
                if (changed2 || rememberedValue2 == Composer.Companion.getEmpty()) {
                    rememberedValue2 = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material.DrawerKt$Scrim$dismissDrawer$2$1
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
                            SemanticsPropertiesKt.setContentDescription(semantics, m1197getString4foXLRw);
                            final Function0<Unit> function03 = function0;
                            SemanticsPropertiesKt.onClick$default(semantics, null, new Function0<Boolean>() { // from class: androidx.compose.material.DrawerKt$Scrim$dismissDrawer$2$1.1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(0);
                                }

                                /* JADX WARN: Can't rename method to resolve collision */
                                @Override // kotlin.jvm.functions.Function0
                                @NotNull
                                public final Boolean invoke() {
                                    function03.invoke();
                                    return Boolean.TRUE;
                                }
                            }, 1, null);
                        }
                    };
                    startRestartGroup.updateRememberedValue(rememberedValue2);
                }
                startRestartGroup.endReplaceableGroup();
                modifier = SemanticsModifierKt.semantics(pointerInput, true, (Function1) rememberedValue2);
            } else {
                modifier = Modifier.Companion;
            }
            startRestartGroup.endReplaceableGroup();
            Modifier then = SizeKt.fillMaxSize$default(Modifier.Companion, 0.0f, 1, null).then(modifier);
            Color m1832boximpl = Color.m1832boximpl(j10);
            startRestartGroup.startReplaceableGroup(511388516);
            boolean changed3 = startRestartGroup.changed(m1832boximpl) | startRestartGroup.changed(function02);
            Object rememberedValue3 = startRestartGroup.rememberedValue();
            if (changed3 || rememberedValue3 == Composer.Companion.getEmpty()) {
                rememberedValue3 = new Function1<DrawScope, Unit>() { // from class: androidx.compose.material.DrawerKt$Scrim$1$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(DrawScope drawScope) {
                        invoke2(drawScope);
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull DrawScope Canvas) {
                        Intrinsics.checkNotNullParameter(Canvas, "$this$Canvas");
                        DrawScope.m2331drawRectnJ9OG0$default(Canvas, j10, 0L, 0L, function02.invoke().floatValue(), null, null, 0, 118, null);
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue3);
            }
            startRestartGroup.endReplaceableGroup();
            CanvasKt.Canvas(then, (Function1) rememberedValue3, startRestartGroup, 0);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.DrawerKt$Scrim$2
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
                    DrawerKt.m1053ScrimBx497Mc(z10, function0, function02, j10, composer2, i10 | 1);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float calculateFraction(float f10, float f11, float f12) {
        return e.m((f12 - f10) / (f11 - f10), 0.0f, 1.0f);
    }

    @Composable
    @ExperimentalMaterialApi
    @NotNull
    public static final BottomDrawerState rememberBottomDrawerState(@NotNull final BottomDrawerValue initialValue, @Nullable final Function1<? super BottomDrawerValue, Boolean> function1, @Nullable Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        composer.startReplaceableGroup(-598115156);
        if ((i11 & 2) != 0) {
            function1 = new Function1<BottomDrawerValue, Boolean>() { // from class: androidx.compose.material.DrawerKt$rememberBottomDrawerState$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull BottomDrawerValue it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Boolean.TRUE;
                }
            };
        }
        BottomDrawerState bottomDrawerState = (BottomDrawerState) RememberSaveableKt.m1492rememberSaveable(new Object[0], (Saver<Object, ? extends Object>) BottomDrawerState.Companion.Saver(function1), (String) null, (Function0<? extends Object>) new Function0<BottomDrawerState>() { // from class: androidx.compose.material.DrawerKt$rememberBottomDrawerState$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final BottomDrawerState invoke() {
                return new BottomDrawerState(BottomDrawerValue.this, function1);
            }
        }, composer, 72, 4);
        composer.endReplaceableGroup();
        return bottomDrawerState;
    }

    @Composable
    @NotNull
    public static final DrawerState rememberDrawerState(@NotNull final DrawerValue initialValue, @Nullable final Function1<? super DrawerValue, Boolean> function1, @Nullable Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        composer.startReplaceableGroup(-1435874229);
        if ((i11 & 2) != 0) {
            function1 = new Function1<DrawerValue, Boolean>() { // from class: androidx.compose.material.DrawerKt$rememberDrawerState$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull DrawerValue it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Boolean.TRUE;
                }
            };
        }
        DrawerState drawerState = (DrawerState) RememberSaveableKt.m1492rememberSaveable(new Object[0], (Saver<Object, ? extends Object>) DrawerState.Companion.Saver(function1), (String) null, (Function0<? extends Object>) new Function0<DrawerState>() { // from class: androidx.compose.material.DrawerKt$rememberDrawerState$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DrawerState invoke() {
                return new DrawerState(DrawerValue.this, function1);
            }
        }, composer, 72, 4);
        composer.endReplaceableGroup();
        return drawerState;
    }
}
