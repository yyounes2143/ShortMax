package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.PathFillType;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: VectorCompose.kt */
@Metadata
/* loaded from: classes.dex */
public final class VectorComposeKt {
    /* JADX WARN: Removed duplicated region for block: B:102:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:157:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0113  */
    @androidx.compose.ui.graphics.vector.VectorComposable
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Group(@org.jetbrains.annotations.Nullable java.lang.String r19, float r20, float r21, float r22, float r23, float r24, float r25, float r26, @org.jetbrains.annotations.Nullable java.util.List<? extends androidx.compose.ui.graphics.vector.PathNode> r27, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r28, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r29, final int r30, final int r31) {
        /*
            Method dump skipped, instructions count: 596
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.vector.VectorComposeKt.Group(java.lang.String, float, float, float, float, float, float, float, java.util.List, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int):void");
    }

    @VectorComposable
    @Composable
    /* renamed from: Path-9cdaXJ4  reason: not valid java name */
    public static final void m2439Path9cdaXJ4(@NotNull final List<? extends PathNode> pathData, int i10, @Nullable String str, @Nullable Brush brush, float f10, @Nullable Brush brush2, float f11, float f12, int i11, int i12, float f13, float f14, float f15, float f16, @Nullable Composer composer, final int i13, final int i14, final int i15) {
        final int i16;
        final String str2;
        final Brush brush3;
        float f17;
        Brush brush4;
        float f18;
        float f19;
        int i17;
        int i18;
        float f20;
        float f21;
        float f22;
        float f23;
        Intrinsics.checkNotNullParameter(pathData, "pathData");
        Composer startRestartGroup = composer.startRestartGroup(-1478270750);
        if ((i15 & 2) != 0) {
            i16 = VectorKt.getDefaultFillType();
        } else {
            i16 = i10;
        }
        if ((i15 & 4) != 0) {
            str2 = "";
        } else {
            str2 = str;
        }
        if ((i15 & 8) != 0) {
            brush3 = null;
        } else {
            brush3 = brush;
        }
        if ((i15 & 16) != 0) {
            f17 = 1.0f;
        } else {
            f17 = f10;
        }
        if ((i15 & 32) != 0) {
            brush4 = null;
        } else {
            brush4 = brush2;
        }
        if ((i15 & 64) != 0) {
            f18 = 1.0f;
        } else {
            f18 = f11;
        }
        if ((i15 & 128) != 0) {
            f19 = 0.0f;
        } else {
            f19 = f12;
        }
        if ((i15 & 256) != 0) {
            i17 = VectorKt.getDefaultStrokeLineCap();
        } else {
            i17 = i11;
        }
        if ((i15 & 512) != 0) {
            i18 = VectorKt.getDefaultStrokeLineJoin();
        } else {
            i18 = i12;
        }
        if ((i15 & 1024) != 0) {
            f20 = 4.0f;
        } else {
            f20 = f13;
        }
        if ((i15 & 2048) != 0) {
            f21 = 0.0f;
        } else {
            f21 = f14;
        }
        if ((i15 & 4096) != 0) {
            f22 = 1.0f;
        } else {
            f22 = f15;
        }
        if ((i15 & 8192) != 0) {
            f23 = 0.0f;
        } else {
            f23 = f16;
        }
        final VectorComposeKt$Path$1 vectorComposeKt$Path$1 = new Function0<PathComponent>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PathComponent invoke() {
                return new PathComponent();
            }
        };
        startRestartGroup.startReplaceableGroup(1886828752);
        if (!(startRestartGroup.getApplier() instanceof VectorApplier)) {
            ComposablesKt.invalidApplier();
        }
        startRestartGroup.startNode();
        if (startRestartGroup.getInserting()) {
            startRestartGroup.createNode(new Function0<PathComponent>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path-9cdaXJ4$$inlined$ComposeNode$1
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, androidx.compose.ui.graphics.vector.PathComponent] */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final PathComponent invoke() {
                    return Function0.this.invoke();
                }
            });
        } else {
            startRestartGroup.useNode();
        }
        Composer m1376constructorimpl = Updater.m1376constructorimpl(startRestartGroup);
        Updater.m1383setimpl(m1376constructorimpl, str2, new Function2<PathComponent, String, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$2$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PathComponent pathComponent, String str3) {
                invoke2(pathComponent, str3);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull PathComponent set, @NotNull String it) {
                Intrinsics.checkNotNullParameter(set, "$this$set");
                Intrinsics.checkNotNullParameter(it, "it");
                set.setName(it);
            }
        });
        Updater.m1383setimpl(m1376constructorimpl, pathData, new Function2<PathComponent, List<? extends PathNode>, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$2$2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PathComponent pathComponent, List<? extends PathNode> list) {
                invoke2(pathComponent, list);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull PathComponent set, @NotNull List<? extends PathNode> it) {
                Intrinsics.checkNotNullParameter(set, "$this$set");
                Intrinsics.checkNotNullParameter(it, "it");
                set.setPathData(it);
            }
        });
        Updater.m1383setimpl(m1376constructorimpl, PathFillType.m2078boximpl(i16), new Function2<PathComponent, PathFillType, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$2$3
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PathComponent pathComponent, PathFillType pathFillType) {
                m2441invokepweu1eQ(pathComponent, pathFillType.m2084unboximpl());
                return Unit.f60915a;
            }

            /* renamed from: invoke-pweu1eQ  reason: not valid java name */
            public final void m2441invokepweu1eQ(@NotNull PathComponent set, int i19) {
                Intrinsics.checkNotNullParameter(set, "$this$set");
                set.m2424setPathFillTypeoQ8Xj4U(i19);
            }
        });
        Updater.m1383setimpl(m1376constructorimpl, brush3, new Function2<PathComponent, Brush, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$2$4
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PathComponent pathComponent, Brush brush5) {
                invoke2(pathComponent, brush5);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull PathComponent set, @Nullable Brush brush5) {
                Intrinsics.checkNotNullParameter(set, "$this$set");
                set.setFill(brush5);
            }
        });
        Updater.m1383setimpl(m1376constructorimpl, Float.valueOf(f17), new Function2<PathComponent, Float, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$2$5
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PathComponent pathComponent, Float f24) {
                invoke(pathComponent, f24.floatValue());
                return Unit.f60915a;
            }

            public final void invoke(@NotNull PathComponent set, float f24) {
                Intrinsics.checkNotNullParameter(set, "$this$set");
                set.setFillAlpha(f24);
            }
        });
        Updater.m1383setimpl(m1376constructorimpl, brush4, new Function2<PathComponent, Brush, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$2$6
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PathComponent pathComponent, Brush brush5) {
                invoke2(pathComponent, brush5);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull PathComponent set, @Nullable Brush brush5) {
                Intrinsics.checkNotNullParameter(set, "$this$set");
                set.setStroke(brush5);
            }
        });
        Updater.m1383setimpl(m1376constructorimpl, Float.valueOf(f18), new Function2<PathComponent, Float, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$2$7
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PathComponent pathComponent, Float f24) {
                invoke(pathComponent, f24.floatValue());
                return Unit.f60915a;
            }

            public final void invoke(@NotNull PathComponent set, float f24) {
                Intrinsics.checkNotNullParameter(set, "$this$set");
                set.setStrokeAlpha(f24);
            }
        });
        Updater.m1383setimpl(m1376constructorimpl, Float.valueOf(f19), new Function2<PathComponent, Float, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$2$8
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PathComponent pathComponent, Float f24) {
                invoke(pathComponent, f24.floatValue());
                return Unit.f60915a;
            }

            public final void invoke(@NotNull PathComponent set, float f24) {
                Intrinsics.checkNotNullParameter(set, "$this$set");
                set.setStrokeLineWidth(f24);
            }
        });
        Updater.m1383setimpl(m1376constructorimpl, StrokeJoin.m2149boximpl(i18), new Function2<PathComponent, StrokeJoin, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$2$9
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PathComponent pathComponent, StrokeJoin strokeJoin) {
                m2442invokekLtJ_vA(pathComponent, strokeJoin.m2155unboximpl());
                return Unit.f60915a;
            }

            /* renamed from: invoke-kLtJ_vA  reason: not valid java name */
            public final void m2442invokekLtJ_vA(@NotNull PathComponent set, int i19) {
                Intrinsics.checkNotNullParameter(set, "$this$set");
                set.m2426setStrokeLineJoinWw9F2mQ(i19);
            }
        });
        Updater.m1383setimpl(m1376constructorimpl, StrokeCap.m2139boximpl(i17), new Function2<PathComponent, StrokeCap, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$2$10
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PathComponent pathComponent, StrokeCap strokeCap) {
                m2440invokeCSYIeUk(pathComponent, strokeCap.m2145unboximpl());
                return Unit.f60915a;
            }

            /* renamed from: invoke-CSYIeUk  reason: not valid java name */
            public final void m2440invokeCSYIeUk(@NotNull PathComponent set, int i19) {
                Intrinsics.checkNotNullParameter(set, "$this$set");
                set.m2425setStrokeLineCapBeK7IIE(i19);
            }
        });
        Updater.m1383setimpl(m1376constructorimpl, Float.valueOf(f20), new Function2<PathComponent, Float, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$2$11
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PathComponent pathComponent, Float f24) {
                invoke(pathComponent, f24.floatValue());
                return Unit.f60915a;
            }

            public final void invoke(@NotNull PathComponent set, float f24) {
                Intrinsics.checkNotNullParameter(set, "$this$set");
                set.setStrokeLineMiter(f24);
            }
        });
        Updater.m1383setimpl(m1376constructorimpl, Float.valueOf(f21), new Function2<PathComponent, Float, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$2$12
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PathComponent pathComponent, Float f24) {
                invoke(pathComponent, f24.floatValue());
                return Unit.f60915a;
            }

            public final void invoke(@NotNull PathComponent set, float f24) {
                Intrinsics.checkNotNullParameter(set, "$this$set");
                set.setTrimPathStart(f24);
            }
        });
        Updater.m1383setimpl(m1376constructorimpl, Float.valueOf(f22), new Function2<PathComponent, Float, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$2$13
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PathComponent pathComponent, Float f24) {
                invoke(pathComponent, f24.floatValue());
                return Unit.f60915a;
            }

            public final void invoke(@NotNull PathComponent set, float f24) {
                Intrinsics.checkNotNullParameter(set, "$this$set");
                set.setTrimPathEnd(f24);
            }
        });
        Updater.m1383setimpl(m1376constructorimpl, Float.valueOf(f23), new Function2<PathComponent, Float, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$2$14
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PathComponent pathComponent, Float f24) {
                invoke(pathComponent, f24.floatValue());
                return Unit.f60915a;
            }

            public final void invoke(@NotNull PathComponent set, float f24) {
                Intrinsics.checkNotNullParameter(set, "$this$set");
                set.setTrimPathOffset(f24);
            }
        });
        startRestartGroup.endNode();
        startRestartGroup.endReplaceableGroup();
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            final float f24 = f17;
            final Brush brush5 = brush4;
            final float f25 = f18;
            final float f26 = f19;
            final int i19 = i17;
            final int i20 = i18;
            final float f27 = f20;
            final float f28 = f21;
            final float f29 = f22;
            final float f30 = f23;
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$3
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

                public final void invoke(@Nullable Composer composer2, int i21) {
                    VectorComposeKt.m2439Path9cdaXJ4(pathData, i16, str2, brush3, f24, brush5, f25, f26, i19, i20, f27, f28, f29, f30, composer2, i13 | 1, i14, i15);
                }
            });
        }
    }
}
