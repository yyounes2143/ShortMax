package androidx.activity.compose;

import androidx.activity.FullyDrawnReporter;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
/* compiled from: ReportDrawn.kt */
@Metadata
/* loaded from: classes.dex */
final class ReportDrawnComposition implements Function0<Unit> {
    @NotNull
    private final Function1<Function0<Boolean>, Unit> checkReporter;
    @NotNull
    private final FullyDrawnReporter fullyDrawnReporter;
    @NotNull
    private final Function0<Boolean> predicate;
    @NotNull
    private final SnapshotStateObserver snapshotStateObserver;

    public ReportDrawnComposition(@NotNull FullyDrawnReporter fullyDrawnReporter, @NotNull Function0<Boolean> function0) {
        this.fullyDrawnReporter = fullyDrawnReporter;
        this.predicate = function0;
        SnapshotStateObserver snapshotStateObserver = new SnapshotStateObserver(new Function1<Function0<? extends Unit>, Unit>() { // from class: androidx.activity.compose.ReportDrawnComposition$snapshotStateObserver$1
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Function0<Unit> function02) {
                function02.invoke();
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Function0<? extends Unit> function02) {
                invoke2((Function0<Unit>) function02);
                return Unit.f60915a;
            }
        });
        snapshotStateObserver.start();
        this.snapshotStateObserver = snapshotStateObserver;
        this.checkReporter = new ReportDrawnComposition$checkReporter$1(this);
        fullyDrawnReporter.addOnReportDrawnListener(this);
        if (!fullyDrawnReporter.isFullyDrawnReported()) {
            fullyDrawnReporter.addReporter();
            observeReporter(function0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void observeReporter(final Function0<Boolean> function0) {
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        this.snapshotStateObserver.observeReads(function0, this.checkReporter, new Function0<Unit>() { // from class: androidx.activity.compose.ReportDrawnComposition$observeReporter$1
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
                Ref.BooleanRef.this.element = function0.invoke().booleanValue();
            }
        });
        if (booleanRef.element) {
            removeReporter();
        }
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.f60915a;
    }

    public final void removeReporter() {
        this.snapshotStateObserver.clear(this.predicate);
        if (!this.fullyDrawnReporter.isFullyDrawnReported()) {
            this.fullyDrawnReporter.removeReporter();
        }
        invoke2();
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public void invoke2() {
        this.snapshotStateObserver.clear();
        this.snapshotStateObserver.stop();
    }
}
