package io.bidmachine.protobuf;

import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.adcom.Context;
import com.explorestack.protobuf.adcom.c;
import com.explorestack.protobuf.x1;
/* loaded from: classes8.dex */
public interface InitRequestV2OrBuilder extends MessageOrBuilder {
    Context getContext();

    c getContextOrBuilder();

    @Override // com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

    Struct getExt();

    x1 getExtOrBuilder();

    boolean hasContext();

    boolean hasExt();

    @Override // com.explorestack.protobuf.MessageOrBuilder
    /* synthetic */ boolean isInitialized();
}
