package io.bidmachine.protobuf.analytics.events;

import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.StringValue;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Timestamp;
import com.explorestack.protobuf.c2;
import com.explorestack.protobuf.w1;
import com.explorestack.protobuf.x1;
import io.bidmachine.protobuf.sdk.Error;
import io.bidmachine.protobuf.sdk.ErrorOrBuilder;
/* loaded from: classes8.dex */
public interface SDKEventOrBuilder extends MessageOrBuilder {
    int getAction();

    StringValue getAdType();

    w1 getAdTypeOrBuilder();

    String getContext();

    ByteString getContextBytes();

    Struct getCustomParams();

    x1 getCustomParamsOrBuilder();

    @Override // com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

    Error getError();

    ErrorOrBuilder getErrorOrBuilder();

    Timestamp getFinishTime();

    c2 getFinishTimeOrBuilder();

    StringValue getNetwork();

    w1 getNetworkOrBuilder();

    double getPrice();

    Timestamp getStartTime();

    c2 getStartTimeOrBuilder();

    boolean hasAdType();

    boolean hasCustomParams();

    boolean hasError();

    boolean hasFinishTime();

    boolean hasNetwork();

    boolean hasStartTime();

    @Override // com.explorestack.protobuf.MessageOrBuilder
    /* synthetic */ boolean isInitialized();
}
