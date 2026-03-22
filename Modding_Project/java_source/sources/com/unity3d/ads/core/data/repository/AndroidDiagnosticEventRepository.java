package com.unity3d.ads.core.data.repository;

import com.unity3d.ads.core.domain.events.GetDiagnosticEventRequest;
import com.unity3d.ads.core.utils.CoroutineTimer;
import com.unity3d.services.core.log.DeviceLog;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import gt.c0;
import gt.f0;
import gt.g0;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.j;
import kotlinx.coroutines.flow.c;
import kotlinx.coroutines.flow.o;
import kotlinx.coroutines.i;
import kt.d;
import kt.e;
import kt.f;
import kt.g;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidDiagnosticEventRepository.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidDiagnosticEventRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidDiagnosticEventRepository.kt\ncom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,95:1\n230#2,5:96\n230#2,5:101\n214#2,5:106\n230#2,5:111\n*S KotlinDebug\n*F\n+ 1 AndroidDiagnosticEventRepository.kt\ncom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository\n*L\n45#1:96,5\n48#1:101,5\n57#1:106,5\n74#1:111,5\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidDiagnosticEventRepository implements DiagnosticEventRepository {
    @NotNull
    private final d<List<DiagnosticEventRequestOuterClass.DiagnosticEvent>> _diagnosticEvents;
    private final Set<DiagnosticEventRequestOuterClass.DiagnosticEventType> allowedEvents;
    @NotNull
    private final e<List<DiagnosticEventRequestOuterClass.DiagnosticEvent>> batch;
    private final Set<DiagnosticEventRequestOuterClass.DiagnosticEventType> blockedEvents;
    @NotNull
    private final e<Boolean> configured;
    @NotNull
    private final g0 coroutineScope;
    @NotNull
    private final f<List<DiagnosticEventRequestOuterClass.DiagnosticEvent>> diagnosticEvents;
    @NotNull
    private final e<Boolean> enabled;
    @NotNull
    private final CoroutineTimer flushTimer;
    @NotNull
    private final GetDiagnosticEventRequest getDiagnosticEventRequest;
    private int maxBatchSize;

    public AndroidDiagnosticEventRepository(@NotNull CoroutineTimer flushTimer, @NotNull GetDiagnosticEventRequest getDiagnosticEventRequest, @NotNull c0 dispatcher) {
        Intrinsics.checkNotNullParameter(flushTimer, "flushTimer");
        Intrinsics.checkNotNullParameter(getDiagnosticEventRequest, "getDiagnosticEventRequest");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        this.flushTimer = flushTimer;
        this.getDiagnosticEventRequest = getDiagnosticEventRequest;
        this.coroutineScope = i.i(i.a(dispatcher), new f0("DiagnosticEventRepository"));
        this.batch = o.a(CollectionsKt.n());
        this.maxBatchSize = Integer.MAX_VALUE;
        this.allowedEvents = Collections.synchronizedSet(new LinkedHashSet());
        this.blockedEvents = Collections.synchronizedSet(new LinkedHashSet());
        Boolean bool = Boolean.FALSE;
        this.enabled = o.a(bool);
        this.configured = o.a(bool);
        d<List<DiagnosticEventRequestOuterClass.DiagnosticEvent>> b10 = g.b(100, 0, null, 6, null);
        this._diagnosticEvents = b10;
        this.diagnosticEvents = c.c(b10);
    }

    @Override // com.unity3d.ads.core.data.repository.DiagnosticEventRepository
    public void addDiagnosticEvent(@NotNull DiagnosticEventRequestOuterClass.DiagnosticEvent diagnosticEvent) {
        List<DiagnosticEventRequestOuterClass.DiagnosticEvent> value;
        List<DiagnosticEventRequestOuterClass.DiagnosticEvent> value2;
        Intrinsics.checkNotNullParameter(diagnosticEvent, "diagnosticEvent");
        if (!this.configured.getValue().booleanValue()) {
            e<List<DiagnosticEventRequestOuterClass.DiagnosticEvent>> eVar = this.batch;
            do {
                value2 = eVar.getValue();
            } while (!eVar.b(value2, CollectionsKt.L0(value2, diagnosticEvent)));
        } else if (!this.enabled.getValue().booleanValue()) {
        } else {
            e<List<DiagnosticEventRequestOuterClass.DiagnosticEvent>> eVar2 = this.batch;
            do {
                value = eVar2.getValue();
            } while (!eVar2.b(value, CollectionsKt.L0(value, diagnosticEvent)));
            if (this.batch.getValue().size() >= this.maxBatchSize) {
                flush();
            }
        }
    }

    @Override // com.unity3d.ads.core.data.repository.DiagnosticEventRepository
    public void clear() {
        e<List<DiagnosticEventRequestOuterClass.DiagnosticEvent>> eVar = this.batch;
        do {
        } while (!eVar.b(eVar.getValue(), CollectionsKt.n()));
    }

    @Override // com.unity3d.ads.core.data.repository.DiagnosticEventRepository
    public void configure(@NotNull NativeConfigurationOuterClass.DiagnosticEventsConfiguration diagnosticsEventsConfiguration) {
        Intrinsics.checkNotNullParameter(diagnosticsEventsConfiguration, "diagnosticsEventsConfiguration");
        this.configured.setValue(Boolean.TRUE);
        this.enabled.setValue(Boolean.valueOf(diagnosticsEventsConfiguration.getEnabled()));
        if (!this.enabled.getValue().booleanValue()) {
            clear();
            return;
        }
        this.maxBatchSize = diagnosticsEventsConfiguration.getMaxBatchSize();
        Set<DiagnosticEventRequestOuterClass.DiagnosticEventType> set = this.allowedEvents;
        List<DiagnosticEventRequestOuterClass.DiagnosticEventType> allowedEventsList = diagnosticsEventsConfiguration.getAllowedEventsList();
        Intrinsics.checkNotNullExpressionValue(allowedEventsList, "diagnosticsEventsConfiguration.allowedEventsList");
        set.addAll(allowedEventsList);
        Set<DiagnosticEventRequestOuterClass.DiagnosticEventType> set2 = this.blockedEvents;
        List<DiagnosticEventRequestOuterClass.DiagnosticEventType> blockedEventsList = diagnosticsEventsConfiguration.getBlockedEventsList();
        Intrinsics.checkNotNullExpressionValue(blockedEventsList, "diagnosticsEventsConfiguration.blockedEventsList");
        set2.addAll(blockedEventsList);
        this.flushTimer.start(0L, diagnosticsEventsConfiguration.getMaxBatchIntervalMs(), new Function0<Unit>() { // from class: com.unity3d.ads.core.data.repository.AndroidDiagnosticEventRepository$configure$1
            /* JADX INFO: Access modifiers changed from: package-private */
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
                AndroidDiagnosticEventRepository.this.flush();
            }
        });
    }

    @Override // com.unity3d.ads.core.data.repository.DiagnosticEventRepository
    public void flush() {
        List<DiagnosticEventRequestOuterClass.DiagnosticEvent> value;
        if (!this.enabled.getValue().booleanValue()) {
            return;
        }
        e<List<DiagnosticEventRequestOuterClass.DiagnosticEvent>> eVar = this.batch;
        do {
            value = eVar.getValue();
        } while (!eVar.b(value, CollectionsKt.n()));
        List P = j.P(j.t(j.t(j.F(CollectionsKt.e0(value), new Function1<DiagnosticEventRequestOuterClass.DiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEvent>() { // from class: com.unity3d.ads.core.data.repository.AndroidDiagnosticEventRepository$flush$events$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final DiagnosticEventRequestOuterClass.DiagnosticEvent invoke(@Nullable DiagnosticEventRequestOuterClass.DiagnosticEvent diagnosticEvent) {
                GetDiagnosticEventRequest getDiagnosticEventRequest;
                if (diagnosticEvent == null) {
                    getDiagnosticEventRequest = AndroidDiagnosticEventRepository.this.getDiagnosticEventRequest;
                    return getDiagnosticEventRequest.invoke("null_diagnostic_event", null, null, null, null, null, null, null, null);
                }
                return diagnosticEvent;
            }
        }), new Function1<DiagnosticEventRequestOuterClass.DiagnosticEvent, Boolean>() { // from class: com.unity3d.ads.core.data.repository.AndroidDiagnosticEventRepository$flush$events$3
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull DiagnosticEventRequestOuterClass.DiagnosticEvent it) {
                Set set;
                boolean z10;
                Set set2;
                Intrinsics.checkNotNullParameter(it, "it");
                set = AndroidDiagnosticEventRepository.this.allowedEvents;
                if (!set.isEmpty()) {
                    set2 = AndroidDiagnosticEventRepository.this.allowedEvents;
                    if (!set2.contains(it.getEventType())) {
                        z10 = false;
                        return Boolean.valueOf(z10);
                    }
                }
                z10 = true;
                return Boolean.valueOf(z10);
            }
        }), new Function1<DiagnosticEventRequestOuterClass.DiagnosticEvent, Boolean>() { // from class: com.unity3d.ads.core.data.repository.AndroidDiagnosticEventRepository$flush$events$4
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull DiagnosticEventRequestOuterClass.DiagnosticEvent it) {
                Set set;
                Intrinsics.checkNotNullParameter(it, "it");
                set = AndroidDiagnosticEventRepository.this.blockedEvents;
                return Boolean.valueOf(!set.contains(it.getEventType()));
            }
        }));
        if (!P.isEmpty()) {
            DeviceLog.debug("Unity Ads Sending diagnostic batch enabled: " + this.enabled.getValue().booleanValue() + " size: " + P.size() + " :: " + P);
            gt.g.d(this.coroutineScope, null, null, new AndroidDiagnosticEventRepository$flush$1(this, P, null), 3, null);
        }
    }

    @Override // com.unity3d.ads.core.data.repository.DiagnosticEventRepository
    @NotNull
    public f<List<DiagnosticEventRequestOuterClass.DiagnosticEvent>> getDiagnosticEvents() {
        return this.diagnosticEvents;
    }
}
