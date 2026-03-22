package com.explorestack.protobuf;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.ListValue;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.i0;
import com.explorestack.protobuf.j2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes3.dex */
public final class Value extends GeneratedMessageV3 implements p2 {
    public static final int BOOL_VALUE_FIELD_NUMBER = 4;
    public static final int LIST_VALUE_FIELD_NUMBER = 6;
    public static final int NULL_VALUE_FIELD_NUMBER = 1;
    public static final int NUMBER_VALUE_FIELD_NUMBER = 2;
    public static final int STRING_VALUE_FIELD_NUMBER = 3;
    public static final int STRUCT_VALUE_FIELD_NUMBER = 5;
    private static final long serialVersionUID = 0;
    private int kindCase_;
    private Object kind_;
    private byte memoizedIsInitialized;
    private static final Value DEFAULT_INSTANCE = new Value();
    private static final j1<Value> PARSER = new b<Value>() { // from class: com.explorestack.protobuf.Value.1
        @Override // com.explorestack.protobuf.j1
        public Value parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            return new Value(nVar, yVar);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.explorestack.protobuf.Value$2  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$Value$KindCase;

        static {
            int[] iArr = new int[KindCase.values().length];
            $SwitchMap$com$google$protobuf$Value$KindCase = iArr;
            try {
                iArr[KindCase.NULL_VALUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$Value$KindCase[KindCase.NUMBER_VALUE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$Value$KindCase[KindCase.STRING_VALUE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$Value$KindCase[KindCase.BOOL_VALUE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$Value$KindCase[KindCase.STRUCT_VALUE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$Value$KindCase[KindCase.LIST_VALUE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$Value$KindCase[KindCase.KIND_NOT_SET.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public enum KindCase implements i0.c {
        NULL_VALUE(1),
        NUMBER_VALUE(2),
        STRING_VALUE(3),
        BOOL_VALUE(4),
        STRUCT_VALUE(5),
        LIST_VALUE(6),
        KIND_NOT_SET(0);
        
        private final int value;

        KindCase(int i10) {
            this.value = i10;
        }

        public static KindCase forNumber(int i10) {
            switch (i10) {
                case 0:
                    return KIND_NOT_SET;
                case 1:
                    return NULL_VALUE;
                case 2:
                    return NUMBER_VALUE;
                case 3:
                    return STRING_VALUE;
                case 4:
                    return BOOL_VALUE;
                case 5:
                    return STRUCT_VALUE;
                case 6:
                    return LIST_VALUE;
                default:
                    return null;
            }
        }

        @Override // com.explorestack.protobuf.i0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static KindCase valueOf(int i10) {
            return forNumber(i10);
        }
    }

    public static Value getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return y1.f14715e;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Value parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Value) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Value parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static j1<Value> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Value)) {
            return super.equals(obj);
        }
        Value value = (Value) obj;
        if (!getKindCase().equals(value.getKindCase())) {
            return false;
        }
        switch (this.kindCase_) {
            case 1:
                if (getNullValueValue() != value.getNullValueValue()) {
                    return false;
                }
                break;
            case 2:
                if (Double.doubleToLongBits(getNumberValue()) != Double.doubleToLongBits(value.getNumberValue())) {
                    return false;
                }
                break;
            case 3:
                if (!getStringValue().equals(value.getStringValue())) {
                    return false;
                }
                break;
            case 4:
                if (getBoolValue() != value.getBoolValue()) {
                    return false;
                }
                break;
            case 5:
                if (!getStructValue().equals(value.getStructValue())) {
                    return false;
                }
                break;
            case 6:
                if (!getListValue().equals(value.getListValue())) {
                    return false;
                }
                break;
        }
        if (this.unknownFields.equals(value.unknownFields)) {
            return true;
        }
        return false;
    }

    public boolean getBoolValue() {
        if (this.kindCase_ == 4) {
            return ((Boolean) this.kind_).booleanValue();
        }
        return false;
    }

    public KindCase getKindCase() {
        return KindCase.forNumber(this.kindCase_);
    }

    public ListValue getListValue() {
        if (this.kindCase_ == 6) {
            return (ListValue) this.kind_;
        }
        return ListValue.getDefaultInstance();
    }

    public p0 getListValueOrBuilder() {
        if (this.kindCase_ == 6) {
            return (ListValue) this.kind_;
        }
        return ListValue.getDefaultInstance();
    }

    public NullValue getNullValue() {
        if (this.kindCase_ == 1) {
            NullValue valueOf = NullValue.valueOf(((Integer) this.kind_).intValue());
            if (valueOf == null) {
                return NullValue.UNRECOGNIZED;
            }
            return valueOf;
        }
        return NullValue.NULL_VALUE;
    }

    public int getNullValueValue() {
        if (this.kindCase_ == 1) {
            return ((Integer) this.kind_).intValue();
        }
        return 0;
    }

    public double getNumberValue() {
        if (this.kindCase_ == 2) {
            return ((Double) this.kind_).doubleValue();
        }
        return 0.0d;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<Value> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10;
        int i11 = this.memoizedSize;
        if (i11 != -1) {
            return i11;
        }
        if (this.kindCase_ == 1) {
            i10 = CodedOutputStream.l(1, ((Integer) this.kind_).intValue());
        } else {
            i10 = 0;
        }
        if (this.kindCase_ == 2) {
            i10 += CodedOutputStream.j(2, ((Double) this.kind_).doubleValue());
        }
        if (this.kindCase_ == 3) {
            i10 += GeneratedMessageV3.computeStringSize(3, this.kind_);
        }
        if (this.kindCase_ == 4) {
            i10 += CodedOutputStream.e(4, ((Boolean) this.kind_).booleanValue());
        }
        if (this.kindCase_ == 5) {
            i10 += CodedOutputStream.G(5, (Struct) this.kind_);
        }
        if (this.kindCase_ == 6) {
            i10 += CodedOutputStream.G(6, (ListValue) this.kind_);
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public String getStringValue() {
        Object obj;
        if (this.kindCase_ == 3) {
            obj = this.kind_;
        } else {
            obj = "";
        }
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        if (this.kindCase_ == 3) {
            this.kind_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getStringValueBytes() {
        Object obj;
        if (this.kindCase_ == 3) {
            obj = this.kind_;
        } else {
            obj = "";
        }
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            if (this.kindCase_ == 3) {
                this.kind_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public Struct getStructValue() {
        if (this.kindCase_ == 5) {
            return (Struct) this.kind_;
        }
        return Struct.getDefaultInstance();
    }

    public x1 getStructValueOrBuilder() {
        if (this.kindCase_ == 5) {
            return (Struct) this.kind_;
        }
        return Struct.getDefaultInstance();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final j2 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasBoolValue() {
        if (this.kindCase_ == 4) {
            return true;
        }
        return false;
    }

    public boolean hasListValue() {
        if (this.kindCase_ == 6) {
            return true;
        }
        return false;
    }

    public boolean hasNullValue() {
        if (this.kindCase_ == 1) {
            return true;
        }
        return false;
    }

    public boolean hasNumberValue() {
        if (this.kindCase_ == 2) {
            return true;
        }
        return false;
    }

    public boolean hasStringValue() {
        if (this.kindCase_ == 3) {
            return true;
        }
        return false;
    }

    public boolean hasStructValue() {
        if (this.kindCase_ == 5) {
            return true;
        }
        return false;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public int hashCode() {
        int i10;
        int nullValueValue;
        int i11 = this.memoizedHashCode;
        if (i11 != 0) {
            return i11;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        switch (this.kindCase_) {
            case 1:
                i10 = ((hashCode * 37) + 1) * 53;
                nullValueValue = getNullValueValue();
                hashCode = i10 + nullValueValue;
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            case 2:
                i10 = ((hashCode * 37) + 2) * 53;
                nullValueValue = i0.i(Double.doubleToLongBits(getNumberValue()));
                hashCode = i10 + nullValueValue;
                int hashCode22 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode22;
                return hashCode22;
            case 3:
                i10 = ((hashCode * 37) + 3) * 53;
                nullValueValue = getStringValue().hashCode();
                hashCode = i10 + nullValueValue;
                int hashCode222 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode222;
                return hashCode222;
            case 4:
                i10 = ((hashCode * 37) + 4) * 53;
                nullValueValue = i0.d(getBoolValue());
                hashCode = i10 + nullValueValue;
                int hashCode2222 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2222;
                return hashCode2222;
            case 5:
                i10 = ((hashCode * 37) + 5) * 53;
                nullValueValue = getStructValue().hashCode();
                hashCode = i10 + nullValueValue;
                int hashCode22222 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode22222;
                return hashCode22222;
            case 6:
                i10 = ((hashCode * 37) + 6) * 53;
                nullValueValue = getListValue().hashCode();
                hashCode = i10 + nullValueValue;
                int hashCode222222 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode222222;
                return hashCode222222;
            default:
                int hashCode2222222 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2222222;
                return hashCode2222222;
        }
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return y1.f14716f.d(Value.class, Builder.class);
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
        return new Value();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.kindCase_ == 1) {
            codedOutputStream.v0(1, ((Integer) this.kind_).intValue());
        }
        if (this.kindCase_ == 2) {
            codedOutputStream.t0(2, ((Double) this.kind_).doubleValue());
        }
        if (this.kindCase_ == 3) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.kind_);
        }
        if (this.kindCase_ == 4) {
            codedOutputStream.n0(4, ((Boolean) this.kind_).booleanValue());
        }
        if (this.kindCase_ == 5) {
            codedOutputStream.L0(5, (Struct) this.kind_);
        }
        if (this.kindCase_ == 6) {
            codedOutputStream.L0(6, (ListValue) this.kind_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* loaded from: classes3.dex */
    public static final class Builder extends GeneratedMessageV3.b<Builder> implements p2 {
        private int kindCase_;
        private Object kind_;
        private t1<ListValue, ListValue.Builder, p0> listValueBuilder_;
        private t1<Struct, Struct.Builder, x1> structValueBuilder_;

        public static final Descriptors.Descriptor getDescriptor() {
            return y1.f14715e;
        }

        private t1<ListValue, ListValue.Builder, p0> getListValueFieldBuilder() {
            if (this.listValueBuilder_ == null) {
                if (this.kindCase_ != 6) {
                    this.kind_ = ListValue.getDefaultInstance();
                }
                this.listValueBuilder_ = new t1<>((ListValue) this.kind_, getParentForChildren(), isClean());
                this.kind_ = null;
            }
            this.kindCase_ = 6;
            onChanged();
            return this.listValueBuilder_;
        }

        private t1<Struct, Struct.Builder, x1> getStructValueFieldBuilder() {
            if (this.structValueBuilder_ == null) {
                if (this.kindCase_ != 5) {
                    this.kind_ = Struct.getDefaultInstance();
                }
                this.structValueBuilder_ = new t1<>((Struct) this.kind_, getParentForChildren(), isClean());
                this.kind_ = null;
            }
            this.kindCase_ = 5;
            onChanged();
            return this.structValueBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            boolean z10 = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder clearBoolValue() {
            if (this.kindCase_ == 4) {
                this.kindCase_ = 0;
                this.kind_ = null;
                onChanged();
            }
            return this;
        }

        public Builder clearKind() {
            this.kindCase_ = 0;
            this.kind_ = null;
            onChanged();
            return this;
        }

        public Builder clearListValue() {
            t1<ListValue, ListValue.Builder, p0> t1Var = this.listValueBuilder_;
            if (t1Var == null) {
                if (this.kindCase_ == 6) {
                    this.kindCase_ = 0;
                    this.kind_ = null;
                    onChanged();
                }
            } else {
                if (this.kindCase_ == 6) {
                    this.kindCase_ = 0;
                    this.kind_ = null;
                }
                t1Var.b();
            }
            return this;
        }

        public Builder clearNullValue() {
            if (this.kindCase_ == 1) {
                this.kindCase_ = 0;
                this.kind_ = null;
                onChanged();
            }
            return this;
        }

        public Builder clearNumberValue() {
            if (this.kindCase_ == 2) {
                this.kindCase_ = 0;
                this.kind_ = null;
                onChanged();
            }
            return this;
        }

        public Builder clearStringValue() {
            if (this.kindCase_ == 3) {
                this.kindCase_ = 0;
                this.kind_ = null;
                onChanged();
            }
            return this;
        }

        public Builder clearStructValue() {
            t1<Struct, Struct.Builder, x1> t1Var = this.structValueBuilder_;
            if (t1Var == null) {
                if (this.kindCase_ == 5) {
                    this.kindCase_ = 0;
                    this.kind_ = null;
                    onChanged();
                }
            } else {
                if (this.kindCase_ == 5) {
                    this.kindCase_ = 0;
                    this.kind_ = null;
                }
                t1Var.b();
            }
            return this;
        }

        public boolean getBoolValue() {
            if (this.kindCase_ == 4) {
                return ((Boolean) this.kind_).booleanValue();
            }
            return false;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return y1.f14715e;
        }

        public KindCase getKindCase() {
            return KindCase.forNumber(this.kindCase_);
        }

        public ListValue getListValue() {
            t1<ListValue, ListValue.Builder, p0> t1Var = this.listValueBuilder_;
            if (t1Var == null) {
                if (this.kindCase_ == 6) {
                    return (ListValue) this.kind_;
                }
                return ListValue.getDefaultInstance();
            } else if (this.kindCase_ == 6) {
                return t1Var.e();
            } else {
                return ListValue.getDefaultInstance();
            }
        }

        public ListValue.Builder getListValueBuilder() {
            return getListValueFieldBuilder().d();
        }

        public p0 getListValueOrBuilder() {
            t1<ListValue, ListValue.Builder, p0> t1Var;
            int i10 = this.kindCase_;
            if (i10 == 6 && (t1Var = this.listValueBuilder_) != null) {
                return t1Var.f();
            }
            if (i10 == 6) {
                return (ListValue) this.kind_;
            }
            return ListValue.getDefaultInstance();
        }

        public NullValue getNullValue() {
            if (this.kindCase_ == 1) {
                NullValue valueOf = NullValue.valueOf(((Integer) this.kind_).intValue());
                if (valueOf == null) {
                    return NullValue.UNRECOGNIZED;
                }
                return valueOf;
            }
            return NullValue.NULL_VALUE;
        }

        public int getNullValueValue() {
            if (this.kindCase_ == 1) {
                return ((Integer) this.kind_).intValue();
            }
            return 0;
        }

        public double getNumberValue() {
            if (this.kindCase_ == 2) {
                return ((Double) this.kind_).doubleValue();
            }
            return 0.0d;
        }

        public String getStringValue() {
            Object obj;
            if (this.kindCase_ == 3) {
                obj = this.kind_;
            } else {
                obj = "";
            }
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                if (this.kindCase_ == 3) {
                    this.kind_ = stringUtf8;
                }
                return stringUtf8;
            }
            return (String) obj;
        }

        public ByteString getStringValueBytes() {
            Object obj;
            if (this.kindCase_ == 3) {
                obj = this.kind_;
            } else {
                obj = "";
            }
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                if (this.kindCase_ == 3) {
                    this.kind_ = copyFromUtf8;
                }
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public Struct getStructValue() {
            t1<Struct, Struct.Builder, x1> t1Var = this.structValueBuilder_;
            if (t1Var == null) {
                if (this.kindCase_ == 5) {
                    return (Struct) this.kind_;
                }
                return Struct.getDefaultInstance();
            } else if (this.kindCase_ == 5) {
                return t1Var.e();
            } else {
                return Struct.getDefaultInstance();
            }
        }

        public Struct.Builder getStructValueBuilder() {
            return getStructValueFieldBuilder().d();
        }

        public x1 getStructValueOrBuilder() {
            t1<Struct, Struct.Builder, x1> t1Var;
            int i10 = this.kindCase_;
            if (i10 == 5 && (t1Var = this.structValueBuilder_) != null) {
                return t1Var.f();
            }
            if (i10 == 5) {
                return (Struct) this.kind_;
            }
            return Struct.getDefaultInstance();
        }

        public boolean hasBoolValue() {
            if (this.kindCase_ == 4) {
                return true;
            }
            return false;
        }

        public boolean hasListValue() {
            if (this.kindCase_ == 6) {
                return true;
            }
            return false;
        }

        public boolean hasNullValue() {
            if (this.kindCase_ == 1) {
                return true;
            }
            return false;
        }

        public boolean hasNumberValue() {
            if (this.kindCase_ == 2) {
                return true;
            }
            return false;
        }

        public boolean hasStringValue() {
            if (this.kindCase_ == 3) {
                return true;
            }
            return false;
        }

        public boolean hasStructValue() {
            if (this.kindCase_ == 5) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return y1.f14716f.d(Value.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public Builder mergeListValue(ListValue listValue) {
            t1<ListValue, ListValue.Builder, p0> t1Var = this.listValueBuilder_;
            if (t1Var == null) {
                if (this.kindCase_ == 6 && this.kind_ != ListValue.getDefaultInstance()) {
                    this.kind_ = ListValue.newBuilder((ListValue) this.kind_).mergeFrom(listValue).buildPartial();
                } else {
                    this.kind_ = listValue;
                }
                onChanged();
            } else {
                if (this.kindCase_ == 6) {
                    t1Var.g(listValue);
                }
                this.listValueBuilder_.i(listValue);
            }
            this.kindCase_ = 6;
            return this;
        }

        public Builder mergeStructValue(Struct struct) {
            t1<Struct, Struct.Builder, x1> t1Var = this.structValueBuilder_;
            if (t1Var == null) {
                if (this.kindCase_ == 5 && this.kind_ != Struct.getDefaultInstance()) {
                    this.kind_ = Struct.newBuilder((Struct) this.kind_).mergeFrom(struct).buildPartial();
                } else {
                    this.kind_ = struct;
                }
                onChanged();
            } else {
                if (this.kindCase_ == 5) {
                    t1Var.g(struct);
                }
                this.structValueBuilder_.i(struct);
            }
            this.kindCase_ = 5;
            return this;
        }

        public Builder setBoolValue(boolean z10) {
            this.kindCase_ = 4;
            this.kind_ = Boolean.valueOf(z10);
            onChanged();
            return this;
        }

        public Builder setListValue(ListValue listValue) {
            t1<ListValue, ListValue.Builder, p0> t1Var = this.listValueBuilder_;
            if (t1Var == null) {
                listValue.getClass();
                this.kind_ = listValue;
                onChanged();
            } else {
                t1Var.i(listValue);
            }
            this.kindCase_ = 6;
            return this;
        }

        public Builder setNullValue(NullValue nullValue) {
            nullValue.getClass();
            this.kindCase_ = 1;
            this.kind_ = Integer.valueOf(nullValue.getNumber());
            onChanged();
            return this;
        }

        public Builder setNullValueValue(int i10) {
            this.kindCase_ = 1;
            this.kind_ = Integer.valueOf(i10);
            onChanged();
            return this;
        }

        public Builder setNumberValue(double d10) {
            this.kindCase_ = 2;
            this.kind_ = Double.valueOf(d10);
            onChanged();
            return this;
        }

        public Builder setStringValue(String str) {
            str.getClass();
            this.kindCase_ = 3;
            this.kind_ = str;
            onChanged();
            return this;
        }

        public Builder setStringValueBytes(ByteString byteString) {
            byteString.getClass();
            a.checkByteStringIsUtf8(byteString);
            this.kindCase_ = 3;
            this.kind_ = byteString;
            onChanged();
            return this;
        }

        public Builder setStructValue(Struct struct) {
            t1<Struct, Struct.Builder, x1> t1Var = this.structValueBuilder_;
            if (t1Var == null) {
                struct.getClass();
                this.kind_ = struct;
                onChanged();
            } else {
                t1Var.i(struct);
            }
            this.kindCase_ = 5;
            return this;
        }

        private Builder() {
            this.kindCase_ = 0;
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Value build() {
            Value buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Value buildPartial() {
            Value value = new Value(this);
            if (this.kindCase_ == 1) {
                value.kind_ = this.kind_;
            }
            if (this.kindCase_ == 2) {
                value.kind_ = this.kind_;
            }
            if (this.kindCase_ == 3) {
                value.kind_ = this.kind_;
            }
            if (this.kindCase_ == 4) {
                value.kind_ = this.kind_;
            }
            if (this.kindCase_ == 5) {
                t1<Struct, Struct.Builder, x1> t1Var = this.structValueBuilder_;
                if (t1Var == null) {
                    value.kind_ = this.kind_;
                } else {
                    value.kind_ = t1Var.a();
                }
            }
            if (this.kindCase_ == 6) {
                t1<ListValue, ListValue.Builder, p0> t1Var2 = this.listValueBuilder_;
                if (t1Var2 == null) {
                    value.kind_ = this.kind_;
                } else {
                    value.kind_ = t1Var2.a();
                }
            }
            value.kindCase_ = this.kindCase_;
            onBuilt();
            return value;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public Value mo4630getDefaultInstanceForType() {
            return Value.getDefaultInstance();
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
            this.kindCase_ = 0;
            this.kind_ = null;
            return this;
        }

        private Builder(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.kindCase_ = 0;
            maybeForceBuilderInitialization();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
        /* renamed from: clone */
        public Builder mo4628clone() {
            return (Builder) super.mo4628clone();
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Builder mergeFrom(Message message) {
            if (message instanceof Value) {
                return mergeFrom((Value) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder setListValue(ListValue.Builder builder) {
            t1<ListValue, ListValue.Builder, p0> t1Var = this.listValueBuilder_;
            if (t1Var == null) {
                this.kind_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            this.kindCase_ = 6;
            return this;
        }

        public Builder setStructValue(Struct.Builder builder) {
            t1<Struct, Struct.Builder, x1> t1Var = this.structValueBuilder_;
            if (t1Var == null) {
                this.kind_ = builder.build();
                onChanged();
            } else {
                t1Var.i(builder.build());
            }
            this.kindCase_ = 5;
            return this;
        }

        public Builder mergeFrom(Value value) {
            if (value == Value.getDefaultInstance()) {
                return this;
            }
            switch (AnonymousClass2.$SwitchMap$com$google$protobuf$Value$KindCase[value.getKindCase().ordinal()]) {
                case 1:
                    setNullValueValue(value.getNullValueValue());
                    break;
                case 2:
                    setNumberValue(value.getNumberValue());
                    break;
                case 3:
                    this.kindCase_ = 3;
                    this.kind_ = value.kind_;
                    onChanged();
                    break;
                case 4:
                    setBoolValue(value.getBoolValue());
                    break;
                case 5:
                    mergeStructValue(value.getStructValue());
                    break;
                case 6:
                    mergeListValue(value.getListValue());
                    break;
            }
            mergeUnknownFields(value.unknownFields);
            onChanged();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.explorestack.protobuf.Value.Builder mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.explorestack.protobuf.j1 r1 = com.explorestack.protobuf.Value.access$500()     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
                com.explorestack.protobuf.Value r3 = (com.explorestack.protobuf.Value) r3     // Catch: java.lang.Throwable -> L11 com.explorestack.protobuf.InvalidProtocolBufferException -> L13
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
                com.explorestack.protobuf.Value r4 = (com.explorestack.protobuf.Value) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.Value.Builder.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.Value$Builder");
        }
    }

    public static Builder newBuilder(Value value) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(value);
    }

    public static Value parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, yVar);
    }

    private Value(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.kindCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Value parseDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
        return (Value) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, yVar);
    }

    public static Value parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public Value mo4630getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public static Value parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, yVar);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Value parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public Builder newBuilderForType(GeneratedMessageV3.c cVar) {
        return new Builder(cVar);
    }

    private Value() {
        this.kindCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Value parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, yVar);
    }

    public static Value parseFrom(InputStream inputStream) throws IOException {
        return (Value) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private Value(n nVar, y yVar) throws InvalidProtocolBufferException {
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
                            int t10 = nVar.t();
                            this.kindCase_ = 1;
                            this.kind_ = Integer.valueOf(t10);
                        } else if (K == 17) {
                            this.kindCase_ = 2;
                            this.kind_ = Double.valueOf(nVar.s());
                        } else if (K == 26) {
                            String J = nVar.J();
                            this.kindCase_ = 3;
                            this.kind_ = J;
                        } else if (K != 32) {
                            if (K == 42) {
                                Struct.Builder builder = this.kindCase_ == 5 ? ((Struct) this.kind_).toBuilder() : null;
                                MessageLite A = nVar.A(Struct.parser(), yVar);
                                this.kind_ = A;
                                if (builder != null) {
                                    builder.mergeFrom((Struct) A);
                                    this.kind_ = builder.buildPartial();
                                }
                                this.kindCase_ = 5;
                            } else if (K != 50) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                ListValue.Builder builder2 = this.kindCase_ == 6 ? ((ListValue) this.kind_).toBuilder() : null;
                                MessageLite A2 = nVar.A(ListValue.parser(), yVar);
                                this.kind_ = A2;
                                if (builder2 != null) {
                                    builder2.mergeFrom((ListValue) A2);
                                    this.kind_ = builder2.buildPartial();
                                }
                                this.kindCase_ = 6;
                            }
                        } else {
                            this.kindCase_ = 4;
                            this.kind_ = Boolean.valueOf(nVar.q());
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

    public static Value parseFrom(InputStream inputStream, y yVar) throws IOException {
        return (Value) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, yVar);
    }

    public static Value parseFrom(n nVar) throws IOException {
        return (Value) GeneratedMessageV3.parseWithIOException(PARSER, nVar);
    }

    public static Value parseFrom(n nVar, y yVar) throws IOException {
        return (Value) GeneratedMessageV3.parseWithIOException(PARSER, nVar, yVar);
    }
}
