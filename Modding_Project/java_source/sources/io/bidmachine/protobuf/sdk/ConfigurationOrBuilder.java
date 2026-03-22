package io.bidmachine.protobuf.sdk;

import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.StringValue;
import com.explorestack.protobuf.w1;
import io.bidmachine.protobuf.sdk.Monitor;
import io.bidmachine.protobuf.sdk.Reader;
import java.util.List;
/* loaded from: classes8.dex */
public interface ConfigurationOrBuilder extends MessageOrBuilder {
    StringValue getBpk();

    w1 getBpkOrBuilder();

    @Override // com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

    Monitor.Configuration getMonitors(int i10);

    int getMonitorsCount();

    List<Monitor.Configuration> getMonitorsList();

    Monitor.ConfigurationOrBuilder getMonitorsOrBuilder(int i10);

    List<? extends Monitor.ConfigurationOrBuilder> getMonitorsOrBuilderList();

    Reader.Configuration getReaders(int i10);

    int getReadersCount();

    List<Reader.Configuration> getReadersList();

    Reader.ConfigurationOrBuilder getReadersOrBuilder(int i10);

    List<? extends Reader.ConfigurationOrBuilder> getReadersOrBuilderList();

    boolean hasBpk();

    @Override // com.explorestack.protobuf.MessageOrBuilder
    /* synthetic */ boolean isInitialized();
}
