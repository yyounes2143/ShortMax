package com.explorestack.protobuf;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.Option;
import com.explorestack.protobuf.i0;
import com.explorestack.protobuf.j2;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3.dex */
public final class Field extends GeneratedMessageV3 implements MessageOrBuilder {

    /* renamed from: l  reason: collision with root package name */
    private static final Field f14043l = new Field();

    /* renamed from: m  reason: collision with root package name */
    private static final j1<Field> f14044m = new a();

    /* renamed from: a  reason: collision with root package name */
    private int f14045a;

    /* renamed from: b  reason: collision with root package name */
    private int f14046b;

    /* renamed from: c  reason: collision with root package name */
    private int f14047c;

    /* renamed from: d  reason: collision with root package name */
    private volatile Object f14048d;

    /* renamed from: e  reason: collision with root package name */
    private volatile Object f14049e;

    /* renamed from: f  reason: collision with root package name */
    private int f14050f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f14051g;

    /* renamed from: h  reason: collision with root package name */
    private List<Option> f14052h;

    /* renamed from: i  reason: collision with root package name */
    private volatile Object f14053i;

    /* renamed from: j  reason: collision with root package name */
    private volatile Object f14054j;

    /* renamed from: k  reason: collision with root package name */
    private byte f14055k;

    /* loaded from: classes3.dex */
    public enum Cardinality implements i0.c {
        CARDINALITY_UNKNOWN(0),
        CARDINALITY_OPTIONAL(1),
        CARDINALITY_REQUIRED(2),
        CARDINALITY_REPEATED(3),
        UNRECOGNIZED(-1);
        
        public static final int CARDINALITY_OPTIONAL_VALUE = 1;
        public static final int CARDINALITY_REPEATED_VALUE = 3;
        public static final int CARDINALITY_REQUIRED_VALUE = 2;
        public static final int CARDINALITY_UNKNOWN_VALUE = 0;
        private final int value;
        private static final i0.d<Cardinality> internalValueMap = new a();
        private static final Cardinality[] VALUES = values();

        /* loaded from: classes3.dex */
        static class a implements i0.d<Cardinality> {
            a() {
            }

            @Override // com.explorestack.protobuf.i0.d
            /* renamed from: a */
            public Cardinality findValueByNumber(int i10) {
                return Cardinality.forNumber(i10);
            }
        }

        Cardinality(int i10) {
            this.value = i10;
        }

