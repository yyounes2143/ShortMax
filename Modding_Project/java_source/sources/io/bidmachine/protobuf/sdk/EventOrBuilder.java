package io.bidmachine.protobuf.sdk;

import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.x1;
import io.bidmachine.protobuf.sdk.Event;
/* loaded from: classes8.dex */
public interface EventOrBuilder extends MessageOrBuilder {
    @Override // com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

    Struct getExtrasPrivate();

    x1 getExtrasPrivateOrBuilder();

    Monitor getMonitor();

    MonitorOrBuilder getMonitorOrBuilder();

    Event.PayloadCase getPayloadCase();

    Reader getReader();

    ReaderOrBuilder getReaderOrBuilder();

    boolean hasExtrasPrivate();

    boolean hasMonitor();

    boolean hasReader();

    @Override // com.explorestack.protobuf.MessageOrBuilder
    /* synthetic */ boolean isInitialized();
}
