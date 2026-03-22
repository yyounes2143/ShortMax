package com.explorestack.protobuf.compiler;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.DescriptorProtos;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.i0;
import com.explorestack.protobuf.j1;
import com.explorestack.protobuf.j2;
import com.explorestack.protobuf.n;
import com.explorestack.protobuf.p1;
import com.explorestack.protobuf.t1;
import com.explorestack.protobuf.y;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3.dex */
public final class PluginProtos {

    /* renamed from: a  reason: collision with root package name */
    private static final Descriptors.Descriptor f14298a;

    /* renamed from: b  reason: collision with root package name */
    private static final GeneratedMessageV3.e f14299b;

    /* renamed from: c  reason: collision with root package name */
    private static final Descriptors.Descriptor f14300c;

    /* renamed from: d  reason: collision with root package name */
    private static final GeneratedMessageV3.e f14301d;

    /* renamed from: e  reason: collision with root package name */
    private static final Descriptors.Descriptor f14302e;

    /* renamed from: f  reason: collision with root package name */
    private static final GeneratedMessageV3.e f14303f;

    /* renamed from: g  reason: collision with root package name */
    private static final Descriptors.Descriptor f14304g;

    /* renamed from: h  reason: collision with root package name */
    private static final GeneratedMessageV3.e f14305h;

