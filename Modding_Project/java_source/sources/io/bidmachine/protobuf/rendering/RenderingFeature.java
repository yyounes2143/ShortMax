package io.bidmachine.protobuf.rendering;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.a;
import com.explorestack.protobuf.b;
import com.explorestack.protobuf.i0;
import com.explorestack.protobuf.j1;
import com.explorestack.protobuf.j2;
import com.explorestack.protobuf.n;
import com.explorestack.protobuf.p1;
import com.explorestack.protobuf.t1;
import com.explorestack.protobuf.y;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes8.dex */
public final class RenderingFeature extends GeneratedMessageV3 implements RenderingFeatureOrBuilder {
    public static final int BROKEN_CREATIVE_DETECTOR_FIELD_NUMBER = 1;
    private static final RenderingFeature DEFAULT_INSTANCE = new RenderingFeature();
    private static final j1<RenderingFeature> PARSER = new b<RenderingFeature>() { // from class: io.bidmachine.protobuf.rendering.RenderingFeature.1
        @Override // com.explorestack.protobuf.j1
        public RenderingFeature parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new RenderingFeature(nVar, yVar);
        }
    };
    private static final long serialVersionUID = 0;
    private int featureCase_;
    private Object feature_;
    private byte memoizedIsInitialized;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.bidmachine.protobuf.rendering.RenderingFeature$2  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$io$bidmachine$protobuf$rendering$RenderingFeature$BrokenCreativeDetector$PayloadOneofCase;
        static final /* synthetic */ int[] $SwitchMap$io$bidmachine$protobuf$rendering$RenderingFeature$FeatureCase;

        static {
            int[] iArr = new int[FeatureCase.values().length];
            $SwitchMap$io$bidmachine$protobuf$rendering$RenderingFeature$FeatureCase = iArr;
            try {
                iArr[FeatureCase.BROKEN_CREATIVE_DETECTOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$bidmachine$protobuf$rendering$RenderingFeature$FeatureCase[FeatureCase.FEATURE_NOT_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[BrokenCreativeDetector.PayloadOneofCase.values().length];
            $SwitchMap$io$bidmachine$protobuf$rendering$RenderingFeature$BrokenCreativeDetector$PayloadOneofCase = iArr2;
            try {
                iArr2[BrokenCreativeDetector.PayloadOneofCase.EVENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$bidmachine$protobuf$rendering$RenderingFeature$BrokenCreativeDetector$PayloadOneofCase[BrokenCreativeDetector.PayloadOneofCase.CONFIGURATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$io$bidmachine$protobuf$rendering$RenderingFeature$BrokenCreativeDetector$PayloadOneofCase[BrokenCreativeDetector.PayloadOneofCase.PAYLOADONEOF_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes8.dex */
    public static final class BrokenCreativeDetector extends GeneratedMessageV3 implements BrokenCreativeDetectorOrBuilder {
        public static final int CONFIGURATION_FIELD_NUMBER = 2;
        public static final int EVENT_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private int payloadOneofCase_;
        private Object payloadOneof_;
        private static final BrokenCreativeDetector DEFAULT_INSTANCE = new BrokenCreativeDetector();
        private static final j1<BrokenCreativeDetector> PARSER = new b<BrokenCreativeDetector>() { // from class: io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.1
            @Override // com.explorestack.protobuf.j1
            public BrokenCreativeDetector parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new BrokenCreativeDetector(nVar, yVar);
            }
        };

        /* loaded from: classes8.dex */
        public static final class Algorithm extends GeneratedMessageV3 implements AlgorithmOrBuilder {
            public static final int NAME_FIELD_NUMBER = 1;
            public static final int THRESHOLD_FIELD_NUMBER = 3;
            public static final int WEIGHT_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private byte memoizedIsInitialized;
            private volatile Object name_;
            private double threshold_;
            private double weight_;
            private static final Algorithm DEFAULT_INSTANCE = new Algorithm();
            private static final j1<Algorithm> PARSER = new b<Algorithm>() { // from class: io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.Algorithm.1
                @Override // com.explorestack.protobuf.j1
                public Algorithm parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new Algorithm(nVar, yVar);
                }
            };

            public static Algorithm getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return RenderingProto.internal_static_bidmachine_protobuf_RenderingFeature_BrokenCreativeDetector_Algorithm_descriptor;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Algorithm parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Algorithm) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Algorithm parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static j1<Algorithm> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Algorithm)) {
                    return super.equals(obj);
                }
                Algorithm algorithm = (Algorithm) obj;
                if (getName().equals(algorithm.getName()) && Double.doubleToLongBits(getWeight()) == Double.doubleToLongBits(algorithm.getWeight()) && Double.doubleToLongBits(getThreshold()) == Double.doubleToLongBits(algorithm.getThreshold()) && this.unknownFields.equals(algorithm.unknownFields)) {
                    return true;
                }
                return false;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.AlgorithmOrBuilder
            public String getName() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.name_ = stringUtf8;
                return stringUtf8;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.AlgorithmOrBuilder
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
            public j1<Algorithm> getParserForType() {
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
                double d10 = this.weight_;
                if (d10 != 0.0d) {
                    i10 += CodedOutputStream.j(2, d10);
                }
                double d11 = this.threshold_;
                if (d11 != 0.0d) {
                    i10 += CodedOutputStream.j(3, d11);
                }
                int serializedSize = i10 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.AlgorithmOrBuilder
            public double getThreshold() {
                return this.threshold_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final j2 getUnknownFields() {
                return this.unknownFields;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.AlgorithmOrBuilder
            public double getWeight() {
                return this.weight_;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public int hashCode() {
                int i10 = this.memoizedHashCode;
                if (i10 != 0) {
                    return i10;
                }
                int hashCode = ((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + i0.i(Double.doubleToLongBits(getWeight()))) * 37) + 3) * 53) + i0.i(Double.doubleToLongBits(getThreshold()))) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode;
                return hashCode;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return RenderingProto.internal_static_bidmachine_protobuf_RenderingFeature_BrokenCreativeDetector_Algorithm_fieldAccessorTable.d(Algorithm.class, Builder.class);
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
                return new Algorithm();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (!getNameBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
                }
                double d10 = this.weight_;
                if (d10 != 0.0d) {
                    codedOutputStream.t0(2, d10);
                }
                double d11 = this.threshold_;
                if (d11 != 0.0d) {
                    codedOutputStream.t0(3, d11);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* loaded from: classes8.dex */
            public static final class Builder extends GeneratedMessageV3.b<Builder> implements AlgorithmOrBuilder {
                private Object name_;
                private double threshold_;
                private double weight_;

                public static final Descriptors.Descriptor getDescriptor() {
                    return RenderingProto.internal_static_bidmachine_protobuf_RenderingFeature_BrokenCreativeDetector_Algorithm_descriptor;
                }

                private void maybeForceBuilderInitialization() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                public Builder clearName() {
                    this.name_ = Algorithm.getDefaultInstance().getName();
                    onChanged();
                    return this;
                }

                public Builder clearThreshold() {
                    this.threshold_ = 0.0d;
                    onChanged();
                    return this;
                }

                public Builder clearWeight() {
                    this.weight_ = 0.0d;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return RenderingProto.internal_static_bidmachine_protobuf_RenderingFeature_BrokenCreativeDetector_Algorithm_descriptor;
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.AlgorithmOrBuilder
                public String getName() {
                    Object obj = this.name_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.name_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.AlgorithmOrBuilder
                public ByteString getNameBytes() {
                    Object obj = this.name_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.name_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.AlgorithmOrBuilder
                public double getThreshold() {
                    return this.threshold_;
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.AlgorithmOrBuilder
                public double getWeight() {
                    return this.weight_;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return RenderingProto.internal_static_bidmachine_protobuf_RenderingFeature_BrokenCreativeDetector_Algorithm_fieldAccessorTable.d(Algorithm.class, Builder.class);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final boolean isInitialized() {
                    return true;
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

                public Builder setThreshold(double d10) {
                    this.threshold_ = d10;
                    onChanged();
                    return this;
                }

                public Builder setWeight(double d10) {
                    this.weight_ = d10;
                    onChanged();
                    return this;
                }

                private Builder() {
                    this.name_ = "";
                    maybeForceBuilderInitialization();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Algorithm build() {
                    Algorithm buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Algorithm buildPartial() {
                    Algorithm algorithm = new Algorithm(this);
                    algorithm.name_ = this.name_;
                    algorithm.weight_ = this.weight_;
                    algorithm.threshold_ = this.threshold_;
                    onBuilt();
                    return algorithm;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (Builder) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                public Algorithm mo4630getDefaultInstanceForType() {
                    return Algorithm.getDefaultInstance();
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
                    this.name_ = "";
                    this.weight_ = 0.0d;
                    this.threshold_ = 0.0d;
                    return this;
                }

                private Builder(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.name_ = "";
                    maybeForceBuilderInitialization();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
                /* renamed from: clone */
                public Builder mo4628clone() {
                    return (Builder) super.mo4628clone();
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public Builder mergeFrom(Message message) {
                    if (message instanceof Algorithm) {
                        return mergeFrom((Algorithm) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(Algorithm algorithm) {
                    if (algorithm == Algorithm.getDefaultInstance()) {
                        return this;
                    }
                    if (!algorithm.getName().isEmpty()) {
                        this.name_ = algorithm.name_;
                        onChanged();
                    }
                    if (algorithm.getWeight() != 0.0d) {
                        setWeight(algorithm.getWeight());
                    }
                    if (algorithm.getThreshold() != 0.0d) {
                        setThreshold(algorithm.getThreshold());
                    }
                    mergeUnknownFields(((GeneratedMessageV3) algorithm).unknownFields);
                    onChanged();
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.Algorithm.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.Algorithm.access$800()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        io.bidmachine.protobuf.rendering.RenderingFeature$BrokenCreativeDetector$Algorithm r3 = (io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.Algorithm) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                        io.bidmachine.protobuf.rendering.RenderingFeature$BrokenCreativeDetector$Algorithm r4 = (io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.Algorithm) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.Algorithm.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.rendering.RenderingFeature$BrokenCreativeDetector$Algorithm$Builder");
                }
            }

            public static Builder newBuilder(Algorithm algorithm) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(algorithm);
            }

            public static Algorithm parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, yVar);
            }

            private Algorithm(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static Algorithm parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                return (Algorithm) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
            }

            public static Algorithm parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public Algorithm mo4630getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            public static Algorithm parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, yVar);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            private Algorithm() {
                this.memoizedIsInitialized = (byte) -1;
                this.name_ = "";
            }

            public static Algorithm parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                return new Builder(cVar);
            }

            public static Algorithm parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, yVar);
            }

            public static Algorithm parseFrom(InputStream inputStream) throws IOException {
                return (Algorithm) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            private Algorithm(n nVar, y yVar) throws InvalidProtocolBufferException {
                this();
                yVar.getClass();
                j2.b g10 = j2.g();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            int K = nVar.K();
                            if (K != 0) {
                                if (K == 10) {
                                    this.name_ = nVar.J();
                                } else if (K == 17) {
                                    this.weight_ = nVar.s();
                                } else if (K != 25) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    this.threshold_ = nVar.s();
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

            public static Algorithm parseFrom(InputStream inputStream, y yVar) throws IOException {
                return (Algorithm) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
            }

            public static Algorithm parseFrom(n nVar) throws IOException {
                return (Algorithm) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
            }

            public static Algorithm parseFrom(n nVar, y yVar) throws IOException {
                return (Algorithm) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
            }
        }

        /* loaded from: classes8.dex */
        public interface AlgorithmOrBuilder extends MessageOrBuilder {
            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

            String getName();

            ByteString getNameBytes();

            double getThreshold();

            double getWeight();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes8.dex */
        public static final class AlgorithmResult extends GeneratedMessageV3 implements AlgorithmResultOrBuilder {
            public static final int ALGORITHM_FIELD_NUMBER = 3;
            public static final int DURATION_FIELD_NUMBER = 2;
            public static final int RESULT_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private Algorithm algorithm_;
            private double duration_;
            private byte memoizedIsInitialized;
            private int result_;
            private static final AlgorithmResult DEFAULT_INSTANCE = new AlgorithmResult();
            private static final j1<AlgorithmResult> PARSER = new b<AlgorithmResult>() { // from class: io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.AlgorithmResult.1
                @Override // com.explorestack.protobuf.j1
                public AlgorithmResult parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new AlgorithmResult(nVar, yVar);
                }
            };

            public static AlgorithmResult getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return RenderingProto.internal_static_bidmachine_protobuf_RenderingFeature_BrokenCreativeDetector_AlgorithmResult_descriptor;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static AlgorithmResult parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (AlgorithmResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static AlgorithmResult parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static j1<AlgorithmResult> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof AlgorithmResult)) {
                    return super.equals(obj);
                }
                AlgorithmResult algorithmResult = (AlgorithmResult) obj;
                if (getResult() != algorithmResult.getResult() || Double.doubleToLongBits(getDuration()) != Double.doubleToLongBits(algorithmResult.getDuration()) || hasAlgorithm() != algorithmResult.hasAlgorithm()) {
                    return false;
                }
                if ((!hasAlgorithm() || getAlgorithm().equals(algorithmResult.getAlgorithm())) && this.unknownFields.equals(algorithmResult.unknownFields)) {
                    return true;
                }
                return false;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.AlgorithmResultOrBuilder
            public Algorithm getAlgorithm() {
                Algorithm algorithm = this.algorithm_;
                if (algorithm == null) {
                    return Algorithm.getDefaultInstance();
                }
                return algorithm;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.AlgorithmResultOrBuilder
            public AlgorithmOrBuilder getAlgorithmOrBuilder() {
                return getAlgorithm();
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.AlgorithmResultOrBuilder
            public double getDuration() {
                return this.duration_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public j1<AlgorithmResult> getParserForType() {
                return PARSER;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.AlgorithmResultOrBuilder
            public int getResult() {
                return this.result_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i10;
                int i11 = this.memoizedSize;
                if (i11 != -1) {
                    return i11;
                }
                int i12 = this.result_;
                if (i12 != 0) {
                    i10 = CodedOutputStream.x(1, i12);
                } else {
                    i10 = 0;
                }
                double d10 = this.duration_;
                if (d10 != 0.0d) {
                    i10 += CodedOutputStream.j(2, d10);
                }
                if (this.algorithm_ != null) {
                    i10 += CodedOutputStream.G(3, getAlgorithm());
                }
                int serializedSize = i10 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final j2 getUnknownFields() {
                return this.unknownFields;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.AlgorithmResultOrBuilder
            public boolean hasAlgorithm() {
                if (this.algorithm_ != null) {
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
                int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getResult()) * 37) + 2) * 53) + i0.i(Double.doubleToLongBits(getDuration()));
                if (hasAlgorithm()) {
                    hashCode = (((hashCode * 37) + 3) * 53) + getAlgorithm().hashCode();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return RenderingProto.internal_static_bidmachine_protobuf_RenderingFeature_BrokenCreativeDetector_AlgorithmResult_fieldAccessorTable.d(AlgorithmResult.class, Builder.class);
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
                return new AlgorithmResult();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                int i10 = this.result_;
                if (i10 != 0) {
                    codedOutputStream.H0(1, i10);
                }
                double d10 = this.duration_;
                if (d10 != 0.0d) {
                    codedOutputStream.t0(2, d10);
                }
                if (this.algorithm_ != null) {
                    codedOutputStream.L0(3, getAlgorithm());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* loaded from: classes8.dex */
            public static final class Builder extends GeneratedMessageV3.b<Builder> implements AlgorithmResultOrBuilder {
                private t1<Algorithm, Algorithm.Builder, AlgorithmOrBuilder> algorithmBuilder_;
                private Algorithm algorithm_;
                private double duration_;
                private int result_;

                private t1<Algorithm, Algorithm.Builder, AlgorithmOrBuilder> getAlgorithmFieldBuilder() {
                    if (this.algorithmBuilder_ == null) {
                        this.algorithmBuilder_ = new t1<>(getAlgorithm(), getParentForChildren(), isClean());
                        this.algorithm_ = null;
                    }
                    return this.algorithmBuilder_;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return RenderingProto.internal_static_bidmachine_protobuf_RenderingFeature_BrokenCreativeDetector_AlgorithmResult_descriptor;
                }

                private void maybeForceBuilderInitialization() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                public Builder clearAlgorithm() {
                    if (this.algorithmBuilder_ == null) {
                        this.algorithm_ = null;
                        onChanged();
                    } else {
                        this.algorithm_ = null;
                        this.algorithmBuilder_ = null;
                    }
                    return this;
                }

                public Builder clearDuration() {
                    this.duration_ = 0.0d;
                    onChanged();
                    return this;
                }

                public Builder clearResult() {
                    this.result_ = 0;
                    onChanged();
                    return this;
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.AlgorithmResultOrBuilder
                public Algorithm getAlgorithm() {
                    t1<Algorithm, Algorithm.Builder, AlgorithmOrBuilder> t1Var = this.algorithmBuilder_;
                    if (t1Var == null) {
                        Algorithm algorithm = this.algorithm_;
                        if (algorithm == null) {
                            return Algorithm.getDefaultInstance();
                        }
                        return algorithm;
                    }
                    return t1Var.e();
                }

                public Algorithm.Builder getAlgorithmBuilder() {
                    onChanged();
                    return getAlgorithmFieldBuilder().d();
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.AlgorithmResultOrBuilder
                public AlgorithmOrBuilder getAlgorithmOrBuilder() {
                    t1<Algorithm, Algorithm.Builder, AlgorithmOrBuilder> t1Var = this.algorithmBuilder_;
                    if (t1Var != null) {
                        return t1Var.f();
                    }
                    Algorithm algorithm = this.algorithm_;
                    if (algorithm == null) {
                        return Algorithm.getDefaultInstance();
                    }
                    return algorithm;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return RenderingProto.internal_static_bidmachine_protobuf_RenderingFeature_BrokenCreativeDetector_AlgorithmResult_descriptor;
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.AlgorithmResultOrBuilder
                public double getDuration() {
                    return this.duration_;
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.AlgorithmResultOrBuilder
                public int getResult() {
                    return this.result_;
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.AlgorithmResultOrBuilder
                public boolean hasAlgorithm() {
                    if (this.algorithmBuilder_ == null && this.algorithm_ == null) {
                        return false;
                    }
                    return true;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return RenderingProto.internal_static_bidmachine_protobuf_RenderingFeature_BrokenCreativeDetector_AlgorithmResult_fieldAccessorTable.d(AlgorithmResult.class, Builder.class);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public Builder mergeAlgorithm(Algorithm algorithm) {
                    t1<Algorithm, Algorithm.Builder, AlgorithmOrBuilder> t1Var = this.algorithmBuilder_;
                    if (t1Var == null) {
                        Algorithm algorithm2 = this.algorithm_;
                        if (algorithm2 != null) {
                            this.algorithm_ = Algorithm.newBuilder(algorithm2).mergeFrom(algorithm).buildPartial();
                        } else {
                            this.algorithm_ = algorithm;
                        }
                        onChanged();
                    } else {
                        t1Var.g(algorithm);
                    }
                    return this;
                }

                public Builder setAlgorithm(Algorithm algorithm) {
                    t1<Algorithm, Algorithm.Builder, AlgorithmOrBuilder> t1Var = this.algorithmBuilder_;
                    if (t1Var == null) {
                        algorithm.getClass();
                        this.algorithm_ = algorithm;
                        onChanged();
                    } else {
                        t1Var.i(algorithm);
                    }
                    return this;
                }

                public Builder setDuration(double d10) {
                    this.duration_ = d10;
                    onChanged();
                    return this;
                }

                public Builder setResult(int i10) {
                    this.result_ = i10;
                    onChanged();
                    return this;
                }

                private Builder() {
                    maybeForceBuilderInitialization();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public AlgorithmResult build() {
                    AlgorithmResult buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public AlgorithmResult buildPartial() {
                    AlgorithmResult algorithmResult = new AlgorithmResult(this);
                    algorithmResult.result_ = this.result_;
                    algorithmResult.duration_ = this.duration_;
                    t1<Algorithm, Algorithm.Builder, AlgorithmOrBuilder> t1Var = this.algorithmBuilder_;
                    if (t1Var == null) {
                        algorithmResult.algorithm_ = this.algorithm_;
                    } else {
                        algorithmResult.algorithm_ = t1Var.a();
                    }
                    onBuilt();
                    return algorithmResult;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (Builder) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                public AlgorithmResult mo4630getDefaultInstanceForType() {
                    return AlgorithmResult.getDefaultInstance();
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

                private Builder(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    maybeForceBuilderInitialization();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Builder clear() {
                    super.clear();
                    this.result_ = 0;
                    this.duration_ = 0.0d;
                    if (this.algorithmBuilder_ == null) {
                        this.algorithm_ = null;
                    } else {
                        this.algorithm_ = null;
                        this.algorithmBuilder_ = null;
                    }
                    return this;
                }

                public Builder setAlgorithm(Algorithm.Builder builder) {
                    t1<Algorithm, Algorithm.Builder, AlgorithmOrBuilder> t1Var = this.algorithmBuilder_;
                    if (t1Var == null) {
                        this.algorithm_ = builder.build();
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
                    if (message instanceof AlgorithmResult) {
                        return mergeFrom((AlgorithmResult) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder mergeFrom(AlgorithmResult algorithmResult) {
                    if (algorithmResult == AlgorithmResult.getDefaultInstance()) {
                        return this;
                    }
                    if (algorithmResult.getResult() != 0) {
                        setResult(algorithmResult.getResult());
                    }
                    if (algorithmResult.getDuration() != 0.0d) {
                        setDuration(algorithmResult.getDuration());
                    }
                    if (algorithmResult.hasAlgorithm()) {
                        mergeAlgorithm(algorithmResult.getAlgorithm());
                    }
                    mergeUnknownFields(((GeneratedMessageV3) algorithmResult).unknownFields);
                    onChanged();
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.AlgorithmResult.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.AlgorithmResult.access$1900()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        io.bidmachine.protobuf.rendering.RenderingFeature$BrokenCreativeDetector$AlgorithmResult r3 = (io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.AlgorithmResult) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                        io.bidmachine.protobuf.rendering.RenderingFeature$BrokenCreativeDetector$AlgorithmResult r4 = (io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.AlgorithmResult) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.AlgorithmResult.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.rendering.RenderingFeature$BrokenCreativeDetector$AlgorithmResult$Builder");
                }
            }

            public static Builder newBuilder(AlgorithmResult algorithmResult) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(algorithmResult);
            }

            public static AlgorithmResult parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, yVar);
            }

            private AlgorithmResult(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static AlgorithmResult parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                return (AlgorithmResult) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
            }

            public static AlgorithmResult parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public AlgorithmResult mo4630getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            public static AlgorithmResult parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, yVar);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            private AlgorithmResult() {
                this.memoizedIsInitialized = (byte) -1;
            }

            public static AlgorithmResult parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                return new Builder(cVar);
            }

            public static AlgorithmResult parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, yVar);
            }

            private AlgorithmResult(n nVar, y yVar) throws InvalidProtocolBufferException {
                this();
                yVar.getClass();
                j2.b g10 = j2.g();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            int K = nVar.K();
                            if (K != 0) {
                                if (K == 8) {
                                    this.result_ = nVar.y();
                                } else if (K == 17) {
                                    this.duration_ = nVar.s();
                                } else if (K != 26) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    Algorithm algorithm = this.algorithm_;
                                    Algorithm.Builder builder = algorithm != null ? algorithm.toBuilder() : null;
                                    Algorithm algorithm2 = (Algorithm) nVar.A(Algorithm.parser(), yVar);
                                    this.algorithm_ = algorithm2;
                                    if (builder != null) {
                                        builder.mergeFrom(algorithm2);
                                        this.algorithm_ = builder.buildPartial();
                                    }
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

            public static AlgorithmResult parseFrom(InputStream inputStream) throws IOException {
                return (AlgorithmResult) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static AlgorithmResult parseFrom(InputStream inputStream, y yVar) throws IOException {
                return (AlgorithmResult) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
            }

            public static AlgorithmResult parseFrom(n nVar) throws IOException {
                return (AlgorithmResult) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
            }

            public static AlgorithmResult parseFrom(n nVar, y yVar) throws IOException {
                return (AlgorithmResult) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
            }
        }

        /* loaded from: classes8.dex */
        public interface AlgorithmResultOrBuilder extends MessageOrBuilder {
            Algorithm getAlgorithm();

            AlgorithmOrBuilder getAlgorithmOrBuilder();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

            double getDuration();

            int getResult();

            boolean hasAlgorithm();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes8.dex */
        public static final class Configuration extends GeneratedMessageV3 implements ConfigurationOrBuilder {
            public static final int ALGORITHMS_FIELD_NUMBER = 7;
            public static final int ALLOW_DUPLICATE_FIELD_NUMBER = 4;
            public static final int DOWNSCALE_FACTOR_FIELD_NUMBER = 2;
            public static final int ERROR_ONLY_FIELD_NUMBER = 3;
            public static final int STOP_AFTER_FIELD_NUMBER = 5;
            public static final int TIMEOUT_FIELD_NUMBER = 1;
            public static final int WEIGHT_THRESHOLD_FIELD_NUMBER = 6;
            private static final long serialVersionUID = 0;
            private List<Algorithm> algorithms_;
            private boolean allowDuplicate_;
            private double downscaleFactor_;
            private boolean errorOnly_;
            private byte memoizedIsInitialized;
            private volatile Object stopAfter_;
            private double timeout_;
            private double weightThreshold_;
            private static final Configuration DEFAULT_INSTANCE = new Configuration();
            private static final j1<Configuration> PARSER = new b<Configuration>() { // from class: io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.Configuration.1
                @Override // com.explorestack.protobuf.j1
                public Configuration parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new Configuration(nVar, yVar);
                }
            };

            public static Configuration getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return RenderingProto.internal_static_bidmachine_protobuf_RenderingFeature_BrokenCreativeDetector_Configuration_descriptor;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Configuration parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Configuration) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Configuration parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static j1<Configuration> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Configuration)) {
                    return super.equals(obj);
                }
                Configuration configuration = (Configuration) obj;
                if (Double.doubleToLongBits(getTimeout()) == Double.doubleToLongBits(configuration.getTimeout()) && Double.doubleToLongBits(getDownscaleFactor()) == Double.doubleToLongBits(configuration.getDownscaleFactor()) && getErrorOnly() == configuration.getErrorOnly() && getAllowDuplicate() == configuration.getAllowDuplicate() && getStopAfter().equals(configuration.getStopAfter()) && Double.doubleToLongBits(getWeightThreshold()) == Double.doubleToLongBits(configuration.getWeightThreshold()) && getAlgorithmsList().equals(configuration.getAlgorithmsList()) && this.unknownFields.equals(configuration.unknownFields)) {
                    return true;
                }
                return false;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.ConfigurationOrBuilder
            public Algorithm getAlgorithms(int i10) {
                return this.algorithms_.get(i10);
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.ConfigurationOrBuilder
            public int getAlgorithmsCount() {
                return this.algorithms_.size();
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.ConfigurationOrBuilder
            public List<Algorithm> getAlgorithmsList() {
                return this.algorithms_;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.ConfigurationOrBuilder
            public AlgorithmOrBuilder getAlgorithmsOrBuilder(int i10) {
                return this.algorithms_.get(i10);
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.ConfigurationOrBuilder
            public List<? extends AlgorithmOrBuilder> getAlgorithmsOrBuilderList() {
                return this.algorithms_;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.ConfigurationOrBuilder
            public boolean getAllowDuplicate() {
                return this.allowDuplicate_;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.ConfigurationOrBuilder
            public double getDownscaleFactor() {
                return this.downscaleFactor_;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.ConfigurationOrBuilder
            public boolean getErrorOnly() {
                return this.errorOnly_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public j1<Configuration> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i10;
                int i11 = this.memoizedSize;
                if (i11 != -1) {
                    return i11;
                }
                double d10 = this.timeout_;
                if (d10 != 0.0d) {
                    i10 = CodedOutputStream.j(1, d10);
                } else {
                    i10 = 0;
                }
                double d11 = this.downscaleFactor_;
                if (d11 != 0.0d) {
                    i10 += CodedOutputStream.j(2, d11);
                }
                boolean z10 = this.errorOnly_;
                if (z10) {
                    i10 += CodedOutputStream.e(3, z10);
                }
                boolean z11 = this.allowDuplicate_;
                if (z11) {
                    i10 += CodedOutputStream.e(4, z11);
                }
                if (!getStopAfterBytes().isEmpty()) {
                    i10 += GeneratedMessageV3.computeStringSize(5, this.stopAfter_);
                }
                double d12 = this.weightThreshold_;
                if (d12 != 0.0d) {
                    i10 += CodedOutputStream.j(6, d12);
                }
                for (int i12 = 0; i12 < this.algorithms_.size(); i12++) {
                    i10 += CodedOutputStream.G(7, this.algorithms_.get(i12));
                }
                int serializedSize = i10 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.ConfigurationOrBuilder
            public String getStopAfter() {
                Object obj = this.stopAfter_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.stopAfter_ = stringUtf8;
                return stringUtf8;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.ConfigurationOrBuilder
            public ByteString getStopAfterBytes() {
                Object obj = this.stopAfter_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.stopAfter_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.ConfigurationOrBuilder
            public double getTimeout() {
                return this.timeout_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final j2 getUnknownFields() {
                return this.unknownFields;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.ConfigurationOrBuilder
            public double getWeightThreshold() {
                return this.weightThreshold_;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public int hashCode() {
                int i10 = this.memoizedHashCode;
                if (i10 != 0) {
                    return i10;
                }
                int hashCode = ((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + i0.i(Double.doubleToLongBits(getTimeout()))) * 37) + 2) * 53) + i0.i(Double.doubleToLongBits(getDownscaleFactor()))) * 37) + 3) * 53) + i0.d(getErrorOnly())) * 37) + 4) * 53) + i0.d(getAllowDuplicate())) * 37) + 5) * 53) + getStopAfter().hashCode()) * 37) + 6) * 53) + i0.i(Double.doubleToLongBits(getWeightThreshold()));
                if (getAlgorithmsCount() > 0) {
                    hashCode = (((hashCode * 37) + 7) * 53) + getAlgorithmsList().hashCode();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return RenderingProto.internal_static_bidmachine_protobuf_RenderingFeature_BrokenCreativeDetector_Configuration_fieldAccessorTable.d(Configuration.class, Builder.class);
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
                return new Configuration();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                double d10 = this.timeout_;
                if (d10 != 0.0d) {
                    codedOutputStream.t0(1, d10);
                }
                double d11 = this.downscaleFactor_;
                if (d11 != 0.0d) {
                    codedOutputStream.t0(2, d11);
                }
                boolean z10 = this.errorOnly_;
                if (z10) {
                    codedOutputStream.n0(3, z10);
                }
                boolean z11 = this.allowDuplicate_;
                if (z11) {
                    codedOutputStream.n0(4, z11);
                }
                if (!getStopAfterBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 5, this.stopAfter_);
                }
                double d12 = this.weightThreshold_;
                if (d12 != 0.0d) {
                    codedOutputStream.t0(6, d12);
                }
                for (int i10 = 0; i10 < this.algorithms_.size(); i10++) {
                    codedOutputStream.L0(7, this.algorithms_.get(i10));
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* loaded from: classes8.dex */
            public static final class Builder extends GeneratedMessageV3.b<Builder> implements ConfigurationOrBuilder {
                private p1<Algorithm, Algorithm.Builder, AlgorithmOrBuilder> algorithmsBuilder_;
                private List<Algorithm> algorithms_;
                private boolean allowDuplicate_;
                private int bitField0_;
                private double downscaleFactor_;
                private boolean errorOnly_;
                private Object stopAfter_;
                private double timeout_;
                private double weightThreshold_;

                private void ensureAlgorithmsIsMutable() {
                    if ((this.bitField0_ & 1) == 0) {
                        this.algorithms_ = new ArrayList(this.algorithms_);
                        this.bitField0_ |= 1;
                    }
                }

                private p1<Algorithm, Algorithm.Builder, AlgorithmOrBuilder> getAlgorithmsFieldBuilder() {
                    if (this.algorithmsBuilder_ == null) {
                        List<Algorithm> list = this.algorithms_;
                        boolean z10 = true;
                        if ((this.bitField0_ & 1) == 0) {
                            z10 = false;
                        }
                        this.algorithmsBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                        this.algorithms_ = null;
                    }
                    return this.algorithmsBuilder_;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return RenderingProto.internal_static_bidmachine_protobuf_RenderingFeature_BrokenCreativeDetector_Configuration_descriptor;
                }

                private void maybeForceBuilderInitialization() {
                    if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                        getAlgorithmsFieldBuilder();
                    }
                }

                public Builder addAlgorithms(Algorithm algorithm) {
                    p1<Algorithm, Algorithm.Builder, AlgorithmOrBuilder> p1Var = this.algorithmsBuilder_;
                    if (p1Var == null) {
                        algorithm.getClass();
                        ensureAlgorithmsIsMutable();
                        this.algorithms_.add(algorithm);
                        onChanged();
                    } else {
                        p1Var.e(algorithm);
                    }
                    return this;
                }

                public Algorithm.Builder addAlgorithmsBuilder() {
                    return getAlgorithmsFieldBuilder().c(Algorithm.getDefaultInstance());
                }

                public Builder addAllAlgorithms(Iterable<? extends Algorithm> iterable) {
                    p1<Algorithm, Algorithm.Builder, AlgorithmOrBuilder> p1Var = this.algorithmsBuilder_;
                    if (p1Var == null) {
                        ensureAlgorithmsIsMutable();
                        a.AbstractC0246a.addAll((Iterable) iterable, (List) this.algorithms_);
                        onChanged();
                    } else {
                        p1Var.a(iterable);
                    }
                    return this;
                }

                public Builder clearAlgorithms() {
                    p1<Algorithm, Algorithm.Builder, AlgorithmOrBuilder> p1Var = this.algorithmsBuilder_;
                    if (p1Var == null) {
                        this.algorithms_ = Collections.emptyList();
                        this.bitField0_ &= -2;
                        onChanged();
                    } else {
                        p1Var.g();
                    }
                    return this;
                }

                public Builder clearAllowDuplicate() {
                    this.allowDuplicate_ = false;
                    onChanged();
                    return this;
                }

                public Builder clearDownscaleFactor() {
                    this.downscaleFactor_ = 0.0d;
                    onChanged();
                    return this;
                }

                public Builder clearErrorOnly() {
                    this.errorOnly_ = false;
                    onChanged();
                    return this;
                }

                public Builder clearStopAfter() {
                    this.stopAfter_ = Configuration.getDefaultInstance().getStopAfter();
                    onChanged();
                    return this;
                }

                public Builder clearTimeout() {
                    this.timeout_ = 0.0d;
                    onChanged();
                    return this;
                }

                public Builder clearWeightThreshold() {
                    this.weightThreshold_ = 0.0d;
                    onChanged();
                    return this;
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.ConfigurationOrBuilder
                public Algorithm getAlgorithms(int i10) {
                    p1<Algorithm, Algorithm.Builder, AlgorithmOrBuilder> p1Var = this.algorithmsBuilder_;
                    if (p1Var == null) {
                        return this.algorithms_.get(i10);
                    }
                    return p1Var.n(i10);
                }

                public Algorithm.Builder getAlgorithmsBuilder(int i10) {
                    return getAlgorithmsFieldBuilder().k(i10);
                }

                public List<Algorithm.Builder> getAlgorithmsBuilderList() {
                    return getAlgorithmsFieldBuilder().l();
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.ConfigurationOrBuilder
                public int getAlgorithmsCount() {
                    p1<Algorithm, Algorithm.Builder, AlgorithmOrBuilder> p1Var = this.algorithmsBuilder_;
                    if (p1Var == null) {
                        return this.algorithms_.size();
                    }
                    return p1Var.m();
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.ConfigurationOrBuilder
                public List<Algorithm> getAlgorithmsList() {
                    p1<Algorithm, Algorithm.Builder, AlgorithmOrBuilder> p1Var = this.algorithmsBuilder_;
                    if (p1Var == null) {
                        return Collections.unmodifiableList(this.algorithms_);
                    }
                    return p1Var.p();
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.ConfigurationOrBuilder
                public AlgorithmOrBuilder getAlgorithmsOrBuilder(int i10) {
                    p1<Algorithm, Algorithm.Builder, AlgorithmOrBuilder> p1Var = this.algorithmsBuilder_;
                    if (p1Var == null) {
                        return this.algorithms_.get(i10);
                    }
                    return p1Var.q(i10);
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.ConfigurationOrBuilder
                public List<? extends AlgorithmOrBuilder> getAlgorithmsOrBuilderList() {
                    p1<Algorithm, Algorithm.Builder, AlgorithmOrBuilder> p1Var = this.algorithmsBuilder_;
                    if (p1Var != null) {
                        return p1Var.r();
                    }
                    return Collections.unmodifiableList(this.algorithms_);
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.ConfigurationOrBuilder
                public boolean getAllowDuplicate() {
                    return this.allowDuplicate_;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return RenderingProto.internal_static_bidmachine_protobuf_RenderingFeature_BrokenCreativeDetector_Configuration_descriptor;
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.ConfigurationOrBuilder
                public double getDownscaleFactor() {
                    return this.downscaleFactor_;
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.ConfigurationOrBuilder
                public boolean getErrorOnly() {
                    return this.errorOnly_;
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.ConfigurationOrBuilder
                public String getStopAfter() {
                    Object obj = this.stopAfter_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.stopAfter_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.ConfigurationOrBuilder
                public ByteString getStopAfterBytes() {
                    Object obj = this.stopAfter_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.stopAfter_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.ConfigurationOrBuilder
                public double getTimeout() {
                    return this.timeout_;
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.ConfigurationOrBuilder
                public double getWeightThreshold() {
                    return this.weightThreshold_;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return RenderingProto.internal_static_bidmachine_protobuf_RenderingFeature_BrokenCreativeDetector_Configuration_fieldAccessorTable.d(Configuration.class, Builder.class);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public Builder removeAlgorithms(int i10) {
                    p1<Algorithm, Algorithm.Builder, AlgorithmOrBuilder> p1Var = this.algorithmsBuilder_;
                    if (p1Var == null) {
                        ensureAlgorithmsIsMutable();
                        this.algorithms_.remove(i10);
                        onChanged();
                    } else {
                        p1Var.v(i10);
                    }
                    return this;
                }

                public Builder setAlgorithms(int i10, Algorithm algorithm) {
                    p1<Algorithm, Algorithm.Builder, AlgorithmOrBuilder> p1Var = this.algorithmsBuilder_;
                    if (p1Var == null) {
                        algorithm.getClass();
                        ensureAlgorithmsIsMutable();
                        this.algorithms_.set(i10, algorithm);
                        onChanged();
                    } else {
                        p1Var.w(i10, algorithm);
                    }
                    return this;
                }

                public Builder setAllowDuplicate(boolean z10) {
                    this.allowDuplicate_ = z10;
                    onChanged();
                    return this;
                }

                public Builder setDownscaleFactor(double d10) {
                    this.downscaleFactor_ = d10;
                    onChanged();
                    return this;
                }

                public Builder setErrorOnly(boolean z10) {
                    this.errorOnly_ = z10;
                    onChanged();
                    return this;
                }

                public Builder setStopAfter(String str) {
                    str.getClass();
                    this.stopAfter_ = str;
                    onChanged();
                    return this;
                }

                public Builder setStopAfterBytes(ByteString byteString) {
                    byteString.getClass();
                    a.checkByteStringIsUtf8(byteString);
                    this.stopAfter_ = byteString;
                    onChanged();
                    return this;
                }

                public Builder setTimeout(double d10) {
                    this.timeout_ = d10;
                    onChanged();
                    return this;
                }

                public Builder setWeightThreshold(double d10) {
                    this.weightThreshold_ = d10;
                    onChanged();
                    return this;
                }

                private Builder() {
                    this.stopAfter_ = "";
                    this.algorithms_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Configuration build() {
                    Configuration buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Configuration buildPartial() {
                    Configuration configuration = new Configuration(this);
                    configuration.timeout_ = this.timeout_;
                    configuration.downscaleFactor_ = this.downscaleFactor_;
                    configuration.errorOnly_ = this.errorOnly_;
                    configuration.allowDuplicate_ = this.allowDuplicate_;
                    configuration.stopAfter_ = this.stopAfter_;
                    configuration.weightThreshold_ = this.weightThreshold_;
                    p1<Algorithm, Algorithm.Builder, AlgorithmOrBuilder> p1Var = this.algorithmsBuilder_;
                    if (p1Var != null) {
                        configuration.algorithms_ = p1Var.f();
                    } else {
                        if ((this.bitField0_ & 1) != 0) {
                            this.algorithms_ = Collections.unmodifiableList(this.algorithms_);
                            this.bitField0_ &= -2;
                        }
                        configuration.algorithms_ = this.algorithms_;
                    }
                    onBuilt();
                    return configuration;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (Builder) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                public Configuration mo4630getDefaultInstanceForType() {
                    return Configuration.getDefaultInstance();
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

                public Algorithm.Builder addAlgorithmsBuilder(int i10) {
                    return getAlgorithmsFieldBuilder().b(i10, Algorithm.getDefaultInstance());
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
                    this.timeout_ = 0.0d;
                    this.downscaleFactor_ = 0.0d;
                    this.errorOnly_ = false;
                    this.allowDuplicate_ = false;
                    this.stopAfter_ = "";
                    this.weightThreshold_ = 0.0d;
                    p1<Algorithm, Algorithm.Builder, AlgorithmOrBuilder> p1Var = this.algorithmsBuilder_;
                    if (p1Var == null) {
                        this.algorithms_ = Collections.emptyList();
                        this.bitField0_ &= -2;
                    } else {
                        p1Var.g();
                    }
                    return this;
                }

                private Builder(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.stopAfter_ = "";
                    this.algorithms_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                public Builder addAlgorithms(int i10, Algorithm algorithm) {
                    p1<Algorithm, Algorithm.Builder, AlgorithmOrBuilder> p1Var = this.algorithmsBuilder_;
                    if (p1Var == null) {
                        algorithm.getClass();
                        ensureAlgorithmsIsMutable();
                        this.algorithms_.add(i10, algorithm);
                        onChanged();
                    } else {
                        p1Var.d(i10, algorithm);
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
                    if (message instanceof Configuration) {
                        return mergeFrom((Configuration) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder setAlgorithms(int i10, Algorithm.Builder builder) {
                    p1<Algorithm, Algorithm.Builder, AlgorithmOrBuilder> p1Var = this.algorithmsBuilder_;
                    if (p1Var == null) {
                        ensureAlgorithmsIsMutable();
                        this.algorithms_.set(i10, builder.build());
                        onChanged();
                    } else {
                        p1Var.w(i10, builder.build());
                    }
                    return this;
                }

                public Builder mergeFrom(Configuration configuration) {
                    if (configuration == Configuration.getDefaultInstance()) {
                        return this;
                    }
                    if (configuration.getTimeout() != 0.0d) {
                        setTimeout(configuration.getTimeout());
                    }
                    if (configuration.getDownscaleFactor() != 0.0d) {
                        setDownscaleFactor(configuration.getDownscaleFactor());
                    }
                    if (configuration.getErrorOnly()) {
                        setErrorOnly(configuration.getErrorOnly());
                    }
                    if (configuration.getAllowDuplicate()) {
                        setAllowDuplicate(configuration.getAllowDuplicate());
                    }
                    if (!configuration.getStopAfter().isEmpty()) {
                        this.stopAfter_ = configuration.stopAfter_;
                        onChanged();
                    }
                    if (configuration.getWeightThreshold() != 0.0d) {
                        setWeightThreshold(configuration.getWeightThreshold());
                    }
                    if (this.algorithmsBuilder_ == null) {
                        if (!configuration.algorithms_.isEmpty()) {
                            if (this.algorithms_.isEmpty()) {
                                this.algorithms_ = configuration.algorithms_;
                                this.bitField0_ &= -2;
                            } else {
                                ensureAlgorithmsIsMutable();
                                this.algorithms_.addAll(configuration.algorithms_);
                            }
                            onChanged();
                        }
                    } else if (!configuration.algorithms_.isEmpty()) {
                        if (!this.algorithmsBuilder_.t()) {
                            this.algorithmsBuilder_.a(configuration.algorithms_);
                        } else {
                            this.algorithmsBuilder_.h();
                            this.algorithmsBuilder_ = null;
                            this.algorithms_ = configuration.algorithms_;
                            this.bitField0_ &= -2;
                            this.algorithmsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getAlgorithmsFieldBuilder() : null;
                        }
                    }
                    mergeUnknownFields(((GeneratedMessageV3) configuration).unknownFields);
                    onChanged();
                    return this;
                }

                public Builder addAlgorithms(Algorithm.Builder builder) {
                    p1<Algorithm, Algorithm.Builder, AlgorithmOrBuilder> p1Var = this.algorithmsBuilder_;
                    if (p1Var == null) {
                        ensureAlgorithmsIsMutable();
                        this.algorithms_.add(builder.build());
                        onChanged();
                    } else {
                        p1Var.e(builder.build());
                    }
                    return this;
                }

                public Builder addAlgorithms(int i10, Algorithm.Builder builder) {
                    p1<Algorithm, Algorithm.Builder, AlgorithmOrBuilder> p1Var = this.algorithmsBuilder_;
                    if (p1Var == null) {
                        ensureAlgorithmsIsMutable();
                        this.algorithms_.add(i10, builder.build());
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
                public io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.Configuration.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.Configuration.access$4800()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        io.bidmachine.protobuf.rendering.RenderingFeature$BrokenCreativeDetector$Configuration r3 = (io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.Configuration) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                        io.bidmachine.protobuf.rendering.RenderingFeature$BrokenCreativeDetector$Configuration r4 = (io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.Configuration) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.Configuration.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.rendering.RenderingFeature$BrokenCreativeDetector$Configuration$Builder");
                }
            }

            public static Builder newBuilder(Configuration configuration) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(configuration);
            }

            public static Configuration parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, yVar);
            }

            private Configuration(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static Configuration parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                return (Configuration) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
            }

            public static Configuration parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public Configuration mo4630getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            public static Configuration parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, yVar);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            private Configuration() {
                this.memoizedIsInitialized = (byte) -1;
                this.stopAfter_ = "";
                this.algorithms_ = Collections.emptyList();
            }

            public static Configuration parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                return new Builder(cVar);
            }

            public static Configuration parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, yVar);
            }

            public static Configuration parseFrom(InputStream inputStream) throws IOException {
                return (Configuration) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            /* JADX WARN: Multi-variable type inference failed */
            private Configuration(n nVar, y yVar) throws InvalidProtocolBufferException {
                this();
                yVar.getClass();
                j2.b g10 = j2.g();
                boolean z10 = false;
                boolean z11 = false;
                while (!z10) {
                    try {
                        try {
                            try {
                                int K = nVar.K();
                                if (K != 0) {
                                    if (K == 9) {
                                        this.timeout_ = nVar.s();
                                    } else if (K == 17) {
                                        this.downscaleFactor_ = nVar.s();
                                    } else if (K == 24) {
                                        this.errorOnly_ = nVar.q();
                                    } else if (K == 32) {
                                        this.allowDuplicate_ = nVar.q();
                                    } else if (K == 42) {
                                        this.stopAfter_ = nVar.J();
                                    } else if (K == 49) {
                                        this.weightThreshold_ = nVar.s();
                                    } else if (K != 58) {
                                        if (!parseUnknownField(nVar, g10, yVar, K)) {
                                        }
                                    } else {
                                        if (!z11) {
                                            this.algorithms_ = new ArrayList();
                                            z11 = true;
                                        }
                                        this.algorithms_.add(nVar.A(Algorithm.parser(), yVar));
                                    }
                                }
                                z10 = true;
                            } catch (InvalidProtocolBufferException e10) {
                                throw e10.setUnfinishedMessage(this);
                            }
                        } catch (IOException e11) {
                            throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                        }
                    } catch (Throwable th2) {
                        if (z11) {
                            this.algorithms_ = Collections.unmodifiableList(this.algorithms_);
                        }
                        this.unknownFields = g10.build();
                        makeExtensionsImmutable();
                        throw th2;
                    }
                }
                if (z11) {
                    this.algorithms_ = Collections.unmodifiableList(this.algorithms_);
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
            }

            public static Configuration parseFrom(InputStream inputStream, y yVar) throws IOException {
                return (Configuration) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
            }

            public static Configuration parseFrom(n nVar) throws IOException {
                return (Configuration) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
            }

            public static Configuration parseFrom(n nVar, y yVar) throws IOException {
                return (Configuration) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
            }
        }

        /* loaded from: classes8.dex */
        public interface ConfigurationOrBuilder extends MessageOrBuilder {
            Algorithm getAlgorithms(int i10);

            int getAlgorithmsCount();

            List<Algorithm> getAlgorithmsList();

            AlgorithmOrBuilder getAlgorithmsOrBuilder(int i10);

            List<? extends AlgorithmOrBuilder> getAlgorithmsOrBuilderList();

            boolean getAllowDuplicate();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

            double getDownscaleFactor();

            boolean getErrorOnly();

            String getStopAfter();

            ByteString getStopAfterBytes();

            double getTimeout();

            double getWeightThreshold();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes8.dex */
        public static final class Event extends GeneratedMessageV3 implements EventOrBuilder {
            public static final int ALGORITHMS_RESULTS_FIELD_NUMBER = 5;
            public static final int COMPONENT_FIELD_NUMBER = 4;
            public static final int DURATION_FIELD_NUMBER = 3;
            public static final int PHASE_FIELD_NUMBER = 1;
            public static final int RESULT_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private List<AlgorithmResult> algorithmsResults_;
            private volatile Object component_;
            private double duration_;
            private byte memoizedIsInitialized;
            private int phase_;
            private int result_;
            private static final Event DEFAULT_INSTANCE = new Event();
            private static final j1<Event> PARSER = new b<Event>() { // from class: io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.Event.1
                @Override // com.explorestack.protobuf.j1
                public Event parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new Event(nVar, yVar);
                }
            };

            public static Event getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return RenderingProto.internal_static_bidmachine_protobuf_RenderingFeature_BrokenCreativeDetector_Event_descriptor;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Event parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Event) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Event parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static j1<Event> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Event)) {
                    return super.equals(obj);
                }
                Event event = (Event) obj;
                if (getPhase() == event.getPhase() && getResult() == event.getResult() && Double.doubleToLongBits(getDuration()) == Double.doubleToLongBits(event.getDuration()) && getComponent().equals(event.getComponent()) && getAlgorithmsResultsList().equals(event.getAlgorithmsResultsList()) && this.unknownFields.equals(event.unknownFields)) {
                    return true;
                }
                return false;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.EventOrBuilder
            public AlgorithmResult getAlgorithmsResults(int i10) {
                return this.algorithmsResults_.get(i10);
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.EventOrBuilder
            public int getAlgorithmsResultsCount() {
                return this.algorithmsResults_.size();
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.EventOrBuilder
            public List<AlgorithmResult> getAlgorithmsResultsList() {
                return this.algorithmsResults_;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.EventOrBuilder
            public AlgorithmResultOrBuilder getAlgorithmsResultsOrBuilder(int i10) {
                return this.algorithmsResults_.get(i10);
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.EventOrBuilder
            public List<? extends AlgorithmResultOrBuilder> getAlgorithmsResultsOrBuilderList() {
                return this.algorithmsResults_;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.EventOrBuilder
            public String getComponent() {
                Object obj = this.component_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.component_ = stringUtf8;
                return stringUtf8;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.EventOrBuilder
            public ByteString getComponentBytes() {
                Object obj = this.component_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.component_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.EventOrBuilder
            public double getDuration() {
                return this.duration_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public j1<Event> getParserForType() {
                return PARSER;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.EventOrBuilder
            public int getPhase() {
                return this.phase_;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.EventOrBuilder
            public int getResult() {
                return this.result_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i10;
                int i11 = this.memoizedSize;
                if (i11 != -1) {
                    return i11;
                }
                int i12 = this.phase_;
                if (i12 != 0) {
                    i10 = CodedOutputStream.x(1, i12);
                } else {
                    i10 = 0;
                }
                int i13 = this.result_;
                if (i13 != 0) {
                    i10 += CodedOutputStream.x(2, i13);
                }
                double d10 = this.duration_;
                if (d10 != 0.0d) {
                    i10 += CodedOutputStream.j(3, d10);
                }
                if (!getComponentBytes().isEmpty()) {
                    i10 += GeneratedMessageV3.computeStringSize(4, this.component_);
                }
                for (int i14 = 0; i14 < this.algorithmsResults_.size(); i14++) {
                    i10 += CodedOutputStream.G(5, this.algorithmsResults_.get(i14));
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
                int hashCode = ((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getPhase()) * 37) + 2) * 53) + getResult()) * 37) + 3) * 53) + i0.i(Double.doubleToLongBits(getDuration()))) * 37) + 4) * 53) + getComponent().hashCode();
                if (getAlgorithmsResultsCount() > 0) {
                    hashCode = (((hashCode * 37) + 5) * 53) + getAlgorithmsResultsList().hashCode();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return RenderingProto.internal_static_bidmachine_protobuf_RenderingFeature_BrokenCreativeDetector_Event_fieldAccessorTable.d(Event.class, Builder.class);
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
                return new Event();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                int i10 = this.phase_;
                if (i10 != 0) {
                    codedOutputStream.H0(1, i10);
                }
                int i11 = this.result_;
                if (i11 != 0) {
                    codedOutputStream.H0(2, i11);
                }
                double d10 = this.duration_;
                if (d10 != 0.0d) {
                    codedOutputStream.t0(3, d10);
                }
                if (!getComponentBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 4, this.component_);
                }
                for (int i12 = 0; i12 < this.algorithmsResults_.size(); i12++) {
                    codedOutputStream.L0(5, this.algorithmsResults_.get(i12));
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* loaded from: classes8.dex */
            public static final class Builder extends GeneratedMessageV3.b<Builder> implements EventOrBuilder {
                private p1<AlgorithmResult, AlgorithmResult.Builder, AlgorithmResultOrBuilder> algorithmsResultsBuilder_;
                private List<AlgorithmResult> algorithmsResults_;
                private int bitField0_;
                private Object component_;
                private double duration_;
                private int phase_;
                private int result_;

                private void ensureAlgorithmsResultsIsMutable() {
                    if ((this.bitField0_ & 1) == 0) {
                        this.algorithmsResults_ = new ArrayList(this.algorithmsResults_);
                        this.bitField0_ |= 1;
                    }
                }

                private p1<AlgorithmResult, AlgorithmResult.Builder, AlgorithmResultOrBuilder> getAlgorithmsResultsFieldBuilder() {
                    if (this.algorithmsResultsBuilder_ == null) {
                        List<AlgorithmResult> list = this.algorithmsResults_;
                        boolean z10 = true;
                        if ((this.bitField0_ & 1) == 0) {
                            z10 = false;
                        }
                        this.algorithmsResultsBuilder_ = new p1<>(list, z10, getParentForChildren(), isClean());
                        this.algorithmsResults_ = null;
                    }
                    return this.algorithmsResultsBuilder_;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return RenderingProto.internal_static_bidmachine_protobuf_RenderingFeature_BrokenCreativeDetector_Event_descriptor;
                }

                private void maybeForceBuilderInitialization() {
                    if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                        getAlgorithmsResultsFieldBuilder();
                    }
                }

                public Builder addAlgorithmsResults(AlgorithmResult algorithmResult) {
                    p1<AlgorithmResult, AlgorithmResult.Builder, AlgorithmResultOrBuilder> p1Var = this.algorithmsResultsBuilder_;
                    if (p1Var == null) {
                        algorithmResult.getClass();
                        ensureAlgorithmsResultsIsMutable();
                        this.algorithmsResults_.add(algorithmResult);
                        onChanged();
                    } else {
                        p1Var.e(algorithmResult);
                    }
                    return this;
                }

                public AlgorithmResult.Builder addAlgorithmsResultsBuilder() {
                    return getAlgorithmsResultsFieldBuilder().c(AlgorithmResult.getDefaultInstance());
                }

                public Builder addAllAlgorithmsResults(Iterable<? extends AlgorithmResult> iterable) {
                    p1<AlgorithmResult, AlgorithmResult.Builder, AlgorithmResultOrBuilder> p1Var = this.algorithmsResultsBuilder_;
                    if (p1Var == null) {
                        ensureAlgorithmsResultsIsMutable();
                        a.AbstractC0246a.addAll((Iterable) iterable, (List) this.algorithmsResults_);
                        onChanged();
                    } else {
                        p1Var.a(iterable);
                    }
                    return this;
                }

                public Builder clearAlgorithmsResults() {
                    p1<AlgorithmResult, AlgorithmResult.Builder, AlgorithmResultOrBuilder> p1Var = this.algorithmsResultsBuilder_;
                    if (p1Var == null) {
                        this.algorithmsResults_ = Collections.emptyList();
                        this.bitField0_ &= -2;
                        onChanged();
                    } else {
                        p1Var.g();
                    }
                    return this;
                }

                public Builder clearComponent() {
                    this.component_ = Event.getDefaultInstance().getComponent();
                    onChanged();
                    return this;
                }

                public Builder clearDuration() {
                    this.duration_ = 0.0d;
                    onChanged();
                    return this;
                }

                public Builder clearPhase() {
                    this.phase_ = 0;
                    onChanged();
                    return this;
                }

                public Builder clearResult() {
                    this.result_ = 0;
                    onChanged();
                    return this;
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.EventOrBuilder
                public AlgorithmResult getAlgorithmsResults(int i10) {
                    p1<AlgorithmResult, AlgorithmResult.Builder, AlgorithmResultOrBuilder> p1Var = this.algorithmsResultsBuilder_;
                    if (p1Var == null) {
                        return this.algorithmsResults_.get(i10);
                    }
                    return p1Var.n(i10);
                }

                public AlgorithmResult.Builder getAlgorithmsResultsBuilder(int i10) {
                    return getAlgorithmsResultsFieldBuilder().k(i10);
                }

                public List<AlgorithmResult.Builder> getAlgorithmsResultsBuilderList() {
                    return getAlgorithmsResultsFieldBuilder().l();
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.EventOrBuilder
                public int getAlgorithmsResultsCount() {
                    p1<AlgorithmResult, AlgorithmResult.Builder, AlgorithmResultOrBuilder> p1Var = this.algorithmsResultsBuilder_;
                    if (p1Var == null) {
                        return this.algorithmsResults_.size();
                    }
                    return p1Var.m();
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.EventOrBuilder
                public List<AlgorithmResult> getAlgorithmsResultsList() {
                    p1<AlgorithmResult, AlgorithmResult.Builder, AlgorithmResultOrBuilder> p1Var = this.algorithmsResultsBuilder_;
                    if (p1Var == null) {
                        return Collections.unmodifiableList(this.algorithmsResults_);
                    }
                    return p1Var.p();
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.EventOrBuilder
                public AlgorithmResultOrBuilder getAlgorithmsResultsOrBuilder(int i10) {
                    p1<AlgorithmResult, AlgorithmResult.Builder, AlgorithmResultOrBuilder> p1Var = this.algorithmsResultsBuilder_;
                    if (p1Var == null) {
                        return this.algorithmsResults_.get(i10);
                    }
                    return p1Var.q(i10);
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.EventOrBuilder
                public List<? extends AlgorithmResultOrBuilder> getAlgorithmsResultsOrBuilderList() {
                    p1<AlgorithmResult, AlgorithmResult.Builder, AlgorithmResultOrBuilder> p1Var = this.algorithmsResultsBuilder_;
                    if (p1Var != null) {
                        return p1Var.r();
                    }
                    return Collections.unmodifiableList(this.algorithmsResults_);
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.EventOrBuilder
                public String getComponent() {
                    Object obj = this.component_;
                    if (!(obj instanceof String)) {
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.component_ = stringUtf8;
                        return stringUtf8;
                    }
                    return (String) obj;
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.EventOrBuilder
                public ByteString getComponentBytes() {
                    Object obj = this.component_;
                    if (obj instanceof String) {
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.component_ = copyFromUtf8;
                        return copyFromUtf8;
                    }
                    return (ByteString) obj;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return RenderingProto.internal_static_bidmachine_protobuf_RenderingFeature_BrokenCreativeDetector_Event_descriptor;
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.EventOrBuilder
                public double getDuration() {
                    return this.duration_;
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.EventOrBuilder
                public int getPhase() {
                    return this.phase_;
                }

                @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.EventOrBuilder
                public int getResult() {
                    return this.result_;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return RenderingProto.internal_static_bidmachine_protobuf_RenderingFeature_BrokenCreativeDetector_Event_fieldAccessorTable.d(Event.class, Builder.class);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public Builder removeAlgorithmsResults(int i10) {
                    p1<AlgorithmResult, AlgorithmResult.Builder, AlgorithmResultOrBuilder> p1Var = this.algorithmsResultsBuilder_;
                    if (p1Var == null) {
                        ensureAlgorithmsResultsIsMutable();
                        this.algorithmsResults_.remove(i10);
                        onChanged();
                    } else {
                        p1Var.v(i10);
                    }
                    return this;
                }

                public Builder setAlgorithmsResults(int i10, AlgorithmResult algorithmResult) {
                    p1<AlgorithmResult, AlgorithmResult.Builder, AlgorithmResultOrBuilder> p1Var = this.algorithmsResultsBuilder_;
                    if (p1Var == null) {
                        algorithmResult.getClass();
                        ensureAlgorithmsResultsIsMutable();
                        this.algorithmsResults_.set(i10, algorithmResult);
                        onChanged();
                    } else {
                        p1Var.w(i10, algorithmResult);
                    }
                    return this;
                }

                public Builder setComponent(String str) {
                    str.getClass();
                    this.component_ = str;
                    onChanged();
                    return this;
                }

                public Builder setComponentBytes(ByteString byteString) {
                    byteString.getClass();
                    a.checkByteStringIsUtf8(byteString);
                    this.component_ = byteString;
                    onChanged();
                    return this;
                }

                public Builder setDuration(double d10) {
                    this.duration_ = d10;
                    onChanged();
                    return this;
                }

                public Builder setPhase(int i10) {
                    this.phase_ = i10;
                    onChanged();
                    return this;
                }

                public Builder setResult(int i10) {
                    this.result_ = i10;
                    onChanged();
                    return this;
                }

                private Builder() {
                    this.component_ = "";
                    this.algorithmsResults_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Event build() {
                    Event buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public Event buildPartial() {
                    Event event = new Event(this);
                    event.phase_ = this.phase_;
                    event.result_ = this.result_;
                    event.duration_ = this.duration_;
                    event.component_ = this.component_;
                    p1<AlgorithmResult, AlgorithmResult.Builder, AlgorithmResultOrBuilder> p1Var = this.algorithmsResultsBuilder_;
                    if (p1Var != null) {
                        event.algorithmsResults_ = p1Var.f();
                    } else {
                        if ((this.bitField0_ & 1) != 0) {
                            this.algorithmsResults_ = Collections.unmodifiableList(this.algorithmsResults_);
                            this.bitField0_ &= -2;
                        }
                        event.algorithmsResults_ = this.algorithmsResults_;
                    }
                    onBuilt();
                    return event;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (Builder) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: getDefaultInstanceForType */
                public Event mo4630getDefaultInstanceForType() {
                    return Event.getDefaultInstance();
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

                public AlgorithmResult.Builder addAlgorithmsResultsBuilder(int i10) {
                    return getAlgorithmsResultsFieldBuilder().b(i10, AlgorithmResult.getDefaultInstance());
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
                    this.phase_ = 0;
                    this.result_ = 0;
                    this.duration_ = 0.0d;
                    this.component_ = "";
                    p1<AlgorithmResult, AlgorithmResult.Builder, AlgorithmResultOrBuilder> p1Var = this.algorithmsResultsBuilder_;
                    if (p1Var == null) {
                        this.algorithmsResults_ = Collections.emptyList();
                        this.bitField0_ &= -2;
                    } else {
                        p1Var.g();
                    }
                    return this;
                }

                private Builder(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.component_ = "";
                    this.algorithmsResults_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                public Builder addAlgorithmsResults(int i10, AlgorithmResult algorithmResult) {
                    p1<AlgorithmResult, AlgorithmResult.Builder, AlgorithmResultOrBuilder> p1Var = this.algorithmsResultsBuilder_;
                    if (p1Var == null) {
                        algorithmResult.getClass();
                        ensureAlgorithmsResultsIsMutable();
                        this.algorithmsResults_.add(i10, algorithmResult);
                        onChanged();
                    } else {
                        p1Var.d(i10, algorithmResult);
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
                    if (message instanceof Event) {
                        return mergeFrom((Event) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public Builder setAlgorithmsResults(int i10, AlgorithmResult.Builder builder) {
                    p1<AlgorithmResult, AlgorithmResult.Builder, AlgorithmResultOrBuilder> p1Var = this.algorithmsResultsBuilder_;
                    if (p1Var == null) {
                        ensureAlgorithmsResultsIsMutable();
                        this.algorithmsResults_.set(i10, builder.build());
                        onChanged();
                    } else {
                        p1Var.w(i10, builder.build());
                    }
                    return this;
                }

                public Builder mergeFrom(Event event) {
                    if (event == Event.getDefaultInstance()) {
                        return this;
                    }
                    if (event.getPhase() != 0) {
                        setPhase(event.getPhase());
                    }
                    if (event.getResult() != 0) {
                        setResult(event.getResult());
                    }
                    if (event.getDuration() != 0.0d) {
                        setDuration(event.getDuration());
                    }
                    if (!event.getComponent().isEmpty()) {
                        this.component_ = event.component_;
                        onChanged();
                    }
                    if (this.algorithmsResultsBuilder_ == null) {
                        if (!event.algorithmsResults_.isEmpty()) {
                            if (this.algorithmsResults_.isEmpty()) {
                                this.algorithmsResults_ = event.algorithmsResults_;
                                this.bitField0_ &= -2;
                            } else {
                                ensureAlgorithmsResultsIsMutable();
                                this.algorithmsResults_.addAll(event.algorithmsResults_);
                            }
                            onChanged();
                        }
                    } else if (!event.algorithmsResults_.isEmpty()) {
                        if (!this.algorithmsResultsBuilder_.t()) {
                            this.algorithmsResultsBuilder_.a(event.algorithmsResults_);
                        } else {
                            this.algorithmsResultsBuilder_.h();
                            this.algorithmsResultsBuilder_ = null;
                            this.algorithmsResults_ = event.algorithmsResults_;
                            this.bitField0_ &= -2;
                            this.algorithmsResultsBuilder_ = GeneratedMessageV3.alwaysUseFieldBuilders ? getAlgorithmsResultsFieldBuilder() : null;
                        }
                    }
                    mergeUnknownFields(((GeneratedMessageV3) event).unknownFields);
                    onChanged();
                    return this;
                }

                public Builder addAlgorithmsResults(AlgorithmResult.Builder builder) {
                    p1<AlgorithmResult, AlgorithmResult.Builder, AlgorithmResultOrBuilder> p1Var = this.algorithmsResultsBuilder_;
                    if (p1Var == null) {
                        ensureAlgorithmsResultsIsMutable();
                        this.algorithmsResults_.add(builder.build());
                        onChanged();
                    } else {
                        p1Var.e(builder.build());
                    }
                    return this;
                }

                public Builder addAlgorithmsResults(int i10, AlgorithmResult.Builder builder) {
                    p1<AlgorithmResult, AlgorithmResult.Builder, AlgorithmResultOrBuilder> p1Var = this.algorithmsResultsBuilder_;
                    if (p1Var == null) {
                        ensureAlgorithmsResultsIsMutable();
                        this.algorithmsResults_.add(i10, builder.build());
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
                public io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.Event.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.Event.access$3200()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                        io.bidmachine.protobuf.rendering.RenderingFeature$BrokenCreativeDetector$Event r3 = (io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.Event) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                        io.bidmachine.protobuf.rendering.RenderingFeature$BrokenCreativeDetector$Event r4 = (io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.Event) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.Event.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.rendering.RenderingFeature$BrokenCreativeDetector$Event$Builder");
                }
            }

            public static Builder newBuilder(Event event) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(event);
            }

            public static Event parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, yVar);
            }

            private Event(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static Event parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
                return (Event) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
            }

            public static Event parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public Event mo4630getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            public static Event parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, yVar);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public Builder newBuilderForType() {
                return newBuilder();
            }

            private Event() {
                this.memoizedIsInitialized = (byte) -1;
                this.component_ = "";
                this.algorithmsResults_ = Collections.emptyList();
            }

            public static Event parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
                return new Builder(cVar);
            }

            public static Event parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, yVar);
            }

            public static Event parseFrom(InputStream inputStream) throws IOException {
                return (Event) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            /* JADX WARN: Multi-variable type inference failed */
            private Event(n nVar, y yVar) throws InvalidProtocolBufferException {
                this();
                yVar.getClass();
                j2.b g10 = j2.g();
                boolean z10 = false;
                boolean z11 = false;
                while (!z10) {
                    try {
                        try {
                            try {
                                int K = nVar.K();
                                if (K != 0) {
                                    if (K == 8) {
                                        this.phase_ = nVar.y();
                                    } else if (K == 16) {
                                        this.result_ = nVar.y();
                                    } else if (K == 25) {
                                        this.duration_ = nVar.s();
                                    } else if (K == 34) {
                                        this.component_ = nVar.J();
                                    } else if (K != 42) {
                                        if (!parseUnknownField(nVar, g10, yVar, K)) {
                                        }
                                    } else {
                                        if (!z11) {
                                            this.algorithmsResults_ = new ArrayList();
                                            z11 = true;
                                        }
                                        this.algorithmsResults_.add(nVar.A(AlgorithmResult.parser(), yVar));
                                    }
                                }
                                z10 = true;
                            } catch (InvalidProtocolBufferException e10) {
                                throw e10.setUnfinishedMessage(this);
                            }
                        } catch (IOException e11) {
                            throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                        }
                    } catch (Throwable th2) {
                        if (z11) {
                            this.algorithmsResults_ = Collections.unmodifiableList(this.algorithmsResults_);
                        }
                        this.unknownFields = g10.build();
                        makeExtensionsImmutable();
                        throw th2;
                    }
                }
                if (z11) {
                    this.algorithmsResults_ = Collections.unmodifiableList(this.algorithmsResults_);
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
            }

            public static Event parseFrom(InputStream inputStream, y yVar) throws IOException {
                return (Event) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
            }

            public static Event parseFrom(n nVar) throws IOException {
                return (Event) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
            }

            public static Event parseFrom(n nVar, y yVar) throws IOException {
                return (Event) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
            }
        }

        /* loaded from: classes8.dex */
        public interface EventOrBuilder extends MessageOrBuilder {
            AlgorithmResult getAlgorithmsResults(int i10);

            int getAlgorithmsResultsCount();

            List<AlgorithmResult> getAlgorithmsResultsList();

            AlgorithmResultOrBuilder getAlgorithmsResultsOrBuilder(int i10);

            List<? extends AlgorithmResultOrBuilder> getAlgorithmsResultsOrBuilderList();

            String getComponent();

            ByteString getComponentBytes();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

            double getDuration();

            int getPhase();

            int getResult();

            @Override // com.explorestack.protobuf.MessageOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes8.dex */
        public enum PayloadOneofCase implements i0.c {
            EVENT(1),
            CONFIGURATION(2),
            PAYLOADONEOF_NOT_SET(0);
            
            private final int value;

            PayloadOneofCase(int i10) {
                this.value = i10;
            }

            public static PayloadOneofCase forNumber(int i10) {
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            return null;
                        }
                        return CONFIGURATION;
                    }
                    return EVENT;
                }
                return PAYLOADONEOF_NOT_SET;
            }

            @Override // com.explorestack.protobuf.i0.c
            public int getNumber() {
                return this.value;
            }

            @Deprecated
            public static PayloadOneofCase valueOf(int i10) {
                return forNumber(i10);
            }
        }

        public static BrokenCreativeDetector getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return RenderingProto.internal_static_bidmachine_protobuf_RenderingFeature_BrokenCreativeDetector_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static BrokenCreativeDetector parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (BrokenCreativeDetector) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static BrokenCreativeDetector parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static j1<BrokenCreativeDetector> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof BrokenCreativeDetector)) {
                return super.equals(obj);
            }
            BrokenCreativeDetector brokenCreativeDetector = (BrokenCreativeDetector) obj;
            if (!getPayloadOneofCase().equals(brokenCreativeDetector.getPayloadOneofCase())) {
                return false;
            }
            int i10 = this.payloadOneofCase_;
            if (i10 != 1) {
                if (i10 == 2 && !getConfiguration().equals(brokenCreativeDetector.getConfiguration())) {
                    return false;
                }
            } else if (!getEvent().equals(brokenCreativeDetector.getEvent())) {
                return false;
            }
            if (this.unknownFields.equals(brokenCreativeDetector.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetectorOrBuilder
        public Configuration getConfiguration() {
            if (this.payloadOneofCase_ == 2) {
                return (Configuration) this.payloadOneof_;
            }
            return Configuration.getDefaultInstance();
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetectorOrBuilder
        public ConfigurationOrBuilder getConfigurationOrBuilder() {
            if (this.payloadOneofCase_ == 2) {
                return (Configuration) this.payloadOneof_;
            }
            return Configuration.getDefaultInstance();
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetectorOrBuilder
        public Event getEvent() {
            if (this.payloadOneofCase_ == 1) {
                return (Event) this.payloadOneof_;
            }
            return Event.getDefaultInstance();
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetectorOrBuilder
        public EventOrBuilder getEventOrBuilder() {
            if (this.payloadOneofCase_ == 1) {
                return (Event) this.payloadOneof_;
            }
            return Event.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<BrokenCreativeDetector> getParserForType() {
            return PARSER;
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetectorOrBuilder
        public PayloadOneofCase getPayloadOneofCase() {
            return PayloadOneofCase.forNumber(this.payloadOneofCase_);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if (this.payloadOneofCase_ == 1) {
                i10 = CodedOutputStream.G(1, (Event) this.payloadOneof_);
            } else {
                i10 = 0;
            }
            if (this.payloadOneofCase_ == 2) {
                i10 += CodedOutputStream.G(2, (Configuration) this.payloadOneof_);
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetectorOrBuilder
        public boolean hasConfiguration() {
            if (this.payloadOneofCase_ == 2) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetectorOrBuilder
        public boolean hasEvent() {
            if (this.payloadOneofCase_ == 1) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10;
            int hashCode;
            int i11 = this.memoizedHashCode;
            if (i11 != 0) {
                return i11;
            }
            int hashCode2 = 779 + getDescriptor().hashCode();
            int i12 = this.payloadOneofCase_;
            if (i12 != 1) {
                if (i12 == 2) {
                    i10 = ((hashCode2 * 37) + 2) * 53;
                    hashCode = getConfiguration().hashCode();
                }
                int hashCode3 = (hashCode2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode3;
                return hashCode3;
            }
            i10 = ((hashCode2 * 37) + 1) * 53;
            hashCode = getEvent().hashCode();
            hashCode2 = i10 + hashCode;
            int hashCode32 = (hashCode2 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode32;
            return hashCode32;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return RenderingProto.internal_static_bidmachine_protobuf_RenderingFeature_BrokenCreativeDetector_fieldAccessorTable.d(BrokenCreativeDetector.class, Builder.class);
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
            return new BrokenCreativeDetector();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.payloadOneofCase_ == 1) {
                codedOutputStream.L0(1, (Event) this.payloadOneof_);
            }
            if (this.payloadOneofCase_ == 2) {
                codedOutputStream.L0(2, (Configuration) this.payloadOneof_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes8.dex */
        public static final class Builder extends GeneratedMessageV3.b<Builder> implements BrokenCreativeDetectorOrBuilder {
            private t1<Configuration, Configuration.Builder, ConfigurationOrBuilder> configurationBuilder_;
            private t1<Event, Event.Builder, EventOrBuilder> eventBuilder_;
            private int payloadOneofCase_;
            private Object payloadOneof_;

            private t1<Configuration, Configuration.Builder, ConfigurationOrBuilder> getConfigurationFieldBuilder() {
                if (this.configurationBuilder_ == null) {
                    if (this.payloadOneofCase_ != 2) {
                        this.payloadOneof_ = Configuration.getDefaultInstance();
                    }
                    this.configurationBuilder_ = new t1<>((Configuration) this.payloadOneof_, getParentForChildren(), isClean());
                    this.payloadOneof_ = null;
                }
                this.payloadOneofCase_ = 2;
                onChanged();
                return this.configurationBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return RenderingProto.internal_static_bidmachine_protobuf_RenderingFeature_BrokenCreativeDetector_descriptor;
            }

            private t1<Event, Event.Builder, EventOrBuilder> getEventFieldBuilder() {
                if (this.eventBuilder_ == null) {
                    if (this.payloadOneofCase_ != 1) {
                        this.payloadOneof_ = Event.getDefaultInstance();
                    }
                    this.eventBuilder_ = new t1<>((Event) this.payloadOneof_, getParentForChildren(), isClean());
                    this.payloadOneof_ = null;
                }
                this.payloadOneofCase_ = 1;
                onChanged();
                return this.eventBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            public Builder clearConfiguration() {
                t1<Configuration, Configuration.Builder, ConfigurationOrBuilder> t1Var = this.configurationBuilder_;
                if (t1Var == null) {
                    if (this.payloadOneofCase_ == 2) {
                        this.payloadOneofCase_ = 0;
                        this.payloadOneof_ = null;
                        onChanged();
                    }
                } else {
                    if (this.payloadOneofCase_ == 2) {
                        this.payloadOneofCase_ = 0;
                        this.payloadOneof_ = null;
                    }
                    t1Var.b();
                }
                return this;
            }

            public Builder clearEvent() {
                t1<Event, Event.Builder, EventOrBuilder> t1Var = this.eventBuilder_;
                if (t1Var == null) {
                    if (this.payloadOneofCase_ == 1) {
                        this.payloadOneofCase_ = 0;
                        this.payloadOneof_ = null;
                        onChanged();
                    }
                } else {
                    if (this.payloadOneofCase_ == 1) {
                        this.payloadOneofCase_ = 0;
                        this.payloadOneof_ = null;
                    }
                    t1Var.b();
                }
                return this;
            }

            public Builder clearPayloadOneof() {
                this.payloadOneofCase_ = 0;
                this.payloadOneof_ = null;
                onChanged();
                return this;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetectorOrBuilder
            public Configuration getConfiguration() {
                t1<Configuration, Configuration.Builder, ConfigurationOrBuilder> t1Var = this.configurationBuilder_;
                if (t1Var == null) {
                    if (this.payloadOneofCase_ == 2) {
                        return (Configuration) this.payloadOneof_;
                    }
                    return Configuration.getDefaultInstance();
                } else if (this.payloadOneofCase_ == 2) {
                    return t1Var.e();
                } else {
                    return Configuration.getDefaultInstance();
                }
            }

            public Configuration.Builder getConfigurationBuilder() {
                return getConfigurationFieldBuilder().d();
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetectorOrBuilder
            public ConfigurationOrBuilder getConfigurationOrBuilder() {
                t1<Configuration, Configuration.Builder, ConfigurationOrBuilder> t1Var;
                int i10 = this.payloadOneofCase_;
                if (i10 == 2 && (t1Var = this.configurationBuilder_) != null) {
                    return t1Var.f();
                }
                if (i10 == 2) {
                    return (Configuration) this.payloadOneof_;
                }
                return Configuration.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return RenderingProto.internal_static_bidmachine_protobuf_RenderingFeature_BrokenCreativeDetector_descriptor;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetectorOrBuilder
            public Event getEvent() {
                t1<Event, Event.Builder, EventOrBuilder> t1Var = this.eventBuilder_;
                if (t1Var == null) {
                    if (this.payloadOneofCase_ == 1) {
                        return (Event) this.payloadOneof_;
                    }
                    return Event.getDefaultInstance();
                } else if (this.payloadOneofCase_ == 1) {
                    return t1Var.e();
                } else {
                    return Event.getDefaultInstance();
                }
            }

            public Event.Builder getEventBuilder() {
                return getEventFieldBuilder().d();
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetectorOrBuilder
            public EventOrBuilder getEventOrBuilder() {
                t1<Event, Event.Builder, EventOrBuilder> t1Var;
                int i10 = this.payloadOneofCase_;
                if (i10 == 1 && (t1Var = this.eventBuilder_) != null) {
                    return t1Var.f();
                }
                if (i10 == 1) {
                    return (Event) this.payloadOneof_;
                }
                return Event.getDefaultInstance();
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetectorOrBuilder
            public PayloadOneofCase getPayloadOneofCase() {
                return PayloadOneofCase.forNumber(this.payloadOneofCase_);
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetectorOrBuilder
            public boolean hasConfiguration() {
                if (this.payloadOneofCase_ == 2) {
                    return true;
                }
                return false;
            }

            @Override // io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetectorOrBuilder
            public boolean hasEvent() {
                if (this.payloadOneofCase_ == 1) {
                    return true;
                }
                return false;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return RenderingProto.internal_static_bidmachine_protobuf_RenderingFeature_BrokenCreativeDetector_fieldAccessorTable.d(BrokenCreativeDetector.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public Builder mergeConfiguration(Configuration configuration) {
                t1<Configuration, Configuration.Builder, ConfigurationOrBuilder> t1Var = this.configurationBuilder_;
                if (t1Var == null) {
                    if (this.payloadOneofCase_ == 2 && this.payloadOneof_ != Configuration.getDefaultInstance()) {
                        this.payloadOneof_ = Configuration.newBuilder((Configuration) this.payloadOneof_).mergeFrom(configuration).buildPartial();
                    } else {
                        this.payloadOneof_ = configuration;
                    }
                    onChanged();
                } else {
                    if (this.payloadOneofCase_ == 2) {
                        t1Var.g(configuration);
                    }
                    this.configurationBuilder_.i(configuration);
                }
                this.payloadOneofCase_ = 2;
                return this;
            }

            public Builder mergeEvent(Event event) {
                t1<Event, Event.Builder, EventOrBuilder> t1Var = this.eventBuilder_;
                if (t1Var == null) {
                    if (this.payloadOneofCase_ == 1 && this.payloadOneof_ != Event.getDefaultInstance()) {
                        this.payloadOneof_ = Event.newBuilder((Event) this.payloadOneof_).mergeFrom(event).buildPartial();
                    } else {
                        this.payloadOneof_ = event;
                    }
                    onChanged();
                } else {
                    if (this.payloadOneofCase_ == 1) {
                        t1Var.g(event);
                    }
                    this.eventBuilder_.i(event);
                }
                this.payloadOneofCase_ = 1;
                return this;
            }

            public Builder setConfiguration(Configuration configuration) {
                t1<Configuration, Configuration.Builder, ConfigurationOrBuilder> t1Var = this.configurationBuilder_;
                if (t1Var == null) {
                    configuration.getClass();
                    this.payloadOneof_ = configuration;
                    onChanged();
                } else {
                    t1Var.i(configuration);
                }
                this.payloadOneofCase_ = 2;
                return this;
            }

            public Builder setEvent(Event event) {
                t1<Event, Event.Builder, EventOrBuilder> t1Var = this.eventBuilder_;
                if (t1Var == null) {
                    event.getClass();
                    this.payloadOneof_ = event;
                    onChanged();
                } else {
                    t1Var.i(event);
                }
                this.payloadOneofCase_ = 1;
                return this;
            }

            private Builder() {
                this.payloadOneofCase_ = 0;
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public BrokenCreativeDetector build() {
                BrokenCreativeDetector buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public BrokenCreativeDetector buildPartial() {
                BrokenCreativeDetector brokenCreativeDetector = new BrokenCreativeDetector(this);
                if (this.payloadOneofCase_ == 1) {
                    t1<Event, Event.Builder, EventOrBuilder> t1Var = this.eventBuilder_;
                    if (t1Var == null) {
                        brokenCreativeDetector.payloadOneof_ = this.payloadOneof_;
                    } else {
                        brokenCreativeDetector.payloadOneof_ = t1Var.a();
                    }
                }
                if (this.payloadOneofCase_ == 2) {
                    t1<Configuration, Configuration.Builder, ConfigurationOrBuilder> t1Var2 = this.configurationBuilder_;
                    if (t1Var2 == null) {
                        brokenCreativeDetector.payloadOneof_ = this.payloadOneof_;
                    } else {
                        brokenCreativeDetector.payloadOneof_ = t1Var2.a();
                    }
                }
                brokenCreativeDetector.payloadOneofCase_ = this.payloadOneofCase_;
                onBuilt();
                return brokenCreativeDetector;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: getDefaultInstanceForType */
            public BrokenCreativeDetector mo4630getDefaultInstanceForType() {
                return BrokenCreativeDetector.getDefaultInstance();
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
                this.payloadOneofCase_ = 0;
                this.payloadOneof_ = null;
                return this;
            }

            private Builder(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.payloadOneofCase_ = 0;
                maybeForceBuilderInitialization();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: clone */
            public Builder mo4628clone() {
                return (Builder) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public Builder mergeFrom(Message message) {
                if (message instanceof BrokenCreativeDetector) {
                    return mergeFrom((BrokenCreativeDetector) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public Builder setConfiguration(Configuration.Builder builder) {
                t1<Configuration, Configuration.Builder, ConfigurationOrBuilder> t1Var = this.configurationBuilder_;
                if (t1Var == null) {
                    this.payloadOneof_ = builder.build();
                    onChanged();
                } else {
                    t1Var.i(builder.build());
                }
                this.payloadOneofCase_ = 2;
                return this;
            }

            public Builder setEvent(Event.Builder builder) {
                t1<Event, Event.Builder, EventOrBuilder> t1Var = this.eventBuilder_;
                if (t1Var == null) {
                    this.payloadOneof_ = builder.build();
                    onChanged();
                } else {
                    t1Var.i(builder.build());
                }
                this.payloadOneofCase_ = 1;
                return this;
            }

            public Builder mergeFrom(BrokenCreativeDetector brokenCreativeDetector) {
                if (brokenCreativeDetector == BrokenCreativeDetector.getDefaultInstance()) {
                    return this;
                }
                int i10 = AnonymousClass2.$SwitchMap$io$bidmachine$protobuf$rendering$RenderingFeature$BrokenCreativeDetector$PayloadOneofCase[brokenCreativeDetector.getPayloadOneofCase().ordinal()];
                if (i10 == 1) {
                    mergeEvent(brokenCreativeDetector.getEvent());
                } else if (i10 == 2) {
                    mergeConfiguration(brokenCreativeDetector.getConfiguration());
                }
                mergeUnknownFields(((GeneratedMessageV3) brokenCreativeDetector).unknownFields);
                onChanged();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.access$5800()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                    io.bidmachine.protobuf.rendering.RenderingFeature$BrokenCreativeDetector r3 = (io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                    io.bidmachine.protobuf.rendering.RenderingFeature$BrokenCreativeDetector r4 = (io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.rendering.RenderingFeature.BrokenCreativeDetector.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.rendering.RenderingFeature$BrokenCreativeDetector$Builder");
            }
        }

        public static Builder newBuilder(BrokenCreativeDetector brokenCreativeDetector) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(brokenCreativeDetector);
        }

        public static BrokenCreativeDetector parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, yVar);
        }

        private BrokenCreativeDetector(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.payloadOneofCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static BrokenCreativeDetector parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return (BrokenCreativeDetector) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
        }

        public static BrokenCreativeDetector parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public BrokenCreativeDetector mo4630getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        public static BrokenCreativeDetector parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static BrokenCreativeDetector parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
            return new Builder(cVar);
        }

        private BrokenCreativeDetector() {
            this.payloadOneofCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static BrokenCreativeDetector parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, yVar);
        }

        public static BrokenCreativeDetector parseFrom(InputStream inputStream) throws IOException {
            return (BrokenCreativeDetector) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private BrokenCreativeDetector(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int K = nVar.K();
                        if (K != 0) {
                            if (K == 10) {
                                Event.Builder builder = this.payloadOneofCase_ == 1 ? ((Event) this.payloadOneof_).toBuilder() : null;
                                MessageLite A = nVar.A(Event.parser(), yVar);
                                this.payloadOneof_ = A;
                                if (builder != null) {
                                    builder.mergeFrom((Event) A);
                                    this.payloadOneof_ = builder.buildPartial();
                                }
                                this.payloadOneofCase_ = 1;
                            } else if (K != 18) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                Configuration.Builder builder2 = this.payloadOneofCase_ == 2 ? ((Configuration) this.payloadOneof_).toBuilder() : null;
                                MessageLite A2 = nVar.A(Configuration.parser(), yVar);
                                this.payloadOneof_ = A2;
                                if (builder2 != null) {
                                    builder2.mergeFrom((Configuration) A2);
                                    this.payloadOneof_ = builder2.buildPartial();
                                }
                                this.payloadOneofCase_ = 2;
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

        public static BrokenCreativeDetector parseFrom(InputStream inputStream, y yVar) throws IOException {
            return (BrokenCreativeDetector) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
        }

        public static BrokenCreativeDetector parseFrom(n nVar) throws IOException {
            return (BrokenCreativeDetector) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
        }

        public static BrokenCreativeDetector parseFrom(n nVar, y yVar) throws IOException {
            return (BrokenCreativeDetector) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
        }
    }

    /* loaded from: classes8.dex */
    public interface BrokenCreativeDetectorOrBuilder extends MessageOrBuilder {
        BrokenCreativeDetector.Configuration getConfiguration();

        BrokenCreativeDetector.ConfigurationOrBuilder getConfigurationOrBuilder();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        BrokenCreativeDetector.Event getEvent();

        BrokenCreativeDetector.EventOrBuilder getEventOrBuilder();

        BrokenCreativeDetector.PayloadOneofCase getPayloadOneofCase();

        boolean hasConfiguration();

        boolean hasEvent();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes8.dex */
    public enum FeatureCase implements i0.c {
        BROKEN_CREATIVE_DETECTOR(1),
        FEATURE_NOT_SET(0);
        
        private final int value;

        FeatureCase(int i10) {
            this.value = i10;
        }

        public static FeatureCase forNumber(int i10) {
            if (i10 != 0) {
                if (i10 != 1) {
                    return null;
                }
                return BROKEN_CREATIVE_DETECTOR;
            }
            return FEATURE_NOT_SET;
        }

        @Override // com.explorestack.protobuf.i0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static FeatureCase valueOf(int i10) {
            return forNumber(i10);
        }
    }

    public static RenderingFeature getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return RenderingProto.internal_static_bidmachine_protobuf_RenderingFeature_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static RenderingFeature parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RenderingFeature) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RenderingFeature parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<RenderingFeature> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RenderingFeature)) {
            return super.equals(obj);
        }
        RenderingFeature renderingFeature = (RenderingFeature) obj;
        if (!getFeatureCase().equals(renderingFeature.getFeatureCase())) {
            return false;
        }
        if ((this.featureCase_ != 1 || getBrokenCreativeDetector().equals(renderingFeature.getBrokenCreativeDetector())) && this.unknownFields.equals(renderingFeature.unknownFields)) {
            return true;
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.rendering.RenderingFeatureOrBuilder
    public BrokenCreativeDetector getBrokenCreativeDetector() {
        if (this.featureCase_ == 1) {
            return (BrokenCreativeDetector) this.feature_;
        }
        return BrokenCreativeDetector.getDefaultInstance();
    }

    @Override // io.bidmachine.protobuf.rendering.RenderingFeatureOrBuilder
    public BrokenCreativeDetectorOrBuilder getBrokenCreativeDetectorOrBuilder() {
        if (this.featureCase_ == 1) {
            return (BrokenCreativeDetector) this.feature_;
        }
        return BrokenCreativeDetector.getDefaultInstance();
    }

    @Override // io.bidmachine.protobuf.rendering.RenderingFeatureOrBuilder
    public FeatureCase getFeatureCase() {
        return FeatureCase.forNumber(this.featureCase_);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<RenderingFeature> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        if (this.featureCase_ == 1) {
            i10 = CodedOutputStream.G(1, (BrokenCreativeDetector) this.feature_);
        } else {
            i10 = 0;
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final j2 getUnknownFields() {
        return this.unknownFields;
    }

    @Override // io.bidmachine.protobuf.rendering.RenderingFeatureOrBuilder
    public boolean hasBrokenCreativeDetector() {
        if (this.featureCase_ == 1) {
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
        int hashCode = 779 + getDescriptor().hashCode();
        if (this.featureCase_ == 1) {
            hashCode = (((hashCode * 37) + 1) * 53) + getBrokenCreativeDetector().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return RenderingProto.internal_static_bidmachine_protobuf_RenderingFeature_fieldAccessorTable.d(RenderingFeature.class, Builder.class);
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
        return new RenderingFeature();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.featureCase_ == 1) {
            codedOutputStream.L0(1, (BrokenCreativeDetector) this.feature_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* loaded from: classes8.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements RenderingFeatureOrBuilder {
        private t1<BrokenCreativeDetector, BrokenCreativeDetector.Builder, BrokenCreativeDetectorOrBuilder> brokenCreativeDetectorBuilder_;
        private int featureCase_;
        private Object feature_;

        private t1<BrokenCreativeDetector, BrokenCreativeDetector.Builder, BrokenCreativeDetectorOrBuilder> getBrokenCreativeDetectorFieldBuilder() {
            if (this.brokenCreativeDetectorBuilder_ == null) {
                if (this.featureCase_ != 1) {
                    this.feature_ = BrokenCreativeDetector.getDefaultInstance();
                }
                this.brokenCreativeDetectorBuilder_ = new t1<>((BrokenCreativeDetector) this.feature_, getParentForChildren(), isClean());
                this.feature_ = null;
            }
            this.featureCase_ = 1;
            onChanged();
            return this.brokenCreativeDetectorBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return RenderingProto.internal_static_bidmachine_protobuf_RenderingFeature_descriptor;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder clearBrokenCreativeDetector() {
            t1<BrokenCreativeDetector, BrokenCreativeDetector.Builder, BrokenCreativeDetectorOrBuilder> t1Var = this.brokenCreativeDetectorBuilder_;
            if (t1Var == null) {
                if (this.featureCase_ == 1) {
                    this.featureCase_ = 0;
                    this.feature_ = null;
                    onChanged();
                }
            } else {
                if (this.featureCase_ == 1) {
                    this.featureCase_ = 0;
                    this.feature_ = null;
                }
                t1Var.b();
            }
            return this;
        }

        public Builder clearFeature() {
            this.featureCase_ = 0;
            this.feature_ = null;
            onChanged();
            return this;
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingFeatureOrBuilder
        public BrokenCreativeDetector getBrokenCreativeDetector() {
            t1<BrokenCreativeDetector, BrokenCreativeDetector.Builder, BrokenCreativeDetectorOrBuilder> t1Var = this.brokenCreativeDetectorBuilder_;
            if (t1Var == null) {
                if (this.featureCase_ == 1) {
                    return (BrokenCreativeDetector) this.feature_;
                }
                return BrokenCreativeDetector.getDefaultInstance();
            } else if (this.featureCase_ == 1) {
                return t1Var.e();
            } else {
                return BrokenCreativeDetector.getDefaultInstance();
            }
        }

        public BrokenCreativeDetector.Builder getBrokenCreativeDetectorBuilder() {
            return getBrokenCreativeDetectorFieldBuilder().d();
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingFeatureOrBuilder
        public BrokenCreativeDetectorOrBuilder getBrokenCreativeDetectorOrBuilder() {
            t1<BrokenCreativeDetector, BrokenCreativeDetector.Builder, BrokenCreativeDetectorOrBuilder> t1Var;
            int i10 = this.featureCase_;
            if (i10 == 1 && (t1Var = this.brokenCreativeDetectorBuilder_) != null) {
                return t1Var.f();
            }
            if (i10 == 1) {
                return (BrokenCreativeDetector) this.feature_;
            }
            return BrokenCreativeDetector.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return RenderingProto.internal_static_bidmachine_protobuf_RenderingFeature_descriptor;
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingFeatureOrBuilder
        public FeatureCase getFeatureCase() {
            return FeatureCase.forNumber(this.featureCase_);
        }

        @Override // io.bidmachine.protobuf.rendering.RenderingFeatureOrBuilder
        public boolean hasBrokenCreativeDetector() {
            if (this.featureCase_ == 1) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return RenderingProto.internal_static_bidmachine_protobuf_RenderingFeature_fieldAccessorTable.d(RenderingFeature.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder mergeBrokenCreativeDetector(BrokenCreativeDetector brokenCreativeDetector) {
            t1<BrokenCreativeDetector, BrokenCreativeDetector.Builder, BrokenCreativeDetectorOrBuilder> t1Var = this.brokenCreativeDetectorBuilder_;
            if (t1Var == null) {
                if (this.featureCase_ == 1 && this.feature_ != BrokenCreativeDetector.getDefaultInstance()) {
                    this.feature_ = BrokenCreativeDetector.newBuilder((BrokenCreativeDetector) this.feature_).mergeFrom(brokenCreativeDetector).buildPartial();
                } else {
                    this.feature_ = brokenCreativeDetector;
                }
                onChanged();
            } else {
                if (this.featureCase_ == 1) {
                    t1Var.g(brokenCreativeDetector);
                }
                this.brokenCreativeDetectorBuilder_.i(brokenCreativeDetector);
            }
            this.featureCase_ = 1;
            return this;
        }

        public Builder setBrokenCreativeDetector(BrokenCreativeDetector brokenCreativeDetector) {
            t1<BrokenCreativeDetector, BrokenCreativeDetector.Builder, BrokenCreativeDetectorOrBuilder> t1Var = this.brokenCreativeDetectorBuilder_;
            if (t1Var == null) {
                brokenCreativeDetector.getClass();
                this.feature_ = brokenCreativeDetector;
                onChanged();
            } else {
                t1Var.i(brokenCreativeDetector);
            }
            this.featureCase_ = 1;
            return this;
        }

        private Builder() {
            this.featureCase_ = 0;
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public RenderingFeature build() {
            RenderingFeature buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public RenderingFeature buildPartial() {
            RenderingFeature renderingFeature = new RenderingFeature(this);
            if (this.featureCase_ == 1) {
                t1<BrokenCreativeDetector, BrokenCreativeDetector.Builder, BrokenCreativeDetectorOrBuilder> t1Var = this.brokenCreativeDetectorBuilder_;
                if (t1Var == null) {
                    renderingFeature.feature_ = this.feature_;
                } else {
                    renderingFeature.feature_ = t1Var.a();
                }
            }
            renderingFeature.featureCase_ = this.featureCase_;
            onBuilt();
            return renderingFeature;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public RenderingFeature mo4630getDefaultInstanceForType() {
            return RenderingFeature.getDefaultInstance();
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
            this.featureCase_ = 0;
            this.feature_ = null;
            return this;
        }

        private Builder(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.featureCase_ = 0;
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
        /* renamed from: clone */
        public Builder mo4628clone() {
            return (Builder) super.mo4628clone();
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof RenderingFeature) {
                return mergeFrom((RenderingFeature) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder setBrokenCreativeDetector(BrokenCreativeDetector.Builder builder) {
            t1<BrokenCreativeDetector, BrokenCreativeDetector.Builder, BrokenCreativeDetectorOrBuilder> t1Var = this.brokenCreativeDetectorBuilder_;
            if (t1Var == null) {
                this.feature_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            this.featureCase_ = 1;
            return this;
        }

        public Builder mergeFrom(RenderingFeature renderingFeature) {
            if (renderingFeature == RenderingFeature.getDefaultInstance()) {
                return this;
            }
            if (AnonymousClass2.$SwitchMap$io$bidmachine$protobuf$rendering$RenderingFeature$FeatureCase[renderingFeature.getFeatureCase().ordinal()] == 1) {
                mergeBrokenCreativeDetector(renderingFeature.getBrokenCreativeDetector());
            }
            mergeUnknownFields(((GeneratedMessageV3) renderingFeature).unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.bidmachine.protobuf.rendering.RenderingFeature.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = io.bidmachine.protobuf.rendering.RenderingFeature.access$6700()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                io.bidmachine.protobuf.rendering.RenderingFeature r3 = (io.bidmachine.protobuf.rendering.RenderingFeature) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                io.bidmachine.protobuf.rendering.RenderingFeature r4 = (io.bidmachine.protobuf.rendering.RenderingFeature) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.rendering.RenderingFeature.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):io.bidmachine.protobuf.rendering.RenderingFeature$Builder");
        }
    }

    public static Builder newBuilder(RenderingFeature renderingFeature) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(renderingFeature);
    }

    public static RenderingFeature parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    private RenderingFeature(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.featureCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RenderingFeature parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (RenderingFeature) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static RenderingFeature parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public RenderingFeature mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static RenderingFeature parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static RenderingFeature parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    private RenderingFeature() {
        this.featureCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static RenderingFeature parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    public static RenderingFeature parseFrom(InputStream inputStream) throws IOException {
        return (RenderingFeature) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private RenderingFeature(n nVar, y yVar) throws InvalidProtocolBufferException {
        this();
        yVar.getClass();
        j2.b g10 = j2.g();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int K = nVar.K();
                        if (K != 0) {
                            if (K != 10) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                BrokenCreativeDetector.Builder builder = this.featureCase_ == 1 ? ((BrokenCreativeDetector) this.feature_).toBuilder() : null;
                                MessageLite A = nVar.A(BrokenCreativeDetector.parser(), yVar);
                                this.feature_ = A;
                                if (builder != null) {
                                    builder.mergeFrom((BrokenCreativeDetector) A);
                                    this.feature_ = builder.buildPartial();
                                }
                                this.featureCase_ = 1;
                            }
                        }
                        z10 = true;
                    } catch (IOException e10) {
                        throw new InvalidProtocolBufferException(e10).setUnfinishedMessage(this);
                    }
                } catch (InvalidProtocolBufferException e11) {
                    throw e11.setUnfinishedMessage(this);
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

    public static RenderingFeature parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (RenderingFeature) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    public static RenderingFeature parseFrom(n nVar) throws IOException {
        return (RenderingFeature) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    public static RenderingFeature parseFrom(n nVar, y yVar) throws IOException {
        return (RenderingFeature) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }
}
