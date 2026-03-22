package io.bidmachine.protobuf.sdk;

import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.Timestamp;
import com.explorestack.protobuf.adcom.Context;
import com.explorestack.protobuf.c2;
import java.util.List;
/* loaded from: classes8.dex */
public interface AppOrBuilder extends MessageOrBuilder {
    String getAppName();

    ByteString getAppNameBytes();

    String getAppVer();

    ByteString getAppVerBytes();

    @Override // com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

    Timestamp getFirstLaunchTime();

    c2 getFirstLaunchTimeOrBuilder();

    String getFmwname();

    ByteString getFmwnameBytes();

    Timestamp getInstallTime();

    c2 getInstallTimeOrBuilder();

    Context.App.Release getRelease();

    Context.App.ReleaseOrBuilder getReleaseOrBuilder();

    String getStorecat();

    ByteString getStorecatBytes();

    String getStoresubcat(int i10);

    ByteString getStoresubcatBytes(int i10);

    int getStoresubcatCount();

    List<String> getStoresubcatList();

    boolean hasFirstLaunchTime();

    boolean hasInstallTime();

    boolean hasRelease();

    @Override // com.explorestack.protobuf.MessageOrBuilder
    /* synthetic */ boolean isInitialized();
}