    /* renamed from: i  reason: collision with root package name */
    private static Descriptors.FileDescriptor f14306i = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n%google/protobuf/compiler/plugin.proto\u0012\u0018google.protobuf.compiler\u001a google/protobuf/descriptor.proto\"F\n\u0007Version\u0012\r\n\u0005major\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005minor\u0018\u0002 \u0001(\u0005\u0012\r\n\u0005patch\u0018\u0003 \u0001(\u0005\u0012\u000e\n\u0006suffix\u0018\u0004 \u0001(\t\"º\u0001\n\u0014CodeGeneratorRequest\u0012\u0018\n\u0010file_to_generate\u0018\u0001 \u0003(\t\u0012\u0011\n\tparameter\u0018\u0002 \u0001(\t\u00128\n\nproto_file\u0018\u000f \u0003(\u000b2$.google.protobuf.FileDescriptorProto\u0012;\n\u0010compiler_version\u0018\u0003 \u0001(\u000b2!.google.protobuf.compiler.Version\"Á\u0002\n\u0015CodeGeneratorResponse\u0012\r\n\u0005error\u0018\u0001 \u0001(\t\u0012\u001a\n\u0012supported_features\u0018\u0002 \u0001(\u0004\u0012B\n\u0004file\u0018\u000f \u0003(\u000b24.google.protobuf.compiler.CodeGeneratorResponse.File\u001a\u007f\n\u0004File\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0017\n\u000finsertion_point\u0018\u0002 \u0001(\t\u0012\u000f\n\u0007content\u0018\u000f \u0001(\t\u0012?\n\u0013generated_code_info\u0018\u0010 \u0001(\u000b2\".google.protobuf.GeneratedCodeInfo\"8\n\u0007Feature\u0012\u0010\n\fFEATURE_NONE\u0010\u0000\u0012\u001b\n\u0017FEATURE_PROTO3_OPTIONAL\u0010\u0001BW\n\u001ccom.google.protobuf.compilerB\fPluginProtosZ)google.golang.org/protobuf/types/pluginpb"}, new Descriptors.FileDescriptor[]{DescriptorProtos.a0()});

    /* loaded from: classes3.dex */
    public static final class CodeGeneratorResponse extends GeneratedMessageV3 implements MessageOrBuilder {

        /* renamed from: f  reason: collision with root package name */
        private static final CodeGeneratorResponse f14307f = new CodeGeneratorResponse();
        @Deprecated

        /* renamed from: g  reason: collision with root package name */
        public static final j1<CodeGeneratorResponse> f14308g = new a();

        /* renamed from: a  reason: collision with root package name */
        private int f14309a;

        /* renamed from: b  reason: collision with root package name */
        private volatile Object f14310b;

        /* renamed from: c  reason: collision with root package name */
        private long f14311c;

        /* renamed from: d  reason: collision with root package name */
        private List<File> f14312d;

        /* renamed from: e  reason: collision with root package name */
        private byte f14313e;

        /* loaded from: classes3.dex */
        public enum Feature implements i0.c {
            FEATURE_NONE(0),
            FEATURE_PROTO3_OPTIONAL(1);
            
            public static final int FEATURE_NONE_VALUE = 0;
            public static final int FEATURE_PROTO3_OPTIONAL_VALUE = 1;
            private final int value;
            private static final i0.d<Feature> internalValueMap = new a();
            private static final Feature[] VALUES = values();

            /* loaded from: classes3.dex */
            static class a implements i0.d<Feature> {
                a() {
                }

                @Override // com.explorestack.protobuf.i0.d
                /* renamed from: a */
                public Feature findValueByNumber(int i10) {
                    return Feature.forNumber(i10);
                }
            }

            Feature(int i10) {
                this.value = i10;
            }

            public static Feature forNumber(int i10) {
                if (i10 != 0) {
                    if (i10 != 1) {
                        return null;
                    }
                    return FEATURE_PROTO3_OPTIONAL;
                }
                return FEATURE_NONE;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return CodeGeneratorResponse.getDescriptor().getEnumTypes().get(0);
            }

            public static i0.d<Feature> internalGetValueMap() {
                return internalValueMap;
            }

            public final Descriptors.EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            @Override // com.explorestack.protobuf.i0.c
            public final int getNumber() {
                return this.value;
            }

            public final Descriptors.EnumValueDescriptor getValueDescriptor() {
                return getDescriptor().getValues().get(ordinal());
            }

            @Deprecated
            public static Feature valueOf(int i10) {
                return forNumber(i10);
            }

            public static Feature valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes3.dex */
        public static final class File extends GeneratedMessageV3 implements MessageOrBuilder {

            /* renamed from: g  reason: collision with root package name */
            private static final File f14314g = new File();
            @Deprecated

            /* renamed from: h  reason: collision with root package name */
            public static final j1<File> f14315h = new a();

            /* renamed from: a  reason: collision with root package name */
            private int f14316a;

            /* renamed from: b  reason: collision with root package name */
            private volatile Object f14317b;

            /* renamed from: c  reason: collision with root package name */
            private volatile Object f14318c;

            /* renamed from: d  reason: collision with root package name */
            private volatile Object f14319d;

            /* renamed from: e  reason: collision with root package name */
            private DescriptorProtos.GeneratedCodeInfo f14320e;

            /* renamed from: f  reason: collision with root package name */
            private byte f14321f;

            /* loaded from: classes3.dex */
            static class a extends com.explorestack.protobuf.b<File> {
                a() {
                }

                @Override // com.explorestack.protobuf.j1
                /* renamed from: a */
                public File parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new File(nVar, yVar);
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return PluginProtos.f14304g;
            }

            public static File n() {
                return f14314g;
            }

            public static b v() {
                return f14314g.toBuilder();
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            /* renamed from: A */
            public b toBuilder() {
                if (this == f14314g) {
                    return new b();
                }
                return new b().o(this);
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof File)) {
                    return super.equals(obj);
                }
                File file = (File) obj;
                if (hasName() != file.hasName()) {
                    return false;
                }
                if ((hasName() && !getName().equals(file.getName())) || u() != file.u()) {
                    return false;
                }
                if ((u() && !s().equals(file.s())) || hasContent() != file.hasContent()) {
                    return false;
                }
                if ((hasContent() && !getContent().equals(file.getContent())) || t() != file.t()) {
                    return false;
                }
                if ((!t() || r().equals(file.r())) && this.unknownFields.equals(file.unknownFields)) {
                    return true;
                }
                return false;
            }

            public String getContent() {
                Object obj = this.f14319d;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.f14319d = stringUtf8;
                }
                return stringUtf8;
            }

            public String getName() {
                Object obj = this.f14317b;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.f14317b = stringUtf8;
                }
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public j1<File> getParserForType() {
                return f14315h;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i10;
                int i11 = this.memoizedSize;
                if (i11 != -1) {
                    return i11;
                }
                if ((this.f14316a & 1) != 0) {
                    i10 = GeneratedMessageV3.computeStringSize(1, this.f14317b);
                } else {
                    i10 = 0;
                }
                if ((this.f14316a & 2) != 0) {
                    i10 += GeneratedMessageV3.computeStringSize(2, this.f14318c);
                }
                if ((this.f14316a & 4) != 0) {
                    i10 += GeneratedMessageV3.computeStringSize(15, this.f14319d);
                }
                if ((this.f14316a & 8) != 0) {
                    i10 += CodedOutputStream.G(16, r());
                }
                int serializedSize = i10 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final j2 getUnknownFields() {
                return this.unknownFields;
            }

            public boolean hasContent() {
                if ((this.f14316a & 4) != 0) {
                    return true;
                }
                return false;
            }

            public boolean hasName() {
                if ((this.f14316a & 1) != 0) {
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
                if (hasName()) {
                    hashCode = (((hashCode * 37) + 1) * 53) + getName().hashCode();
                }
                if (u()) {
                    hashCode = (((hashCode * 37) + 2) * 53) + s().hashCode();
                }
                if (hasContent()) {
                    hashCode = (((hashCode * 37) + 15) * 53) + getContent().hashCode();
                }
                if (t()) {
                    hashCode = (((hashCode * 37) + 16) * 53) + r().hashCode();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return PluginProtos.f14305h.d(File.class, b.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                byte b10 = this.f14321f;
                if (b10 == 1) {
                    return true;
                }
                if (b10 == 0) {
                    return false;
                }
                this.f14321f = (byte) 1;
                return true;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Object newInstance(GeneratedMessageV3.f fVar) {
                return new File();
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: q */
            public File mo4630getDefaultInstanceForType() {
                return f14314g;
            }

            public DescriptorProtos.GeneratedCodeInfo r() {
                DescriptorProtos.GeneratedCodeInfo generatedCodeInfo = this.f14320e;
                if (generatedCodeInfo == null) {
                    return DescriptorProtos.GeneratedCodeInfo.g();
                }
                return generatedCodeInfo;
            }

            public String s() {
                Object obj = this.f14318c;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.f14318c = stringUtf8;
                }
                return stringUtf8;
            }

            public boolean t() {
                if ((this.f14316a & 8) != 0) {
                    return true;
                }
                return false;
            }

            public boolean u() {
                if ((this.f14316a & 2) != 0) {
                    return true;
                }
                return false;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if ((this.f14316a & 1) != 0) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.f14317b);
                }
                if ((this.f14316a & 2) != 0) {
                    GeneratedMessageV3.writeString(codedOutputStream, 2, this.f14318c);
                }
                if ((this.f14316a & 4) != 0) {
                    GeneratedMessageV3.writeString(codedOutputStream, 15, this.f14319d);
                }
                if ((this.f14316a & 8) != 0) {
                    codedOutputStream.L0(16, r());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            /* renamed from: y */
            public b newBuilderForType() {
                return v();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            /* renamed from: z */
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar);
            }

            /* loaded from: classes3.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements MessageOrBuilder {

                /* renamed from: a  reason: collision with root package name */
                private int f14322a;

                /* renamed from: b  reason: collision with root package name */
                private Object f14323b;

                /* renamed from: c  reason: collision with root package name */
                private Object f14324c;

                /* renamed from: d  reason: collision with root package name */
                private Object f14325d;

                /* renamed from: e  reason: collision with root package name */
                private DescriptorProtos.GeneratedCodeInfo f14326e;

                /* renamed from: f  reason: collision with root package name */
                private t1<DescriptorProtos.GeneratedCodeInfo, DescriptorProtos.GeneratedCodeInfo.b, Object> f14327f;

                private t1<DescriptorProtos.GeneratedCodeInfo, DescriptorProtos.GeneratedCodeInfo.b, Object> l() {
                    if (this.f14327f == null) {
                        this.f14327f = new t1<>(k(), getParentForChildren(), isClean());
                        this.f14326e = null;
                    }
                    return this.f14327f;
                }

                private void maybeForceBuilderInitialization() {
                    if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                        l();
                    }
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: a */
                public b addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: b */
                public File build() {
                    File buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: c */
                public File buildPartial() {
                    int i10;
                    File file = new File(this);
                    int i11 = this.f14322a;
                    if ((i11 & 1) != 0) {
                        i10 = 1;
                    } else {
                        i10 = 0;
                    }
                    file.f14317b = this.f14323b;
                    if ((i11 & 2) != 0) {
                        i10 |= 2;
                    }
                    file.f14318c = this.f14324c;
                    if ((i11 & 4) != 0) {
                        i10 |= 4;
                    }
                    file.f14319d = this.f14325d;
                    if ((i11 & 8) != 0) {
                        t1<DescriptorProtos.GeneratedCodeInfo, DescriptorProtos.GeneratedCodeInfo.b, Object> t1Var = this.f14327f;
                        if (t1Var == null) {
                            file.f14320e = this.f14326e;
                        } else {
                            file.f14320e = t1Var.a();
                        }
                        i10 |= 8;
                    }
                    file.f14316a = i10;
                    onBuilt();
                    return file;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: e */
                public b clear() {
                    super.clear();
                    this.f14323b = "";
                    int i10 = this.f14322a;
                    this.f14324c = "";
                    this.f14325d = "";
                    this.f14322a = i10 & (-8);
                    t1<DescriptorProtos.GeneratedCodeInfo, DescriptorProtos.GeneratedCodeInfo.b, Object> t1Var = this.f14327f;
                    if (t1Var == null) {
                        this.f14326e = null;
                    } else {
                        t1Var.b();
                    }
                    this.f14322a &= -9;
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: f */
                public b clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (b) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: g */
                public b clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                    return (b) super.clearOneof(oneofDescriptor);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return PluginProtos.f14304g;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
                /* renamed from: i */
                public b mo4628clone() {
                    return (b) super.mo4628clone();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return PluginProtos.f14305h.d(File.class, b.class);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: j */
                public File mo4630getDefaultInstanceForType() {
                    return File.n();
                }

                public DescriptorProtos.GeneratedCodeInfo k() {
                    t1<DescriptorProtos.GeneratedCodeInfo, DescriptorProtos.GeneratedCodeInfo.b, Object> t1Var = this.f14327f;
                    if (t1Var == null) {
                        DescriptorProtos.GeneratedCodeInfo generatedCodeInfo = this.f14326e;
                        if (generatedCodeInfo == null) {
                            return DescriptorProtos.GeneratedCodeInfo.g();
                        }
                        return generatedCodeInfo;
                    }
                    return t1Var.e();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: m */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.File.b mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1<com.explorestack.protobuf.compiler.PluginProtos$CodeGeneratorResponse$File> r1 = com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.File.f14315h     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                        com.explorestack.protobuf.compiler.PluginProtos$CodeGeneratorResponse$File r3 = (com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.File) r3     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                        if (r3 == 0) goto Le
                        r2.o(r3)
                    Le:
                        return r2
                    Lf:
                        r3 = move-exception
                        goto L1f
                    L11:
                        r3 = move-exception
                        com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                        com.explorestack.protobuf.compiler.PluginProtos$CodeGeneratorResponse$File r4 = (com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.File) r4     // Catch: java.lang.Throwable -> Lf
                        java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                        throw r3     // Catch: java.lang.Throwable -> L1d
                    L1d:
                        r3 = move-exception
                        r0 = r4
                    L1f:
                        if (r0 == 0) goto L24
                        r2.o(r0)
                    L24:
                        throw r3
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.File.b.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.compiler.PluginProtos$CodeGeneratorResponse$File$b");
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: n */
                public b mergeFrom(Message message) {
                    if (message instanceof File) {
                        return o((File) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public b o(File file) {
                    if (file == File.n()) {
                        return this;
                    }
                    if (file.hasName()) {
                        this.f14322a |= 1;
                        this.f14323b = file.f14317b;
                        onChanged();
                    }
                    if (file.u()) {
                        this.f14322a |= 2;
                        this.f14324c = file.f14318c;
                        onChanged();
                    }
                    if (file.hasContent()) {
                        this.f14322a |= 4;
                        this.f14325d = file.f14319d;
                        onChanged();
                    }
                    if (file.t()) {
                        p(file.r());
                    }
                    mergeUnknownFields(((GeneratedMessageV3) file).unknownFields);
                    onChanged();
                    return this;
                }

                public b p(DescriptorProtos.GeneratedCodeInfo generatedCodeInfo) {
                    DescriptorProtos.GeneratedCodeInfo generatedCodeInfo2;
                    t1<DescriptorProtos.GeneratedCodeInfo, DescriptorProtos.GeneratedCodeInfo.b, Object> t1Var = this.f14327f;
                    if (t1Var == null) {
                        if ((this.f14322a & 8) != 0 && (generatedCodeInfo2 = this.f14326e) != null && generatedCodeInfo2 != DescriptorProtos.GeneratedCodeInfo.g()) {
                            this.f14326e = DescriptorProtos.GeneratedCodeInfo.j(this.f14326e).n(generatedCodeInfo).buildPartial();
                        } else {
                            this.f14326e = generatedCodeInfo;
                        }
                        onChanged();
                    } else {
                        t1Var.g(generatedCodeInfo);
                    }
                    this.f14322a |= 8;
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: q */
                public final b mergeUnknownFields(j2 j2Var) {
                    return (b) super.mergeUnknownFields(j2Var);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: r */
                public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.setField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: s */
                public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                    return (b) super.setRepeatedField(fieldDescriptor, i10, obj);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: t */
                public final b setUnknownFields(j2 j2Var) {
                    return (b) super.setUnknownFields(j2Var);
                }

                private b() {
                    this.f14323b = "";
                    this.f14324c = "";
                    this.f14325d = "";
                    maybeForceBuilderInitialization();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f14323b = "";
                    this.f14324c = "";
                    this.f14325d = "";
                    maybeForceBuilderInitialization();
                }
            }

            private File(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.f14321f = (byte) -1;
            }

            private File() {
                this.f14321f = (byte) -1;
                this.f14317b = "";
                this.f14318c = "";
                this.f14319d = "";
            }

            private File(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                    ByteString r10 = nVar.r();
                                    this.f14316a = 1 | this.f14316a;
                                    this.f14317b = r10;
                                } else if (K == 18) {
                                    ByteString r11 = nVar.r();
                                    this.f14316a |= 2;
                                    this.f14318c = r11;
                                } else if (K == 122) {
                                    ByteString r12 = nVar.r();
                                    this.f14316a |= 4;
                                    this.f14319d = r12;
                                } else if (K != 130) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    DescriptorProtos.GeneratedCodeInfo.b builder = (this.f14316a & 8) != 0 ? this.f14320e.toBuilder() : null;
                                    DescriptorProtos.GeneratedCodeInfo generatedCodeInfo = (DescriptorProtos.GeneratedCodeInfo) nVar.A(DescriptorProtos.GeneratedCodeInfo.f13884d, yVar);
                                    this.f14320e = generatedCodeInfo;
                                    if (builder != null) {
                                        builder.n(generatedCodeInfo);
                                        this.f14320e = builder.buildPartial();
                                    }
                                    this.f14316a |= 8;
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
        }

        /* loaded from: classes3.dex */
        static class a extends com.explorestack.protobuf.b<CodeGeneratorResponse> {
            a() {
            }

            @Override // com.explorestack.protobuf.j1
            /* renamed from: a */
            public CodeGeneratorResponse parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new CodeGeneratorResponse(nVar, yVar);
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return PluginProtos.f14302e;
        }

        public static CodeGeneratorResponse k() {
            return f14307f;
        }

        public static b v() {
            return f14307f.toBuilder();
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: A */
        public b toBuilder() {
            if (this == f14307f) {
                return new b();
            }
            return new b().o(this);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CodeGeneratorResponse)) {
                return super.equals(obj);
            }
            CodeGeneratorResponse codeGeneratorResponse = (CodeGeneratorResponse) obj;
            if (hasError() != codeGeneratorResponse.hasError()) {
                return false;
            }
            if ((hasError() && !q().equals(codeGeneratorResponse.q())) || u() != codeGeneratorResponse.u()) {
                return false;
            }
            if ((!u() || t() == codeGeneratorResponse.t()) && s().equals(codeGeneratorResponse.s()) && this.unknownFields.equals(codeGeneratorResponse.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<CodeGeneratorResponse> getParserForType() {
            return f14308g;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if ((this.f14309a & 1) != 0) {
                i10 = GeneratedMessageV3.computeStringSize(1, this.f14310b);
            } else {
                i10 = 0;
            }
            if ((this.f14309a & 2) != 0) {
                i10 += CodedOutputStream.a0(2, this.f14311c);
            }
            for (int i12 = 0; i12 < this.f14312d.size(); i12++) {
                i10 += CodedOutputStream.G(15, this.f14312d.get(i12));
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasError() {
            if ((this.f14309a & 1) != 0) {
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
            if (hasError()) {
                hashCode = (((hashCode * 37) + 1) * 53) + q().hashCode();
            }
            if (u()) {
                hashCode = (((hashCode * 37) + 2) * 53) + i0.i(t());
            }
            if (r() > 0) {
                hashCode = (((hashCode * 37) + 15) * 53) + s().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return PluginProtos.f14303f.d(CodeGeneratorResponse.class, b.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.f14313e;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.f14313e = (byte) 1;
            return true;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: n */
        public CodeGeneratorResponse mo4630getDefaultInstanceForType() {
            return f14307f;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new CodeGeneratorResponse();
        }

        public String q() {
            Object obj = this.f14310b;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f14310b = stringUtf8;
            }
            return stringUtf8;
        }

        public int r() {
            return this.f14312d.size();
        }

        public List<File> s() {
            return this.f14312d;
        }

        public long t() {
            return this.f14311c;
        }

        public boolean u() {
            if ((this.f14309a & 2) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.f14309a & 1) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.f14310b);
            }
            if ((this.f14309a & 2) != 0) {
                codedOutputStream.e1(2, this.f14311c);
            }
            for (int i10 = 0; i10 < this.f14312d.size(); i10++) {
                codedOutputStream.L0(15, this.f14312d.get(i10));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: y */
        public b newBuilderForType() {
            return v();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        /* renamed from: z */
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements MessageOrBuilder {

            /* renamed from: a  reason: collision with root package name */
            private int f14328a;

            /* renamed from: b  reason: collision with root package name */
            private Object f14329b;

            /* renamed from: c  reason: collision with root package name */
            private long f14330c;

            /* renamed from: d  reason: collision with root package name */
            private List<File> f14331d;

            /* renamed from: e  reason: collision with root package name */
            private p1<File, File.b, Object> f14332e;

            private void j() {
                if ((this.f14328a & 4) == 0) {
                    this.f14331d = new ArrayList(this.f14331d);
                    this.f14328a |= 4;
                }
            }

            private p1<File, File.b, Object> l() {
                boolean z10;
                if (this.f14332e == null) {
                    List<File> list = this.f14331d;
                    if ((this.f14328a & 4) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.f14332e = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.f14331d = null;
                }
                return this.f14332e;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    l();
                }
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: a */
            public b addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: b */
            public CodeGeneratorResponse build() {
                CodeGeneratorResponse buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: c */
            public CodeGeneratorResponse buildPartial() {
                int i10;
                CodeGeneratorResponse codeGeneratorResponse = new CodeGeneratorResponse(this);
                int i11 = this.f14328a;
                if ((i11 & 1) != 0) {
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                codeGeneratorResponse.f14310b = this.f14329b;
                if ((i11 & 2) != 0) {
                    codeGeneratorResponse.f14311c = this.f14330c;
                    i10 |= 2;
                }
                p1<File, File.b, Object> p1Var = this.f14332e;
                if (p1Var != null) {
                    codeGeneratorResponse.f14312d = p1Var.f();
                } else {
                    if ((this.f14328a & 4) != 0) {
                        this.f14331d = Collections.unmodifiableList(this.f14331d);
                        this.f14328a &= -5;
                    }
                    codeGeneratorResponse.f14312d = this.f14331d;
                }
                codeGeneratorResponse.f14309a = i10;
                onBuilt();
                return codeGeneratorResponse;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: e */
            public b clear() {
                super.clear();
                this.f14329b = "";
                int i10 = this.f14328a;
                this.f14330c = 0L;
                this.f14328a = i10 & (-4);
                p1<File, File.b, Object> p1Var = this.f14332e;
                if (p1Var == null) {
                    this.f14331d = Collections.emptyList();
                    this.f14328a &= -5;
                } else {
                    p1Var.g();
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: f */
            public b clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (b) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: g */
            public b clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (b) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return PluginProtos.f14302e;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: i */
            public b mo4628clone() {
                return (b) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return PluginProtos.f14303f.d(CodeGeneratorResponse.class, b.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: k */
            public CodeGeneratorResponse mo4630getDefaultInstanceForType() {
                return CodeGeneratorResponse.k();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: m */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.b mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1<com.explorestack.protobuf.compiler.PluginProtos$CodeGeneratorResponse> r1 = com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.f14308g     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    com.explorestack.protobuf.compiler.PluginProtos$CodeGeneratorResponse r3 = (com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse) r3     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.o(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.explorestack.protobuf.compiler.PluginProtos$CodeGeneratorResponse r4 = (com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.o(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.compiler.PluginProtos.CodeGeneratorResponse.b.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.compiler.PluginProtos$CodeGeneratorResponse$b");
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: n */
            public b mergeFrom(Message message) {
                if (message instanceof CodeGeneratorResponse) {
                    return o((CodeGeneratorResponse) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public b o(CodeGeneratorResponse codeGeneratorResponse) {
                if (codeGeneratorResponse == CodeGeneratorResponse.k()) {
                    return this;
                }
                if (codeGeneratorResponse.hasError()) {
                    this.f14328a |= 1;
                    this.f14329b = codeGeneratorResponse.f14310b;
                    onChanged();
                }
                if (codeGeneratorResponse.u()) {
                    s(codeGeneratorResponse.t());
                }
                if (this.f14332e == null) {
                    if (!codeGeneratorResponse.f14312d.isEmpty()) {
                        if (this.f14331d.isEmpty()) {
                            this.f14331d = codeGeneratorResponse.f14312d;
                            this.f14328a &= -5;
                        } else {
                            j();
                            this.f14331d.addAll(codeGeneratorResponse.f14312d);
                        }
                        onChanged();
                    }
                } else if (!codeGeneratorResponse.f14312d.isEmpty()) {
                    if (this.f14332e.t()) {
                        this.f14332e.h();
                        p1<File, File.b, Object> p1Var = null;
                        this.f14332e = null;
                        this.f14331d = codeGeneratorResponse.f14312d;
                        this.f14328a &= -5;
                        if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                            p1Var = l();
                        }
                        this.f14332e = p1Var;
                    } else {
                        this.f14332e.a(codeGeneratorResponse.f14312d);
                    }
                }
                mergeUnknownFields(((GeneratedMessageV3) codeGeneratorResponse).unknownFields);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: p */
            public final b mergeUnknownFields(j2 j2Var) {
                return (b) super.mergeUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: q */
            public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.setField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: r */
            public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (b) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            public b s(long j10) {
                this.f14328a |= 2;
                this.f14330c = j10;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: t */
            public final b setUnknownFields(j2 j2Var) {
                return (b) super.setUnknownFields(j2Var);
            }

            private b() {
                this.f14329b = "";
                this.f14331d = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f14329b = "";
                this.f14331d = Collections.emptyList();
                maybeForceBuilderInitialization();
            }
        }

        private CodeGeneratorResponse(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.f14313e = (byte) -1;
        }

        private CodeGeneratorResponse() {
            this.f14313e = (byte) -1;
            this.f14310b = "";
            this.f14312d = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private CodeGeneratorResponse(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                                ByteString r10 = nVar.r();
                                this.f14309a = 1 | this.f14309a;
                                this.f14310b = r10;
                            } else if (K == 16) {
                                this.f14309a |= 2;
                                this.f14311c = nVar.M();
                            } else if (K != 122) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.f14312d = new ArrayList();
                                    z11 = true;
                                }
                                this.f14312d.add(nVar.A(File.f14315h, yVar));
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
                        this.f14312d = Collections.unmodifiableList(this.f14312d);
                    }
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            if (z11 & true) {
                this.f14312d = Collections.unmodifiableList(this.f14312d);
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }
    }

    static {
        Descriptors.Descriptor descriptor = e().getMessageTypes().get(0);
        f14298a = descriptor;
        f14299b = new GeneratedMessageV3.e(descriptor, new String[]{"Major", "Minor", "Patch", "Suffix"});
        Descriptors.Descriptor descriptor2 = e().getMessageTypes().get(1);
        f14300c = descriptor2;
        f14301d = new GeneratedMessageV3.e(descriptor2, new String[]{"FileToGenerate", "Parameter", "ProtoFile", "CompilerVersion"});
        Descriptors.Descriptor descriptor3 = e().getMessageTypes().get(2);
        f14302e = descriptor3;
        f14303f = new GeneratedMessageV3.e(descriptor3, new String[]{"Error", "SupportedFeatures", "File"});
        Descriptors.Descriptor descriptor4 = descriptor3.getNestedTypes().get(0);
        f14304g = descriptor4;
        f14305h = new GeneratedMessageV3.e(descriptor4, new String[]{"Name", "InsertionPoint", "Content", "GeneratedCodeInfo"});
        DescriptorProtos.a0();
    }

    public static Descriptors.FileDescriptor e() {
        return f14306i;
    }
}
