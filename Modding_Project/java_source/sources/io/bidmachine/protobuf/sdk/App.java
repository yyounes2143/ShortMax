package io.bidmachine.protobuf.sdk;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.Timestamp;
import com.explorestack.protobuf.a;
import com.explorestack.protobuf.adcom.Context;
import com.explorestack.protobuf.b;
import com.explorestack.protobuf.c2;
import com.explorestack.protobuf.j1;
import com.explorestack.protobuf.j2;
import com.explorestack.protobuf.m0;
import com.explorestack.protobuf.m1;
import com.explorestack.protobuf.n;
import com.explorestack.protobuf.n0;
import com.explorestack.protobuf.t1;
import com.explorestack.protobuf.y;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
/* loaded from: classes8.dex */
public final class App extends GeneratedMessageV3 implements AppOrBuilder {
    public static final int APP_NAME_FIELD_NUMBER = 1;
    public static final int APP_VER_FIELD_NUMBER = 2;
    public static final int FIRST_LAUNCH_TIME_FIELD_NUMBER = 5;
    public static final int FMWNAME_FIELD_NUMBER = 8;
    public static final int INSTALL_TIME_FIELD_NUMBER = 4;
    public static final int RELEASE_FIELD_NUMBER = 3;
    public static final int STORECAT_FIELD_NUMBER = 6;
    public static final int STORESUBCAT_FIELD_NUMBER = 7;
    private static final long serialVersionUID = 0;
    private volatile Object appName_;
    private volatile Object appVer_;
    private Timestamp firstLaunchTime_;
    private volatile Object fmwname_;
    private Timestamp installTime_;
    private byte memoizedIsInitialized;
    private Context.App.Release release_;
    private volatile Object storecat_;
    private n0 storesubcat_;
    private static final App DEFAULT_INSTANCE = new App();
    private static final j1<App> PARSER = new b<App>() { // from class: io.bidmachine.protobuf.sdk.App.1
        @Override // com.explorestack.protobuf.j1
        public App parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new App(nVar, yVar);
        }
    };

    /* loaded from: classes8.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements AppOrBuilder {
        private Object appName_;
        private Object appVer_;
        private int bitField0_;
        private t1<Timestamp, Timestamp.Builder, c2> firstLaunchTimeBuilder_;
        private Timestamp firstLaunchTime_;
        private Object fmwname_;
        private t1<Timestamp, Timestamp.Builder, c2> installTimeBuilder_;
        private Timestamp installTime_;
        private t1<Context.App.Release, Context.App.Release.Builder, Context.App.ReleaseOrBuilder> releaseBuilder_;
        private Context.App.Release release_;
        private Object storecat_;
        private n0 storesubcat_;

        private void ensureStoresubcatIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.storesubcat_ = new m0(this.storesubcat_);
                this.bitField0_ |= 1;
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_App_descriptor;
        }

        private t1<Timestamp, Timestamp.Builder, c2> getFirstLaunchTimeFieldBuilder() {
            if (this.firstLaunchTimeBuilder_ == null) {
                this.firstLaunchTimeBuilder_ = new t1<>(getFirstLaunchTime(), getParentForChildren(), isClean());
                this.firstLaunchTime_ = null;
            }
            return this.firstLaunchTimeBuilder_;
        }

        private t1<Timestamp, Timestamp.Builder, c2> getInstallTimeFieldBuilder() {
            if (this.installTimeBuilder_ == null) {
                this.installTimeBuilder_ = new t1<>(getInstallTime(), getParentForChildren(), isClean());
                this.installTime_ = null;
            }
            return this.installTimeBuilder_;
        }

        private t1<Context.App.Release, Context.App.Release.Builder, Context.App.ReleaseOrBuilder> getReleaseFieldBuilder() {
            if (this.releaseBuilder_ == null) {
                this.releaseBuilder_ = new t1<>(getRelease(), getParentForChildren(), isClean());
                this.release_ = null;
            }
            return this.releaseBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder addAllStoresubcat(Iterable<String> iterable) {
            ensureStoresubcatIsMutable();
            a.AbstractC0246a.addAll((Iterable) iterable, (List) this.storesubcat_);
            onChanged();
            return this;
        }

        public Builder addStoresubcat(String str) {
            str.getClass();
            ensureStoresubcatIsMutable();
            this.storesubcat_.add(str);
            onChanged();
            return this;
        }

        public Builder addStoresubcatBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            ensureStoresubcatIsMutable();
            this.storesubcat_.b(byteString);
            onChanged();
            return this;
        }

        public Builder clearAppName() {
            this.appName_ = App.getDefaultInstance().getAppName();
            onChanged();
            return this;
        }

        public Builder clearAppVer() {
            this.appVer_ = App.getDefaultInstance().getAppVer();
            onChanged();
            return this;
        }

        public Builder clearFirstLaunchTime() {
            if (this.firstLaunchTimeBuilder_ == null) {
                this.firstLaunchTime_ = null;
                onChanged();
            } else {
                this.firstLaunchTime_ = null;
                this.firstLaunchTimeBuilder_ = null;
            }
            return this;
        }

        public Builder clearFmwname() {
            this.fmwname_ = App.getDefaultInstance().getFmwname();
            onChanged();
            return this;
        }

        public Builder clearInstallTime() {
            if (this.installTimeBuilder_ == null) {
                this.installTime_ = null;
                onChanged();
            } else {
                this.installTime_ = null;
                this.installTimeBuilder_ = null;
            }
            return this;
        }

        public Builder clearRelease() {
            if (this.releaseBuilder_ == null) {
                this.release_ = null;
                onChanged();
            } else {
                this.release_ = null;
                this.releaseBuilder_ = null;
            }
            return this;
        }

        public Builder clearStorecat() {
            this.storecat_ = App.getDefaultInstance().getStorecat();
            onChanged();
            return this;
        }

        public Builder clearStoresubcat() {
            this.storesubcat_ = m0.f14459d;
            this.bitField0_ &= -2;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
        public String getAppName() {
            Object obj = this.appName_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.appName_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
        public ByteString getAppNameBytes() {
            Object obj = this.appName_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.appName_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
        public String getAppVer() {
            Object obj = this.appVer_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.appVer_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
        public ByteString getAppVerBytes() {
            Object obj = this.appVer_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.appVer_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_App_descriptor;
        }

        @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
        public Timestamp getFirstLaunchTime() {
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.firstLaunchTimeBuilder_;
            if (t1Var == null) {
                Timestamp timestamp = this.firstLaunchTime_;
                if (timestamp == null) {
                    return Timestamp.getDefaultInstance();
                }
                return timestamp;
            }
            return t1Var.e();
        }

        public Timestamp.Builder getFirstLaunchTimeBuilder() {
            onChanged();
            return getFirstLaunchTimeFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
        public c2 getFirstLaunchTimeOrBuilder() {
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.firstLaunchTimeBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Timestamp timestamp = this.firstLaunchTime_;
            if (timestamp == null) {
                return Timestamp.getDefaultInstance();
            }
            return timestamp;
        }

        @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
        public String getFmwname() {
            Object obj = this.fmwname_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.fmwname_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
        public ByteString getFmwnameBytes() {
            Object obj = this.fmwname_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.fmwname_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
        public Timestamp getInstallTime() {
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.installTimeBuilder_;
            if (t1Var == null) {
                Timestamp timestamp = this.installTime_;
                if (timestamp == null) {
                    return Timestamp.getDefaultInstance();
                }
                return timestamp;
            }
            return t1Var.e();
        }

        public Timestamp.Builder getInstallTimeBuilder() {
            onChanged();
            return getInstallTimeFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
        public c2 getInstallTimeOrBuilder() {
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.installTimeBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Timestamp timestamp = this.installTime_;
            if (timestamp == null) {
                return Timestamp.getDefaultInstance();
            }
            return timestamp;
        }

        @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
        public Context.App.Release getRelease() {
            t1<Context.App.Release, Context.App.Release.Builder, Context.App.ReleaseOrBuilder> t1Var = this.releaseBuilder_;
            if (t1Var == null) {
                Context.App.Release release = this.release_;
                if (release == null) {
                    return Context.App.Release.getDefaultInstance();
                }
                return release;
            }
            return t1Var.e();
        }

        public Context.App.Release.Builder getReleaseBuilder() {
            onChanged();
            return getReleaseFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
        public Context.App.ReleaseOrBuilder getReleaseOrBuilder() {
            t1<Context.App.Release, Context.App.Release.Builder, Context.App.ReleaseOrBuilder> t1Var = this.releaseBuilder_;
            if (t1Var != null) {
                return t1Var.f();
            }
            Context.App.Release release = this.release_;
            if (release == null) {
                return Context.App.Release.getDefaultInstance();
            }
            return release;
        }

        @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
        public String getStorecat() {
            Object obj = this.storecat_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.storecat_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
        public ByteString getStorecatBytes() {
            Object obj = this.storecat_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.storecat_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
        public String getStoresubcat(int i10) {
            return this.storesubcat_.get(i10);
        }

        @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
        public ByteString getStoresubcatBytes(int i10) {
            return this.storesubcat_.getByteString(i10);
        }

        @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
        public int getStoresubcatCount() {
            return this.storesubcat_.size();
        }

        @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
        public boolean hasFirstLaunchTime() {
            if (this.firstLaunchTimeBuilder_ == null && this.firstLaunchTime_ == null) {
                return false;
            }
            return true;
        }

        @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
        public boolean hasInstallTime() {
            if (this.installTimeBuilder_ == null && this.installTime_ == null) {
                return false;
            }
            return true;
        }

        @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
        public boolean hasRelease() {
            if (this.releaseBuilder_ == null && this.release_ == null) {
                return false;
            }
            return true;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_App_fieldAccessorTable.d(App.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder mergeFirstLaunchTime(Timestamp timestamp) {
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.firstLaunchTimeBuilder_;
            if (t1Var == null) {
                Timestamp timestamp2 = this.firstLaunchTime_;
                if (timestamp2 != null) {
                    this.firstLaunchTime_ = Timestamp.newBuilder(timestamp2).mergeFrom(timestamp).buildPartial();
                } else {
                    this.firstLaunchTime_ = timestamp;
                }
                onChanged();
            } else {
                t1Var.g(timestamp);
            }
            return this;
        }

        public Builder mergeInstallTime(Timestamp timestamp) {
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.installTimeBuilder_;
            if (t1Var == null) {
                Timestamp timestamp2 = this.installTime_;
                if (timestamp2 != null) {
                    this.installTime_ = Timestamp.newBuilder(timestamp2).mergeFrom(timestamp).buildPartial();
                } else {
                    this.installTime_ = timestamp;
                }
                onChanged();
            } else {
                t1Var.g(timestamp);
            }
            return this;
        }

        public Builder mergeRelease(Context.App.Release release) {
            t1<Context.App.Release, Context.App.Release.Builder, Context.App.ReleaseOrBuilder> t1Var = this.releaseBuilder_;
            if (t1Var == null) {
                Context.App.Release release2 = this.release_;
                if (release2 != null) {
                    this.release_ = Context.App.Release.newBuilder(release2).mergeFrom(release).buildPartial();
                } else {
                    this.release_ = release;
                }
                onChanged();
            } else {
                t1Var.g(release);
            }
            return this;
        }

        public Builder setAppName(String str) {
            str.getClass();
            this.appName_ = str;
            onChanged();
            return this;
        }

        public Builder setAppNameBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.appName_ = byteString;
            onChanged();
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

        public Builder setFirstLaunchTime(Timestamp timestamp) {
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.firstLaunchTimeBuilder_;
            if (t1Var == null) {
                timestamp.getClass();
                this.firstLaunchTime_ = timestamp;
                onChanged();
            } else {
                t1Var.i(timestamp);
            }
            return this;
        }

        public Builder setFmwname(String str) {
            str.getClass();
            this.fmwname_ = str;
            onChanged();
            return this;
        }

        public Builder setFmwnameBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.fmwname_ = byteString;
            onChanged();
            return this;
        }

        public Builder setInstallTime(Timestamp timestamp) {
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.installTimeBuilder_;
            if (t1Var == null) {
                timestamp.getClass();
                this.installTime_ = timestamp;
                onChanged();
            } else {
                t1Var.i(timestamp);
            }
            return this;
        }

        public Builder setRelease(Context.App.Release release) {
            t1<Context.App.Release, Context.App.Release.Builder, Context.App.ReleaseOrBuilder> t1Var = this.releaseBuilder_;
            if (t1Var == null) {
                release.getClass();
                this.release_ = release;
                onChanged();
            } else {
                t1Var.i(release);
            }
            return this;
        }

        public Builder setStorecat(String str) {
            str.getClass();
            this.storecat_ = str;
            onChanged();
            return this;
        }

        public Builder setStorecatBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.storecat_ = byteString;
            onChanged();
            return this;
        }

        public Builder setStoresubcat(int i10, String str) {
            str.getClass();
            ensureStoresubcatIsMutable();
            this.storesubcat_.set(i10, str);
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
        public m1 getStoresubcatList() {
            return this.storesubcat_.getUnmodifiableView();
        }

        private Builder() {
            this.appName_ = "";
            this.appVer_ = "";
            this.storecat_ = "";
            this.storesubcat_ = m0.f14459d;
            this.fmwname_ = "";
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public App build() {
            App buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public App buildPartial() {
            App app = new App(this);
            app.appName_ = this.appName_;
            app.appVer_ = this.appVer_;
            t1<Context.App.Release, Context.App.Release.Builder, Context.App.ReleaseOrBuilder> t1Var = this.releaseBuilder_;
            if (t1Var == null) {
                app.release_ = this.release_;
            } else {
                app.release_ = t1Var.a();
            }
            t1<Timestamp, Timestamp.Builder, c2> t1Var2 = this.installTimeBuilder_;
            if (t1Var2 == null) {
                app.installTime_ = this.installTime_;
            } else {
                app.installTime_ = t1Var2.a();
            }
            t1<Timestamp, Timestamp.Builder, c2> t1Var3 = this.firstLaunchTimeBuilder_;
            if (t1Var3 == null) {
                app.firstLaunchTime_ = this.firstLaunchTime_;
            } else {
                app.firstLaunchTime_ = t1Var3.a();
            }
            app.storecat_ = this.storecat_;
            if ((this.bitField0_ & 1) != 0) {
                this.storesubcat_ = this.storesubcat_.getUnmodifiableView();
                this.bitField0_ &= -2;
            }
            app.storesubcat_ = this.storesubcat_;
            app.fmwname_ = this.fmwname_;
            onBuilt();
            return app;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public App mo4630getDefaultInstanceForType() {
            return App.getDefaultInstance();
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
            this.appName_ = "";
            this.appVer_ = "";
            if (this.releaseBuilder_ == null) {
                this.release_ = null;
            } else {
                this.release_ = null;
                this.releaseBuilder_ = null;
            }
            if (this.installTimeBuilder_ == null) {
                this.installTime_ = null;
            } else {
                this.installTime_ = null;
                this.installTimeBuilder_ = null;
            }
            if (this.firstLaunchTimeBuilder_ == null) {
                this.firstLaunchTime_ = null;
            } else {
                this.firstLaunchTime_ = null;
                this.firstLaunchTimeBuilder_ = null;
            }
            this.storecat_ = "";
            this.storesubcat_ = m0.f14459d;
            this.bitField0_ &= -2;
            this.fmwname_ = "";
            return this;
        }

        public Builder setFirstLaunchTime(Timestamp.Builder builder) {
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.firstLaunchTimeBuilder_;
            if (t1Var == null) {
                this.firstLaunchTime_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            return this;
        }

        public Builder setInstallTime(Timestamp.Builder builder) {
            t1<Timestamp, Timestamp.Builder, c2> t1Var = this.installTimeBuilder_;
            if (t1Var == null) {
                this.installTime_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            return this;
        }

        public Builder setRelease(Context.App.Release.Builder builder) {
            t1<Context.App.Release, Context.App.Release.Builder, Context.App.ReleaseOrBuilder> t1Var = this.releaseBuilder_;
            if (t1Var == null) {
                this.release_ = builder.build();
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
            if (message instanceof App) {
                return mergeFrom((App) message);
            }
            super.mergeFrom(message);
            return this;
        }

        private Builder(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.appName_ = "";
            this.appVer_ = "";
            this.storecat_ = "";
            this.storesubcat_ = m0.f14459d;
            this.fmwname_ = "";
            maybeForceBuilderInitialization();
        }

        public Builder mergeFrom(App app) {
            if (app == App.getDefaultInstance()) {
                return this;
            }
            if (!app.getAppName().isEmpty()) {
                this.appName_ = app.appName_;
                onChanged();
            }
            if (!app.getAppVer().isEmpty()) {
                this.appVer_ = app.appVer_;
                onChanged();
            }
            if (app.hasRelease()) {
                mergeRelease(app.getRelease());
            }
            if (app.hasInstallTime()) {
                mergeInstallTime(app.getInstallTime());
            }
            if (app.hasFirstLaunchTime()) {
                mergeFirstLaunchTime(app.getFirstLaunchTime());
            }
            if (!app.getStorecat().isEmpty()) {
                this.storecat_ = app.storecat_;
                onChanged();
            }
            if (!app.storesubcat_.isEmpty()) {
                if (this.storesubcat_.isEmpty()) {
                    this.storesubcat_ = app.storesubcat_;
                    this.bitField0_ &= -2;
                } else {
                    ensureStoresubcatIsMutable();
                    this.storesubcat_.addAll(app.storesubcat_);
                }
                onChanged();
            }
            if (!app.getFmwname().isEmpty()) {
                this.fmwname_ = app.fmwname_;
                onChanged();
            }
            mergeUnknownFields(((GeneratedMessageV3) app).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.bidmachine.protobuf.sdk.App.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sdk.App.access$1300()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.sdk.App r3 = (io.bidmachine.protobuf.sdk.App) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.sdk.App r4 = (io.bidmachine.protobuf.sdk.App) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.App.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sdk.App$Builder");
        }
    }

    public static App getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_App_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static App parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (App) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static App parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<App> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof App)) {
            return super.equals(obj);
        }
        App app = (App) obj;
        if (!getAppName().equals(app.getAppName()) || !getAppVer().equals(app.getAppVer()) || hasRelease() != app.hasRelease()) {
            return false;
        }
        if ((hasRelease() && !getRelease().equals(app.getRelease())) || hasInstallTime() != app.hasInstallTime()) {
            return false;
        }
        if ((hasInstallTime() && !getInstallTime().equals(app.getInstallTime())) || hasFirstLaunchTime() != app.hasFirstLaunchTime()) {
            return false;
        }
        if ((!hasFirstLaunchTime() || getFirstLaunchTime().equals(app.getFirstLaunchTime())) && getStorecat().equals(app.getStorecat()) && getStoresubcatList().equals(app.getStoresubcatList()) && getFmwname().equals(app.getFmwname()) && this.unknownFields.equals(app.unknownFields)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
    public String getAppName() {
        Object obj = this.appName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.appName_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
    public ByteString getAppNameBytes() {
        Object obj = this.appName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.appName_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
    public String getAppVer() {
        Object obj = this.appVer_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.appVer_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
    public ByteString getAppVerBytes() {
        Object obj = this.appVer_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.appVer_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
    public Timestamp getFirstLaunchTime() {
        Timestamp timestamp = this.firstLaunchTime_;
        if (timestamp == null) {
            return Timestamp.getDefaultInstance();
        }
        return timestamp;
    }

    @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
    public c2 getFirstLaunchTimeOrBuilder() {
        return getFirstLaunchTime();
    }

    @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
    public String getFmwname() {
        Object obj = this.fmwname_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.fmwname_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
    public ByteString getFmwnameBytes() {
        Object obj = this.fmwname_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.fmwname_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
    public Timestamp getInstallTime() {
        Timestamp timestamp = this.installTime_;
        if (timestamp == null) {
            return Timestamp.getDefaultInstance();
        }
        return timestamp;
    }

    @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
    public c2 getInstallTimeOrBuilder() {
        return getInstallTime();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<App> getParserForType() {
        return PARSER;
    }

    @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
    public Context.App.Release getRelease() {
        Context.App.Release release = this.release_;
        if (release == null) {
            return Context.App.Release.getDefaultInstance();
        }
        return release;
    }

    @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
    public Context.App.ReleaseOrBuilder getReleaseOrBuilder() {
        return getRelease();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        if (!getAppNameBytes().isEmpty()) {
            i10 = GeneratedMessageV3.computeStringSize(1, this.appName_);
        } else {
            i10 = 0;
        }
        if (!getAppVerBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(2, this.appVer_);
        }
        if (this.release_ != null) {
            i10 += CodedOutputStream.G(3, getRelease());
        }
        if (this.installTime_ != null) {
            i10 += CodedOutputStream.G(4, getInstallTime());
        }
        if (this.firstLaunchTime_ != null) {
            i10 += CodedOutputStream.G(5, getFirstLaunchTime());
        }
        if (!getStorecatBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(6, this.storecat_);
        }
        int i12 = 0;
        for (int i13 = 0; i13 < this.storesubcat_.size(); i13++) {
            i12 += GeneratedMessageV3.computeStringSizeNoTag(this.storesubcat_.getRaw(i13));
        }
        int size = i10 + i12 + getStoresubcatList().size();
        if (!getFmwnameBytes().isEmpty()) {
            size += GeneratedMessageV3.computeStringSize(8, this.fmwname_);
        }
        int serializedSize = size + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
    public String getStorecat() {
        Object obj = this.storecat_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.storecat_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
    public ByteString getStorecatBytes() {
        Object obj = this.storecat_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.storecat_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
    public String getStoresubcat(int i10) {
        return this.storesubcat_.get(i10);
    }

    @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
    public ByteString getStoresubcatBytes(int i10) {
        return this.storesubcat_.getByteString(i10);
    }

    @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
    public int getStoresubcatCount() {
        return this.storesubcat_.size();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final j2 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
    public boolean hasFirstLaunchTime() {
        if (this.firstLaunchTime_ != null) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
    public boolean hasInstallTime() {
        if (this.installTime_ != null) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
    public boolean hasRelease() {
        if (this.release_ != null) {
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
        int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getAppName().hashCode()) * 37) + 2) * 53) + getAppVer().hashCode();
        if (hasRelease()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getRelease().hashCode();
        }
        if (hasInstallTime()) {
            hashCode = (((hashCode * 37) + 4) * 53) + getInstallTime().hashCode();
        }
        if (hasFirstLaunchTime()) {
            hashCode = (((hashCode * 37) + 5) * 53) + getFirstLaunchTime().hashCode();
        }
        int hashCode2 = (((hashCode * 37) + 6) * 53) + getStorecat().hashCode();
        if (getStoresubcatCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 7) * 53) + getStoresubcatList().hashCode();
        }
        int hashCode3 = (((((hashCode2 * 37) + 8) * 53) + getFmwname().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_App_fieldAccessorTable.d(App.class, Builder.class);
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
        return new App();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getAppNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.appName_);
        }
        if (!getAppVerBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.appVer_);
        }
        if (this.release_ != null) {
            codedOutputStream.L0(3, getRelease());
        }
        if (this.installTime_ != null) {
            codedOutputStream.L0(4, getInstallTime());
        }
        if (this.firstLaunchTime_ != null) {
            codedOutputStream.L0(5, getFirstLaunchTime());
        }
        if (!getStorecatBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 6, this.storecat_);
        }
        for (int i10 = 0; i10 < this.storesubcat_.size(); i10++) {
            GeneratedMessageV3.writeString(codedOutputStream, 7, this.storesubcat_.getRaw(i10));
        }
        if (!getFmwnameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 8, this.fmwname_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    public static Builder newBuilder(App app) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(app);
    }

    public static App parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    @Override // io.bidmachine.protobuf.sdk.AppOrBuilder
    public m1 getStoresubcatList() {
        return this.storesubcat_;
    }

    private App(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static App parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (App) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static App parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public App mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static App parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private App() {
        this.memoizedIsInitialized = (byte) -1;
        this.appName_ = "";
        this.appVer_ = "";
        this.storecat_ = "";
        this.storesubcat_ = m0.f14459d;
        this.fmwname_ = "";
    }

    public static App parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    public static App parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    public static App parseFrom(InputStream inputStream) throws IOException {
        return (App) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static App parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (App) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    public static App parseFrom(n nVar) throws IOException {
        return (App) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    private App(n nVar, y yVar) throws InvalidProtocolBufferException {
        this();
        yVar.getClass();
        j2.b g10 = j2.g();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    int K = nVar.K();
                    if (K != 0) {
                        if (K == 10) {
                            this.appName_ = nVar.J();
                        } else if (K != 18) {
                            if (K == 26) {
                                Context.App.Release release = this.release_;
                                Context.App.Release.Builder builder = release != null ? release.toBuilder() : null;
                                Context.App.Release release2 = (Context.App.Release) nVar.A(Context.App.Release.parser(), yVar);
                                this.release_ = release2;
                                if (builder != null) {
                                    builder.mergeFrom(release2);
                                    this.release_ = builder.buildPartial();
                                }
                            } else if (K == 34) {
                                Timestamp timestamp = this.installTime_;
                                Timestamp.Builder builder2 = timestamp != null ? timestamp.toBuilder() : null;
                                Timestamp timestamp2 = (Timestamp) nVar.A(Timestamp.parser(), yVar);
                                this.installTime_ = timestamp2;
                                if (builder2 != null) {
                                    builder2.mergeFrom(timestamp2);
                                    this.installTime_ = builder2.buildPartial();
                                }
                            } else if (K == 42) {
                                Timestamp timestamp3 = this.firstLaunchTime_;
                                Timestamp.Builder builder3 = timestamp3 != null ? timestamp3.toBuilder() : null;
                                Timestamp timestamp4 = (Timestamp) nVar.A(Timestamp.parser(), yVar);
                                this.firstLaunchTime_ = timestamp4;
                                if (builder3 != null) {
                                    builder3.mergeFrom(timestamp4);
                                    this.firstLaunchTime_ = builder3.buildPartial();
                                }
                            } else if (K == 50) {
                                this.storecat_ = nVar.J();
                            } else if (K == 58) {
                                String J = nVar.J();
                                z11 = z11;
                                if (!z11) {
                                    this.storesubcat_ = new m0();
                                    z11 = true;
                                }
                                this.storesubcat_.add(J);
                            } else if (K != 66) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                this.fmwname_ = nVar.J();
                            }
                        } else {
                            this.appVer_ = nVar.J();
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
                    this.storesubcat_ = this.storesubcat_.getUnmodifiableView();
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
                throw th2;
            }
        }
        if (z11) {
            this.storesubcat_ = this.storesubcat_.getUnmodifiableView();
        }
        this.unknownFields = g10.build();
        makeExtensionsImmutable();
    }

    public static App parseFrom(n nVar, y yVar) throws IOException {
        return (App) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }
}
