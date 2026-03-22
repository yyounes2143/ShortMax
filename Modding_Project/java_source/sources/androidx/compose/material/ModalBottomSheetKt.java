package androidx.compose.material;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.gestures.Orientation;
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
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.tencent.wcdb.FileUtils;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ModalBottomSheet.kt */
@Metadata
/* loaded from: classes.dex */
public final class ModalBottomSheetKt {
    /* JADX WARN: Removed duplicated region for block: B:104:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:158:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0110  */
    @androidx.compose.runtime.Composable
    @androidx.compose.material.ExperimentalMaterialApi
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    /* renamed from: ModalBottomSheetLayout-BzaUkTc  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1116ModalBottomSheetLayoutBzaUkTc(@org.jetbrains.annotations.NotNull final at.n<? super androidx.compose.foundation.layout.ColumnScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r29, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r30, @org.jetbrains.annotations.Nullable androidx.compose.material.ModalBottomSheetState r31, @org.jetbrains.annotations.Nullable androidx.compose.ui.graphics.Shape r32, float r33, long r34, long r36, long r38, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r40, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r41, final int r42, final int r43) {
        /*
            Method dump skipped, instructions count: 664
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.ModalBottomSheetKt.m1116ModalBottomSheetLayoutBzaUkTc(at.n, androidx.compose.ui.Modifier, androidx.compose.material.ModalBottomSheetState, androidx.compose.ui.graphics.Shape, float, long, long, long, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    /* renamed from: Scrim-3J-VO9M  reason: not valid java name */
    public static final void m1117Scrim3JVO9M(final long j10, final Function0<Unit> function0, final boolean z10, Composer composer, final int i10) {
        int i11;
        float f10;
        Modifier modifier;
        int i12;
        int i13;
        int i14;
        Composer startRestartGroup = composer.startRestartGroup(-526532668);
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
            final String m1197getString4foXLRw = Strings_androidKt.m1197getString4foXLRw(Strings.Companion.m1191getCloseSheetUdPEhr4(), startRestartGroup, 6);
            startRestartGroup.startReplaceableGroup(1010547488);
            if (z10) {
                Modifier.Companion companion = Modifier.Companion;
                startRestartGroup.startReplaceableGroup(1157296644);
                boolean changed = startRestartGroup.changed(function0);
                Object rememberedValue = startRestartGroup.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = new ModalBottomSheetKt$Scrim$dismissModifier$1$1(function0, null);
                    startRestartGroup.updateRememberedValue(rememberedValue);
                }
                startRestartGroup.endReplaceableGroup();
                Modifier pointerInput = SuspendingPointerInputFilterKt.pointerInput(companion, function0, (Function2) rememberedValue);
                startRestartGroup.startReplaceableGroup(511388516);
                boolean changed2 = startRestartGroup.changed(m1197getString4foXLRw) | startRestartGroup.changed(function0);
                Object rememberedValue2 = startRestartGroup.rememberedValue();
                if (changed2 || rememberedValue2 == Composer.Companion.getEmpty()) {
                    rememberedValue2 = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material.ModalBottomSheetKt$Scrim$dismissModifier$2$1
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
                            SemanticsPropertiesKt.onClick$default(semantics, null, new Function0<Boolean>() { // from class: androidx.compose.material.ModalBottomSheetKt$Scrim$dismissModifier$2$1.1
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
                rememberedValue3 = new Function1<DrawScope, Unit>() { // from class: androidx.compose.material.ModalBottomSheetKt$Scrim$1$1
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
                        float m1118Scrim_3J_VO9M$lambda0;
                        Intrinsics.checkNotNullParameter(Canvas, "$this$Canvas");
                        long j11 = j10;
                        m1118Scrim_3J_VO9M$lambda0 = ModalBottomSheetKt.m1118Scrim_3J_VO9M$lambda0(animateFloatAsState);
                        DrawScope.m2331drawRectnJ9OG0$default(Canvas, j11, 0L, 0L, m1118Scrim_3J_VO9M$lambda0, null, null, 0, 118, null);
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue3);
            }
            startRestartGroup.endReplaceableGroup();
            CanvasKt.Canvas(then, (Function1) rememberedValue3, startRestartGroup, 0);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.ModalBottomSheetKt$Scrim$2
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
                    ModalBottomSheetKt.m1117Scrim3JVO9M(j10, function0, z10, composer2, i10 | 1);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Scrim_3J_VO9M$lambda-0  reason: not valid java name */
    public static final float m1118Scrim_3J_VO9M$lambda0(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier bottomSheetSwipeable(Modifier modifier, ModalBottomSheetState modalBottomSheetState, float f10, State<Float> state) {
        Modifier modifier2;
        Map m10;
        boolean z10;
        Float value = state.getValue();
        if (value != null) {
            float f11 = f10 / 2;
            if (value.floatValue() >= f11 && !modalBottomSheetState.isSkipHalfExpanded$material_release()) {
                m10 = p0.m(k.a(Float.valueOf(f10), ModalBottomSheetValue.Hidden), k.a(Float.valueOf(f11), ModalBottomSheetValue.HalfExpanded), k.a(Float.valueOf(Math.max(0.0f, f10 - value.floatValue())), ModalBottomSheetValue.Expanded));
            } else {
                m10 = p0.m(k.a(Float.valueOf(f10), ModalBottomSheetValue.Hidden), k.a(Float.valueOf(f10 - value.floatValue()), ModalBottomSheetValue.Expanded));
            }
            Map map = m10;
            Modifier.Companion companion = Modifier.Companion;
            Orientation orientation = Orientation.Vertical;
            if (modalBottomSheetState.getCurrentValue() != ModalBottomSheetValue.Hidden) {
                z10 = true;
            } else {
                z10 = false;
            }
            modifier2 = SwipeableKt.m1210swipeablepPrIpRY$default(companion, modalBottomSheetState, map, orientation, z10, false, null, null, null, 0.0f, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_PTS_SYNCED_SEI_NOTIFICATION, null);
        } else {
            modifier2 = Modifier.Companion;
        }
        return modifier.then(modifier2);
    }

    @Composable
    @ExperimentalMaterialApi
    @NotNull
    public static final ModalBottomSheetState rememberModalBottomSheetState(@NotNull final ModalBottomSheetValue initialValue, @Nullable final AnimationSpec<Float> animationSpec, final boolean z10, @Nullable final Function1<? super ModalBottomSheetValue, Boolean> function1, @Nullable Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        composer.startReplaceableGroup(-409288536);
        if ((i11 & 2) != 0) {
            animationSpec = SwipeableDefaults.INSTANCE.getAnimationSpec();
        }
        if ((i11 & 8) != 0) {
            function1 = new Function1<ModalBottomSheetValue, Boolean>() { // from class: androidx.compose.material.ModalBottomSheetKt$rememberModalBottomSheetState$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull ModalBottomSheetValue it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Boolean.TRUE;
                }
            };
        }
        ModalBottomSheetState modalBottomSheetState = (ModalBottomSheetState) RememberSaveableKt.m1492rememberSaveable(new Object[]{initialValue, animationSpec, Boolean.valueOf(z10), function1}, (Saver<Object, ? extends Object>) ModalBottomSheetState.Companion.Saver(animationSpec, z10, function1), (String) null, (Function0<? extends Object>) new Function0<ModalBottomSheetState>() { // from class: androidx.compose.material.ModalBottomSheetKt$rememberModalBottomSheetState$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ModalBottomSheetState invoke() {
                return new ModalBottomSheetState(ModalBottomSheetValue.this, animationSpec, z10, function1);
            }
        }, composer, 72, 4);
        composer.endReplaceableGroup();
        return modalBottomSheetState;
    }

    @Composable
    @ExperimentalMaterialApi
    @NotNull
    public static final ModalBottomSheetState rememberModalBottomSheetState(@NotNull ModalBottomSheetValue initialValue, @Nullable AnimationSpec<Float> animationSpec, @Nullable Function1<? super ModalBottomSheetValue, Boolean> function1, @Nullable Composer composer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        composer.startReplaceableGroup(-1928569212);
        if ((i11 & 2) != 0) {
            animationSpec = SwipeableDefaults.INSTANCE.getAnimationSpec();
        }
        AnimationSpec<Float> animationSpec2 = animationSpec;
        if ((i11 & 4) != 0) {
            function1 = new Function1<ModalBottomSheetValue, Boolean>() { // from class: androidx.compose.material.ModalBottomSheetKt$rememberModalBottomSheetState$3
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull ModalBottomSheetValue it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Boolean.TRUE;
                }
            };
        }
        ModalBottomSheetState rememberModalBottomSheetState = rememberModalBottomSheetState(initialValue, animationSpec2, false, function1, composer, (i10 & 14) | FileUtils.S_IRWXU | ((i10 << 3) & 7168), 0);
        composer.endReplaceableGroup();
        return rememberModalBottomSheetState;
    }
}
