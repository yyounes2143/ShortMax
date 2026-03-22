package com.unity3d.ads.core.domain.events;

import com.unity3d.ads.core.data.datasource.UniversalRequestDataSource;
import com.unity3d.ads.core.data.repository.DiagnosticEventRepository;
import com.unity3d.ads.core.domain.GetUniversalRequestForPayLoad;
import com.unity3d.ads.core.domain.work.BackgroundWorker;
import gt.c0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.o;
import kt.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: DiagnosticEventObserver.kt */
@Metadata
/* loaded from: classes7.dex */
public final class DiagnosticEventObserver {
    @NotNull
    private final BackgroundWorker backgroundWorker;
    @NotNull
    private final c0 defaultDispatcher;
    @NotNull
    private final DiagnosticEventRepository diagnosticEventRepository;
    @NotNull
    private final GetDiagnosticEventBatchRequest getDiagnosticEventBatchRequest;
    @NotNull
    private final GetUniversalRequestForPayLoad getUniversalRequestForPayLoad;
    @NotNull
    private final e<Boolean> isRunning;
    @NotNull
    private final UniversalRequestDataSource universalRequestDataSource;

    public DiagnosticEventObserver(@NotNull GetUniversalRequestForPayLoad getUniversalRequestForPayLoad, @NotNull GetDiagnosticEventBatchRequest getDiagnosticEventBatchRequest, @NotNull c0 defaultDispatcher, @NotNull DiagnosticEventRepository diagnosticEventRepository, @NotNull UniversalRequestDataSource universalRequestDataSource, @NotNull BackgroundWorker backgroundWorker) {
        Intrinsics.checkNotNullParameter(getUniversalRequestForPayLoad, "getUniversalRequestForPayLoad");
        Intrinsics.checkNotNullParameter(getDiagnosticEventBatchRequest, "getDiagnosticEventBatchRequest");
        Intrinsics.checkNotNullParameter(defaultDispatcher, "defaultDispatcher");
        Intrinsics.checkNotNullParameter(diagnosticEventRepository, "diagnosticEventRepository");
        Intrinsics.checkNotNullParameter(universalRequestDataSource, "universalRequestDataSource");
        Intrinsics.checkNotNullParameter(backgroundWorker, "backgroundWorker");
        this.getUniversalRequestForPayLoad = getUniversalRequestForPayLoad;
        this.getDiagnosticEventBatchRequest = getDiagnosticEventBatchRequest;
        this.defaultDispatcher = defaultDispatcher;
        this.diagnosticEventRepository = diagnosticEventRepository;
        this.universalRequestDataSource = universalRequestDataSource;
        this.backgroundWorker = backgroundWorker;
        this.isRunning = o.a(Boolean.FALSE);
    }

    @Nullable
    public final Object invoke(@NotNull c<? super Unit> cVar) {
        Object g10 = gt.e.g(this.defaultDispatcher, new DiagnosticEventObserver$invoke$2(this, null), cVar);
        if (g10 == a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }
}
