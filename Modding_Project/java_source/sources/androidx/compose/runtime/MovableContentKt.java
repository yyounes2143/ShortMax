package androidx.compose.runtime;

import androidx.compose.runtime.annotation.RememberInComposition;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.DataLoaderHelper;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
/* compiled from: MovableContent.kt */
@Metadata
/* loaded from: classes.dex */
public final class MovableContentKt {
    public static final int movableContentKey = 126665345;

    @RememberInComposition
    @NotNull
    public static final Function2<Composer, Integer, Unit> movableContentOf(@NotNull final Function2<? super Composer, ? super Integer, Unit> function2) {
        final MovableContent movableContent = new MovableContent(ComposableLambdaKt.composableLambdaInstance(-703201834, true, new at.n() { // from class: androidx.compose.runtime.MovableContentKt$movableContentOf$movableContent$1
            @Override // at.n
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                invoke((Void) obj, (Composer) obj2, ((Number) obj3).intValue());
                return Unit.f60915a;
            }

            @Composable
            public final void invoke(Void r32, Composer composer, int i10) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-703201834, i10, -1, "androidx.compose.runtime.movableContentOf.<anonymous> (MovableContent.kt:39)");
                }
                function2.invoke(composer, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }));
        return ComposableLambdaKt.composableLambdaInstance(-328108779, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentOf$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                invoke(composer, num.intValue());
                return Unit.f60915a;
            }

            @Composable
            public final void invoke(Composer composer, int i10) {
                if (!composer.shouldExecute((i10 & 3) != 2, i10 & 1)) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-328108779, i10, -1, "androidx.compose.runtime.movableContentOf.<anonymous> (MovableContent.kt:40)");
                }
                composer.insertMovableContent(MovableContent.this, null);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        });
    }

    @ComposableInferredTarget(scheme = "[0[0]:[_]]")
    @RememberInComposition
    @NotNull
    public static final <R> at.n<R, Composer, Integer, Unit> movableContentWithReceiverOf(@NotNull final at.n<? super R, ? super Composer, ? super Integer, Unit> nVar) {
        final MovableContent movableContent = new MovableContent(ComposableLambdaKt.composableLambdaInstance(668517896, true, new at.n<R, Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentWithReceiverOf$movableContent$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // at.n
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Composer composer, Integer num) {
                invoke((MovableContentKt$movableContentWithReceiverOf$movableContent$1<R>) obj, composer, num.intValue());
                return Unit.f60915a;
            }

            @Composable
            public final void invoke(R r10, Composer composer, int i10) {
                if ((i10 & 6) == 0) {
                    i10 |= (i10 & 8) == 0 ? composer.changed(r10) : composer.changedInstance(r10) ? 4 : 2;
                }
                if (!composer.shouldExecute((i10 & 19) != 18, i10 & 1)) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(668517896, i10, -1, "androidx.compose.runtime.movableContentWithReceiverOf.<anonymous> (MovableContent.kt:171)");
                }
                nVar.invoke(r10, composer, Integer.valueOf(i10 & 14));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }));
        return ComposableLambdaKt.composableLambdaInstance(-1655274392, true, new at.n<R, Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentWithReceiverOf$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // at.n
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Composer composer, Integer num) {
                invoke((MovableContentKt$movableContentWithReceiverOf$1<R>) obj, composer, num.intValue());
                return Unit.f60915a;
            }

            @Composable
            public final void invoke(R r10, Composer composer, int i10) {
                if ((i10 & 6) == 0) {
                    i10 |= (i10 & 8) == 0 ? composer.changed(r10) : composer.changedInstance(r10) ? 4 : 2;
                }
                if (!composer.shouldExecute((i10 & 19) != 18, i10 & 1)) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1655274392, i10, -1, "androidx.compose.runtime.movableContentWithReceiverOf.<anonymous> (MovableContent.kt:172)");
                }
                composer.insertMovableContent(movableContent, r10);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        });
    }

    @RememberInComposition
    @NotNull
    public static final <P> at.n<P, Composer, Integer, Unit> movableContentOf(@NotNull at.n<? super P, ? super Composer, ? super Integer, Unit> nVar) {
        final MovableContent movableContent = new MovableContent(nVar);
        return ComposableLambdaKt.composableLambdaInstance(1032736913, true, new at.n<P, Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentOf$2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // at.n
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Composer composer, Integer num) {
                invoke((MovableContentKt$movableContentOf$2<P>) obj, composer, num.intValue());
                return Unit.f60915a;
            }

            @Composable
            public final void invoke(P p10, Composer composer, int i10) {
                if ((i10 & 6) == 0) {
                    i10 |= (i10 & 8) == 0 ? composer.changed(p10) : composer.changedInstance(p10) ? 4 : 2;
                }
                if (!composer.shouldExecute((i10 & 19) != 18, i10 & 1)) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1032736913, i10, -1, "androidx.compose.runtime.movableContentOf.<anonymous> (MovableContent.kt:63)");
                }
                composer.insertMovableContent(movableContent, p10);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        });
    }

    @RememberInComposition
    @NotNull
    public static final <R, P> at.o<R, P, Composer, Integer, Unit> movableContentWithReceiverOf(@NotNull final at.o<? super R, ? super P, ? super Composer, ? super Integer, Unit> oVar) {
        final MovableContent movableContent = new MovableContent(ComposableLambdaKt.composableLambdaInstance(-95003188, true, new at.n<Pair<? extends R, ? extends P>, Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentWithReceiverOf$movableContent$2
            @Override // at.n
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Composer composer, Integer num) {
                invoke((Pair) obj, composer, num.intValue());
                return Unit.f60915a;
            }

            @Composable
            public final void invoke(Pair<? extends R, ? extends P> pair, Composer composer, int i10) {
                if ((i10 & 6) == 0) {
                    i10 |= (i10 & 8) == 0 ? composer.changed(pair) : composer.changedInstance(pair) ? 4 : 2;
                }
                if (!composer.shouldExecute((i10 & 19) != 18, i10 & 1)) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-95003188, i10, -1, "androidx.compose.runtime.movableContentWithReceiverOf.<anonymous> (MovableContent.kt:196)");
                }
                oVar.invoke(pair.e(), pair.f(), composer, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }));
        return ComposableLambdaKt.composableLambdaInstance(1349529900, true, new at.o<R, P, Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentWithReceiverOf$2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // at.o
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Object obj2, Composer composer, Integer num) {
                invoke((MovableContentKt$movableContentWithReceiverOf$2<P, R>) obj, obj2, composer, num.intValue());
                return Unit.f60915a;
            }

            @Composable
            public final void invoke(R r10, P p10, Composer composer, int i10) {
                int i11;
                if ((i10 & 6) == 0) {
                    i11 = ((i10 & 8) == 0 ? composer.changed(r10) : composer.changedInstance(r10) ? 4 : 2) | i10;
                } else {
                    i11 = i10;
                }
                if ((i10 & 48) == 0) {
                    i11 |= (i10 & 64) == 0 ? composer.changed(p10) : composer.changedInstance(p10) ? 32 : 16;
                }
                if (!composer.shouldExecute((i11 & 147) != 146, i11 & 1)) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1349529900, i11, -1, "androidx.compose.runtime.movableContentWithReceiverOf.<anonymous> (MovableContent.kt:197)");
                }
                composer.insertMovableContent(movableContent, ms.k.a(r10, p10));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        });
    }

    @RememberInComposition
    @NotNull
    public static final <P1, P2> at.o<P1, P2, Composer, Integer, Unit> movableContentOf(@NotNull final at.o<? super P1, ? super P2, ? super Composer, ? super Integer, Unit> oVar) {
        final MovableContent movableContent = new MovableContent(ComposableLambdaKt.composableLambdaInstance(561467799, true, new at.n<Pair<? extends P1, ? extends P2>, Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentOf$movableContent$2
            @Override // at.n
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Composer composer, Integer num) {
                invoke((Pair) obj, composer, num.intValue());
                return Unit.f60915a;
            }

            @Composable
            public final void invoke(Pair<? extends P1, ? extends P2> pair, Composer composer, int i10) {
                if ((i10 & 6) == 0) {
                    i10 |= (i10 & 8) == 0 ? composer.changed(pair) : composer.changedInstance(pair) ? 4 : 2;
                }
                if (!composer.shouldExecute((i10 & 19) != 18, i10 & 1)) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(561467799, i10, -1, "androidx.compose.runtime.movableContentOf.<anonymous> (MovableContent.kt:87)");
                }
                oVar.invoke(pair.e(), pair.f(), composer, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }));
        return ComposableLambdaKt.composableLambdaInstance(-525773808, true, new at.o<P1, P2, Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentOf$3
            /* JADX WARN: Multi-variable type inference failed */
            @Override // at.o
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Object obj2, Composer composer, Integer num) {
                invoke((MovableContentKt$movableContentOf$3<P1, P2>) obj, obj2, composer, num.intValue());
                return Unit.f60915a;
            }

            @Composable
            public final void invoke(P1 p12, P2 p22, Composer composer, int i10) {
                int i11;
                if ((i10 & 6) == 0) {
                    i11 = ((i10 & 8) == 0 ? composer.changed(p12) : composer.changedInstance(p12) ? 4 : 2) | i10;
                } else {
                    i11 = i10;
                }
                if ((i10 & 48) == 0) {
                    i11 |= (i10 & 64) == 0 ? composer.changed(p22) : composer.changedInstance(p22) ? 32 : 16;
                }
                if (!composer.shouldExecute((i11 & 147) != 146, i11 & 1)) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-525773808, i11, -1, "androidx.compose.runtime.movableContentOf.<anonymous> (MovableContent.kt:88)");
                }
                composer.insertMovableContent(movableContent, ms.k.a(p12, p22));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        });
    }

    @RememberInComposition
    @NotNull
    public static final <R, P1, P2> at.p<R, P1, P2, Composer, Integer, Unit> movableContentWithReceiverOf(@NotNull final at.p<? super R, ? super P1, ? super P2, ? super Composer, ? super Integer, Unit> pVar) {
        final MovableContent movableContent = new MovableContent(ComposableLambdaKt.composableLambdaInstance(-963896566, true, new at.n<Triple<? extends R, ? extends P1, ? extends P2>, Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentWithReceiverOf$movableContent$3
            @Override // at.n
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Composer composer, Integer num) {
                invoke((Triple) obj, composer, num.intValue());
                return Unit.f60915a;
            }

            @Composable
            public final void invoke(Triple<? extends R, ? extends P1, ? extends P2> triple, Composer composer, int i10) {
                if ((i10 & 6) == 0) {
                    i10 |= (i10 & 8) == 0 ? composer.changed(triple) : composer.changedInstance(triple) ? 4 : 2;
                }
                if (!composer.shouldExecute((i10 & 19) != 18, i10 & 1)) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-963896566, i10, -1, "androidx.compose.runtime.movableContentWithReceiverOf.<anonymous> (MovableContent.kt:221)");
                }
                pVar.invoke(triple.f(), triple.g(), triple.h(), composer, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }));
        return ComposableLambdaKt.composableLambdaInstance(2121535275, true, new at.p<R, P1, P2, Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentWithReceiverOf$3
            /* JADX WARN: Multi-variable type inference failed */
            @Override // at.p
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Object obj2, Object obj3, Composer composer, Integer num) {
                invoke((MovableContentKt$movableContentWithReceiverOf$3<P1, P2, R>) obj, obj2, obj3, composer, num.intValue());
                return Unit.f60915a;
            }

            @Composable
            public final void invoke(R r10, P1 p12, P2 p22, Composer composer, int i10) {
                int i11;
                if ((i10 & 6) == 0) {
                    i11 = ((i10 & 8) == 0 ? composer.changed(r10) : composer.changedInstance(r10) ? 4 : 2) | i10;
                } else {
                    i11 = i10;
                }
                if ((i10 & 48) == 0) {
                    i11 |= (i10 & 64) == 0 ? composer.changed(p12) : composer.changedInstance(p12) ? 32 : 16;
                }
                if ((i10 & MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500) == 0) {
                    i11 |= (i10 & 512) == 0 ? composer.changed(p22) : composer.changedInstance(p22) ? 256 : 128;
                }
                if (!composer.shouldExecute((i11 & DataLoaderHelper.DATALOADER_KEY_INT_ENABLE_SPEED_ENGINE) != 1170, i11 & 1)) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(2121535275, i11, -1, "androidx.compose.runtime.movableContentWithReceiverOf.<anonymous> (MovableContent.kt:222)");
                }
                composer.insertMovableContent(movableContent, new Triple(r10, p12, p22));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        });
    }

    @RememberInComposition
    @NotNull
    public static final <P1, P2, P3> at.p<P1, P2, P3, Composer, Integer, Unit> movableContentOf(@NotNull final at.p<? super P1, ? super P2, ? super P3, ? super Composer, ? super Integer, Unit> pVar) {
        final MovableContent movableContent = new MovableContent(ComposableLambdaKt.composableLambdaInstance(-846116651, true, new at.n<Triple<? extends P1, ? extends P2, ? extends P3>, Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentOf$movableContent$3
            @Override // at.n
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Composer composer, Integer num) {
                invoke((Triple) obj, composer, num.intValue());
                return Unit.f60915a;
            }

            @Composable
            public final void invoke(Triple<? extends P1, ? extends P2, ? extends P3> triple, Composer composer, int i10) {
                if ((i10 & 6) == 0) {
                    i10 |= (i10 & 8) == 0 ? composer.changed(triple) : composer.changedInstance(triple) ? 4 : 2;
                }
                if (!composer.shouldExecute((i10 & 19) != 18, i10 & 1)) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-846116651, i10, -1, "androidx.compose.runtime.movableContentOf.<anonymous> (MovableContent.kt:113)");
                }
                pVar.invoke(triple.f(), triple.g(), triple.h(), composer, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }));
        return ComposableLambdaKt.composableLambdaInstance(1477386365, true, new at.p<P1, P2, P3, Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentOf$4
            /* JADX WARN: Multi-variable type inference failed */
            @Override // at.p
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Object obj2, Object obj3, Composer composer, Integer num) {
                invoke((MovableContentKt$movableContentOf$4<P1, P2, P3>) obj, obj2, obj3, composer, num.intValue());
                return Unit.f60915a;
            }

            @Composable
            public final void invoke(P1 p12, P2 p22, P3 p32, Composer composer, int i10) {
                int i11;
                if ((i10 & 6) == 0) {
                    i11 = ((i10 & 8) == 0 ? composer.changed(p12) : composer.changedInstance(p12) ? 4 : 2) | i10;
                } else {
                    i11 = i10;
                }
                if ((i10 & 48) == 0) {
                    i11 |= (i10 & 64) == 0 ? composer.changed(p22) : composer.changedInstance(p22) ? 32 : 16;
                }
                if ((i10 & MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500) == 0) {
                    i11 |= (i10 & 512) == 0 ? composer.changed(p32) : composer.changedInstance(p32) ? 256 : 128;
                }
                if (composer.shouldExecute((i11 & DataLoaderHelper.DATALOADER_KEY_INT_ENABLE_SPEED_ENGINE) != 1170, i11 & 1)) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1477386365, i11, -1, "androidx.compose.runtime.movableContentOf.<anonymous> (MovableContent.kt:115)");
                    }
                    composer.insertMovableContent(movableContent, new Triple(p12, p22, p32));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                        return;
                    }
                    return;
                }
                composer.skipToGroupEnd();
            }
        });
    }

    @RememberInComposition
    @NotNull
    public static final <R, P1, P2, P3> at.q<R, P1, P2, P3, Composer, Integer, Unit> movableContentWithReceiverOf(@NotNull final at.q<? super R, ? super P1, ? super P2, ? super P3, ? super Composer, ? super Integer, Unit> qVar) {
        final MovableContent movableContent = new MovableContent(ComposableLambdaKt.composableLambdaInstance(-346590649, true, new at.n<Object[], Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentWithReceiverOf$movableContent$4
            @Override // at.n
            public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Composer composer, Integer num) {
                invoke(objArr, composer, num.intValue());
                return Unit.f60915a;
            }

            @Composable
            public final void invoke(Object[] objArr, Composer composer, int i10) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-346590649, i10, -1, "androidx.compose.runtime.movableContentWithReceiverOf.<anonymous> (MovableContent.kt:248)");
                }
                qVar.invoke(objArr[0], objArr[1], objArr[2], objArr[3], composer, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }));
        return ComposableLambdaKt.composableLambdaInstance(572330192, true, new at.q<R, P1, P2, P3, Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentWithReceiverOf$4
            /* JADX WARN: Multi-variable type inference failed */
            @Override // at.q
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Object obj2, Object obj3, Object obj4, Composer composer, Integer num) {
                invoke((MovableContentKt$movableContentWithReceiverOf$4<P1, P2, P3, R>) obj, obj2, obj3, obj4, composer, num.intValue());
                return Unit.f60915a;
            }

            @Composable
            public final void invoke(R r10, P1 p12, P2 p22, P3 p32, Composer composer, int i10) {
                int i11;
                if ((i10 & 6) == 0) {
                    i11 = ((i10 & 8) == 0 ? composer.changed(r10) : composer.changedInstance(r10) ? 4 : 2) | i10;
                } else {
                    i11 = i10;
                }
                if ((i10 & 48) == 0) {
                    i11 |= (i10 & 64) == 0 ? composer.changed(p12) : composer.changedInstance(p12) ? 32 : 16;
                }
                if ((i10 & MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500) == 0) {
                    i11 |= (i10 & 512) == 0 ? composer.changed(p22) : composer.changedInstance(p22) ? 256 : 128;
                }
                if ((i10 & 3072) == 0) {
                    i11 |= (i10 & 4096) == 0 ? composer.changed(p32) : composer.changedInstance(p32) ? 2048 : 1024;
                }
                if (composer.shouldExecute((i11 & 9363) != 9362, i11 & 1)) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(572330192, i11, -1, "androidx.compose.runtime.movableContentWithReceiverOf.<anonymous> (MovableContent.kt:252)");
                    }
                    composer.insertMovableContent(movableContent, new Object[]{r10, p12, p22, p32});
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                        return;
                    }
                    return;
                }
                composer.skipToGroupEnd();
            }
        });
    }

    @RememberInComposition
    @NotNull
    public static final <P1, P2, P3, P4> at.q<P1, P2, P3, P4, Composer, Integer, Unit> movableContentOf(@NotNull final at.q<? super P1, ? super P2, ? super P3, ? super P4, ? super Composer, ? super Integer, Unit> qVar) {
        final MovableContent movableContent = new MovableContent(ComposableLambdaKt.composableLambdaInstance(743481490, true, new at.n<Object[], Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentOf$movableContent$4
            @Override // at.n
            public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Composer composer, Integer num) {
                invoke(objArr, composer, num.intValue());
                return Unit.f60915a;
            }

            @Composable
            public final void invoke(Object[] objArr, Composer composer, int i10) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(743481490, i10, -1, "androidx.compose.runtime.movableContentOf.<anonymous> (MovableContent.kt:142)");
                }
                qVar.invoke(objArr[0], objArr[1], objArr[2], objArr[3], composer, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }));
        return ComposableLambdaKt.composableLambdaInstance(-1304803723, true, new at.q<P1, P2, P3, P4, Composer, Integer, Unit>() { // from class: androidx.compose.runtime.MovableContentKt$movableContentOf$5
            /* JADX WARN: Multi-variable type inference failed */
            @Override // at.q
            public /* bridge */ /* synthetic */ Unit invoke(Object obj, Object obj2, Object obj3, Object obj4, Composer composer, Integer num) {
                invoke((MovableContentKt$movableContentOf$5<P1, P2, P3, P4>) obj, obj2, obj3, obj4, composer, num.intValue());
                return Unit.f60915a;
            }

            @Composable
            public final void invoke(P1 p12, P2 p22, P3 p32, P4 p42, Composer composer, int i10) {
                int i11;
                if ((i10 & 6) == 0) {
                    i11 = ((i10 & 8) == 0 ? composer.changed(p12) : composer.changedInstance(p12) ? 4 : 2) | i10;
                } else {
                    i11 = i10;
                }
                if ((i10 & 48) == 0) {
                    i11 |= (i10 & 64) == 0 ? composer.changed(p22) : composer.changedInstance(p22) ? 32 : 16;
                }
                if ((i10 & MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500) == 0) {
                    i11 |= (i10 & 512) == 0 ? composer.changed(p32) : composer.changedInstance(p32) ? 256 : 128;
                }
                if ((i10 & 3072) == 0) {
                    i11 |= (i10 & 4096) == 0 ? composer.changed(p42) : composer.changedInstance(p42) ? 2048 : 1024;
                }
                if (composer.shouldExecute((i11 & 9363) != 9362, i11 & 1)) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1304803723, i11, -1, "androidx.compose.runtime.movableContentOf.<anonymous> (MovableContent.kt:146)");
                    }
                    composer.insertMovableContent(movableContent, new Object[]{p12, p22, p32, p42});
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                        return;
                    }
                    return;
                }
                composer.skipToGroupEnd();
            }
        });
    }
}
