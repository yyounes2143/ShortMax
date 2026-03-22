package io.bidmachine.protobuf;

import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.adcom.ConnectionType;
import com.explorestack.protobuf.adcom.Context;
import com.explorestack.protobuf.adcom.DeviceType;
import com.explorestack.protobuf.adcom.OS;
import com.explorestack.protobuf.adcom.c;
import com.explorestack.protobuf.x1;
import io.bidmachine.protobuf.InitRequest;
/* loaded from: classes8.dex */
public interface InitRequestOrBuilder extends MessageOrBuilder {
    InitRequest.AndroidPlatformData getAndroid();

    InitRequest.AndroidPlatformDataOrBuilder getAndroidOrBuilder();

    String getAppVer();

    ByteString getAppVerBytes();

    String getBmIfv();

    ByteString getBmIfvBytes();

    String getBundle();

    ByteString getBundleBytes();

    Context getContext();

    c getContextOrBuilder();

    ConnectionType getContype();

    int getContypeValue();

    @Override // com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

    DeviceType getDeviceType();

    int getDeviceTypeValue();

    Struct getExt();

    x1 getExtOrBuilder();

    Context.Geo getGeo();

    Context.GeoOrBuilder getGeoOrBuilder();

    String getHwv();

    ByteString getHwvBytes();

    String getIfa();

    ByteString getIfaBytes();

    String getIfv();

    ByteString getIfvBytes();

    InitRequest.iOSPlatformData getIos();

    InitRequest.iOSPlatformDataOrBuilder getIosOrBuilder();

    String getMake();

    ByteString getMakeBytes();

    String getModel();

    ByteString getModelBytes();

    OS getOs();

    int getOsValue();

    String getOsv();

    ByteString getOsvBytes();

    InitRequest.PlatformDataCase getPlatformDataCase();

    String getSdk();

    ByteString getSdkBytes();

    String getSdkver();

    ByteString getSdkverBytes();

    String getSellerId();

    ByteString getSellerIdBytes();

    String getSessionId();

    ByteString getSessionIdBytes();

    boolean hasAndroid();

    boolean hasContext();

    boolean hasExt();

    boolean hasGeo();

    boolean hasIos();

    @Override // com.explorestack.protobuf.MessageOrBuilder
    /* synthetic */ boolean isInitialized();
}
