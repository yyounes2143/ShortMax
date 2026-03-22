package io.bidmachine.protobuf;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.a;
import com.explorestack.protobuf.adcom.ConnectionType;
import com.explorestack.protobuf.adcom.Context;
import com.explorestack.protobuf.adcom.DeviceType;
import com.explorestack.protobuf.adcom.OS;
import com.explorestack.protobuf.b;
import com.explorestack.protobuf.j1;
import com.explorestack.protobuf.j2;
import com.explorestack.protobuf.m0;
import com.explorestack.protobuf.m1;
import com.explorestack.protobuf.n;
import com.explorestack.protobuf.n0;
import com.explorestack.protobuf.t1;
import com.explorestack.protobuf.x1;
import com.explorestack.protobuf.y;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
/* loaded from: classes8.dex */
public final class SdkAnalyticContext extends GeneratedMessageV3 implements SdkAnalyticContextOrBuilder {
    public static final int APP_VER_FIELD_NUMBER = 13;
    public static final int BM_IFV_FIELD_NUMBER = 12;
    public static final int BUNDLE_FIELD_NUMBER = 2;
    public static final int CONTYPE_FIELD_NUMBER = 10;
    public static final int DCID_FIELD_NUMBER = 15;
    public static final int DEVICE_TYPE_FIELD_NUMBER = 9;
    public static final int EXPERIMENTS_FIELD_NUMBER = 17;
    public static final int EXT_FIELD_NUMBER = 16;
    public static final int GEO_FIELD_NUMBER = 5;
    public static final int HWV_FIELD_NUMBER = 20;
    public static final int IFA_FIELD_NUMBER = 8;
    public static final int IFV_FIELD_NUMBER = 11;
    public static final int MAKE_FIELD_NUMBER = 18;
    public static final int MODEL_FIELD_NUMBER = 19;
    public static final int OSV_FIELD_NUMBER = 4;
    public static final int OS_FIELD_NUMBER = 3;
    public static final int SDKVER_FIELD_NUMBER = 7;
    public static final int SDK_FIELD_NUMBER = 6;
    public static final int SESSION_ID_FIELD_NUMBER = 14;
    public static final int SOURCE_ID_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private volatile Object appVer_;
    private volatile Object bmIfv_;
    private volatile Object bundle_;
    private int contype_;
    private volatile Object dcid_;
    private int deviceType_;
    private n0 experiments_;
    private Struct ext_;
    private Context.Geo geo_;
    private volatile Object hwv_;
    private volatile Object ifa_;
    private volatile Object ifv_;
    private volatile Object make_;
    private byte memoizedIsInitialized;
    private volatile Object model_;
    private int os_;
    private volatile Object osv_;
    private volatile Object sdk_;
    private volatile Object sdkver_;
    private volatile Object sessionId_;
    private volatile Object sourceId_;
    private static final SdkAnalyticContext DEFAULT_INSTANCE = new SdkAnalyticContext();
    private static final j1<SdkAnalyticContext> PARSER = new b<SdkAnalyticContext>() { // from class: io.bidmachine.protobuf.SdkAnalyticContext.1
        @Override // com.explorestack.protobuf.j1
        public SdkAnalyticContext parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new SdkAnalyticContext(nVar, yVar);
        }
    };

    /* loaded from: classes8.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements SdkAnalyticContextOrBuilder {
        private Object appVer_;
        private int bitField0_;
        private Object bmIfv_;
        private Object bundle_;
        private int contype_;
        private Object dcid_;
        private int deviceType_;
        private n0 experiments_;
        private t1<Struct, Struct.Builder, x1> extBuilder_;
        private Struct ext_;
        private t1<Context.Geo, Context.Geo.Builder, Context.GeoOrBuilder> geoBuilder_;
        private Context.Geo geo_;
        private Object hwv_;
        private Object ifa_;
        private Object ifv_;
        private Object make_;
        private Object model_;
        private int os_;
        private Object osv_;
        private Object sdk_;
        private Object sdkver_;
        private Object sessionId_;
        private Object sourceId_;

        private void ensureExperimentsIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.experiments_ = new m0(this.experiments_);
                this.bitField0_ |= 1;
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return InitProto.internal_static_bidmachine_protobuf_SdkAnalyticContext_descriptor;
        }

        private t1<Struct, Struct.Builder, x1> getExtFieldBuilder() {
            if (this.extBuilder_ == null) {
                this.extBuilder_ = new t1<>(getExt(), getParentForChildren(), isClean());
                this.ext_ = null;
            }
            return this.extBuilder_;
        }

        private t1<Context.Geo, Context.Geo.Builder, Context.GeoOrBuilder> getGeoFieldBuilder() {
            if (this.geoBuilder_ == null) {
                this.geoBuilder_ = new t1<>(getGeo(), getParentForChildren(), isClean());
                this.geo_ = null;
            }
            return this.geoBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder addAllExperiments(Iterable<String> iterable) {
            ensureExperimentsIsMutable();
            a.AbstractC0246a.addAll((Iterable) iterable, (List) this.experiments_);
            onChanged();
            return this;
        }

        public Builder addExperiments(String str) {
            str.getClass();
            ensureExperimentsIsMutable();
            this.experiments_.add(str);
            onChanged();
            return this;
        }

        public Builder addExperimentsBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            ensureExperimentsIsMutable();
            this.experiments_.b(byteString);
            onChanged();
            return this;
        }

        public Builder clearAppVer() {
            this.appVer_ = SdkAnalyticContext.getDefaultInstance().getAppVer();
            onChanged();
            return this;
        }

        public Builder clearBmIfv() {
            this.bmIfv_ = SdkAnalyticContext.getDefaultInstance().getBmIfv();
            onChanged();
            return this;
        }

        public Builder clearBundle() {
            this.bundle_ = SdkAnalyticContext.getDefaultInstance().getBundle();
            onChanged();
            return this;
        }

        public Builder clearContype() {
            this.contype_ = 0;
            onChanged();
            return this;
        }

        public Builder clearDcid() {
            this.dcid_ = SdkAnalyticContext.getDefaultInstance().getDcid();
            onChanged();
            return this;
        }

        public Builder clearDeviceType() {
            this.deviceType_ = 0;
            onChanged();
            return this;
        }

        public Builder clearExperiments() {
            this.experiments_ = m0.f14459d;
            this.bitField0_ &= -2;
            onChanged();
            return this;
        }

        public Builder clearExt() {
            if (this.extBuilder_ == null) {
                this.ext_ = null;
                onChanged();
            } else {
                this.ext_ = null;
                this.extBuilder_ = null;
            }
            return this;
        }

        public Builder clearGeo() {
            if (this.geoBuilder_ == null) {
                this.geo_ = null;
                onChanged();
            } else {
                this.geo_ = null;
                this.geoBuilder_ = null;
            }
            return this;
        }

        public Builder clearHwv() {
            this.hwv_ = SdkAnalyticContext.getDefaultInstance().getHwv();
            onChanged();
            return this;
        }

        public Builder clearIfa() {
            this.ifa_ = SdkAnalyticContext.getDefaultInstance().getIfa();
            onChanged();
            return this;
        }

        public Builder clearIfv() {
            this.ifv_ = SdkAnalyticContext.getDefaultInstance().getIfv();
            onChanged();
            return this;
        }

        public Builder clearMake() {
            this.make_ = SdkAnalyticContext.getDefaultInstance().getMake();
            onChanged();
            return this;
        }

        public Builder clearModel() {
            this.model_ = SdkAnalyticContext.getDefaultInstance().getModel();
            onChanged();
            return this;
        }

        public Builder clearOs() {
            this.os_ = 0;
            onChanged();
            return this;
        }

        public Builder clearOsv() {
            this.osv_ = SdkAnalyticContext.getDefaultInstance().getOsv();
            onChanged();
            return this;
        }

        public Builder clearSdk() {
            this.sdk_ = SdkAnalyticContext.getDefaultInstance().getSdk();
            onChanged();
            return this;
        }

        public Builder clearSdkver() {
            this.sdkver_ = SdkAnalyticContext.getDefaultInstance().getSdkver();
            onChanged();
            return this;
        }

        public Builder clearSessionId() {
            this.sessionId_ = SdkAnalyticContext.getDefaultInstance().getSessionId();
            onChanged();
            return this;
        }

        public Builder clearSourceId() {
            this.sourceId_ = SdkAnalyticContext.getDefaultInstance().getSourceId();
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public String getAppVer() {
            Object obj = this.appVer_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.appVer_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public ByteString getAppVerBytes() {
            Object obj = this.appVer_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.appVer_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public String getBmIfv() {
            Object obj = this.bmIfv_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.bmIfv_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public ByteString getBmIfvBytes() {
            Object obj = this.bmIfv_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.bmIfv_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public String getBundle() {
            Object obj = this.bundle_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.bundle_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public ByteString getBundleBytes() {
            Object obj = this.bundle_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.bundle_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public ConnectionType getContype() {
            ConnectionType valueOf = ConnectionType.valueOf(this.contype_);
            if (valueOf == null) {
                return ConnectionType.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public int getContypeValue() {
            return this.contype_;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public String getDcid() {
            Object obj = this.dcid_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.dcid_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public ByteString getDcidBytes() {
            Object obj = this.dcid_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.dcid_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return InitProto.internal_static_bidmachine_protobuf_SdkAnalyticContext_descriptor;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public DeviceType getDeviceType() {
            DeviceType valueOf = DeviceType.valueOf(this.deviceType_);
            if (valueOf == null) {
                return DeviceType.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public int getDeviceTypeValue() {
            return this.deviceType_;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public String getExperiments(int i10) {
            return this.experiments_.get(i10);
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public ByteString getExperimentsBytes(int i10) {
            return this.experiments_.getByteString(i10);
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public int getExperimentsCount() {
            return this.experiments_.size();
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public Struct getExt() {
            t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
            if (t1Var == null) {
                Struct struct = this.ext_;
                if (struct == null) {
                    return Struct.getDefaultInstance();
                }
                return struct;
            }
            return t1Var.e();
        }

        public Struct.Builder getExtBuilder() {
            onChanged();
            return getExtFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public x1 getExtOrBuilder() {
            t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Struct struct = this.ext_;
            if (struct == null) {
                return Struct.getDefaultInstance();
            }
            return struct;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public Context.Geo getGeo() {
            t1<Context.Geo, Context.Geo.Builder, Context.GeoOrBuilder> t1Var = this.geoBuilder_;
            if (t1Var == null) {
                Context.Geo geo = this.geo_;
                if (geo == null) {
                    return Context.Geo.getDefaultInstance();
                }
                return geo;
            }
            return t1Var.e();
        }

        public Context.Geo.Builder getGeoBuilder() {
            onChanged();
            return getGeoFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public Context.GeoOrBuilder getGeoOrBuilder() {
            t1<Context.Geo, Context.Geo.Builder, Context.GeoOrBuilder> t1Var = this.geoBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Context.Geo geo = this.geo_;
            if (geo == null) {
                return Context.Geo.getDefaultInstance();
            }
            return geo;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public String getHwv() {
            Object obj = this.hwv_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.hwv_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public ByteString getHwvBytes() {
            Object obj = this.hwv_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.hwv_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public String getIfa() {
            Object obj = this.ifa_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.ifa_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public ByteString getIfaBytes() {
            Object obj = this.ifa_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ifa_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public String getIfv() {
            Object obj = this.ifv_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.ifv_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public ByteString getIfvBytes() {
            Object obj = this.ifv_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ifv_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public String getMake() {
            Object obj = this.make_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.make_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public ByteString getMakeBytes() {
            Object obj = this.make_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.make_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public String getModel() {
            Object obj = this.model_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.model_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public ByteString getModelBytes() {
            Object obj = this.model_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.model_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public OS getOs() {
            OS valueOf = OS.valueOf(this.os_);
            if (valueOf == null) {
                return OS.UNRECOGNIZED;
            }
            return valueOf;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public int getOsValue() {
            return this.os_;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public String getOsv() {
            Object obj = this.osv_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.osv_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public ByteString getOsvBytes() {
            Object obj = this.osv_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.osv_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public String getSdk() {
            Object obj = this.sdk_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sdk_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public ByteString getSdkBytes() {
            Object obj = this.sdk_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sdk_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public String getSdkver() {
            Object obj = this.sdkver_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sdkver_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public ByteString getSdkverBytes() {
            Object obj = this.sdkver_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sdkver_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public String getSessionId() {
            Object obj = this.sessionId_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sessionId_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public ByteString getSessionIdBytes() {
            Object obj = this.sessionId_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sessionId_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public String getSourceId() {
            Object obj = this.sourceId_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.sourceId_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public ByteString getSourceIdBytes() {
            Object obj = this.sourceId_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.sourceId_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public boolean hasExt() {
            if (this.extBuilder_ == null && this.ext_ == null) {
                return false;
            }
            return true;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public boolean hasGeo() {
            if (this.geoBuilder_ == null && this.geo_ == null) {
                return false;
            }
            return true;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return InitProto.internal_static_bidmachine_protobuf_SdkAnalyticContext_fieldAccessorTable.d(SdkAnalyticContext.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder mergeExt(Struct struct) {
            t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
            if (t1Var == null) {
                Struct struct2 = this.ext_;
                if (struct2 != null) {
                    this.ext_ = Struct.newBuilder(struct2).mergeFrom(struct).buildPartial();
                } else {
                    this.ext_ = struct;
                }
                onChanged();
            } else {
                t1Var.g(struct);
            }
            return this;
        }

        public Builder mergeGeo(Context.Geo geo) {
            t1<Context.Geo, Context.Geo.Builder, Context.GeoOrBuilder> t1Var = this.geoBuilder_;
            if (t1Var == null) {
                Context.Geo geo2 = this.geo_;
                if (geo2 != null) {
                    this.geo_ = Context.Geo.newBuilder(geo2).mergeFrom(geo).buildPartial();
                } else {
                    this.geo_ = geo;
                }
                onChanged();
            } else {
                t1Var.g(geo);
            }
            return this;
        }

        public Builder setAppVer(String str) {
            str.getClass();
            this.appVer_ = str;
            onChanged();
            return this;
        }

        public Builder setAppVerBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.appVer_ = byteString;
            onChanged();
            return this;
        }

        public Builder setBmIfv(String str) {
            str.getClass();
            this.bmIfv_ = str;
            onChanged();
            return this;
        }

        public Builder setBmIfvBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.bmIfv_ = byteString;
            onChanged();
            return this;
        }

        public Builder setBundle(String str) {
            str.getClass();
            this.bundle_ = str;
            onChanged();
            return this;
        }

        public Builder setBundleBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.bundle_ = byteString;
            onChanged();
            return this;
        }

        public Builder setContype(ConnectionType connectionType) {
            connectionType.getClass();
            this.contype_ = connectionType.getNumber();
            onChanged();
            return this;
        }

        public Builder setContypeValue(int i10) {
            this.contype_ = i10;
            onChanged();
            return this;
        }

        public Builder setDcid(String str) {
            str.getClass();
            this.dcid_ = str;
            onChanged();
            return this;
        }

        public Builder setDcidBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.dcid_ = byteString;
            onChanged();
            return this;
        }

        public Builder setDeviceType(DeviceType deviceType) {
            deviceType.getClass();
            this.deviceType_ = deviceType.getNumber();
            onChanged();
            return this;
        }

        public Builder setDeviceTypeValue(int i10) {
            this.deviceType_ = i10;
            onChanged();
            return this;
        }

        public Builder setExperiments(int i10, String str) {
            str.getClass();
            ensureExperimentsIsMutable();
            this.experiments_.set(i10, str);
            onChanged();
            return this;
        }

        public Builder setExt(Struct struct) {
            t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
            if (t1Var == null) {
                struct.getClass();
                this.ext_ = struct;
                onChanged();
            } else {
                t1Var.i(struct);
            }
            return this;
        }

        public Builder setGeo(Context.Geo geo) {
            t1<Context.Geo, Context.Geo.Builder, Context.GeoOrBuilder> t1Var = this.geoBuilder_;
            if (t1Var == null) {
                geo.getClass();
                this.geo_ = geo;
                onChanged();
            } else {
                t1Var.i(geo);
            }
            return this;
        }

        public Builder setHwv(String str) {
            str.getClass();
            this.hwv_ = str;
            onChanged();
            return this;
        }

        public Builder setHwvBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.hwv_ = byteString;
            onChanged();
            return this;
        }

        public Builder setIfa(String str) {
            str.getClass();
            this.ifa_ = str;
            onChanged();
            return this;
        }

        public Builder setIfaBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.ifa_ = byteString;
            onChanged();
            return this;
        }

        public Builder setIfv(String str) {
            str.getClass();
            this.ifv_ = str;
            onChanged();
            return this;
        }

        public Builder setIfvBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.ifv_ = byteString;
            onChanged();
            return this;
        }

        public Builder setMake(String str) {
            str.getClass();
            this.make_ = str;
            onChanged();
            return this;
        }

        public Builder setMakeBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.make_ = byteString;
            onChanged();
            return this;
        }

        public Builder setModel(String str) {
            str.getClass();
            this.model_ = str;
            onChanged();
            return this;
        }

        public Builder setModelBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.model_ = byteString;
            onChanged();
            return this;
        }

        public Builder setOs(OS os2) {
            os2.getClass();
            this.os_ = os2.getNumber();
            onChanged();
            return this;
        }

        public Builder setOsValue(int i10) {
            this.os_ = i10;
            onChanged();
            return this;
        }

        public Builder setOsv(String str) {
            str.getClass();
            this.osv_ = str;
            onChanged();
            return this;
        }

        public Builder setOsvBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.osv_ = byteString;
            onChanged();
            return this;
        }

        public Builder setSdk(String str) {
            str.getClass();
            this.sdk_ = str;
            onChanged();
            return this;
        }

        public Builder setSdkBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.sdk_ = byteString;
            onChanged();
            return this;
        }

        public Builder setSdkver(String str) {
            str.getClass();
            this.sdkver_ = str;
            onChanged();
            return this;
        }

        public Builder setSdkverBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.sdkver_ = byteString;
            onChanged();
            return this;
        }

        public Builder setSessionId(String str) {
            str.getClass();
            this.sessionId_ = str;
            onChanged();
            return this;
        }

        public Builder setSessionIdBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.sessionId_ = byteString;
            onChanged();
            return this;
        }

        public Builder setSourceId(String str) {
            str.getClass();
            this.sourceId_ = str;
            onChanged();
            return this;
        }

        public Builder setSourceIdBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.sourceId_ = byteString;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
        public m1 getExperimentsList() {
            return this.experiments_.getUnmodifiableView();
        }

        private Builder() {
            this.sourceId_ = "";
            this.bundle_ = "";
            this.os_ = 0;
            this.osv_ = "";
            this.sdk_ = "";
            this.sdkver_ = "";
            this.ifa_ = "";
            this.ifv_ = "";
            this.bmIfv_ = "";
            this.deviceType_ = 0;
            this.contype_ = 0;
            this.appVer_ = "";
            this.sessionId_ = "";
            this.dcid_ = "";
            this.experiments_ = m0.f14459d;
            this.make_ = "";
            this.model_ = "";
            this.hwv_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public SdkAnalyticContext build() {
            SdkAnalyticContext buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public SdkAnalyticContext buildPartial() {
            SdkAnalyticContext sdkAnalyticContext = new SdkAnalyticContext(this);
            sdkAnalyticContext.sourceId_ = this.sourceId_;
            sdkAnalyticContext.bundle_ = this.bundle_;
            sdkAnalyticContext.os_ = this.os_;
            sdkAnalyticContext.osv_ = this.osv_;
            t1<Context.Geo, Context.Geo.Builder, Context.GeoOrBuilder> t1Var = this.geoBuilder_;
            if (t1Var == null) {
                sdkAnalyticContext.geo_ = this.geo_;
            } else {
                sdkAnalyticContext.geo_ = t1Var.a();
            }
            sdkAnalyticContext.sdk_ = this.sdk_;
            sdkAnalyticContext.sdkver_ = this.sdkver_;
            sdkAnalyticContext.ifa_ = this.ifa_;
            sdkAnalyticContext.ifv_ = this.ifv_;
            sdkAnalyticContext.bmIfv_ = this.bmIfv_;
            sdkAnalyticContext.deviceType_ = this.deviceType_;
            sdkAnalyticContext.contype_ = this.contype_;
            sdkAnalyticContext.appVer_ = this.appVer_;
            sdkAnalyticContext.sessionId_ = this.sessionId_;
            sdkAnalyticContext.dcid_ = this.dcid_;
            t1<Struct, Struct.Builder, x1> t1Var2 = this.extBuilder_;
            if (t1Var2 == null) {
                sdkAnalyticContext.ext_ = this.ext_;
            } else {
                sdkAnalyticContext.ext_ = t1Var2.a();
            }
            if ((this.bitField0_ & 1) != 0) {
                this.experiments_ = this.experiments_.getUnmodifiableView();
                this.bitField0_ &= -2;
            }
            sdkAnalyticContext.experiments_ = this.experiments_;
            sdkAnalyticContext.make_ = this.make_;
            sdkAnalyticContext.model_ = this.model_;
            sdkAnalyticContext.hwv_ = this.hwv_;
            onBuilt();
            return sdkAnalyticContext;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public SdkAnalyticContext mo4630getDefaultInstanceForType() {
            return SdkAnalyticContext.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.setField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
            return (Builder) super.setRepeatedField(fieldDescriptor, i10, obj);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public final Builder setUnknownFields(j2 j2Var) {
            return (Builder) super.setUnknownFields(j2Var);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            return (Builder) super.clearOneof(oneofDescriptor);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeUnknownFields(j2 j2Var) {
            return (Builder) super.mergeUnknownFields(j2Var);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Builder clear() {
            super.clear();
            this.sourceId_ = "";
            this.bundle_ = "";
            this.os_ = 0;
            this.osv_ = "";
            if (this.geoBuilder_ == null) {
                this.geo_ = null;
            } else {
                this.geo_ = null;
                this.geoBuilder_ = null;
            }
            this.sdk_ = "";
            this.sdkver_ = "";
            this.ifa_ = "";
            this.ifv_ = "";
            this.bmIfv_ = "";
            this.deviceType_ = 0;
            this.contype_ = 0;
            this.appVer_ = "";
            this.sessionId_ = "";
            this.dcid_ = "";
            if (this.extBuilder_ == null) {
                this.ext_ = null;
            } else {
                this.ext_ = null;
                this.extBuilder_ = null;
            }
            this.experiments_ = m0.f14459d;
            this.bitField0_ &= -2;
            this.make_ = "";
            this.model_ = "";
            this.hwv_ = "";
            return this;
        }

        public Builder setExt(Struct.Builder builder) {
            t1<Struct, Struct.Builder, x1> t1Var = this.extBuilder_;
            if (t1Var == null) {
                this.ext_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            return this;
        }

        public Builder setGeo(Context.Geo.Builder builder) {
            t1<Context.Geo, Context.Geo.Builder, Context.GeoOrBuilder> t1Var = this.geoBuilder_;
            if (t1Var == null) {
                this.geo_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
        /* renamed from: clone */
        public Builder mo4628clone() {
            return (Builder) super.mo4628clone();
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof SdkAnalyticContext) {
                return mergeFrom((SdkAnalyticContext) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(SdkAnalyticContext sdkAnalyticContext) {
            if (sdkAnalyticContext == SdkAnalyticContext.getDefaultInstance()) {
                return this;
            }
            if (!sdkAnalyticContext.getSourceId().isEmpty()) {
                this.sourceId_ = sdkAnalyticContext.sourceId_;
                onChanged();
            }
            if (!sdkAnalyticContext.getBundle().isEmpty()) {
                this.bundle_ = sdkAnalyticContext.bundle_;
                onChanged();
            }
            if (sdkAnalyticContext.os_ != 0) {
                setOsValue(sdkAnalyticContext.getOsValue());
            }
            if (!sdkAnalyticContext.getOsv().isEmpty()) {
                this.osv_ = sdkAnalyticContext.osv_;
                onChanged();
            }
            if (sdkAnalyticContext.hasGeo()) {
                mergeGeo(sdkAnalyticContext.getGeo());
            }
            if (!sdkAnalyticContext.getSdk().isEmpty()) {
                this.sdk_ = sdkAnalyticContext.sdk_;
                onChanged();
            }
            if (!sdkAnalyticContext.getSdkver().isEmpty()) {
                this.sdkver_ = sdkAnalyticContext.sdkver_;
                onChanged();
            }
            if (!sdkAnalyticContext.getIfa().isEmpty()) {
                this.ifa_ = sdkAnalyticContext.ifa_;
                onChanged();
            }
            if (!sdkAnalyticContext.getIfv().isEmpty()) {
                this.ifv_ = sdkAnalyticContext.ifv_;
                onChanged();
            }
            if (!sdkAnalyticContext.getBmIfv().isEmpty()) {
                this.bmIfv_ = sdkAnalyticContext.bmIfv_;
                onChanged();
            }
            if (sdkAnalyticContext.deviceType_ != 0) {
                setDeviceTypeValue(sdkAnalyticContext.getDeviceTypeValue());
            }
            if (sdkAnalyticContext.contype_ != 0) {
                setContypeValue(sdkAnalyticContext.getContypeValue());
            }
            if (!sdkAnalyticContext.getAppVer().isEmpty()) {
                this.appVer_ = sdkAnalyticContext.appVer_;
                onChanged();
            }
            if (!sdkAnalyticContext.getSessionId().isEmpty()) {
                this.sessionId_ = sdkAnalyticContext.sessionId_;
                onChanged();
            }
            if (!sdkAnalyticContext.getDcid().isEmpty()) {
                this.dcid_ = sdkAnalyticContext.dcid_;
                onChanged();
            }
            if (sdkAnalyticContext.hasExt()) {
                mergeExt(sdkAnalyticContext.getExt());
            }
            if (!sdkAnalyticContext.experiments_.isEmpty()) {
                if (this.experiments_.isEmpty()) {
                    this.experiments_ = sdkAnalyticContext.experiments_;
                    this.bitField0_ &= -2;
                } else {
                    ensureExperimentsIsMutable();
                    this.experiments_.addAll(sdkAnalyticContext.experiments_);
                }
                onChanged();
            }
            if (!sdkAnalyticContext.getMake().isEmpty()) {
                this.make_ = sdkAnalyticContext.make_;
                onChanged();
            }
            if (!sdkAnalyticContext.getModel().isEmpty()) {
                this.model_ = sdkAnalyticContext.model_;
                onChanged();
            }
            if (!sdkAnalyticContext.getHwv().isEmpty()) {
                this.hwv_ = sdkAnalyticContext.hwv_;
                onChanged();
            }
            mergeUnknownFields(((GeneratedMessageV3) sdkAnalyticContext).unknownFields);
            onChanged();
            return this;
        }

        private Builder(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.sourceId_ = "";
            this.bundle_ = "";
            this.os_ = 0;
            this.osv_ = "";
            this.sdk_ = "";
            this.sdkver_ = "";
            this.ifa_ = "";
            this.ifv_ = "";
            this.bmIfv_ = "";
            this.deviceType_ = 0;
            this.contype_ = 0;
            this.appVer_ = "";
            this.sessionId_ = "";
            this.dcid_ = "";
            this.experiments_ = m0.f14459d;
            this.make_ = "";
            this.model_ = "";
            this.hwv_ = "";
            maybeForceBuilderInitialization();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.bidmachine.protobuf.SdkAnalyticContext.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.SdkAnalyticContext.access$2500()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.SdkAnalyticContext r3 = (io.bidmachine.protobuf.SdkAnalyticContext) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.mergeFrom(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                io.bidmachine.protobuf.SdkAnalyticContext r4 = (io.bidmachine.protobuf.SdkAnalyticContext) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.mergeFrom(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.SdkAnalyticContext.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.SdkAnalyticContext$Builder");
        }
    }

    public static SdkAnalyticContext getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return InitProto.internal_static_bidmachine_protobuf_SdkAnalyticContext_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static SdkAnalyticContext parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (SdkAnalyticContext) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static SdkAnalyticContext parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<SdkAnalyticContext> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SdkAnalyticContext)) {
            return super.equals(obj);
        }
        SdkAnalyticContext sdkAnalyticContext = (SdkAnalyticContext) obj;
        if (!getSourceId().equals(sdkAnalyticContext.getSourceId()) || !getBundle().equals(sdkAnalyticContext.getBundle()) || this.os_ != sdkAnalyticContext.os_ || !getOsv().equals(sdkAnalyticContext.getOsv()) || hasGeo() != sdkAnalyticContext.hasGeo()) {
            return false;
        }
        if ((hasGeo() && !getGeo().equals(sdkAnalyticContext.getGeo())) || !getSdk().equals(sdkAnalyticContext.getSdk()) || !getSdkver().equals(sdkAnalyticContext.getSdkver()) || !getIfa().equals(sdkAnalyticContext.getIfa()) || !getIfv().equals(sdkAnalyticContext.getIfv()) || !getBmIfv().equals(sdkAnalyticContext.getBmIfv()) || this.deviceType_ != sdkAnalyticContext.deviceType_ || this.contype_ != sdkAnalyticContext.contype_ || !getAppVer().equals(sdkAnalyticContext.getAppVer()) || !getSessionId().equals(sdkAnalyticContext.getSessionId()) || !getDcid().equals(sdkAnalyticContext.getDcid()) || hasExt() != sdkAnalyticContext.hasExt()) {
            return false;
        }
        if ((!hasExt() || getExt().equals(sdkAnalyticContext.getExt())) && getExperimentsList().equals(sdkAnalyticContext.getExperimentsList()) && getMake().equals(sdkAnalyticContext.getMake()) && getModel().equals(sdkAnalyticContext.getModel()) && getHwv().equals(sdkAnalyticContext.getHwv()) && this.unknownFields.equals(sdkAnalyticContext.unknownFields)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public String getAppVer() {
        Object obj = this.appVer_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.appVer_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public ByteString getAppVerBytes() {
        Object obj = this.appVer_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.appVer_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public String getBmIfv() {
        Object obj = this.bmIfv_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.bmIfv_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public ByteString getBmIfvBytes() {
        Object obj = this.bmIfv_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.bmIfv_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public String getBundle() {
        Object obj = this.bundle_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.bundle_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public ByteString getBundleBytes() {
        Object obj = this.bundle_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.bundle_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public ConnectionType getContype() {
        ConnectionType valueOf = ConnectionType.valueOf(this.contype_);
        if (valueOf == null) {
            return ConnectionType.UNRECOGNIZED;
        }
        return valueOf;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public int getContypeValue() {
        return this.contype_;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public String getDcid() {
        Object obj = this.dcid_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.dcid_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public ByteString getDcidBytes() {
        Object obj = this.dcid_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.dcid_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public DeviceType getDeviceType() {
        DeviceType valueOf = DeviceType.valueOf(this.deviceType_);
        if (valueOf == null) {
            return DeviceType.UNRECOGNIZED;
        }
        return valueOf;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public int getDeviceTypeValue() {
        return this.deviceType_;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public String getExperiments(int i10) {
        return this.experiments_.get(i10);
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public ByteString getExperimentsBytes(int i10) {
        return this.experiments_.getByteString(i10);
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public int getExperimentsCount() {
        return this.experiments_.size();
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public Struct getExt() {
        Struct struct = this.ext_;
        if (struct == null) {
            return Struct.getDefaultInstance();
        }
        return struct;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public x1 getExtOrBuilder() {
        return getExt();
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public Context.Geo getGeo() {
        Context.Geo geo = this.geo_;
        if (geo == null) {
            return Context.Geo.getDefaultInstance();
        }
        return geo;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public Context.GeoOrBuilder getGeoOrBuilder() {
        return getGeo();
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public String getHwv() {
        Object obj = this.hwv_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.hwv_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public ByteString getHwvBytes() {
        Object obj = this.hwv_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.hwv_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public String getIfa() {
        Object obj = this.ifa_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.ifa_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public ByteString getIfaBytes() {
        Object obj = this.ifa_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.ifa_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public String getIfv() {
        Object obj = this.ifv_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.ifv_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public ByteString getIfvBytes() {
        Object obj = this.ifv_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.ifv_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public String getMake() {
        Object obj = this.make_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.make_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public ByteString getMakeBytes() {
        Object obj = this.make_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.make_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public String getModel() {
        Object obj = this.model_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.model_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public ByteString getModelBytes() {
        Object obj = this.model_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.model_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public OS getOs() {
        OS valueOf = OS.valueOf(this.os_);
        if (valueOf == null) {
            return OS.UNRECOGNIZED;
        }
        return valueOf;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public int getOsValue() {
        return this.os_;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public String getOsv() {
        Object obj = this.osv_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.osv_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public ByteString getOsvBytes() {
        Object obj = this.osv_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.osv_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<SdkAnalyticContext> getParserForType() {
        return PARSER;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public String getSdk() {
        Object obj = this.sdk_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.sdk_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public ByteString getSdkBytes() {
        Object obj = this.sdk_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sdk_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public String getSdkver() {
        Object obj = this.sdkver_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.sdkver_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public ByteString getSdkverBytes() {
        Object obj = this.sdkver_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sdkver_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        if (!getSourceIdBytes().isEmpty()) {
            i10 = GeneratedMessageV3.computeStringSize(1, this.sourceId_);
        } else {
            i10 = 0;
        }
        if (!getBundleBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(2, this.bundle_);
        }
        if (this.os_ != OS.OS_INVALID.getNumber()) {
            i10 += CodedOutputStream.l(3, this.os_);
        }
        if (!getOsvBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(4, this.osv_);
        }
        if (this.geo_ != null) {
            i10 += CodedOutputStream.G(5, getGeo());
        }
        if (!getSdkBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(6, this.sdk_);
        }
        if (!getSdkverBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(7, this.sdkver_);
        }
        if (!getIfaBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(8, this.ifa_);
        }
        if (this.deviceType_ != DeviceType.DEVICE_TYPE_INVALID.getNumber()) {
            i10 += CodedOutputStream.l(9, this.deviceType_);
        }
        if (this.contype_ != ConnectionType.CONNECTION_TYPE_INVALID.getNumber()) {
            i10 += CodedOutputStream.l(10, this.contype_);
        }
        if (!getIfvBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(11, this.ifv_);
        }
        if (!getBmIfvBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(12, this.bmIfv_);
        }
        if (!getAppVerBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(13, this.appVer_);
        }
        if (!getSessionIdBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(14, this.sessionId_);
        }
        if (!getDcidBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(15, this.dcid_);
        }
        if (this.ext_ != null) {
            i10 += CodedOutputStream.G(16, getExt());
        }
        int i12 = 0;
        for (int i13 = 0; i13 < this.experiments_.size(); i13++) {
            i12 += GeneratedMessageV3.computeStringSizeNoTag(this.experiments_.getRaw(i13));
        }
        int size = i10 + i12 + (getExperimentsList().size() * 2);
        if (!getMakeBytes().isEmpty()) {
            size += GeneratedMessageV3.computeStringSize(18, this.make_);
        }
        if (!getModelBytes().isEmpty()) {
            size += GeneratedMessageV3.computeStringSize(19, this.model_);
        }
        if (!getHwvBytes().isEmpty()) {
            size += GeneratedMessageV3.computeStringSize(20, this.hwv_);
        }
        int serializedSize = size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public String getSessionId() {
        Object obj = this.sessionId_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.sessionId_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public ByteString getSessionIdBytes() {
        Object obj = this.sessionId_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sessionId_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public String getSourceId() {
        Object obj = this.sourceId_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.sourceId_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public ByteString getSourceIdBytes() {
        Object obj = this.sourceId_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sourceId_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final j2 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public boolean hasExt() {
        if (this.ext_ != null) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public boolean hasGeo() {
        if (this.geo_ != null) {
            return true;
        }
        return false;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = ((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getSourceId().hashCode()) * 37) + 2) * 53) + getBundle().hashCode()) * 37) + 3) * 53) + this.os_) * 37) + 4) * 53) + getOsv().hashCode();
        if (hasGeo()) {
            hashCode = (((hashCode * 37) + 5) * 53) + getGeo().hashCode();
        }
        int hashCode2 = (((((((((((((((((((((((((((((((((((((((hashCode * 37) + 6) * 53) + getSdk().hashCode()) * 37) + 7) * 53) + getSdkver().hashCode()) * 37) + 8) * 53) + getIfa().hashCode()) * 37) + 11) * 53) + getIfv().hashCode()) * 37) + 12) * 53) + getBmIfv().hashCode()) * 37) + 9) * 53) + this.deviceType_) * 37) + 10) * 53) + this.contype_) * 37) + 13) * 53) + getAppVer().hashCode()) * 37) + 14) * 53) + getSessionId().hashCode()) * 37) + 15) * 53) + getDcid().hashCode();
        if (hasExt()) {
            hashCode2 = (((hashCode2 * 37) + 16) * 53) + getExt().hashCode();
        }
        if (getExperimentsCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 17) * 53) + getExperimentsList().hashCode();
        }
        int hashCode3 = (((((((((((((hashCode2 * 37) + 18) * 53) + getMake().hashCode()) * 37) + 19) * 53) + getModel().hashCode()) * 37) + 20) * 53) + getHwv().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return InitProto.internal_static_bidmachine_protobuf_SdkAnalyticContext_fieldAccessorTable.d(SdkAnalyticContext.class, Builder.class);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    public final boolean isInitialized() {
        byte b10 = this.memoizedIsInitialized;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.f fVar) {
        return new SdkAnalyticContext();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getSourceIdBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.sourceId_);
        }
        if (!getBundleBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.bundle_);
        }
        if (this.os_ != OS.OS_INVALID.getNumber()) {
            codedOutputStream.v0(3, this.os_);
        }
        if (!getOsvBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.osv_);
        }
        if (this.geo_ != null) {
            codedOutputStream.L0(5, getGeo());
        }
        if (!getSdkBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 6, this.sdk_);
        }
        if (!getSdkverBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 7, this.sdkver_);
        }
        if (!getIfaBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 8, this.ifa_);
        }
        if (this.deviceType_ != DeviceType.DEVICE_TYPE_INVALID.getNumber()) {
            codedOutputStream.v0(9, this.deviceType_);
        }
        if (this.contype_ != ConnectionType.CONNECTION_TYPE_INVALID.getNumber()) {
            codedOutputStream.v0(10, this.contype_);
        }
        if (!getIfvBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 11, this.ifv_);
        }
        if (!getBmIfvBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 12, this.bmIfv_);
        }
        if (!getAppVerBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 13, this.appVer_);
        }
        if (!getSessionIdBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 14, this.sessionId_);
        }
        if (!getDcidBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 15, this.dcid_);
        }
        if (this.ext_ != null) {
            codedOutputStream.L0(16, getExt());
        }
        for (int i10 = 0; i10 < this.experiments_.size(); i10++) {
            GeneratedMessageV3.writeString(codedOutputStream, 17, this.experiments_.getRaw(i10));
        }
        if (!getMakeBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 18, this.make_);
        }
        if (!getModelBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 19, this.model_);
        }
        if (!getHwvBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 20, this.hwv_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    public static Builder newBuilder(SdkAnalyticContext sdkAnalyticContext) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(sdkAnalyticContext);
    }

    public static SdkAnalyticContext parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    @Override // io.bidmachine.protobuf.SdkAnalyticContextOrBuilder
    public m1 getExperimentsList() {
        return this.experiments_;
    }

    private SdkAnalyticContext(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SdkAnalyticContext parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (SdkAnalyticContext) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static SdkAnalyticContext parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public SdkAnalyticContext mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static SdkAnalyticContext parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private SdkAnalyticContext() {
        this.memoizedIsInitialized = (byte) -1;
        this.sourceId_ = "";
        this.bundle_ = "";
        this.os_ = 0;
        this.osv_ = "";
        this.sdk_ = "";
        this.sdkver_ = "";
        this.ifa_ = "";
        this.ifv_ = "";
        this.bmIfv_ = "";
        this.deviceType_ = 0;
        this.contype_ = 0;
        this.appVer_ = "";
        this.sessionId_ = "";
        this.dcid_ = "";
        this.experiments_ = m0.f14459d;
        this.make_ = "";
        this.model_ = "";
        this.hwv_ = "";
    }

    public static SdkAnalyticContext parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    public static SdkAnalyticContext parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    public static SdkAnalyticContext parseFrom(InputStream inputStream) throws IOException {
        return (SdkAnalyticContext) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static SdkAnalyticContext parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (SdkAnalyticContext) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    public static SdkAnalyticContext parseFrom(n nVar) throws IOException {
        return (SdkAnalyticContext) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    public static SdkAnalyticContext parseFrom(n nVar, y yVar) throws IOException {
        return (SdkAnalyticContext) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }

    private SdkAnalyticContext(n nVar, y yVar) throws InvalidProtocolBufferException {
        this();
        yVar.getClass();
        j2.b g10 = j2.g();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    int K = nVar.K();
                    switch (K) {
                        case 0:
                            break;
                        case 10:
                            this.sourceId_ = nVar.J();
                            continue;
                        case 18:
                            this.bundle_ = nVar.J();
                            continue;
                        case 24:
                            this.os_ = nVar.t();
                            continue;
                        case 34:
                            this.osv_ = nVar.J();
                            continue;
                        case 42:
                            Context.Geo geo = this.geo_;
                            Context.Geo.Builder builder = geo != null ? geo.toBuilder() : null;
                            Context.Geo geo2 = (Context.Geo) nVar.A(Context.Geo.parser(), yVar);
                            this.geo_ = geo2;
                            if (builder != null) {
                                builder.mergeFrom(geo2);
                                this.geo_ = builder.buildPartial();
                            } else {
                                continue;
                            }
                        case 50:
                            this.sdk_ = nVar.J();
                            continue;
                        case 58:
                            this.sdkver_ = nVar.J();
                            continue;
                        case 66:
                            this.ifa_ = nVar.J();
                            continue;
                        case 72:
                            this.deviceType_ = nVar.t();
                            continue;
                        case 80:
                            this.contype_ = nVar.t();
                            continue;
                        case 90:
                            this.ifv_ = nVar.J();
                            continue;
                        case 98:
                            this.bmIfv_ = nVar.J();
                            continue;
                        case 106:
                            this.appVer_ = nVar.J();
                            continue;
                        case 114:
                            this.sessionId_ = nVar.J();
                            continue;
                        case 122:
                            this.dcid_ = nVar.J();
                            continue;
                        case 130:
                            Struct struct = this.ext_;
                            Struct.Builder builder2 = struct != null ? struct.toBuilder() : null;
                            Struct struct2 = (Struct) nVar.A(Struct.parser(), yVar);
                            this.ext_ = struct2;
                            if (builder2 != null) {
                                builder2.mergeFrom(struct2);
                                this.ext_ = builder2.buildPartial();
                            } else {
                                continue;
                            }
                        case 138:
                            String J = nVar.J();
                            z11 = z11;
                            if (!z11) {
                                this.experiments_ = new m0();
                                z11 = true;
                            }
                            this.experiments_.add(J);
                            continue;
                        case 146:
                            this.make_ = nVar.J();
                            continue;
                        case 154:
                            this.model_ = nVar.J();
                            continue;
                        case 162:
                            this.hwv_ = nVar.J();
                            continue;
                        default:
                            if (!parseUnknownField(nVar, g10, yVar, K)) {
                                break;
                            } else {
                                continue;
                            }
                    }
                    z10 = true;
                } catch (InvalidProtocolBufferException e10) {
                    throw e10.setUnfinishedMessage(this);
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } catch (Throwable th2) {
                if (z11) {
                    this.experiments_ = this.experiments_.getUnmodifiableView();
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
                throw th2;
            }
        }
        if (z11) {
            this.experiments_ = this.experiments_.getUnmodifiableView();
        }
        this.unknownFields = g10.build();
        makeExtensionsImmutable();
    }
}