        public static Cardinality forNumber(int i10) {
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            return null;
                        }
                        return CARDINALITY_REPEATED;
                    }
                    return CARDINALITY_REQUIRED;
                }
                return CARDINALITY_OPTIONAL;
            }
            return CARDINALITY_UNKNOWN;
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return Field.getDescriptor().getEnumTypes().get(1);
        }

        public static i0.d<Cardinality> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.explorestack.protobuf.i0.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            if (this != UNRECOGNIZED) {
                return getDescriptor().getValues().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
        }

        @Deprecated
        public static Cardinality valueOf(int i10) {
            return forNumber(i10);
        }

        public static Cardinality valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                if (enumValueDescriptor.getIndex() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes3.dex */
    public enum Kind implements i0.c {
        TYPE_UNKNOWN(0),
        TYPE_DOUBLE(1),
        TYPE_FLOAT(2),
        TYPE_INT64(3),
        TYPE_UINT64(4),
        TYPE_INT32(5),
        TYPE_FIXED64(6),
        TYPE_FIXED32(7),
        TYPE_BOOL(8),
        TYPE_STRING(9),
        TYPE_GROUP(10),
        TYPE_MESSAGE(11),
        TYPE_BYTES(12),
        TYPE_UINT32(13),
        TYPE_ENUM(14),
        TYPE_SFIXED32(15),
        TYPE_SFIXED64(16),
        TYPE_SINT32(17),
        TYPE_SINT64(18),
        UNRECOGNIZED(-1);
        
        public static final int TYPE_BOOL_VALUE = 8;
        public static final int TYPE_BYTES_VALUE = 12;
        public static final int TYPE_DOUBLE_VALUE = 1;
        public static final int TYPE_ENUM_VALUE = 14;
        public static final int TYPE_FIXED32_VALUE = 7;
        public static final int TYPE_FIXED64_VALUE = 6;
        public static final int TYPE_FLOAT_VALUE = 2;
        public static final int TYPE_GROUP_VALUE = 10;
        public static final int TYPE_INT32_VALUE = 5;
        public static final int TYPE_INT64_VALUE = 3;
        public static final int TYPE_MESSAGE_VALUE = 11;
        public static final int TYPE_SFIXED32_VALUE = 15;
        public static final int TYPE_SFIXED64_VALUE = 16;
        public static final int TYPE_SINT32_VALUE = 17;
        public static final int TYPE_SINT64_VALUE = 18;
        public static final int TYPE_STRING_VALUE = 9;
        public static final int TYPE_UINT32_VALUE = 13;
        public static final int TYPE_UINT64_VALUE = 4;
        public static final int TYPE_UNKNOWN_VALUE = 0;
        private final int value;
        private static final i0.d<Kind> internalValueMap = new a();
        private static final Kind[] VALUES = values();

        /* loaded from: classes3.dex */
        static class a implements i0.d<Kind> {
            a() {
            }

            @Override // com.explorestack.protobuf.i0.d
            /* renamed from: a */
            public Kind findValueByNumber(int i10) {
                return Kind.forNumber(i10);
            }
        }

        Kind(int i10) {
            this.value = i10;
        }

        public static Kind forNumber(int i10) {
            switch (i10) {
                case 0:
                    return TYPE_UNKNOWN;
                case 1:
                    return TYPE_DOUBLE;
                case 2:
                    return TYPE_FLOAT;
                case 3:
                    return TYPE_INT64;
                case 4:
                    return TYPE_UINT64;
                case 5:
                    return TYPE_INT32;
                case 6:
                    return TYPE_FIXED64;
                case 7:
                    return TYPE_FIXED32;
                case 8:
                    return TYPE_BOOL;
                case 9:
                    return TYPE_STRING;
                case 10:
                    return TYPE_GROUP;
                case 11:
                    return TYPE_MESSAGE;
                case 12:
                    return TYPE_BYTES;
                case 13:
                    return TYPE_UINT32;
                case 14:
                    return TYPE_ENUM;
                case 15:
                    return TYPE_SFIXED32;
                case 16:
                    return TYPE_SFIXED64;
                case 17:
                    return TYPE_SINT32;
                case 18:
                    return TYPE_SINT64;
                default:
                    return null;
            }
        }

        public static final Descriptors.EnumDescriptor getDescriptor() {
            return Field.getDescriptor().getEnumTypes().get(0);
        }

        public static i0.d<Kind> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.EnumDescriptor getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.explorestack.protobuf.i0.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        public final Descriptors.EnumValueDescriptor getValueDescriptor() {
            if (this != UNRECOGNIZED) {
                return getDescriptor().getValues().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
        }

        @Deprecated
        public static Kind valueOf(int i10) {
            return forNumber(i10);
        }

        public static Kind valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
            if (enumValueDescriptor.getType() == getDescriptor()) {
                if (enumValueDescriptor.getIndex() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[enumValueDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a extends com.explorestack.protobuf.b<Field> {
        a() {
        }

        @Override // com.explorestack.protobuf.j1
        /* renamed from: a */
        public Field parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new Field(nVar, yVar, null);
        }
    }

    /* loaded from: classes3.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements MessageOrBuilder {

        /* renamed from: a  reason: collision with root package name */
        private int f14056a;

        /* renamed from: b  reason: collision with root package name */
        private int f14057b;

        /* renamed from: c  reason: collision with root package name */
        private int f14058c;

        /* renamed from: d  reason: collision with root package name */
        private int f14059d;

        /* renamed from: e  reason: collision with root package name */
        private Object f14060e;

        /* renamed from: f  reason: collision with root package name */
        private Object f14061f;

        /* renamed from: g  reason: collision with root package name */
        private int f14062g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f14063h;

        /* renamed from: i  reason: collision with root package name */
        private List<Option> f14064i;

        /* renamed from: j  reason: collision with root package name */
        private p1<Option, Option.b, Object> f14065j;

        /* renamed from: k  reason: collision with root package name */
        private Object f14066k;

        /* renamed from: l  reason: collision with root package name */
        private Object f14067l;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void j() {
            if ((this.f14056a & 1) == 0) {
                this.f14064i = new ArrayList(this.f14064i);
                this.f14056a |= 1;
            }
        }

        private p1<Option, Option.b, Object> l() {
            if (this.f14065j == null) {
                List<Option> list = this.f14064i;
                boolean z10 = true;
                if ((this.f14056a & 1) == 0) {
                    z10 = false;
                }
                this.f14065j = new p1<>(list, z10, getParentForChildren(), isClean());
                this.f14064i = null;
            }
            return this.f14065j;
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
        public Field build() {
            Field buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: c */
        public Field buildPartial() {
            Field field = new Field(this, (a) null);
            field.f14045a = this.f14057b;
            field.f14046b = this.f14058c;
            field.f14047c = this.f14059d;
            field.f14048d = this.f14060e;
            field.f14049e = this.f14061f;
            field.f14050f = this.f14062g;
            field.f14051g = this.f14063h;
            p1<Option, Option.b, Object> p1Var = this.f14065j;
            if (p1Var != null) {
                field.f14052h = p1Var.f();
            } else {
                if ((this.f14056a & 1) != 0) {
                    this.f14064i = Collections.unmodifiableList(this.f14064i);
                    this.f14056a &= -2;
                }
                field.f14052h = this.f14064i;
            }
            field.f14053i = this.f14066k;
            field.f14054j = this.f14067l;
            onBuilt();
            return field;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: e */
        public b clear() {
            super.clear();
            this.f14057b = 0;
            this.f14058c = 0;
            this.f14059d = 0;
            this.f14060e = "";
            this.f14061f = "";
            this.f14062g = 0;
            this.f14063h = false;
            p1<Option, Option.b, Object> p1Var = this.f14065j;
            if (p1Var == null) {
                this.f14064i = Collections.emptyList();
                this.f14056a &= -2;
            } else {
                p1Var.g();
            }
            this.f14066k = "";
            this.f14067l = "";
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
            return e2.f14365c;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
        /* renamed from: i */
        public b mo4628clone() {
            return (b) super.mo4628clone();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return e2.f14366d.d(Field.class, b.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: k */
        public Field mo4630getDefaultInstanceForType() {
            return Field.A();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: m */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.explorestack.protobuf.Field.b mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.Field.access$1300()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                com.explorestack.protobuf.Field r3 = (com.explorestack.protobuf.Field) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                if (r3 == 0) goto L10
                r2.n(r3)
            L10:
                return r2
            L11:
                r3 = move-exception
                goto L21
            L13:
                r3 = move-exception
                com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                com.explorestack.protobuf.Field r4 = (com.explorestack.protobuf.Field) r4     // Catch: java.lang.Throwable -> L11
                java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                throw r3     // Catch: java.lang.Throwable -> L1f
            L1f:
                r3 = move-exception
                r0 = r4
            L21:
                if (r0 == 0) goto L26
                r2.n(r0)
            L26:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.Field.b.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.Field$b");
        }

        public b n(Field field) {
            if (field == Field.A()) {
                return this;
            }
            if (field.f14045a != 0) {
                s(field.G());
            }
            if (field.f14046b != 0) {
                q(field.z());
            }
            if (field.H() != 0) {
                t(field.H());
            }
            if (!field.getName().isEmpty()) {
                this.f14060e = field.f14048d;
                onChanged();
            }
            if (!field.getTypeUrl().isEmpty()) {
                this.f14061f = field.f14049e;
                onChanged();
            }
            if (field.I() != 0) {
                u(field.I());
            }
            if (field.L()) {
                v(field.L());
            }
            if (this.f14065j == null) {
                if (!field.f14052h.isEmpty()) {
                    if (this.f14064i.isEmpty()) {
                        this.f14064i = field.f14052h;
                        this.f14056a &= -2;
                    } else {
                        j();
                        this.f14064i.addAll(field.f14052h);
                    }
                    onChanged();
                }
            } else if (!field.f14052h.isEmpty()) {
                if (this.f14065j.t()) {
                    this.f14065j.h();
                    p1<Option, Option.b, Object> p1Var = null;
                    this.f14065j = null;
                    this.f14064i = field.f14052h;
                    this.f14056a &= -2;
                    if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                        p1Var = l();
                    }
                    this.f14065j = p1Var;
                } else {
                    this.f14065j.a(field.f14052h);
                }
            }
            if (!field.E().isEmpty()) {
                this.f14066k = field.f14053i;
                onChanged();
            }
            if (!field.C().isEmpty()) {
                this.f14067l = field.f14054j;
                onChanged();
            }
            mergeUnknownFields(field.unknownFields);
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: o */
        public b mergeFrom(Message message) {
            if (message instanceof Field) {
                return n((Field) message);
            }
            super.mergeFrom(message);
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: p */
        public final b mergeUnknownFields(j2 j2Var) {
            return (b) super.mergeUnknownFields(j2Var);
        }

        public b q(int i10) {
            this.f14058c = i10;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        /* renamed from: r */
        public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.setField(fieldDescriptor, obj);
        }

        public b s(int i10) {
            this.f14057b = i10;
            onChanged();
            return this;
        }

        public b t(int i10) {
            this.f14059d = i10;
            onChanged();
            return this;
        }

        public b u(int i10) {
            this.f14062g = i10;
            onChanged();
            return this;
        }

        public b v(boolean z10) {
            this.f14063h = z10;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        /* renamed from: w */
        public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
            return (b) super.setRepeatedField(fieldDescriptor, i10, obj);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        /* renamed from: x */
        public final b setUnknownFields(j2 j2Var) {
            return (b) super.setUnknownFields(j2Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f14057b = 0;
            this.f14058c = 0;
            this.f14060e = "";
            this.f14061f = "";
            this.f14064i = Collections.emptyList();
            this.f14066k = "";
            this.f14067l = "";
            maybeForceBuilderInitialization();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f14057b = 0;
            this.f14058c = 0;
            this.f14060e = "";
            this.f14061f = "";
            this.f14064i = Collections.emptyList();
            this.f14066k = "";
            this.f14067l = "";
            maybeForceBuilderInitialization();
        }
    }

    /* synthetic */ Field(n nVar, y yVar, a aVar) throws InvalidProtocolBufferException {
        this(nVar, yVar);
    }

    public static Field A() {
        return f14043l;
    }

    public static b M() {
        return f14043l.toBuilder();
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return e2.f14365c;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: B */
    public Field mo4630getDefaultInstanceForType() {
        return f14043l;
    }

    public String C() {
        Object obj = this.f14054j;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.f14054j = stringUtf8;
        return stringUtf8;
    }

    public ByteString D() {
        Object obj = this.f14054j;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f14054j = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public String E() {
        Object obj = this.f14053i;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.f14053i = stringUtf8;
        return stringUtf8;
    }

    public ByteString F() {
        Object obj = this.f14053i;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f14053i = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public int G() {
        return this.f14045a;
    }

    public int H() {
        return this.f14047c;
    }

    public int I() {
        return this.f14050f;
    }

    public int J() {
        return this.f14052h.size();
    }

    public List<Option> K() {
        return this.f14052h;
    }

    public boolean L() {
        return this.f14051g;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    /* renamed from: N */
    public b newBuilderForType() {
        return M();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    /* renamed from: O */
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    /* renamed from: P */
    public b toBuilder() {
        if (this == f14043l) {
            return new b((a) null);
        }
        return new b((a) null).n(this);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Field)) {
            return super.equals(obj);
        }
        Field field = (Field) obj;
        if (this.f14045a == field.f14045a && this.f14046b == field.f14046b && H() == field.H() && getName().equals(field.getName()) && getTypeUrl().equals(field.getTypeUrl()) && I() == field.I() && L() == field.L() && K().equals(field.K()) && E().equals(field.E()) && C().equals(field.C()) && this.unknownFields.equals(field.unknownFields)) {
            return true;
        }
        return false;
    }

    public String getName() {
        Object obj = this.f14048d;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.f14048d = stringUtf8;
        return stringUtf8;
    }

    public ByteString getNameBytes() {
        Object obj = this.f14048d;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f14048d = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<Field> getParserForType() {
        return f14044m;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        if (this.f14045a != Kind.TYPE_UNKNOWN.getNumber()) {
            i10 = CodedOutputStream.l(1, this.f14045a);
        } else {
            i10 = 0;
        }
        if (this.f14046b != Cardinality.CARDINALITY_UNKNOWN.getNumber()) {
            i10 += CodedOutputStream.l(2, this.f14046b);
        }
        int i12 = this.f14047c;
        if (i12 != 0) {
            i10 += CodedOutputStream.x(3, i12);
        }
        if (!getNameBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(4, this.f14048d);
        }
        if (!getTypeUrlBytes().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(6, this.f14049e);
        }
        int i13 = this.f14050f;
        if (i13 != 0) {
            i10 += CodedOutputStream.x(7, i13);
        }
        boolean z10 = this.f14051g;
        if (z10) {
            i10 += CodedOutputStream.e(8, z10);
        }
        for (int i14 = 0; i14 < this.f14052h.size(); i14++) {
            i10 += CodedOutputStream.G(9, this.f14052h.get(i14));
        }
        if (!F().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(10, this.f14053i);
        }
        if (!D().isEmpty()) {
            i10 += GeneratedMessageV3.computeStringSize(11, this.f14054j);
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public String getTypeUrl() {
        Object obj = this.f14049e;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.f14049e = stringUtf8;
        return stringUtf8;
    }

    public ByteString getTypeUrlBytes() {
        Object obj = this.f14049e;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.f14049e = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
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
        int hashCode = ((((((((((((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.f14045a) * 37) + 2) * 53) + this.f14046b) * 37) + 3) * 53) + H()) * 37) + 4) * 53) + getName().hashCode()) * 37) + 6) * 53) + getTypeUrl().hashCode()) * 37) + 7) * 53) + I()) * 37) + 8) * 53) + i0.d(L());
        if (J() > 0) {
            hashCode = (((hashCode * 37) + 9) * 53) + K().hashCode();
        }
        int hashCode2 = (((((((((hashCode * 37) + 10) * 53) + E().hashCode()) * 37) + 11) * 53) + C().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return e2.f14366d.d(Field.class, b.class);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    public final boolean isInitialized() {
        byte b10 = this.f14055k;
        if (b10 == 1) {
            return true;
        }
        if (b10 == 0) {
            return false;
        }
        this.f14055k = (byte) 1;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Object newInstance(GeneratedMessageV3.f fVar) {
        return new Field();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.f14045a != Kind.TYPE_UNKNOWN.getNumber()) {
            codedOutputStream.v0(1, this.f14045a);
        }
        if (this.f14046b != Cardinality.CARDINALITY_UNKNOWN.getNumber()) {
            codedOutputStream.v0(2, this.f14046b);
        }
        int i10 = this.f14047c;
        if (i10 != 0) {
            codedOutputStream.H0(3, i10);
        }
        if (!getNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.f14048d);
        }
        if (!getTypeUrlBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 6, this.f14049e);
        }
        int i11 = this.f14050f;
        if (i11 != 0) {
            codedOutputStream.H0(7, i11);
        }
        boolean z10 = this.f14051g;
        if (z10) {
            codedOutputStream.n0(8, z10);
        }
        for (int i12 = 0; i12 < this.f14052h.size(); i12++) {
            codedOutputStream.L0(9, this.f14052h.get(i12));
        }
        if (!F().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 10, this.f14053i);
        }
        if (!D().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 11, this.f14054j);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    public int z() {
        return this.f14046b;
    }

    /* synthetic */ Field(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    private Field(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.f14055k = (byte) -1;
    }

    private Field() {
        this.f14055k = (byte) -1;
        this.f14045a = 0;
        this.f14046b = 0;
        this.f14048d = "";
        this.f14049e = "";
        this.f14052h = Collections.emptyList();
        this.f14053i = "";
        this.f14054j = "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Field(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                        case 8:
                            this.f14045a = nVar.t();
                            continue;
                        case 16:
                            this.f14046b = nVar.t();
                            continue;
                        case 24:
                            this.f14047c = nVar.y();
                            continue;
                        case 34:
                            this.f14048d = nVar.J();
                            continue;
                        case 50:
                            this.f14049e = nVar.J();
                            continue;
                        case 56:
                            this.f14050f = nVar.y();
                            continue;
                        case 64:
                            this.f14051g = nVar.q();
                            continue;
                        case 74:
                            if (!z11) {
                                this.f14052h = new ArrayList();
                                z11 = true;
                            }
                            this.f14052h.add(nVar.A(Option.parser(), yVar));
                            continue;
                        case 82:
                            this.f14053i = nVar.J();
                            continue;
                        case 90:
                            this.f14054j = nVar.J();
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
                    this.f14052h = Collections.unmodifiableList(this.f14052h);
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
                throw th2;
            }
        }
        if (z11) {
            this.f14052h = Collections.unmodifiableList(this.f14052h);
        }
        this.unknownFields = g10.build();
        makeExtensionsImmutable();
    }
}
