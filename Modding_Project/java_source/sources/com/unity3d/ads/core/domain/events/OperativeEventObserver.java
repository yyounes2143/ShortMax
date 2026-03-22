package com.unity3d.ads.core.domain.events;

import com.unity3d.ads.core.data.datasource.UniversalRequestDataSource;
import com.unity3d.ads.core.data.repository.OperativeEventRepository;
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
/* compiled from: OperativeEventObserver.kt */
@Metadata
/* loaded from: classes7.dex */
public final class OperativeEventObserver {
    @NotNull
    private final BackgroundWorker backgroundWorker;
    @NotNull
    private final c0 defaultDispatcher;
    @NotNull
    private final GetUniversalRequestForPayLoad getUniversalRequestForPayLoad;
    @NotNull
    private final e<Boolean> isRunning;
    @NotNull
    private final OperativeEventRepository operativeEventRepository;
    @NotNull
    private final UniversalRequestDataSource universalRequestDataSource;

    public OperativeEventObserver(@NotNull GetUniversalRequestForPayLoad getUniversalRequestForPayLoad, @NotNull c0 defaultDispatcher, @NotNull OperativeEventRepository operativeEventRepository, @NotNull UniversalRequestDataSource universalRequestDataSource, @NotNull BackgroundWorker backgroundWorker) {
        Intrinsics.checkNotNullParameter(getUniversalRequestForPayLoad, "getUniversalRequestForPayLoad");
        Intrinsics.checkNotNullParameter(defaultDispatcher, "defaultDispatcher");
        Intrinsics.checkNotNullParameter(operativeEventRepository, "operativeEventRepository");
        Intrinsics.checkNotNullParameter(universalRequestDataSource, "universalRequestDataSource");
        Intrinsics.checkNotNullParameter(backgroundWorker, "backgroundWorker");
        this.getUniversalRequestForPayLoad = getUniversalRequestForPayLoad;
        this.defaultDispatcher = defaultDispatcher;
        this.operativeEventRepository = operativeEventRepository;
        this.universalRequestDataSource = universalRequestDataSource;
        this.backgroundWorker = backgroundWorker;
        this.isRunning = o.a(Boolean.FALSE);
    }

    @Nullable
    public final Object invoke(@NotNull c<? super Unit> cVar) {
        Object g10 = gt.e.g(this.defaultDispatcher, new OperativeEventObserver$invoke$2(this, null), cVar);
        if (g10 == a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }
}
