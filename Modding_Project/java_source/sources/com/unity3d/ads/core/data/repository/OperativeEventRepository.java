package com.unity3d.ads.core.data.repository;

import gatewayprotocol.v1.OperativeEventRequestOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.c;
import kt.d;
import kt.f;
import kt.g;
import org.jetbrains.annotations.NotNull;
/* compiled from: OperativeEventRepository.kt */
@Metadata
/* loaded from: classes7.dex */
public final class OperativeEventRepository {
    @NotNull
    private final d<OperativeEventRequestOuterClass.OperativeEventRequest> _operativeEvents;
    @NotNull
    private final f<OperativeEventRequestOuterClass.OperativeEventRequest> operativeEvents;

    public OperativeEventRepository() {
        d<OperativeEventRequestOuterClass.OperativeEventRequest> a10 = g.a(10, 10, BufferOverflow.DROP_OLDEST);
        this._operativeEvents = a10;
        this.operativeEvents = c.c(a10);
    }

    public final void addOperativeEvent(@NotNull OperativeEventRequestOuterClass.OperativeEventRequest operativeEventRequest) {
        Intrinsics.checkNotNullParameter(operativeEventRequest, "operativeEventRequest");
        this._operativeEvents.g(operativeEventRequest);
    }

    @NotNull
    public final f<OperativeEventRequestOuterClass.OperativeEventRequest> getOperativeEvents() {
        return this.operativeEvents;
    }
}
