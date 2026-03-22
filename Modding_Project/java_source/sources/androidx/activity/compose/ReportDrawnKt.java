package androidx.activity.compose;

import androidx.activity.FullyDrawnReporter;
import androidx.activity.FullyDrawnReporterOwner;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ScopeUpdateScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: ReportDrawn.kt */
@Metadata
/* loaded from: classes.dex */
public final class ReportDrawnKt {
    @Composable
    public static final void ReportDrawn(@Nullable Composer composer, final int i10) {
        Composer startRestartGroup = composer.startRestartGroup(-1357012904);
        if (i10 == 0 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            ReportDrawnWhen(new Function0<Boolean>() { // from class: androidx.activity.compose.ReportDrawnKt$ReportDrawn$1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Boolean invoke() {
                    return Boolean.TRUE;
                }
            }, startRestartGroup, 6);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.activity.compose.ReportDrawnKt$ReportDrawn$2
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

                public final void invoke(@Nullable Composer composer2, int i11) {
                    ReportDrawnKt.ReportDrawn(composer2, i10 | 1);
                }
            });
        }
    }

    @Composable
    public static final void ReportDrawnAfter(@NotNull final Function1<? super c<? super Unit>, ? extends Object> function1, @Nullable Composer composer, final int i10) {
        FullyDrawnReporter fullyDrawnReporter;
        Composer startRestartGroup = composer.startRestartGroup(945311272);
        FullyDrawnReporterOwner current = LocalFullyDrawnReporterOwner.INSTANCE.getCurrent(startRestartGroup, 6);
        if (current != null && (fullyDrawnReporter = current.getFullyDrawnReporter()) != null) {
            EffectsKt.LaunchedEffect(function1, fullyDrawnReporter, new ReportDrawnKt$ReportDrawnAfter$1(fullyDrawnReporter, function1, null), startRestartGroup, 584);
            ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.activity.compose.ReportDrawnKt$ReportDrawnAfter$2
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

                    public final void invoke(@Nullable Composer composer2, int i11) {
                        ReportDrawnKt.ReportDrawnAfter(function1, composer2, i10 | 1);
                    }
                });
                return;
            }
            return;
        }
        ScopeUpdateScope endRestartGroup2 = startRestartGroup.endRestartGroup();
        if (endRestartGroup2 != null) {
            endRestartGroup2.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.activity.compose.ReportDrawnKt$ReportDrawnAfter$fullyDrawnReporter$1
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

                public final void invoke(@Nullable Composer composer2, int i11) {
                    ReportDrawnKt.ReportDrawnAfter(function1, composer2, i10 | 1);
                }
            });
        }
    }

    @Composable
    public static final void ReportDrawnWhen(@NotNull final Function0<Boolean> function0, @Nullable Composer composer, final int i10) {
        int i11;
        final FullyDrawnReporter fullyDrawnReporter;
        int i12;
        Composer startRestartGroup = composer.startRestartGroup(-2047119994);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(function0)) {
                i12 = 4;
            } else {
                i12 = 2;
            }
            i11 = i12 | i10;
        } else {
            i11 = i10;
        }
        if ((i11 & 11) == 2 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            FullyDrawnReporterOwner current = LocalFullyDrawnReporterOwner.INSTANCE.getCurrent(startRestartGroup, 6);
            if (current != null && (fullyDrawnReporter = current.getFullyDrawnReporter()) != null) {
                EffectsKt.DisposableEffect(fullyDrawnReporter, function0, new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.activity.compose.ReportDrawnKt$ReportDrawnWhen$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final DisposableEffectResult invoke(@NotNull DisposableEffectScope disposableEffectScope) {
                        if (FullyDrawnReporter.this.isFullyDrawnReported()) {
                            return new DisposableEffectResult() { // from class: androidx.activity.compose.ReportDrawnKt$ReportDrawnWhen$1$invoke$$inlined$onDispose$1
                                @Override // androidx.compose.runtime.DisposableEffectResult
                                public void dispose() {
                                }
                            };
                        }
                        final ReportDrawnComposition reportDrawnComposition = new ReportDrawnComposition(FullyDrawnReporter.this, function0);
                        return new DisposableEffectResult() { // from class: androidx.activity.compose.ReportDrawnKt$ReportDrawnWhen$1$invoke$$inlined$onDispose$2
                            @Override // androidx.compose.runtime.DisposableEffectResult
                            public void dispose() {
                                ReportDrawnComposition.this.removeReporter();
                            }
                        };
                    }
                }, startRestartGroup, ((i11 << 3) & 112) | 8);
            } else {
                ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
                if (endRestartGroup != null) {
                    endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.activity.compose.ReportDrawnKt$ReportDrawnWhen$fullyDrawnReporter$1
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

                        public final void invoke(@Nullable Composer composer2, int i13) {
                            ReportDrawnKt.ReportDrawnWhen(function0, composer2, i10 | 1);
                        }
                    });
                    return;
                }
                return;
            }
        }
        ScopeUpdateScope endRestartGroup2 = startRestartGroup.endRestartGroup();
        if (endRestartGroup2 != null) {
            endRestartGroup2.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.activity.compose.ReportDrawnKt$ReportDrawnWhen$2
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

                public final void invoke(@Nullable Composer composer2, int i13) {
                    ReportDrawnKt.ReportDrawnWhen(function0, composer2, i10 | 1);
                }
            });
        }
    }
}
