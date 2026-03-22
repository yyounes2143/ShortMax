package com.explorestack.protobuf;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.j2;
import java.io.IOException;
/* loaded from: classes3.dex */
public final class Option extends GeneratedMessageV3 implements MessageOrBuilder {

    /* renamed from: d  reason: collision with root package name */
    private static final Option f14178d = new Option();

    /* renamed from: e  reason: collision with root package name */
    private static final j1<Option> f14179e = new a();

    /* renamed from: a  reason: collision with root package name */
    private volatile Object f14180a;

    /* renamed from: b  reason: collision with root package name */
    private Any f14181b;

    /* renamed from: c  reason: collision with root package name */
    private byte f14182c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a extends com.explorestack.protobuf.b<Option> {
        a() {
        }

        @Override // com.explorestack.protobuf.j1
        /* renamed from: a */
        public Option parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new Option(nVar, yVar, null);
        }
    }

    /* loaded from: classes3.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements MessageOrBuilder {

        /* renamed from: a  reason: collision with root package name */
        private Object f14183a;

        /* renamed from: b  reason: collision with root package name */
        private Any f14184b;

        /* renamed from: c  reason: collision with root package name */
        private t1<Any, Any.Builder, e> f14185c;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void maybeForceBuilderInitialization() {
            boolean z10 = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        /* renamed from: a */
        public b addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: b */
        public Option build() {
            Option buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: c */
        public Option buildPartial() {
            Option option = new Option(this, (a) null);
            option.f14180a = this.f14183a;
            t1<Any, Any.Builder, e> t1Var = this.f14185c;
            if (t1Var == null) {
                option.f14181b = this.f14184b;
            } else {
                option.f14181b = t1Var.a();
            }
            onBuilt();
            return option;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: e */
        public b clear() {
            super.clear();
            this.f14183a = "";
            if (this.f14185c == null) {
                this.f14184b = null;
            } else {
                this.f14184b = null;
                this.f14185c = null;
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
            return e2.f14371i;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
        /* renamed from: i */
        public b mo4628clone() {
            return (b) super.mo4628clone();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return e2.f14372j.d(Option.class, b.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: j */
        public Option mo4630getDefaultInstanceForType() {
            return Option.f();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: k */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.explorestack.protobuf.Option.b mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.Option.access$500()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                com.explorestack.protobuf.Option r3 = (com.explorestack.protobuf.Option) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.m(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                com.explorestack.protobuf.Option r4 = (com.explorestack.protobuf.Option) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.m(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.Option.b.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.Option$b");
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: l */
        public b mergeFrom(Message message) {
            if (message instanceof Option) {
                return m((Option) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public b m(Option option) {
            if (option == Option.f()) {
                return this;
            }
            if (!option.getName().isEmpty()) {
                this.f14183a = option.f14180a;
                onChanged();
            }
            if (option.hasValue()) {
                o(option.h());
            }
            mergeUnknownFields(option.unknownFields);
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: n */
        public final b mergeUnknownFields(j2 j2Var) {
            return (b) super.mergeUnknownFields(j2Var);
        }

        public b o(Any any) {
            t1<Any, Any.Builder, e> t1Var = this.f14185c;
            if (t1Var == null) {
                Any any2 = this.f14184b;
                if (any2 != null) {
                    this.f14184b = Any.newBuilder(any2).mergeFrom(any).buildPartial();
                } else {
                    this.f14184b = any;
                }
                onChanged();
            } else {
                t1Var.g(any);
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        /* renamed from: p */
        public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.setField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        /* renamed from: q */
        public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
            return (b) super.setRepeatedField(fieldDescriptor, i10, obj);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        /* renamed from: r */
        public final b setUnknownFields(j2 j2Var) {
            return (b) super.setUnknownFields(j2Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f14183a = "";
            maybeForceBuilderInitialization();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f14183a = "";
            maybeForceBuilderInitialization();
        }
    }

    /* synthetic */ Option(n nVar, y yVar, a aVar) throws InvalidProtocolBufferException {
        this(nVar, yVar);
    }

    public static Option f() {
        return f14178d;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return e2.f14371i;
    }

    public static b i() {
        return f14178d.toBuilder();
    }

    public static j1<Option> parser() {
        return f14179e;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Option)) {
            return super.equals(obj);
        }
        Option option = (Option) obj;
        if (!getName().equals(option.getName()) || hasValue() != option.hasValue()) {
            return false;
        }
        if ((!hasValue() || h().equals(option.h())) && this.unknownFields.equals(option.unknownFields)) {
            return true;
        }
        return false;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: g */
    public Option mo4630getDefaultInstanceForType() {
        return f14178d;
    }

    public String getName() {
        Object obj = this.f14180a;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.f14180a = stringUtf8;
        return stringUtf8;
    }

    public ByteString getNameBytes() {
        Object obj = this.f14180a;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f14180a = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<Option> getParserForType() {
        return f14179e;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        if (!getNameBytes().isEmpty()) {
            i10 = GeneratedMessageV3.computeStringSize(1, this.f14180a);
        } else {
            i10 = 0;
        }
        if (this.f14181b != null) {
            i10 += CodedOutputStream.G(2, h());
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final j2 getUnknownFields() {
        return this.unknownFields;
    }

    public Any h() {
        Any any = this.f14181b;
        if (any == null) {
            return Any.getDefaultInstance();
        }
        return any;
    }

    public boolean hasValue() {
        if (this.f14181b != null) {
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
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
        if (hasValue()) {
            hashCode = (((hashCode * 37) + 2) * 53) + h().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return e2.f14372j.d(Option.class, b.class);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    public final boolean isInitialized() {
        byte b10 = this.f14182c;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f14182c = (byte) 1;
        return true;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    /* renamed from: j */
    public b newBuilderForType() {
        return i();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    /* renamed from: k */
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    /* renamed from: n */
    public b toBuilder() {
        if (this == f14178d) {
            return new b((a) null);
        }
        return new b((a) null).m(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.f fVar) {
        return new Option();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.f14180a);
        }
        if (this.f14181b != null) {
            codedOutputStream.L0(2, h());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Option(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    private Option(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.f14182c = (byte) -1;
    }

    private Option() {
        this.f14182c = (byte) -1;
        this.f14180a = "";
    }

    private Option(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                            this.f14180a = nVar.J();
                        } else if (K != 18) {
                            if (!parseUnknownField(nVar, g10, yVar, K)) {
                            }
                        } else {
                            Any any = this.f14181b;
                            Any.Builder builder = any != null ? any.toBuilder() : null;
                            Any any2 = (Any) nVar.A(Any.parser(), yVar);
                            this.f14181b = any2;
                            if (builder != null) {
                                builder.mergeFrom(any2);
                                this.f14181b = builder.buildPartial();
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
}
