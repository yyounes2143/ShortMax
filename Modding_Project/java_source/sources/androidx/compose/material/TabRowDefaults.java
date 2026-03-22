package androidx.compose.material;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Dp;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TabRow.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class TabRowDefaults {
    public static final int $stable = 0;
    public static final float DividerOpacity = 0.12f;
    @NotNull
    public static final TabRowDefaults INSTANCE = new TabRowDefaults();
    private static final float DividerThickness = Dp.m4049constructorimpl(1);
    private static final float IndicatorHeight = Dp.m4049constructorimpl(2);
    private static final float ScrollableTabRowPadding = Dp.m4049constructorimpl(52);

    private TabRowDefaults() {
    }

    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    /* renamed from: Divider-9IZ8Weo  reason: not valid java name */
    public final void m1227Divider9IZ8Weo(@Nullable Modifier modifier, float f10, long j10, @Nullable Composer composer, final int i10, final int i11) {
        final Object obj;
        int i12;
        int i13;
        float f11;
        long j11;
        int i14;
        Modifier modifier2;
        float f12;
        final long m1841copywmQWz5c$default;
        final float f13;
        int i15;
        int i16;
        Composer startRestartGroup = composer.startRestartGroup(910934799);
        int i17 = i11 & 1;
        if (i17 != 0) {
            i12 = i10 | 6;
            obj = modifier;
        } else if ((i10 & 14) == 0) {
            obj = modifier;
            if (startRestartGroup.changed(obj)) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i12 = i13 | i10;
        } else {
            obj = modifier;
            i12 = i10;
        }
        if ((i10 & 112) == 0) {
            if ((i11 & 2) == 0) {
                f11 = f10;
                if (startRestartGroup.changed(f11)) {
                    i16 = 32;
                    i12 |= i16;
                }
            } else {
                f11 = f10;
            }
            i16 = 16;
            i12 |= i16;
        } else {
            f11 = f10;
        }
        if ((i10 & 896) == 0) {
            j11 = j10;
            if ((i11 & 4) == 0 && startRestartGroup.changed(j11)) {
                i15 = 256;
            } else {
                i15 = 128;
            }
            i12 |= i15;
        } else {
            j11 = j10;
        }
        if ((i11 & 8) != 0) {
            i12 |= 3072;
        } else if ((i10 & 7168) == 0) {
            if (startRestartGroup.changed(this)) {
                i14 = 2048;
            } else {
                i14 = 1024;
            }
            i12 |= i14;
        }
        if ((i12 & 5851) == 1170 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
            f13 = f11;
            m1841copywmQWz5c$default = j11;
        } else {
            startRestartGroup.startDefaults();
            if ((i10 & 1) != 0 && !startRestartGroup.getDefaultsInvalid()) {
                startRestartGroup.skipToGroupEnd();
                if ((i11 & 2) != 0) {
                    i12 &= -113;
                }
                if ((i11 & 4) != 0) {
                    i12 &= -897;
                }
                modifier2 = obj;
                f12 = f11;
            } else {
                if (i17 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = obj;
                }
                if ((i11 & 2) != 0) {
                    f12 = DividerThickness;
                    i12 &= -113;
                } else {
                    f12 = f11;
                }
                if ((i11 & 4) != 0) {
                    m1841copywmQWz5c$default = Color.m1841copywmQWz5c$default(((Color) startRestartGroup.consume(ContentColorKt.getLocalContentColor())).m1852unboximpl(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
                    i12 &= -897;
                    startRestartGroup.endDefaults();
                    DividerKt.m1043DivideroMI9zvI(modifier2, m1841copywmQWz5c$default, f12, 0.0f, startRestartGroup, (i12 & 14) | ((i12 >> 3) & 112) | ((i12 << 3) & 896), 8);
                    f13 = f12;
                    obj = modifier2;
                }
            }
            m1841copywmQWz5c$default = j11;
            startRestartGroup.endDefaults();
            DividerKt.m1043DivideroMI9zvI(modifier2, m1841copywmQWz5c$default, f12, 0.0f, startRestartGroup, (i12 & 14) | ((i12 >> 3) & 112) | ((i12 << 3) & 896), 8);
            f13 = f12;
            obj = modifier2;
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.TabRowDefaults$Divider$1
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

                public final void invoke(@Nullable Composer composer2, int i18) {
                    TabRowDefaults.this.m1227Divider9IZ8Weo(obj, f13, m1841copywmQWz5c$default, composer2, i10 | 1, i11);
                }
            });
        }
    }

    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    /* renamed from: Indicator-9IZ8Weo  reason: not valid java name */
    public final void m1228Indicator9IZ8Weo(@Nullable Modifier modifier, float f10, long j10, @Nullable Composer composer, final int i10, final int i11) {
        final Object obj;
        int i12;
        int i13;
        float f11;
        long j11;
        int i14;
        Modifier modifier2;
        float f12;
        final float f13;
        final long j12;
        int i15;
        int i16;
        Composer startRestartGroup = composer.startRestartGroup(1499002201);
        int i17 = i11 & 1;
        if (i17 != 0) {
            i12 = i10 | 6;
            obj = modifier;
        } else if ((i10 & 14) == 0) {
            obj = modifier;
            if (startRestartGroup.changed(obj)) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i12 = i13 | i10;
        } else {
            obj = modifier;
            i12 = i10;
        }
        if ((i10 & 112) == 0) {
            if ((i11 & 2) == 0) {
                f11 = f10;
                if (startRestartGroup.changed(f11)) {
                    i16 = 32;
                    i12 |= i16;
                }
            } else {
                f11 = f10;
            }
            i16 = 16;
            i12 |= i16;
        } else {
            f11 = f10;
        }
        if ((i10 & 896) == 0) {
            j11 = j10;
            if ((i11 & 4) == 0 && startRestartGroup.changed(j11)) {
                i15 = 256;
            } else {
                i15 = 128;
            }
            i12 |= i15;
        } else {
            j11 = j10;
        }
        if ((i11 & 8) != 0) {
            i12 |= 3072;
        } else if ((i10 & 7168) == 0) {
            if (startRestartGroup.changed(this)) {
                i14 = 2048;
            } else {
                i14 = 1024;
            }
            i12 |= i14;
        }
        if ((i12 & 5851) == 1170 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
            f13 = f11;
            j12 = j11;
        } else {
            startRestartGroup.startDefaults();
            if ((i10 & 1) != 0 && !startRestartGroup.getDefaultsInvalid()) {
                startRestartGroup.skipToGroupEnd();
                modifier2 = obj;
                f12 = f11;
            } else {
                if (i17 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = obj;
                }
                if ((i11 & 2) != 0) {
                    f12 = IndicatorHeight;
                } else {
                    f12 = f11;
                }
                if ((i11 & 4) != 0) {
                    j11 = ((Color) startRestartGroup.consume(ContentColorKt.getLocalContentColor())).m1852unboximpl();
                }
            }
            startRestartGroup.endDefaults();
            BoxKt.Box(BackgroundKt.m200backgroundbw27NRU$default(SizeKt.m474height3ABfNKs(SizeKt.fillMaxWidth$default(modifier2, 0.0f, 1, null), f12), j11, null, 2, null), startRestartGroup, 0);
            f13 = f12;
            j12 = j11;
            obj = modifier2;
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.TabRowDefaults$Indicator$1
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

                public final void invoke(@Nullable Composer composer2, int i18) {
                    TabRowDefaults.this.m1228Indicator9IZ8Weo(obj, f13, j12, composer2, i10 | 1, i11);
                }
            });
        }
    }

    /* renamed from: getDividerThickness-D9Ej5fM  reason: not valid java name */
    public final float m1229getDividerThicknessD9Ej5fM() {
        return DividerThickness;
    }

    /* renamed from: getIndicatorHeight-D9Ej5fM  reason: not valid java name */
    public final float m1230getIndicatorHeightD9Ej5fM() {
        return IndicatorHeight;
    }

    /* renamed from: getScrollableTabRowPadding-D9Ej5fM  reason: not valid java name */
    public final float m1231getScrollableTabRowPaddingD9Ej5fM() {
        return ScrollableTabRowPadding;
    }

    @NotNull
    public final Modifier tabIndicatorOffset(@NotNull Modifier modifier, @NotNull final TabPosition currentTabPosition) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(currentTabPosition, "currentTabPosition");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.material.TabRowDefaults$tabIndicatorOffset$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("tabIndicatorOffset");
                    inspectorInfo.setValue(TabPosition.this);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return ComposedModifierKt.composed(modifier, noInspectorInfo, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.material.TabRowDefaults$tabIndicatorOffset$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(3);
            }

            /* renamed from: invoke$lambda-0  reason: not valid java name */
            private static final float m1232invoke$lambda0(State<Dp> state) {
                return state.getValue().m4063unboximpl();
            }

            /* renamed from: invoke$lambda-1  reason: not valid java name */
            private static final float m1233invoke$lambda1(State<Dp> state) {
                return state.getValue().m4063unboximpl();
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                return invoke(modifier2, composer, num.intValue());
            }

            @Composable
            @NotNull
            public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(-398757863);
                State<Dp> m129animateDpAsStateKz89ssw = AnimateAsStateKt.m129animateDpAsStateKz89ssw(TabPosition.this.m1226getWidthD9Ej5fM(), AnimationSpecKt.tween$default(250, 0, EasingKt.getFastOutSlowInEasing(), 2, null), null, composer, 0, 4);
                Modifier m493width3ABfNKs = SizeKt.m493width3ABfNKs(OffsetKt.m436offsetVpY3zN4$default(SizeKt.wrapContentSize$default(SizeKt.fillMaxWidth$default(composed, 0.0f, 1, null), Alignment.Companion.getBottomStart(), false, 2, null), m1233invoke$lambda1(AnimateAsStateKt.m129animateDpAsStateKz89ssw(TabPosition.this.m1224getLeftD9Ej5fM(), AnimationSpecKt.tween$default(250, 0, EasingKt.getFastOutSlowInEasing(), 2, null), null, composer, 0, 4)), 0.0f, 2, null), m1232invoke$lambda0(m129animateDpAsStateKz89ssw));
                composer.endReplaceableGroup();
                return m493width3ABfNKs;
            }
        });
    }
}
