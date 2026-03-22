package io.bidmachine.protobuf;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.MapField;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.WireFormat;
import com.explorestack.protobuf.a;
import com.explorestack.protobuf.b;
import com.explorestack.protobuf.j1;
import com.explorestack.protobuf.j2;
import com.explorestack.protobuf.n;
import com.explorestack.protobuf.p1;
import com.explorestack.protobuf.s0;
import com.explorestack.protobuf.y;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes8.dex */
public final class AdNetwork extends GeneratedMessageV3 implements AdNetworkOrBuilder {
    public static final int AD_UNITS_FIELD_NUMBER = 4;
    public static final int CLASS_NAME_FIELD_NUMBER = 2;
    public static final int CUSTOM_PARAMS_FIELD_NUMBER = 3;
    public static final int NAME_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private List<AdUnit> adUnits_;
    private volatile Object className_;
    private MapField<String, String> customParams_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private static final AdNetwork DEFAULT_INSTANCE = new AdNetwork();
    private static final j1<AdNetwork> PARSER = new b<AdNetwork>() { // from class: io.bidmachine.protobuf.AdNetwork.1
        @Override // com.explorestack.protobuf.j1
        public AdNetwork parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new AdNetwork(nVar, yVar);
        }
    };

    /* loaded from: classes8.dex */
    public static final class AdUnit extends GeneratedMessageV3 implements AdUnitOrBuilder {
        public static final int AD_FORMAT_FIELD_NUMBER = 1;
        public static final int CUSTOM_PARAMS_FIELD_NUMBER = 2;
        private static final AdUnit DEFAULT_INSTANCE = new AdUnit();
        private static final j1<AdUnit> PARSER = new b<AdUnit>() { // from class: io.bidmachine.protobuf.AdNetwork.AdUnit.1
            @Override // com.explorestack.protobuf.j1
            public AdUnit parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new AdUnit(nVar, yVar);
            }
        };
        private static final long serialVersionUID = 0;
        private volatile Object adFormat_;
        private MapField<String, String> customParams_;
        private byte memoizedIsInitialized;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes8.dex */
        public static final class CustomParamsDefaultEntryHolder {
            static final s0<String, String> defaultEntry;

            static {
                Descriptors.Descriptor descriptor = InitProto.internal_static_bidmachine_protobuf_AdNetwork_AdUnit_CustomParamsEntry_descriptor;
                WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
                defaultEntry = s0.q(descriptor, fieldType, "", fieldType, "");
            }

            private CustomParamsDefaultEntryHolder() {
            }
        }

        public static AdUnit getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return InitProto.internal_static_bidmachine_protobuf_AdNetwork_AdUnit_descriptor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public MapField<String, String> internalGetCustomParams() {
            MapField<String, String> mapField = this.customParams_;
            if (mapField == null) {
                return MapField.g(CustomParamsDefaultEntryHolder.defaultEntry);
            }
            return mapField;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static AdUnit parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (AdUnit) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static AdUnit parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<AdUnit> parser() {
            return PARSER;
        }

        @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
        public boolean containsCustomParams(String str) {
            str.getClass();
            return internalGetCustomParams().i().containsKey(str);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof AdUnit)) {
                return super.equals(obj);
            }
            AdUnit adUnit = (AdUnit) obj;
            if (getAdFormat().equals(adUnit.getAdFormat()) && internalGetCustomParams().equals(adUnit.internalGetCustomParams()) && this.unknownFields.equals(adUnit.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
        public String getAdFormat() {
            Object obj = this.adFormat_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.adFormat_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
        public ByteString getAdFormatBytes() {
            Object obj = this.adFormat_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.adFormat_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
        @Deprecated
        public Map<String, String> getCustomParams() {
            return getCustomParamsMap();
        }

        @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
        public int getCustomParamsCount() {
            return internalGetCustomParams().i().size();
        }

        @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
        public Map<String, String> getCustomParamsMap() {
            return internalGetCustomParams().i();
        }

        @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
        public String getCustomParamsOrDefault(String str, String str2) {
            str.getClass();
            Map<String, String> i10 = internalGetCustomParams().i();
            if (i10.containsKey(str)) {
                return i10.get(str);
            }
            return str2;
        }

        @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
        public String getCustomParamsOrThrow(String str) {
            str.getClass();
            Map<String, String> i10 = internalGetCustomParams().i();
            if (i10.containsKey(str)) {
                return i10.get(str);
            }
            throw new IllegalArgumentException();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<AdUnit> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if (!getAdFormatBytes().isEmpty()) {
                i10 = GeneratedMessageV3.computeStringSize(1, this.adFormat_);
            } else {
                i10 = 0;
            }
            for (Map.Entry<String, String> entry : internalGetCustomParams().i().entrySet()) {
                i10 += CodedOutputStream.G(2, CustomParamsDefaultEntryHolder.defaultEntry.newBuilderForType().o(entry.getKey()).r(entry.getValue()).build());
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
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
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getAdFormat().hashCode();
            if (!internalGetCustomParams().i().isEmpty()) {
                hashCode = (((hashCode * 37) + 2) * 53) + internalGetCustomParams().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return InitProto.internal_static_bidmachine_protobuf_AdNetwork_AdUnit_fieldAccessorTable.d(AdUnit.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected MapField internalGetMapField(int i10) {
            if (i10 == 2) {
                return internalGetCustomParams();
            }
            throw new RuntimeException("Invalid map field number: " + i10);
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
            return new AdUnit();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!getAdFormatBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.adFormat_);
            }
            GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetCustomParams(), CustomParamsDefaultEntryHolder.defaultEntry, 2);
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements AdUnitOrBuilder {
            private Object adFormat_;
            private int bitField0_;
            private MapField<String, String> customParams_;

            public static final Descriptors.Descriptor getDescriptor() {
                return InitProto.internal_static_bidmachine_protobuf_AdNetwork_AdUnit_descriptor;
            }

            private MapField<String, String> internalGetCustomParams() {
                MapField<String, String> mapField = this.customParams_;
                if (mapField == null) {
                    return MapField.g(CustomParamsDefaultEntryHolder.defaultEntry);
                }
                return mapField;
            }

            private MapField<String, String> internalGetMutableCustomParams() {
                onChanged();
                if (this.customParams_ == null) {
                    this.customParams_ = MapField.p(CustomParamsDefaultEntryHolder.defaultEntry);
                }
                if (!this.customParams_.m()) {
                    this.customParams_ = this.customParams_.f();
                }
                return this.customParams_;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearAdFormat() {
                this.adFormat_ = AdUnit.getDefaultInstance().getAdFormat();
                onChanged();
                return this;
            }

            public Builder clearCustomParams() {
                internalGetMutableCustomParams().l().clear();
                return this;
            }

            @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
            public boolean containsCustomParams(String str) {
                str.getClass();
                return internalGetCustomParams().i().containsKey(str);
            }

            @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
            public String getAdFormat() {
                Object obj = this.adFormat_;
                if (!(obj instanceof String)) {
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.adFormat_ = stringUtf8;
                    return stringUtf8;
                }
                return (String) obj;
            }

            @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
            public ByteString getAdFormatBytes() {
                Object obj = this.adFormat_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.adFormat_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
            @Deprecated
            public Map<String, String> getCustomParams() {
                return getCustomParamsMap();
            }

            @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
            public int getCustomParamsCount() {
                return internalGetCustomParams().i().size();
            }

            @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
            public Map<String, String> getCustomParamsMap() {
                return internalGetCustomParams().i();
            }

            @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
            public String getCustomParamsOrDefault(String str, String str2) {
                str.getClass();
                Map<String, String> i10 = internalGetCustomParams().i();
                if (i10.containsKey(str)) {
                    return i10.get(str);
                }
                return str2;
            }

            @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
            public String getCustomParamsOrThrow(String str) {
                str.getClass();
                Map<String, String> i10 = internalGetCustomParams().i();
                if (i10.containsKey(str)) {
                    return i10.get(str);
                }
                throw new IllegalArgumentException();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return InitProto.internal_static_bidmachine_protobuf_AdNetwork_AdUnit_descriptor;
            }

            @Deprecated
            public Map<String, String> getMutableCustomParams() {
                return internalGetMutableCustomParams().l();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return InitProto.internal_static_bidmachine_protobuf_AdNetwork_AdUnit_fieldAccessorTable.d(AdUnit.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected MapField internalGetMapField(int i10) {
                if (i10 == 2) {
                    return internalGetCustomParams();
                }
                throw new RuntimeException("Invalid map field number: " + i10);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected MapField internalGetMutableMapField(int i10) {
                if (i10 == 2) {
                    return internalGetMutableCustomParams();
                }
                throw new RuntimeException("Invalid map field number: " + i10);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder putAllCustomParams(Map<String, String> map) {
                internalGetMutableCustomParams().l().putAll(map);
                return this;
            }

            public Builder putCustomParams(String str, String str2) {
                str.getClass();
                str2.getClass();
                internalGetMutableCustomParams().l().put(str, str2);
                return this;
            }

            public Builder removeCustomParams(String str) {
                str.getClass();
                internalGetMutableCustomParams().l().remove(str);
                return this;
            }

            public Builder setAdFormat(String str) {
                str.getClass();
                this.adFormat_ = str;
                onChanged();
                return this;
            }

            public Builder setAdFormatBytes(ByteString byteString) {
                byteString.getClass();
                a.checkByteStringIsUtf8(byteString);
                this.adFormat_ = byteString;
                onChanged();
                return this;
            }

            private Builder() {
                this.adFormat_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public AdUnit build() {
                AdUnit buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public AdUnit buildPartial() {
                AdUnit adUnit = new AdUnit(this);
                adUnit.adFormat_ = this.adFormat_;
                adUnit.customParams_ = internalGetCustomParams();
                adUnit.customParams_.n();
                onBuilt();
                return adUnit;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public AdUnit mo4630getDefaultInstanceForType() {
                return AdUnit.getDefaultInstance();
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
                this.adFormat_ = "";
                internalGetMutableCustomParams().a();
                return this;
            }

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.adFormat_ = "";
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: clone */
            public Builder mo4628clone() {
                return (Builder) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof AdUnit) {
                    return mergeFrom((AdUnit) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder mergeFrom(AdUnit adUnit) {
                if (adUnit == AdUnit.getDefaultInstance()) {
                    return this;
                }
                if (!adUnit.getAdFormat().isEmpty()) {
                    this.adFormat_ = adUnit.adFormat_;
                    onChanged();
                }
                internalGetMutableCustomParams().o(adUnit.internalGetCustomParams());
                mergeUnknownFields(((GeneratedMessageV3) adUnit).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.bidmachine.protobuf.AdNetwork.AdUnit.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.AdNetwork.AdUnit.access$800()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.AdNetwork$AdUnit r3 = (io.bidmachine.protobuf.AdNetwork.AdUnit) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.AdNetwork$AdUnit r4 = (io.bidmachine.protobuf.AdNetwork.AdUnit) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.AdNetwork.AdUnit.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.AdNetwork$AdUnit$Builder");
            }
        }

        public static Builder newBuilder(AdUnit adUnit) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(adUnit);
        }

        public static AdUnit parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        private AdUnit(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static AdUnit parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (AdUnit) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static AdUnit parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public AdUnit mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static AdUnit parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        private AdUnit() {
            this.memoizedIsInitialized = (byte) -1;
            this.adFormat_ = "";
        }

        public static AdUnit parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        public static AdUnit parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        public static AdUnit parseFrom(InputStream inputStream) throws IOException {
            return (AdUnit) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        /* JADX WARN: Type inference failed for: r3v6, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object] */
        private AdUnit(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                this.adFormat_ = nVar.J();
                            } else if (K != 18) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                if (!z11) {
                                    this.customParams_ = MapField.p(CustomParamsDefaultEntryHolder.defaultEntry);
                                    z11 = true;
                                }
                                s0 s0Var = (s0) nVar.A(CustomParamsDefaultEntryHolder.defaultEntry.getParserForType(), yVar);
                                this.customParams_.l().put(s0Var.h(), s0Var.j());
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }

        public static AdUnit parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (AdUnit) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        public static AdUnit parseFrom(n nVar) throws IOException {
            return (AdUnit) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        public static AdUnit parseFrom(n nVar, y yVar) throws IOException {
            return (AdUnit) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }
    }

    /* loaded from: classes8.dex */
    public interface AdUnitOrBuilder extends MessageOrBuilder {
        boolean containsCustomParams(String str);

        String getAdFormat();

        ByteString getAdFormatBytes();

        @Deprecated
        Map<String, String> getCustomParams();

        int getCustomParamsCount();

        Map<String, String> getCustomParamsMap();

        String getCustomParamsOrDefault(String str, String str2);

        String getCustomParamsOrThrow(String str);

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public static final class CustomParamsDefaultEntryHolder {
        static final s0<String, String> defaultEntry;

        static {
            Descriptors.Descriptor descriptor = InitProto.internal_static_bidmachine_protobuf_AdNetwork_CustomParamsEntry_descriptor;
            WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
            defaultEntry = s0.q(descriptor, fieldType, "", fieldType, "");
        }

        private CustomParamsDefaultEntryHolder() {
        }
    }

    public static AdNetwork getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return InitProto.internal_static_bidmachine_protobuf_AdNetwork_descriptor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MapField<String, String> internalGetCustomParams() {
        MapField<String, String> mapField = this.customParams_;
        if (mapField == null) {
            return MapField.g(CustomParamsDefaultEntryHolder.defaultEntry);
        }
        return mapField;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static AdNetwork parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (AdNetwork) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static AdNetwork parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<AdNetwork> parser() {
        return PARSER;
    }

    @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
    public boolean containsCustomParams(String str) {
        str.getClass();
        return internalGetCustomParams().i().containsKey(str);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AdNetwork)) {
            return super.equals(obj);
        }
        AdNetwork adNetwork = (AdNetwork) obj;
        if (getName().equals(adNetwork.getName()) && getClassName().equals(adNetwork.getClassName()) && internalGetCustomParams().equals(adNetwork.internalGetCustomParams()) && getAdUnitsList().equals(adNetwork.getAdUnitsList()) && this.unknownFields.equals(adNetwork.unknownFields)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
    public AdUnit getAdUnits(int i10) {
        return this.adUnits_.get(i10);
    }

    @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
    public int getAdUnitsCount() {
        return this.adUnits_.size();
    }

    @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
    public List<AdUnit> getAdUnitsList() {
        return this.adUnits_;
    }

    @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
    public AdUnitOrBuilder getAdUnitsOrBuilder(int i10) {
        return this.adUnits_.get(i10);
    }

    @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
    public List<? extends AdUnitOrBuilder> getAdUnitsOrBuilderList() {
        return this.adUnits_;
    }

    @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
    public String getClassName() {
        Object obj = this.className_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.className_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
    public ByteString getClassNameBytes() {
        Object obj = this.className_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.className_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
    @Deprecated
    public Map<String, String> getCustomParams() {
        return getCustomParamsMap();
    }

    @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
    public int getCustomParamsCount() {
        return internalGetCustomParams().i().size();
    }

    @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
    public Map<String, String> getCustomParamsMap() {
        return internalGetCustomParams().i();
    }

    @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
    public String getCustomParamsOrDefault(String str, String str2) {
        str.getClass();
        Map<String, String> i10 = internalGetCustomParams().i();
        if (i10.containsKey(str)) {
            return i10.get(str);
        }
        return str2;
    }

    @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
    public String getCustomParamsOrThrow(String str) {
        str.getClass();
        Map<String, String> i10 = internalGetCustomParams().i();
        if (i10.containsKey(str)) {
            return i10.get(str);
        }
        throw new IllegalArgumentException();
    }

    @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
    public ByteString getNameBytes() {
        Object obj = this.name_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<AdNetwork> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        if (!getNameBytes().isEmpty()) {
            i10 = GeneratedMessageV3.computeStringSize(1, this.name_);
        } else {
            i10 = 0;
        }
        if (!getClassNameBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(2, this.className_);
        }
        for (Map.Entry<String, String> entry : internalGetCustomParams().i().entrySet()) {
            i10 += CodedOutputStream.G(3, CustomParamsDefaultEntryHolder.defaultEntry.newBuilderForType().o(entry.getKey()).r(entry.getValue()).build());
        }
        for (int i12 = 0; i12 < this.adUnits_.size(); i12++) {
            i10 += CodedOutputStream.G(4, this.adUnits_.get(i12));
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
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
        int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + getClassName().hashCode();
        if (!internalGetCustomParams().i().isEmpty()) {
            hashCode = (((hashCode * 37) + 3) * 53) + internalGetCustomParams().hashCode();
        }
        if (getAdUnitsCount() > 0) {
            hashCode = (((hashCode * 37) + 4) * 53) + getAdUnitsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return InitProto.internal_static_bidmachine_protobuf_AdNetwork_fieldAccessorTable.d(AdNetwork.class, Builder.class);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected MapField internalGetMapField(int i10) {
        if (i10 == 3) {
            return internalGetCustomParams();
        }
        throw new RuntimeException("Invalid map field number: " + i10);
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
        return new AdNetwork();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        if (!getClassNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.className_);
        }
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetCustomParams(), CustomParamsDefaultEntryHolder.defaultEntry, 3);
        for (int i10 = 0; i10 < this.adUnits_.size(); i10++) {
            codedOutputStream.L0(4, this.adUnits_.get(i10));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* loaded from: classes8.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements AdNetworkOrBuilder {
        private p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> adUnitsBuilder_;
        private List<AdUnit> adUnits_;
        private int bitField0_;
        private Object className_;
        private MapField<String, String> customParams_;
        private Object name_;

        private void ensureAdUnitsIsMutable() {
            if ((this.bitField0_ & 2) == 0) {
                this.adUnits_ = new ArrayList(this.adUnits_);
                this.bitField0_ |= 2;
            }
        }

        private p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> getAdUnitsFieldBuilder() {
            boolean z10;
            if (this.adUnitsBuilder_ == null) {
                List<AdUnit> list = this.adUnits_;
                if ((this.bitField0_ & 2) != 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                this.adUnitsBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                this.adUnits_ = null;
            }
            return this.adUnitsBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return InitProto.internal_static_bidmachine_protobuf_AdNetwork_descriptor;
        }

        private MapField<String, String> internalGetCustomParams() {
            MapField<String, String> mapField = this.customParams_;
            if (mapField == null) {
                return MapField.g(CustomParamsDefaultEntryHolder.defaultEntry);
            }
            return mapField;
        }

        private MapField<String, String> internalGetMutableCustomParams() {
            onChanged();
            if (this.customParams_ == null) {
                this.customParams_ = MapField.p(CustomParamsDefaultEntryHolder.defaultEntry);
            }
            if (!this.customParams_.m()) {
                this.customParams_ = this.customParams_.f();
            }
            return this.customParams_;
        }

        private void maybeForceBuilderInitialization() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                getAdUnitsFieldBuilder();
            }
        }

        public Builder addAdUnits(AdUnit adUnit) {
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var == null) {
                adUnit.getClass();
                ensureAdUnitsIsMutable();
                this.adUnits_.add(adUnit);
                onChanged();
            } else {
                p1Var.e(adUnit);
            }
            return this;
        }

        public AdUnit.Builder addAdUnitsBuilder() {
            return getAdUnitsFieldBuilder().c(AdUnit.getDefaultInstance());
        }

        public Builder addAllAdUnits(Iterable<? extends AdUnit> iterable) {
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var == null) {
                ensureAdUnitsIsMutable();
                a.AbstractC0246a.addAll((Iterable) iterable, (List) this.adUnits_);
                onChanged();
            } else {
                p1Var.a(iterable);
            }
            return this;
        }

        public Builder clearAdUnits() {
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var == null) {
                this.adUnits_ = Collections.emptyList();
                this.bitField0_ &= -3;
                onChanged();
            } else {
                p1Var.g();
            }
            return this;
        }

        public Builder clearClassName() {
            this.className_ = AdNetwork.getDefaultInstance().getClassName();
            onChanged();
            return this;
        }

        public Builder clearCustomParams() {
            internalGetMutableCustomParams().l().clear();
            return this;
        }

        public Builder clearName() {
            this.name_ = AdNetwork.getDefaultInstance().getName();
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
        public boolean containsCustomParams(String str) {
            str.getClass();
            return internalGetCustomParams().i().containsKey(str);
        }

        @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
        public AdUnit getAdUnits(int i10) {
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var == null) {
                return this.adUnits_.get(i10);
            }
            return p1Var.n(i10);
        }

        public AdUnit.Builder getAdUnitsBuilder(int i10) {
            return getAdUnitsFieldBuilder().k(i10);
        }

        public List<AdUnit.Builder> getAdUnitsBuilderList() {
            return getAdUnitsFieldBuilder().l();
        }

        @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
        public int getAdUnitsCount() {
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var == null) {
                return this.adUnits_.size();
            }
            return p1Var.m();
        }

        @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
        public List<AdUnit> getAdUnitsList() {
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var == null) {
                return Collections.unmodifiableList(this.adUnits_);
            }
            return p1Var.p();
        }

        @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
        public AdUnitOrBuilder getAdUnitsOrBuilder(int i10) {
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var == null) {
                return this.adUnits_.get(i10);
            }
            return p1Var.q(i10);
        }

        @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
        public List<? extends AdUnitOrBuilder> getAdUnitsOrBuilderList() {
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var != null) {
                return p1Var.r();
            }
            return Collections.unmodifiableList(this.adUnits_);
        }

        @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
        public String getClassName() {
            Object obj = this.className_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.className_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
        public ByteString getClassNameBytes() {
            Object obj = this.className_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.className_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
        @Deprecated
        public Map<String, String> getCustomParams() {
            return getCustomParamsMap();
        }

        @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
        public int getCustomParamsCount() {
            return internalGetCustomParams().i().size();
        }

        @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
        public Map<String, String> getCustomParamsMap() {
            return internalGetCustomParams().i();
        }

        @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
        public String getCustomParamsOrDefault(String str, String str2) {
            str.getClass();
            Map<String, String> i10 = internalGetCustomParams().i();
            if (i10.containsKey(str)) {
                return i10.get(str);
            }
            return str2;
        }

        @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
        public String getCustomParamsOrThrow(String str) {
            str.getClass();
            Map<String, String> i10 = internalGetCustomParams().i();
            if (i10.containsKey(str)) {
                return i10.get(str);
            }
            throw new IllegalArgumentException();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return InitProto.internal_static_bidmachine_protobuf_AdNetwork_descriptor;
        }

        @Deprecated
        public Map<String, String> getMutableCustomParams() {
            return internalGetMutableCustomParams().l();
        }

        @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
        public String getName() {
            Object obj = this.name_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.name_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
        public ByteString getNameBytes() {
            Object obj = this.name_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.name_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return InitProto.internal_static_bidmachine_protobuf_AdNetwork_fieldAccessorTable.d(AdNetwork.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected MapField internalGetMapField(int i10) {
            if (i10 == 3) {
                return internalGetCustomParams();
            }
            throw new RuntimeException("Invalid map field number: " + i10);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected MapField internalGetMutableMapField(int i10) {
            if (i10 == 3) {
                return internalGetMutableCustomParams();
            }
            throw new RuntimeException("Invalid map field number: " + i10);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder putAllCustomParams(Map<String, String> map) {
            internalGetMutableCustomParams().l().putAll(map);
            return this;
        }

        public Builder putCustomParams(String str, String str2) {
            str.getClass();
            str2.getClass();
            internalGetMutableCustomParams().l().put(str, str2);
            return this;
        }

        public Builder removeAdUnits(int i10) {
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var == null) {
                ensureAdUnitsIsMutable();
                this.adUnits_.remove(i10);
                onChanged();
            } else {
                p1Var.v(i10);
            }
            return this;
        }

        public Builder removeCustomParams(String str) {
            str.getClass();
            internalGetMutableCustomParams().l().remove(str);
            return this;
        }

        public Builder setAdUnits(int i10, AdUnit adUnit) {
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var == null) {
                adUnit.getClass();
                ensureAdUnitsIsMutable();
                this.adUnits_.set(i10, adUnit);
                onChanged();
            } else {
                p1Var.w(i10, adUnit);
            }
            return this;
        }

        public Builder setClassName(String str) {
            str.getClass();
            this.className_ = str;
            onChanged();
            return this;
        }

        public Builder setClassNameBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.className_ = byteString;
            onChanged();
            return this;
        }

        public Builder setName(String str) {
            str.getClass();
            this.name_ = str;
            onChanged();
            return this;
        }

        public Builder setNameBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.name_ = byteString;
            onChanged();
            return this;
        }

        private Builder() {
            this.name_ = "";
            this.className_ = "";
            this.adUnits_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public AdNetwork build() {
            AdNetwork buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public AdNetwork buildPartial() {
            AdNetwork adNetwork = new AdNetwork(this);
            adNetwork.name_ = this.name_;
            adNetwork.className_ = this.className_;
            adNetwork.customParams_ = internalGetCustomParams();
            adNetwork.customParams_.n();
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var != null) {
                adNetwork.adUnits_ = p1Var.f();
            } else {
                if ((this.bitField0_ & 2) != 0) {
                    this.adUnits_ = Collections.unmodifiableList(this.adUnits_);
                    this.bitField0_ &= -3;
                }
                adNetwork.adUnits_ = this.adUnits_;
            }
            onBuilt();
            return adNetwork;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public AdNetwork mo4630getDefaultInstanceForType() {
            return AdNetwork.getDefaultInstance();
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

        public AdUnit.Builder addAdUnitsBuilder(int i10) {
            return getAdUnitsFieldBuilder().b(i10, AdUnit.getDefaultInstance());
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
            this.name_ = "";
            this.className_ = "";
            internalGetMutableCustomParams().a();
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var == null) {
                this.adUnits_ = Collections.emptyList();
                this.bitField0_ &= -3;
            } else {
                p1Var.g();
            }
            return this;
        }

        public Builder addAdUnits(int i10, AdUnit adUnit) {
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var == null) {
                adUnit.getClass();
                ensureAdUnitsIsMutable();
                this.adUnits_.add(i10, adUnit);
                onChanged();
            } else {
                p1Var.d(i10, adUnit);
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
            if (message instanceof AdNetwork) {
                return mergeFrom((AdNetwork) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder setAdUnits(int i10, AdUnit.Builder builder) {
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var == null) {
                ensureAdUnitsIsMutable();
                this.adUnits_.set(i10, builder.build());
                onChanged();
            } else {
                p1Var.w(i10, builder.build());
            }
            return this;
        }

        private Builder(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.name_ = "";
            this.className_ = "";
            this.adUnits_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        public Builder mergeFrom(AdNetwork adNetwork) {
            if (adNetwork == AdNetwork.getDefaultInstance()) {
                return this;
            }
            if (!adNetwork.getName().isEmpty()) {
                this.name_ = adNetwork.name_;
                onChanged();
            }
            if (!adNetwork.getClassName().isEmpty()) {
                this.className_ = adNetwork.className_;
                onChanged();
            }
            internalGetMutableCustomParams().o(adNetwork.internalGetCustomParams());
            if (this.adUnitsBuilder_ == null) {
                if (!adNetwork.adUnits_.isEmpty()) {
                    if (this.adUnits_.isEmpty()) {
                        this.adUnits_ = adNetwork.adUnits_;
                        this.bitField0_ &= -3;
                    } else {
                        ensureAdUnitsIsMutable();
                        this.adUnits_.addAll(adNetwork.adUnits_);
                    }
                    onChanged();
                }
            } else if (!adNetwork.adUnits_.isEmpty()) {
                if (!this.adUnitsBuilder_.t()) {
                    this.adUnitsBuilder_.a(adNetwork.adUnits_);
                } else {
                    this.adUnitsBuilder_.h();
                    this.adUnitsBuilder_ = null;
                    this.adUnits_ = adNetwork.adUnits_;
                    this.bitField0_ &= -3;
                    this.adUnitsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getAdUnitsFieldBuilder() : null;
                }
            }
            mergeUnknownFields(((GeneratedMessageV3) adNetwork).unknownFields);
            onChanged();
            return this;
        }

        public Builder addAdUnits(AdUnit.Builder builder) {
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var == null) {
                ensureAdUnitsIsMutable();
                this.adUnits_.add(builder.build());
                onChanged();
            } else {
                p1Var.e(builder.build());
            }
            return this;
        }

        public Builder addAdUnits(int i10, AdUnit.Builder builder) {
            p1<AdUnit, AdUnit.Builder, AdUnitOrBuilder> p1Var = this.adUnitsBuilder_;
            if (p1Var == null) {
                ensureAdUnitsIsMutable();
                this.adUnits_.add(i10, builder.build());
                onChanged();
            } else {
                p1Var.d(i10, builder.build());
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.bidmachine.protobuf.AdNetwork.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.AdNetwork.access$2200()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.AdNetwork r3 = (io.bidmachine.protobuf.AdNetwork) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.AdNetwork r4 = (io.bidmachine.protobuf.AdNetwork) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.AdNetwork.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.AdNetwork$Builder");
        }
    }

    public static Builder newBuilder(AdNetwork adNetwork) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(adNetwork);
    }

    public static AdNetwork parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    private AdNetwork(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static AdNetwork parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (AdNetwork) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static AdNetwork parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public AdNetwork mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static AdNetwork parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    private AdNetwork() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.className_ = "";
        this.adUnits_ = Collections.emptyList();
    }

    public static AdNetwork parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    public static AdNetwork parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    public static AdNetwork parseFrom(InputStream inputStream) throws IOException {
        return (AdNetwork) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static AdNetwork parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (AdNetwork) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.Object] */
    private AdNetwork(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                            this.name_ = nVar.J();
                        } else if (K == 18) {
                            this.className_ = nVar.J();
                        } else if (K == 26) {
                            if (!(z11 & true)) {
                                this.customParams_ = MapField.p(CustomParamsDefaultEntryHolder.defaultEntry);
                                z11 |= true;
                            }
                            s0 s0Var = (s0) nVar.A(CustomParamsDefaultEntryHolder.defaultEntry.getParserForType(), yVar);
                            this.customParams_.l().put(s0Var.h(), s0Var.j());
                        } else if (K != 34) {
                            if (!parseUnknownField(nVar, g10, yVar, K)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.adUnits_ = new ArrayList();
                                z11 |= true;
                            }
                            this.adUnits_.add(nVar.A(AdUnit.parser(), yVar));
                        }
                    }
                    z10 = true;
                } catch (InvalidProtocolBufferException e10) {
                    throw e10.setUnfinishedMessage(this);
                } catch (IOException e11) {
                    throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                }
            } catch (Throwable th2) {
                if (z11 & true) {
                    this.adUnits_ = Collections.unmodifiableList(this.adUnits_);
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
                throw th2;
            }
        }
        if (z11 & true) {
            this.adUnits_ = Collections.unmodifiableList(this.adUnits_);
        }
        this.unknownFields = g10.build();
        makeExtensionsImmutable();
    }

    public static AdNetwork parseFrom(n nVar) throws IOException {
        return (AdNetwork) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    public static AdNetwork parseFrom(n nVar, y yVar) throws IOException {
        return (AdNetwork) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }
}
