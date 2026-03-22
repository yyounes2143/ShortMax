package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.State;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.graphics.TransformOriginKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import at.n;
import com.tencent.wcdb.FileUtils;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EnterExitTransition.kt */
@Metadata
/* loaded from: classes.dex */
public final class EnterExitTransitionKt {
    @NotNull
    private static final MutableState<Float> DefaultAlpha;
    @NotNull
    private static final SpringSpec<Float> DefaultAlphaAndScaleSpring;
    @NotNull
    private static final SpringSpec<IntOffset> DefaultOffsetAnimationSpec;
    @NotNull
    private static final SpringSpec<IntSize> DefaultSizeAnimationSpec;
    @NotNull
    private static final TwoWayConverter<TransformOrigin, AnimationVector2D> TransformOriginVectorConverter = VectorConvertersKt.TwoWayConverter(new Function1<TransformOrigin, AnimationVector2D>() { // from class: androidx.compose.animation.EnterExitTransitionKt$TransformOriginVectorConverter$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ AnimationVector2D invoke(TransformOrigin transformOrigin) {
            return m91invoke__ExYCQ(transformOrigin.m2183unboximpl());
        }

        @NotNull
        /* renamed from: invoke-__ExYCQ  reason: not valid java name */
        public final AnimationVector2D m91invoke__ExYCQ(long j10) {
            return new AnimationVector2D(TransformOrigin.m2179getPivotFractionXimpl(j10), TransformOrigin.m2180getPivotFractionYimpl(j10));
        }
    }, new Function1<AnimationVector2D, TransformOrigin>() { // from class: androidx.compose.animation.EnterExitTransitionKt$TransformOriginVectorConverter$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ TransformOrigin invoke(AnimationVector2D animationVector2D) {
            return TransformOrigin.m2171boximpl(m92invokeLIALnN8(animationVector2D));
        }

