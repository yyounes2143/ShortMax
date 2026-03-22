package io.bidmachine.protobuf.sdk;

import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.MessageOrBuilder;
import io.bidmachine.protobuf.sdk.Monitor;
import java.util.List;
/* loaded from: classes8.dex */
public interface MonitorOrBuilder extends MessageOrBuilder {
    @Override // com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

    String getName();

    ByteString getNameBytes();

    Monitor.Record getRecords(int i10);

    int getRecordsCount();

    List<Monitor.Record> getRecordsList();

    Monitor.RecordOrBuilder getRecordsOrBuilder(int i10);

    List<? extends Monitor.RecordOrBuilder> getRecordsOrBuilderList();

    @Override // com.explorestack.protobuf.MessageOrBuilder
    /* synthetic */ boolean isInitialized();
}
