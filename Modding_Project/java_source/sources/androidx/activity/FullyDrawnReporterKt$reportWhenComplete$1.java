package androidx.activity;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FullyDrawnReporter.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.activity.FullyDrawnReporterKt", f = "FullyDrawnReporter.kt", l = {185}, m = "reportWhenComplete")
@SourceDebugExtension({"SMAP\nFullyDrawnReporter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FullyDrawnReporter.kt\nandroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1\n*L\n1#1,190:1\n*E\n"})
/* loaded from: classes.dex */
public final class FullyDrawnReporterKt$reportWhenComplete$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FullyDrawnReporterKt$reportWhenComplete$1(rs.c<? super FullyDrawnReporterKt$reportWhenComplete$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return FullyDrawnReporterKt.reportWhenComplete(null, null, this);
    }
}