        /* renamed from: invoke-LIALnN8  reason: not valid java name */
        public final long m92invokeLIALnN8(@NotNull AnimationVector2D it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return TransformOriginKt.TransformOrigin(it.getV1(), it.getV2());
        }
    });

    /* compiled from: EnterExitTransition.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[EnterExitState.values().length];
            iArr[EnterExitState.Visible.ordinal()] = 1;
            iArr[EnterExitState.PreEnter.ordinal()] = 2;
            iArr[EnterExitState.PostExit.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        MutableState<Float> mutableStateOf$default;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Float.valueOf(1.0f), null, 2, null);
        DefaultAlpha = mutableStateOf$default;
        DefaultAlphaAndScaleSpring = AnimationSpecKt.spring$default(0.0f, 400.0f, null, 5, null);
        DefaultOffsetAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntOffset.m4158boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntOffset.Companion)), 1, null);
        DefaultSizeAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntSize.m4201boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntSize.Companion)), 1, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x032b  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x034c  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x038a  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x03d5  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x03d8  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x03dd  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x03fb  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0448  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x044d  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02cf  */
    @androidx.compose.runtime.Composable
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.ui.Modifier createModifier(@org.jetbrains.annotations.NotNull androidx.compose.animation.core.Transition<androidx.compose.animation.EnterExitState> r24, @org.jetbrains.annotations.NotNull final androidx.compose.animation.EnterTransition r25, @org.jetbrains.annotations.NotNull final androidx.compose.animation.ExitTransition r26, @org.jetbrains.annotations.NotNull java.lang.String r27, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r28, int r29) {
        /*
            Method dump skipped, instructions count: 1183
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.EnterExitTransitionKt.createModifier(androidx.compose.animation.core.Transition, androidx.compose.animation.EnterTransition, androidx.compose.animation.ExitTransition, java.lang.String, androidx.compose.runtime.Composer, int):androidx.compose.ui.Modifier");
    }

    /* renamed from: createModifier$lambda-1  reason: not valid java name */
    private static final boolean m80createModifier$lambda1(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: createModifier$lambda-11  reason: not valid java name */
    public static final float m81createModifier$lambda11(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: createModifier$lambda-13  reason: not valid java name */
    public static final long m82createModifier$lambda13(State<TransformOrigin> state) {
        return state.getValue().m2183unboximpl();
    }

    /* renamed from: createModifier$lambda-2  reason: not valid java name */
    private static final void m83createModifier$lambda2(MutableState<Boolean> mutableState, boolean z10) {
        mutableState.setValue(Boolean.valueOf(z10));
    }

    /* renamed from: createModifier$lambda-4  reason: not valid java name */
    private static final boolean m84createModifier$lambda4(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    /* renamed from: createModifier$lambda-5  reason: not valid java name */
    private static final void m85createModifier$lambda5(MutableState<Boolean> mutableState, boolean z10) {
        mutableState.setValue(Boolean.valueOf(z10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: createModifier$lambda-8  reason: not valid java name */
    public static final float m86createModifier$lambda8(State<Float> state) {
        return state.getValue().floatValue();
    }

    @Stable
    @NotNull
    public static final EnterTransition expandHorizontally(@NotNull FiniteAnimationSpec<IntSize> animationSpec, @NotNull Alignment.Horizontal expandFrom, boolean z10, @NotNull final Function1<? super Integer, Integer> initialWidth) {
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        Intrinsics.checkNotNullParameter(expandFrom, "expandFrom");
        Intrinsics.checkNotNullParameter(initialWidth, "initialWidth");
        return expandIn(animationSpec, toAlignment(expandFrom), z10, new Function1<IntSize, IntSize>() { // from class: androidx.compose.animation.EnterExitTransitionKt$expandHorizontally$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ IntSize invoke(IntSize intSize) {
                return IntSize.m4201boximpl(m93invokemzRDjE0(intSize.m4213unboximpl()));
            }

            /* renamed from: invoke-mzRDjE0  reason: not valid java name */
            public final long m93invokemzRDjE0(long j10) {
                return IntSizeKt.IntSize(initialWidth.invoke(Integer.valueOf(IntSize.m4209getWidthimpl(j10))).intValue(), IntSize.m4208getHeightimpl(j10));
            }
        });
    }

    public static /* synthetic */ EnterTransition expandHorizontally$default(FiniteAnimationSpec finiteAnimationSpec, Alignment.Horizontal horizontal, boolean z10, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntSize.m4201boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntSize.Companion)), 1, null);
        }
        if ((i10 & 2) != 0) {
            horizontal = Alignment.Companion.getEnd();
        }
        if ((i10 & 4) != 0) {
            z10 = true;
        }
        if ((i10 & 8) != 0) {
            function1 = new Function1<Integer, Integer>() { // from class: androidx.compose.animation.EnterExitTransitionKt$expandHorizontally$1
                @NotNull
                public final Integer invoke(int i11) {
                    return 0;
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
                    return invoke(num.intValue());
                }
            };
        }
        return expandHorizontally(finiteAnimationSpec, horizontal, z10, function1);
    }

    @Stable
    @NotNull
    public static final EnterTransition expandIn(@NotNull FiniteAnimationSpec<IntSize> animationSpec, @NotNull Alignment expandFrom, boolean z10, @NotNull Function1<? super IntSize, IntSize> initialSize) {
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        Intrinsics.checkNotNullParameter(expandFrom, "expandFrom");
        Intrinsics.checkNotNullParameter(initialSize, "initialSize");
        return new EnterTransitionImpl(new TransitionData(null, null, new ChangeSize(expandFrom, initialSize, animationSpec, z10), null, 11, null));
    }

    public static /* synthetic */ EnterTransition expandIn$default(FiniteAnimationSpec finiteAnimationSpec, Alignment alignment, boolean z10, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntSize.m4201boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntSize.Companion)), 1, null);
        }
        if ((i10 & 2) != 0) {
            alignment = Alignment.Companion.getBottomEnd();
        }
        if ((i10 & 4) != 0) {
            z10 = true;
        }
        if ((i10 & 8) != 0) {
            function1 = new Function1<IntSize, IntSize>() { // from class: androidx.compose.animation.EnterExitTransitionKt$expandIn$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ IntSize invoke(IntSize intSize) {
                    return IntSize.m4201boximpl(m94invokemzRDjE0(intSize.m4213unboximpl()));
                }

                /* renamed from: invoke-mzRDjE0  reason: not valid java name */
                public final long m94invokemzRDjE0(long j10) {
                    return IntSizeKt.IntSize(0, 0);
                }
            };
        }
        return expandIn(finiteAnimationSpec, alignment, z10, function1);
    }

    @Stable
    @NotNull
    public static final EnterTransition expandVertically(@NotNull FiniteAnimationSpec<IntSize> animationSpec, @NotNull Alignment.Vertical expandFrom, boolean z10, @NotNull final Function1<? super Integer, Integer> initialHeight) {
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        Intrinsics.checkNotNullParameter(expandFrom, "expandFrom");
        Intrinsics.checkNotNullParameter(initialHeight, "initialHeight");
        return expandIn(animationSpec, toAlignment(expandFrom), z10, new Function1<IntSize, IntSize>() { // from class: androidx.compose.animation.EnterExitTransitionKt$expandVertically$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ IntSize invoke(IntSize intSize) {
                return IntSize.m4201boximpl(m95invokemzRDjE0(intSize.m4213unboximpl()));
            }

            /* renamed from: invoke-mzRDjE0  reason: not valid java name */
            public final long m95invokemzRDjE0(long j10) {
                return IntSizeKt.IntSize(IntSize.m4209getWidthimpl(j10), initialHeight.invoke(Integer.valueOf(IntSize.m4208getHeightimpl(j10))).intValue());
            }
        });
    }

    public static /* synthetic */ EnterTransition expandVertically$default(FiniteAnimationSpec finiteAnimationSpec, Alignment.Vertical vertical, boolean z10, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntSize.m4201boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntSize.Companion)), 1, null);
        }
        if ((i10 & 2) != 0) {
            vertical = Alignment.Companion.getBottom();
        }
        if ((i10 & 4) != 0) {
            z10 = true;
        }
        if ((i10 & 8) != 0) {
            function1 = new Function1<Integer, Integer>() { // from class: androidx.compose.animation.EnterExitTransitionKt$expandVertically$1
                @NotNull
                public final Integer invoke(int i11) {
                    return 0;
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
                    return invoke(num.intValue());
                }
            };
        }
        return expandVertically(finiteAnimationSpec, vertical, z10, function1);
    }

    @Stable
    @NotNull
    public static final EnterTransition fadeIn(@NotNull FiniteAnimationSpec<Float> animationSpec, float f10) {
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        return new EnterTransitionImpl(new TransitionData(new Fade(f10, animationSpec), null, null, null, 14, null));
    }

    public static /* synthetic */ EnterTransition fadeIn$default(FiniteAnimationSpec finiteAnimationSpec, float f10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, null, 5, null);
        }
        if ((i10 & 2) != 0) {
            f10 = 0.0f;
        }
        return fadeIn(finiteAnimationSpec, f10);
    }

    @Stable
    @NotNull
    public static final ExitTransition fadeOut(@NotNull FiniteAnimationSpec<Float> animationSpec, float f10) {
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        return new ExitTransitionImpl(new TransitionData(new Fade(f10, animationSpec), null, null, null, 14, null));
    }

    public static /* synthetic */ ExitTransition fadeOut$default(FiniteAnimationSpec finiteAnimationSpec, float f10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, null, 5, null);
        }
        if ((i10 & 2) != 0) {
            f10 = 0.0f;
        }
        return fadeOut(finiteAnimationSpec, f10);
    }

    @Stable
    @ExperimentalAnimationApi
    @NotNull
    /* renamed from: scaleIn-L8ZKh-E  reason: not valid java name */
    public static final EnterTransition m87scaleInL8ZKhE(@NotNull FiniteAnimationSpec<Float> animationSpec, float f10, long j10) {
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        return new EnterTransitionImpl(new TransitionData(null, null, null, new Scale(f10, j10, animationSpec, null), 7, null));
    }

    /* renamed from: scaleIn-L8ZKh-E$default  reason: not valid java name */
    public static /* synthetic */ EnterTransition m88scaleInL8ZKhE$default(FiniteAnimationSpec finiteAnimationSpec, float f10, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, null, 5, null);
        }
        if ((i10 & 2) != 0) {
            f10 = 0.0f;
        }
        if ((i10 & 4) != 0) {
            j10 = TransformOrigin.Companion.m2184getCenterSzJe1aQ();
        }
        return m87scaleInL8ZKhE(finiteAnimationSpec, f10, j10);
    }

    @Stable
    @ExperimentalAnimationApi
    @NotNull
    /* renamed from: scaleOut-L8ZKh-E  reason: not valid java name */
    public static final ExitTransition m89scaleOutL8ZKhE(@NotNull FiniteAnimationSpec<Float> animationSpec, float f10, long j10) {
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        return new ExitTransitionImpl(new TransitionData(null, null, null, new Scale(f10, j10, animationSpec, null), 7, null));
    }

    /* renamed from: scaleOut-L8ZKh-E$default  reason: not valid java name */
    public static /* synthetic */ ExitTransition m90scaleOutL8ZKhE$default(FiniteAnimationSpec finiteAnimationSpec, float f10, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, null, 5, null);
        }
        if ((i10 & 2) != 0) {
            f10 = 0.0f;
        }
        if ((i10 & 4) != 0) {
            j10 = TransformOrigin.Companion.m2184getCenterSzJe1aQ();
        }
        return m89scaleOutL8ZKhE(finiteAnimationSpec, f10, j10);
    }

    private static final Modifier shrinkExpand(Modifier modifier, final Transition<EnterExitState> transition, final State<ChangeSize> state, final State<ChangeSize> state2, final String str) {
        return ComposedModifierKt.composed$default(modifier, null, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.animation.EnterExitTransitionKt$shrinkExpand$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            /* renamed from: invoke$lambda-1  reason: not valid java name */
            private static final boolean m96invoke$lambda1(MutableState<Boolean> mutableState) {
                return mutableState.getValue().booleanValue();
            }

            /* renamed from: invoke$lambda-2  reason: not valid java name */
            private static final void m97invoke$lambda2(MutableState<Boolean> mutableState, boolean z10) {
                mutableState.setValue(Boolean.valueOf(z10));
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                return invoke(modifier2, composer, num.intValue());
            }

            /* JADX WARN: Removed duplicated region for block: B:38:0x00db  */
            /* JADX WARN: Removed duplicated region for block: B:42:0x010d  */
            /* JADX WARN: Removed duplicated region for block: B:45:0x012f  */
            /* JADX WARN: Removed duplicated region for block: B:53:0x0192  */
            /* JADX WARN: Removed duplicated region for block: B:54:0x0196  */
            @androidx.compose.runtime.Composable
            @org.jetbrains.annotations.NotNull
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final androidx.compose.ui.Modifier invoke(@org.jetbrains.annotations.NotNull androidx.compose.ui.Modifier r21, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r22, int r23) {
                /*
                    Method dump skipped, instructions count: 483
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.EnterExitTransitionKt$shrinkExpand$1.invoke(androidx.compose.ui.Modifier, androidx.compose.runtime.Composer, int):androidx.compose.ui.Modifier");
            }
        }, 1, null);
    }

    @Stable
    @NotNull
    public static final ExitTransition shrinkHorizontally(@NotNull FiniteAnimationSpec<IntSize> animationSpec, @NotNull Alignment.Horizontal shrinkTowards, boolean z10, @NotNull final Function1<? super Integer, Integer> targetWidth) {
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        Intrinsics.checkNotNullParameter(shrinkTowards, "shrinkTowards");
        Intrinsics.checkNotNullParameter(targetWidth, "targetWidth");
        return shrinkOut(animationSpec, toAlignment(shrinkTowards), z10, new Function1<IntSize, IntSize>() { // from class: androidx.compose.animation.EnterExitTransitionKt$shrinkHorizontally$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ IntSize invoke(IntSize intSize) {
                return IntSize.m4201boximpl(m98invokemzRDjE0(intSize.m4213unboximpl()));
            }

            /* renamed from: invoke-mzRDjE0  reason: not valid java name */
            public final long m98invokemzRDjE0(long j10) {
                return IntSizeKt.IntSize(targetWidth.invoke(Integer.valueOf(IntSize.m4209getWidthimpl(j10))).intValue(), IntSize.m4208getHeightimpl(j10));
            }
        });
    }

    public static /* synthetic */ ExitTransition shrinkHorizontally$default(FiniteAnimationSpec finiteAnimationSpec, Alignment.Horizontal horizontal, boolean z10, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntSize.m4201boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntSize.Companion)), 1, null);
        }
        if ((i10 & 2) != 0) {
            horizontal = Alignment.Companion.getEnd();
        }
        if ((i10 & 4) != 0) {
            z10 = true;
        }
        if ((i10 & 8) != 0) {
            function1 = new Function1<Integer, Integer>() { // from class: androidx.compose.animation.EnterExitTransitionKt$shrinkHorizontally$1
                @NotNull
                public final Integer invoke(int i11) {
                    return 0;
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
                    return invoke(num.intValue());
                }
            };
        }
        return shrinkHorizontally(finiteAnimationSpec, horizontal, z10, function1);
    }

    @Stable
    @NotNull
    public static final ExitTransition shrinkOut(@NotNull FiniteAnimationSpec<IntSize> animationSpec, @NotNull Alignment shrinkTowards, boolean z10, @NotNull Function1<? super IntSize, IntSize> targetSize) {
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        Intrinsics.checkNotNullParameter(shrinkTowards, "shrinkTowards");
        Intrinsics.checkNotNullParameter(targetSize, "targetSize");
        return new ExitTransitionImpl(new TransitionData(null, null, new ChangeSize(shrinkTowards, targetSize, animationSpec, z10), null, 11, null));
    }

    public static /* synthetic */ ExitTransition shrinkOut$default(FiniteAnimationSpec finiteAnimationSpec, Alignment alignment, boolean z10, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntSize.m4201boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntSize.Companion)), 1, null);
        }
        if ((i10 & 2) != 0) {
            alignment = Alignment.Companion.getBottomEnd();
        }
        if ((i10 & 4) != 0) {
            z10 = true;
        }
        if ((i10 & 8) != 0) {
            function1 = new Function1<IntSize, IntSize>() { // from class: androidx.compose.animation.EnterExitTransitionKt$shrinkOut$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ IntSize invoke(IntSize intSize) {
                    return IntSize.m4201boximpl(m99invokemzRDjE0(intSize.m4213unboximpl()));
                }

                /* renamed from: invoke-mzRDjE0  reason: not valid java name */
                public final long m99invokemzRDjE0(long j10) {
                    return IntSizeKt.IntSize(0, 0);
                }
            };
        }
        return shrinkOut(finiteAnimationSpec, alignment, z10, function1);
    }

    @Stable
    @NotNull
    public static final ExitTransition shrinkVertically(@NotNull FiniteAnimationSpec<IntSize> animationSpec, @NotNull Alignment.Vertical shrinkTowards, boolean z10, @NotNull final Function1<? super Integer, Integer> targetHeight) {
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        Intrinsics.checkNotNullParameter(shrinkTowards, "shrinkTowards");
        Intrinsics.checkNotNullParameter(targetHeight, "targetHeight");
        return shrinkOut(animationSpec, toAlignment(shrinkTowards), z10, new Function1<IntSize, IntSize>() { // from class: androidx.compose.animation.EnterExitTransitionKt$shrinkVertically$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ IntSize invoke(IntSize intSize) {
                return IntSize.m4201boximpl(m100invokemzRDjE0(intSize.m4213unboximpl()));
            }

            /* renamed from: invoke-mzRDjE0  reason: not valid java name */
            public final long m100invokemzRDjE0(long j10) {
                return IntSizeKt.IntSize(IntSize.m4209getWidthimpl(j10), targetHeight.invoke(Integer.valueOf(IntSize.m4208getHeightimpl(j10))).intValue());
            }
        });
    }

    public static /* synthetic */ ExitTransition shrinkVertically$default(FiniteAnimationSpec finiteAnimationSpec, Alignment.Vertical vertical, boolean z10, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntSize.m4201boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntSize.Companion)), 1, null);
        }
        if ((i10 & 2) != 0) {
            vertical = Alignment.Companion.getBottom();
        }
        if ((i10 & 4) != 0) {
            z10 = true;
        }
        if ((i10 & 8) != 0) {
            function1 = new Function1<Integer, Integer>() { // from class: androidx.compose.animation.EnterExitTransitionKt$shrinkVertically$1
                @NotNull
                public final Integer invoke(int i11) {
                    return 0;
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
                    return invoke(num.intValue());
                }
            };
        }
        return shrinkVertically(finiteAnimationSpec, vertical, z10, function1);
    }

    @Stable
    @NotNull
    public static final EnterTransition slideIn(@NotNull FiniteAnimationSpec<IntOffset> animationSpec, @NotNull Function1<? super IntSize, IntOffset> initialOffset) {
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        Intrinsics.checkNotNullParameter(initialOffset, "initialOffset");
        return new EnterTransitionImpl(new TransitionData(null, new Slide(initialOffset, animationSpec), null, null, 13, null));
    }

    public static /* synthetic */ EnterTransition slideIn$default(FiniteAnimationSpec finiteAnimationSpec, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntOffset.m4158boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntOffset.Companion)), 1, null);
        }
        return slideIn(finiteAnimationSpec, function1);
    }

    @Stable
    @NotNull
    public static final EnterTransition slideInHorizontally(@NotNull FiniteAnimationSpec<IntOffset> animationSpec, @NotNull final Function1<? super Integer, Integer> initialOffsetX) {
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        Intrinsics.checkNotNullParameter(initialOffsetX, "initialOffsetX");
        return slideIn(animationSpec, new Function1<IntSize, IntOffset>() { // from class: androidx.compose.animation.EnterExitTransitionKt$slideInHorizontally$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ IntOffset invoke(IntSize intSize) {
                return IntOffset.m4158boximpl(m101invokemHKZG7I(intSize.m4213unboximpl()));
            }

            /* renamed from: invoke-mHKZG7I  reason: not valid java name */
            public final long m101invokemHKZG7I(long j10) {
                return IntOffsetKt.IntOffset(initialOffsetX.invoke(Integer.valueOf(IntSize.m4209getWidthimpl(j10))).intValue(), 0);
            }
        });
    }

    public static /* synthetic */ EnterTransition slideInHorizontally$default(FiniteAnimationSpec finiteAnimationSpec, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntOffset.m4158boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntOffset.Companion)), 1, null);
        }
        if ((i10 & 2) != 0) {
            function1 = new Function1<Integer, Integer>() { // from class: androidx.compose.animation.EnterExitTransitionKt$slideInHorizontally$1
                @NotNull
                public final Integer invoke(int i11) {
                    return Integer.valueOf((-i11) / 2);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
                    return invoke(num.intValue());
                }
            };
        }
        return slideInHorizontally(finiteAnimationSpec, function1);
    }

    private static final Modifier slideInOut(Modifier modifier, final Transition<EnterExitState> transition, final State<Slide> state, final State<Slide> state2, final String str) {
        return ComposedModifierKt.composed$default(modifier, null, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.animation.EnterExitTransitionKt$slideInOut$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            /* renamed from: invoke$lambda-1  reason: not valid java name */
            private static final boolean m102invoke$lambda1(MutableState<Boolean> mutableState) {
                return mutableState.getValue().booleanValue();
            }

            /* renamed from: invoke$lambda-2  reason: not valid java name */
            private static final void m103invoke$lambda2(MutableState<Boolean> mutableState, boolean z10) {
                mutableState.setValue(Boolean.valueOf(z10));
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                return invoke(modifier2, composer, num.intValue());
            }

            @Composable
            @NotNull
            public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(158379472);
                Transition<EnterExitState> transition2 = transition;
                composer.startReplaceableGroup(1157296644);
                boolean changed = composer.changed(transition2);
                Object rememberedValue = composer.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                MutableState mutableState = (MutableState) rememberedValue;
                if (transition.getCurrentState() == transition.getTargetState() && !transition.isSeeking()) {
                    m103invoke$lambda2(mutableState, false);
                } else if (state.getValue() != null || state2.getValue() != null) {
                    m103invoke$lambda2(mutableState, true);
                }
                if (m102invoke$lambda1(mutableState)) {
                    Transition<EnterExitState> transition3 = transition;
                    TwoWayConverter<IntOffset, AnimationVector2D> vectorConverter = VectorConvertersKt.getVectorConverter(IntOffset.Companion);
                    String str2 = str;
                    composer.startReplaceableGroup(-492369756);
                    Object rememberedValue2 = composer.rememberedValue();
                    Composer.Companion companion = Composer.Companion;
                    if (rememberedValue2 == companion.getEmpty()) {
                        rememberedValue2 = str2 + " slide";
                        composer.updateRememberedValue(rememberedValue2);
                    }
                    composer.endReplaceableGroup();
                    Transition.DeferredAnimation createDeferredAnimation = androidx.compose.animation.core.TransitionKt.createDeferredAnimation(transition3, vectorConverter, (String) rememberedValue2, composer, FileUtils.S_IRWXU, 0);
                    Transition<EnterExitState> transition4 = transition;
                    State<Slide> state3 = state;
                    State<Slide> state4 = state2;
                    composer.startReplaceableGroup(1157296644);
                    boolean changed2 = composer.changed(transition4);
                    Object rememberedValue3 = composer.rememberedValue();
                    if (changed2 || rememberedValue3 == companion.getEmpty()) {
                        rememberedValue3 = new SlideModifier(createDeferredAnimation, state3, state4);
                        composer.updateRememberedValue(rememberedValue3);
                    }
                    composer.endReplaceableGroup();
                    composed = composed.then((SlideModifier) rememberedValue3);
                }
                composer.endReplaceableGroup();
                return composed;
            }
        }, 1, null);
    }

    @Stable
    @NotNull
    public static final EnterTransition slideInVertically(@NotNull FiniteAnimationSpec<IntOffset> animationSpec, @NotNull final Function1<? super Integer, Integer> initialOffsetY) {
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        Intrinsics.checkNotNullParameter(initialOffsetY, "initialOffsetY");
        return slideIn(animationSpec, new Function1<IntSize, IntOffset>() { // from class: androidx.compose.animation.EnterExitTransitionKt$slideInVertically$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ IntOffset invoke(IntSize intSize) {
                return IntOffset.m4158boximpl(m104invokemHKZG7I(intSize.m4213unboximpl()));
            }

            /* renamed from: invoke-mHKZG7I  reason: not valid java name */
            public final long m104invokemHKZG7I(long j10) {
                return IntOffsetKt.IntOffset(0, initialOffsetY.invoke(Integer.valueOf(IntSize.m4208getHeightimpl(j10))).intValue());
            }
        });
    }

    public static /* synthetic */ EnterTransition slideInVertically$default(FiniteAnimationSpec finiteAnimationSpec, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntOffset.m4158boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntOffset.Companion)), 1, null);
        }
        if ((i10 & 2) != 0) {
            function1 = new Function1<Integer, Integer>() { // from class: androidx.compose.animation.EnterExitTransitionKt$slideInVertically$1
                @NotNull
                public final Integer invoke(int i11) {
                    return Integer.valueOf((-i11) / 2);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
                    return invoke(num.intValue());
                }
            };
        }
        return slideInVertically(finiteAnimationSpec, function1);
    }

    @Stable
    @NotNull
    public static final ExitTransition slideOut(@NotNull FiniteAnimationSpec<IntOffset> animationSpec, @NotNull Function1<? super IntSize, IntOffset> targetOffset) {
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        Intrinsics.checkNotNullParameter(targetOffset, "targetOffset");
        return new ExitTransitionImpl(new TransitionData(null, new Slide(targetOffset, animationSpec), null, null, 13, null));
    }

    public static /* synthetic */ ExitTransition slideOut$default(FiniteAnimationSpec finiteAnimationSpec, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntOffset.m4158boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntOffset.Companion)), 1, null);
        }
        return slideOut(finiteAnimationSpec, function1);
    }

    @Stable
    @NotNull
    public static final ExitTransition slideOutHorizontally(@NotNull FiniteAnimationSpec<IntOffset> animationSpec, @NotNull final Function1<? super Integer, Integer> targetOffsetX) {
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        Intrinsics.checkNotNullParameter(targetOffsetX, "targetOffsetX");
        return slideOut(animationSpec, new Function1<IntSize, IntOffset>() { // from class: androidx.compose.animation.EnterExitTransitionKt$slideOutHorizontally$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ IntOffset invoke(IntSize intSize) {
                return IntOffset.m4158boximpl(m105invokemHKZG7I(intSize.m4213unboximpl()));
            }

            /* renamed from: invoke-mHKZG7I  reason: not valid java name */
            public final long m105invokemHKZG7I(long j10) {
                return IntOffsetKt.IntOffset(targetOffsetX.invoke(Integer.valueOf(IntSize.m4209getWidthimpl(j10))).intValue(), 0);
            }
        });
    }

    public static /* synthetic */ ExitTransition slideOutHorizontally$default(FiniteAnimationSpec finiteAnimationSpec, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntOffset.m4158boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntOffset.Companion)), 1, null);
        }
        if ((i10 & 2) != 0) {
            function1 = new Function1<Integer, Integer>() { // from class: androidx.compose.animation.EnterExitTransitionKt$slideOutHorizontally$1
                @NotNull
                public final Integer invoke(int i11) {
                    return Integer.valueOf((-i11) / 2);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
                    return invoke(num.intValue());
                }
            };
        }
        return slideOutHorizontally(finiteAnimationSpec, function1);
    }

    @Stable
    @NotNull
    public static final ExitTransition slideOutVertically(@NotNull FiniteAnimationSpec<IntOffset> animationSpec, @NotNull final Function1<? super Integer, Integer> targetOffsetY) {
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        Intrinsics.checkNotNullParameter(targetOffsetY, "targetOffsetY");
        return slideOut(animationSpec, new Function1<IntSize, IntOffset>() { // from class: androidx.compose.animation.EnterExitTransitionKt$slideOutVertically$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ IntOffset invoke(IntSize intSize) {
                return IntOffset.m4158boximpl(m106invokemHKZG7I(intSize.m4213unboximpl()));
            }

            /* renamed from: invoke-mHKZG7I  reason: not valid java name */
            public final long m106invokemHKZG7I(long j10) {
                return IntOffsetKt.IntOffset(0, targetOffsetY.invoke(Integer.valueOf(IntSize.m4208getHeightimpl(j10))).intValue());
            }
        });
    }

    public static /* synthetic */ ExitTransition slideOutVertically$default(FiniteAnimationSpec finiteAnimationSpec, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntOffset.m4158boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntOffset.Companion)), 1, null);
        }
        if ((i10 & 2) != 0) {
            function1 = new Function1<Integer, Integer>() { // from class: androidx.compose.animation.EnterExitTransitionKt$slideOutVertically$1
                @NotNull
                public final Integer invoke(int i11) {
                    return Integer.valueOf((-i11) / 2);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
                    return invoke(num.intValue());
                }
            };
        }
        return slideOutVertically(finiteAnimationSpec, function1);
    }

    private static final Alignment toAlignment(Alignment.Horizontal horizontal) {
        Alignment.Companion companion = Alignment.Companion;
        return Intrinsics.areEqual(horizontal, companion.getStart()) ? companion.getCenterStart() : Intrinsics.areEqual(horizontal, companion.getEnd()) ? companion.getCenterEnd() : companion.getCenter();
    }

    private static final Alignment toAlignment(Alignment.Vertical vertical) {
        Alignment.Companion companion = Alignment.Companion;
        return Intrinsics.areEqual(vertical, companion.getTop()) ? companion.getTopCenter() : Intrinsics.areEqual(vertical, companion.getBottom()) ? companion.getBottomCenter() : companion.getCenter();
    }
}
