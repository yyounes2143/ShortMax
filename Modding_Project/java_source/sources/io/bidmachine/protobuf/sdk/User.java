package io.bidmachine.protobuf.sdk;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.a;
import com.explorestack.protobuf.b;
import com.explorestack.protobuf.i0;
import com.explorestack.protobuf.j1;
import com.explorestack.protobuf.j2;
import com.explorestack.protobuf.n;
import com.explorestack.protobuf.y;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
/* loaded from: classes8.dex */
public final class User extends GeneratedMessageV3 implements UserOrBuilder {
    public static final int CCPA_FIELD_NUMBER = 3;
    public static final int CONSENT_FIELD_NUMBER = 1;
    public static final int COPPA_FIELD_NUMBER = 6;
    public static final int GDPR_FIELD_NUMBER = 2;
    public static final int GPP_FIELD_NUMBER = 4;
    public static final int GPP_SID_FIELD_NUMBER = 5;
    private static final long serialVersionUID = 0;
    private volatile Object ccpa_;
    private volatile Object consent_;
    private boolean coppa_;
    private boolean gdpr_;
    private int gppSidMemoizedSerializedSize;
    private i0.g gppSid_;
    private volatile Object gpp_;
    private byte memoizedIsInitialized;
    private static final User DEFAULT_INSTANCE = new User();
    private static final j1<User> PARSER = new b<User>() { // from class: io.bidmachine.protobuf.sdk.User.1
        @Override // com.explorestack.protobuf.j1
        public User parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new User(nVar, yVar);
        }
    };

    static /* synthetic */ i0.g access$1600() {
        return GeneratedMessageV3.emptyIntList();
    }

    static /* synthetic */ i0.g access$1800() {
        return GeneratedMessageV3.emptyIntList();
    }

    static /* synthetic */ i0.g access$300() {
        return GeneratedMessageV3.emptyIntList();
    }

    public static User getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_User_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static User parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (User) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static User parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<User> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof User)) {
            return super.equals(obj);
        }
        User user = (User) obj;
        if (getConsent().equals(user.getConsent()) && getGdpr() == user.getGdpr() && getCcpa().equals(user.getCcpa()) && getGpp().equals(user.getGpp()) && getGppSidList().equals(user.getGppSidList()) && getCoppa() == user.getCoppa() && this.unknownFields.equals(user.unknownFields)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.sdk.UserOrBuilder
    public String getCcpa() {
        Object obj = this.ccpa_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.ccpa_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.sdk.UserOrBuilder
    public ByteString getCcpaBytes() {
        Object obj = this.ccpa_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.ccpa_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.sdk.UserOrBuilder
    public String getConsent() {
        Object obj = this.consent_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.consent_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.sdk.UserOrBuilder
    public ByteString getConsentBytes() {
        Object obj = this.consent_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.consent_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.sdk.UserOrBuilder
    public boolean getCoppa() {
        return this.coppa_;
    }

    @Override // io.bidmachine.protobuf.sdk.UserOrBuilder
    public boolean getGdpr() {
        return this.gdpr_;
    }

    @Override // io.bidmachine.protobuf.sdk.UserOrBuilder
    public String getGpp() {
        Object obj = this.gpp_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.gpp_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.sdk.UserOrBuilder
    public ByteString getGppBytes() {
        Object obj = this.gpp_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.gpp_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.sdk.UserOrBuilder
    public int getGppSid(int i10) {
        return this.gppSid_.getInt(i10);
    }

    @Override // io.bidmachine.protobuf.sdk.UserOrBuilder
    public int getGppSidCount() {
        return this.gppSid_.size();
    }

    @Override // io.bidmachine.protobuf.sdk.UserOrBuilder
    public List<Integer> getGppSidList() {
        return this.gppSid_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<User> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        if (!getConsentBytes().isEmpty()) {
            i10 = GeneratedMessageV3.computeStringSize(1, this.consent_);
        } else {
            i10 = 0;
        }
        boolean z10 = this.gdpr_;
        if (z10) {
            i10 += CodedOutputStream.e(2, z10);
        }
        if (!getCcpaBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(3, this.ccpa_);
        }
        if (!getGppBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(4, this.gpp_);
        }
        int i12 = 0;
        for (int i13 = 0; i13 < this.gppSid_.size(); i13++) {
            i12 += CodedOutputStream.Z(this.gppSid_.getInt(i13));
        }
        int i14 = i10 + i12;
        if (!getGppSidList().isEmpty()) {
            i14 = i14 + 1 + CodedOutputStream.y(i12);
        }
        this.gppSidMemoizedSerializedSize = i12;
        boolean z11 = this.coppa_;
        if (z11) {
            i14 += CodedOutputStream.e(6, z11);
        }
        int serializedSize = i14 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final j2 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = ((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getConsent().hashCode()) * 37) + 2) * 53) + i0.d(getGdpr())) * 37) + 3) * 53) + getCcpa().hashCode()) * 37) + 4) * 53) + getGpp().hashCode();
        if (getGppSidCount() > 0) {
            hashCode = (((hashCode * 37) + 5) * 53) + getGppSidList().hashCode();
        }
        int d10 = (((((hashCode * 37) + 6) * 53) + i0.d(getCoppa())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = d10;
        return d10;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_User_fieldAccessorTable.d(User.class, Builder.class);
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
        return new User();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        if (!getConsentBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.consent_);
        }
        boolean z10 = this.gdpr_;
        if (z10) {
            codedOutputStream.n0(2, z10);
        }
        if (!getCcpaBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.ccpa_);
        }
        if (!getGppBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.gpp_);
        }
        if (getGppSidList().size() > 0) {
            codedOutputStream.d1(42);
            codedOutputStream.d1(this.gppSidMemoizedSerializedSize);
        }
        for (int i10 = 0; i10 < this.gppSid_.size(); i10++) {
            codedOutputStream.d1(this.gppSid_.getInt(i10));
        }
        boolean z11 = this.coppa_;
        if (z11) {
            codedOutputStream.n0(6, z11);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* loaded from: classes8.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements UserOrBuilder {
        private int bitField0_;
        private Object ccpa_;
        private Object consent_;
        private boolean coppa_;
        private boolean gdpr_;
        private i0.g gppSid_;
        private Object gpp_;

        private void ensureGppSidIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.gppSid_ = GeneratedMessageV3.mutableCopy(this.gppSid_);
                this.bitField0_ |= 1;
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_User_descriptor;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder addAllGppSid(Iterable<? extends Integer> iterable) {
            ensureGppSidIsMutable();
            a.AbstractC0246a.addAll((Iterable) iterable, (List) this.gppSid_);
            onChanged();
            return this;
        }

        public Builder addGppSid(int i10) {
            ensureGppSidIsMutable();
            this.gppSid_.addInt(i10);
            onChanged();
            return this;
        }

        public Builder clearCcpa() {
            this.ccpa_ = User.getDefaultInstance().getCcpa();
            onChanged();
            return this;
        }

        public Builder clearConsent() {
            this.consent_ = User.getDefaultInstance().getConsent();
            onChanged();
            return this;
        }

        public Builder clearCoppa() {
            this.coppa_ = false;
            onChanged();
            return this;
        }

        public Builder clearGdpr() {
            this.gdpr_ = false;
            onChanged();
            return this;
        }

        public Builder clearGpp() {
            this.gpp_ = User.getDefaultInstance().getGpp();
            onChanged();
            return this;
        }

        public Builder clearGppSid() {
            this.gppSid_ = User.access$1800();
            this.bitField0_ &= -2;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.sdk.UserOrBuilder
        public String getCcpa() {
            Object obj = this.ccpa_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.ccpa_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.UserOrBuilder
        public ByteString getCcpaBytes() {
            Object obj = this.ccpa_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ccpa_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.UserOrBuilder
        public String getConsent() {
            Object obj = this.consent_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.consent_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.UserOrBuilder
        public ByteString getConsentBytes() {
            Object obj = this.consent_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.consent_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.UserOrBuilder
        public boolean getCoppa() {
            return this.coppa_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_User_descriptor;
        }

        @Override // io.bidmachine.protobuf.sdk.UserOrBuilder
        public boolean getGdpr() {
            return this.gdpr_;
        }

        @Override // io.bidmachine.protobuf.sdk.UserOrBuilder
        public String getGpp() {
            Object obj = this.gpp_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.gpp_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.UserOrBuilder
        public ByteString getGppBytes() {
            Object obj = this.gpp_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.gpp_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.sdk.UserOrBuilder
        public int getGppSid(int i10) {
            return this.gppSid_.getInt(i10);
        }

        @Override // io.bidmachine.protobuf.sdk.UserOrBuilder
        public int getGppSidCount() {
            return this.gppSid_.size();
        }

        @Override // io.bidmachine.protobuf.sdk.UserOrBuilder
        public List<Integer> getGppSidList() {
            if ((this.bitField0_ & 1) != 0) {
                return Collections.unmodifiableList(this.gppSid_);
            }
            return this.gppSid_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return SDKContextProto.internal_static_bidmachine_protobuf_sdk_context_User_fieldAccessorTable.d(User.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder setCcpa(String str) {
            str.getClass();
            this.ccpa_ = str;
            onChanged();
            return this;
        }

        public Builder setCcpaBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.ccpa_ = byteString;
            onChanged();
            return this;
        }

        public Builder setConsent(String str) {
            str.getClass();
            this.consent_ = str;
            onChanged();
            return this;
        }

        public Builder setConsentBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.consent_ = byteString;
            onChanged();
            return this;
        }

        public Builder setCoppa(boolean z10) {
            this.coppa_ = z10;
            onChanged();
            return this;
        }

        public Builder setGdpr(boolean z10) {
            this.gdpr_ = z10;
            onChanged();
            return this;
        }

        public Builder setGpp(String str) {
            str.getClass();
            this.gpp_ = str;
            onChanged();
            return this;
        }

        public Builder setGppBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.gpp_ = byteString;
            onChanged();
            return this;
        }

        public Builder setGppSid(int i10, int i11) {
            ensureGppSidIsMutable();
            this.gppSid_.setInt(i10, i11);
            onChanged();
            return this;
        }

        private Builder() {
            this.consent_ = "";
            this.ccpa_ = "";
            this.gpp_ = "";
            this.gppSid_ = User.access$1600();
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public User build() {
            User buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public User buildPartial() {
            User user = new User(this);
            user.consent_ = this.consent_;
            user.gdpr_ = this.gdpr_;
            user.ccpa_ = this.ccpa_;
            user.gpp_ = this.gpp_;
            if ((this.bitField0_ & 1) != 0) {
                this.gppSid_.makeImmutable();
                this.bitField0_ &= -2;
            }
            user.gppSid_ = this.gppSid_;
            user.coppa_ = this.coppa_;
            onBuilt();
            return user;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public User mo4630getDefaultInstanceForType() {
            return User.getDefaultInstance();
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
            this.consent_ = "";
            this.gdpr_ = false;
            this.ccpa_ = "";
            this.gpp_ = "";
            this.gppSid_ = User.access$300();
            this.bitField0_ &= -2;
            this.coppa_ = false;
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
        /* renamed from: clone */
        public Builder mo4628clone() {
            return (Builder) super.mo4628clone();
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof User) {
                return mergeFrom((User) message);
            }
            super.mergeFrom(message);
            return this;
        }

        private Builder(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.consent_ = "";
            this.ccpa_ = "";
            this.gpp_ = "";
            this.gppSid_ = User.access$1600();
            maybeForceBuilderInitialization();
        }

        public Builder mergeFrom(User user) {
            if (user == User.getDefaultInstance()) {
                return this;
            }
            if (!user.getConsent().isEmpty()) {
                this.consent_ = user.consent_;
                onChanged();
            }
            if (user.getGdpr()) {
                setGdpr(user.getGdpr());
            }
            if (!user.getCcpa().isEmpty()) {
                this.ccpa_ = user.ccpa_;
                onChanged();
            }
            if (!user.getGpp().isEmpty()) {
                this.gpp_ = user.gpp_;
                onChanged();
            }
            if (!user.gppSid_.isEmpty()) {
                if (this.gppSid_.isEmpty()) {
                    this.gppSid_ = user.gppSid_;
                    this.bitField0_ &= -2;
                } else {
                    ensureGppSidIsMutable();
                    this.gppSid_.addAll(user.gppSid_);
                }
                onChanged();
            }
            if (user.getCoppa()) {
                setCoppa(user.getCoppa());
            }
            mergeUnknownFields(((GeneratedMessageV3) user).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.bidmachine.protobuf.sdk.User.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.sdk.User.access$1200()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.sdk.User r3 = (io.bidmachine.protobuf.sdk.User) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.sdk.User r4 = (io.bidmachine.protobuf.sdk.User) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.sdk.User.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.sdk.User$Builder");
        }
    }

    public static Builder newBuilder(User user) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(user);
    }

    public static User parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    private User(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.gppSidMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static User parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (User) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static User parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public User mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static User parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static User parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    private User() {
        this.gppSidMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.consent_ = "";
        this.ccpa_ = "";
        this.gpp_ = "";
        this.gppSid_ = GeneratedMessageV3.emptyIntList();
    }

    public static User parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    public static User parseFrom(InputStream inputStream) throws IOException {
        return (User) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static User parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (User) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    public static User parseFrom(n nVar) throws IOException {
        return (User) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    private User(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                            this.consent_ = nVar.J();
                        } else if (K == 16) {
                            this.gdpr_ = nVar.q();
                        } else if (K == 26) {
                            this.ccpa_ = nVar.J();
                        } else if (K == 34) {
                            this.gpp_ = nVar.J();
                        } else if (K == 40) {
                            if (!z11) {
                                this.gppSid_ = GeneratedMessageV3.newIntList();
                                z11 = true;
                            }
                            this.gppSid_.addInt(nVar.L());
                        } else if (K == 42) {
                            int p10 = nVar.p(nVar.C());
                            if (!z11 && nVar.d() > 0) {
                                this.gppSid_ = GeneratedMessageV3.newIntList();
                                z11 = true;
                            }
                            while (nVar.d() > 0) {
                                this.gppSid_.addInt(nVar.L());
                            }
                            nVar.o(p10);
                        } else if (K != 48) {
                            if (!parseUnknownField(nVar, g10, yVar, K)) {
                            }
                        } else {
                            this.coppa_ = nVar.q();
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
                    this.gppSid_.makeImmutable();
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
                throw th2;
            }
        }
        if (z11) {
            this.gppSid_.makeImmutable();
        }
        this.unknownFields = g10.build();
        makeExtensionsImmutable();
    }

    public static User parseFrom(n nVar, y yVar) throws IOException {
        return (User) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }
}
