package androidx.activity.compose;

import androidx.activity.FullyDrawnReporter;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: ReportDrawn.kt */
@Metadata
@d(c = "androidx.activity.compose.ReportDrawnKt$ReportDrawnAfter$1", f = "ReportDrawn.kt", l = {182}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nReportDrawn.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReportDrawn.kt\nandroidx/activity/compose/ReportDrawnKt$ReportDrawnAfter$1\n+ 2 FullyDrawnReporter.kt\nandroidx/activity/FullyDrawnReporterKt\n*L\n1#1,176:1\n180#2,10:177\n*S KotlinDebug\n*F\n+ 1 ReportDrawn.kt\nandroidx/activity/compose/ReportDrawnKt$ReportDrawnAfter$1\n*L\n173#1:177,10\n*E\n"})
/* loaded from: classes.dex */
final class ReportDrawnKt$ReportDrawnAfter$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ Function1<c<? super Unit>, Object> $block;
    final /* synthetic */ FullyDrawnReporter $fullyDrawnReporter;
    Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ReportDrawnKt$ReportDrawnAfter$1(FullyDrawnReporter fullyDrawnReporter, Function1<? super c<? super Unit>, ? extends Object> function1, c<? super ReportDrawnKt$ReportDrawnAfter$1> cVar) {
        super(2, cVar);
        this.$fullyDrawnReporter = fullyDrawnReporter;
        this.$block = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new ReportDrawnKt$ReportDrawnAfter$1(this.$fullyDrawnReporter, this.$block, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((ReportDrawnKt$ReportDrawnAfter$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        FullyDrawnReporter fullyDrawnReporter;
        Throwable th2;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                fullyDrawnReporter = (FullyDrawnReporter) this.L$0;
                try {
                    f.b(obj);
                } catch (Throwable th3) {
                    th2 = th3;
                    fullyDrawnReporter.removeReporter();
                    throw th2;
                }
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            FullyDrawnReporter fullyDrawnReporter2 = this.$fullyDrawnReporter;
            Function1<c<? super Unit>, Object> function1 = this.$block;
            fullyDrawnReporter2.addReporter();
            if (!fullyDrawnReporter2.isFullyDrawnReported()) {
                try {
                    this.L$0 = fullyDrawnReporter2;
                    this.label = 1;
                    if (function1.invoke(this) == f10) {
                        return f10;
                    }
                    fullyDrawnReporter = fullyDrawnReporter2;
                } catch (Throwable th4) {
                    fullyDrawnReporter = fullyDrawnReporter2;
                    th2 = th4;
                    fullyDrawnReporter.removeReporter();
                    throw th2;
                }
            }
            return Unit.f60915a;
        }
        fullyDrawnReporter.removeReporter();
        return Unit.f60915a;
    }
}
