package io.bidmachine.protobuf.sdk;

import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.MessageOrBuilder;
import io.bidmachine.protobuf.sdk.ContextualData;
/* loaded from: classes8.dex */
public interface ContextualDataOrBuilder extends MessageOrBuilder {
    ContextualData.ImpressionData getData();

    ContextualData.ImpressionDataOrBuilder getDataOrBuilder();

    @Override // com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

    String getMediatorName();

    ByteString getMediatorNameBytes();

    String getPlacement();

    ByteString getPlacementBytes();

    boolean hasData();

    @Override // com.explorestack.protobuf.MessageOrBuilder
    /* synthetic */ boolean isInitialized();
}
