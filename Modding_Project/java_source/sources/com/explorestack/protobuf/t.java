package com.explorestack.protobuf;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.Message;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* compiled from: DynamicMessage.java */
/* loaded from: classes3.dex */
public final class t extends AbstractMessage {

    /* renamed from: a  reason: collision with root package name */
    private final Descriptors.Descriptor f14648a;

    /* renamed from: b  reason: collision with root package name */
    private final e0<Descriptors.FieldDescriptor> f14649b;

    /* renamed from: c  reason: collision with root package name */
    private final Descriptors.FieldDescriptor[] f14650c;

    /* renamed from: d  reason: collision with root package name */
    private final j2 f14651d;

    /* renamed from: e  reason: collision with root package name */
    private int f14652e = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DynamicMessage.java */
    /* loaded from: classes3.dex */
    public class a extends com.explorestack.protobuf.b<t> {
        a() {
        }

        @Override // com.explorestack.protobuf.j1
        /* renamed from: a */
        public t parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            b j10 = t.j(t.this.f14648a);
            try {
                j10.mergeFrom(nVar, yVar);
                return j10.buildPartial();
            } catch (InvalidProtocolBufferException e10) {
                throw e10.setUnfinishedMessage(j10.buildPartial());
            } catch (IOException e11) {
                throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(j10.buildPartial());
            }
        }
    }

    /* compiled from: DynamicMessage.java */
    /* loaded from: classes3.dex */
    public static final class b extends AbstractMessage.Builder<b> {

        /* renamed from: a  reason: collision with root package name */
        private final Descriptors.Descriptor f14654a;

        /* renamed from: b  reason: collision with root package name */
        private e0<Descriptors.FieldDescriptor> f14655b;

        /* renamed from: c  reason: collision with root package name */
        private final Descriptors.FieldDescriptor[] f14656c;

        /* renamed from: d  reason: collision with root package name */
        private j2 f14657d;

        /* synthetic */ b(Descriptors.Descriptor descriptor, a aVar) {
            this(descriptor);
        }

        private void j(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            if (fieldDescriptor.isRepeated()) {
                for (Object obj2 : (List) obj) {
                    l(fieldDescriptor, obj2);
                }
                return;
            }
            l(fieldDescriptor, obj);
        }

        private void k() {
            if (this.f14655b.C()) {
                this.f14655b = this.f14655b.clone();
            }
        }

        private void l(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            i0.a(obj);
            if (obj instanceof Descriptors.EnumValueDescriptor) {
                return;
            }
            throw new IllegalArgumentException("DynamicMessage should use EnumValueDescriptor to set Enum Value.");
        }

        private void t(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.getContainingType() == this.f14654a) {
                return;
            }
            throw new IllegalArgumentException("FieldDescriptor does not match message type.");
        }

        private void u(Descriptors.OneofDescriptor oneofDescriptor) {
            if (oneofDescriptor.getContainingType() == this.f14654a) {
                return;
            }
            throw new IllegalArgumentException("OneofDescriptor does not match message type.");
        }

        @Override // com.explorestack.protobuf.Message.Builder
        /* renamed from: a */
        public b addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            t(fieldDescriptor);
            k();
            this.f14655b.g(fieldDescriptor, obj);
            return this;
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: b */
        public t build() {
            if (isInitialized()) {
                return buildPartial();
            }
            Descriptors.Descriptor descriptor = this.f14654a;
            e0<Descriptors.FieldDescriptor> e0Var = this.f14655b;
            Descriptors.FieldDescriptor[] fieldDescriptorArr = this.f14656c;
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) new t(descriptor, e0Var, (Descriptors.FieldDescriptor[]) Arrays.copyOf(fieldDescriptorArr, fieldDescriptorArr.length), this.f14657d));
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: c */
        public t buildPartial() {
            if (this.f14654a.getOptions().y()) {
                for (Descriptors.FieldDescriptor fieldDescriptor : this.f14654a.getFields()) {
                    if (fieldDescriptor.isOptional() && !this.f14655b.A(fieldDescriptor)) {
                        if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                            this.f14655b.N(fieldDescriptor, t.g(fieldDescriptor.getMessageType()));
                        } else {
                            this.f14655b.N(fieldDescriptor, fieldDescriptor.getDefaultValue());
                        }
                    }
                }
            }
            this.f14655b.H();
            Descriptors.Descriptor descriptor = this.f14654a;
            e0<Descriptors.FieldDescriptor> e0Var = this.f14655b;
            Descriptors.FieldDescriptor[] fieldDescriptorArr = this.f14656c;
            return new t(descriptor, e0Var, (Descriptors.FieldDescriptor[]) Arrays.copyOf(fieldDescriptorArr, fieldDescriptorArr.length), this.f14657d);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: e */
        public b clear() {
            if (this.f14655b.C()) {
                this.f14655b = e0.L();
            } else {
                this.f14655b.h();
            }
            this.f14657d = j2.c();
            return this;
        }

        @Override // com.explorestack.protobuf.Message.Builder
        /* renamed from: f */
        public b clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            t(fieldDescriptor);
            k();
            Descriptors.OneofDescriptor containingOneof = fieldDescriptor.getContainingOneof();
            if (containingOneof != null) {
                int index = containingOneof.getIndex();
                Descriptors.FieldDescriptor[] fieldDescriptorArr = this.f14656c;
                if (fieldDescriptorArr[index] == fieldDescriptor) {
                    fieldDescriptorArr[index] = null;
                }
            }
            this.f14655b.i(fieldDescriptor);
            return this;
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: g */
        public b clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            u(oneofDescriptor);
            Descriptors.FieldDescriptor fieldDescriptor = this.f14656c[oneofDescriptor.getIndex()];
            if (fieldDescriptor != null) {
                clearField(fieldDescriptor);
            }
            return this;
        }

        @Override // com.explorestack.protobuf.MessageOrBuilder
        public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
            return this.f14655b.s();
        }

        @Override // com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return this.f14654a;
        }

        @Override // com.explorestack.protobuf.MessageOrBuilder
        public Object getField(Descriptors.FieldDescriptor fieldDescriptor) {
            t(fieldDescriptor);
            Object t10 = this.f14655b.t(fieldDescriptor);
            if (t10 == null) {
                if (fieldDescriptor.isRepeated()) {
                    return Collections.emptyList();
                }
                if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                    return t.g(fieldDescriptor.getMessageType());
                }
                return fieldDescriptor.getDefaultValue();
            }
            return t10;
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Message.Builder getFieldBuilder(Descriptors.FieldDescriptor fieldDescriptor) {
            throw new UnsupportedOperationException("getFieldBuilder() called on a dynamic message type.");
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.FieldDescriptor getOneofFieldDescriptor(Descriptors.OneofDescriptor oneofDescriptor) {
            u(oneofDescriptor);
            return this.f14656c[oneofDescriptor.getIndex()];
        }

        @Override // com.explorestack.protobuf.MessageOrBuilder
        public Object getRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10) {
            t(fieldDescriptor);
            return this.f14655b.w(fieldDescriptor, i10);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Message.Builder getRepeatedFieldBuilder(Descriptors.FieldDescriptor fieldDescriptor, int i10) {
            throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a dynamic message type.");
        }

        @Override // com.explorestack.protobuf.MessageOrBuilder
        public int getRepeatedFieldCount(Descriptors.FieldDescriptor fieldDescriptor) {
            t(fieldDescriptor);
            return this.f14655b.x(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.MessageOrBuilder
        public j2 getUnknownFields() {
            return this.f14657d;
        }

        @Override // com.explorestack.protobuf.MessageOrBuilder
        public boolean hasField(Descriptors.FieldDescriptor fieldDescriptor) {
            t(fieldDescriptor);
            return this.f14655b.A(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageOrBuilder
        public boolean hasOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            u(oneofDescriptor);
            if (this.f14656c[oneofDescriptor.getIndex()] == null) {
                return false;
            }
            return true;
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
        /* renamed from: i */
        public b mo4628clone() {
            b bVar = new b(this.f14654a);
            bVar.f14655b.I(this.f14655b);
            bVar.mergeUnknownFields(this.f14657d);
            Descriptors.FieldDescriptor[] fieldDescriptorArr = this.f14656c;
            System.arraycopy(fieldDescriptorArr, 0, bVar.f14656c, 0, fieldDescriptorArr.length);
            return bVar;
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public boolean isInitialized() {
            return t.i(this.f14654a, this.f14655b);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: m */
        public t mo4630getDefaultInstanceForType() {
            return t.g(this.f14654a);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: n */
        public b mergeFrom(Message message) {
            if (message instanceof t) {
                t tVar = (t) message;
                if (tVar.f14648a == this.f14654a) {
                    k();
                    this.f14655b.I(tVar.f14649b);
                    mergeUnknownFields(tVar.f14651d);
                    int i10 = 0;
                    while (true) {
                        Descriptors.FieldDescriptor[] fieldDescriptorArr = this.f14656c;
                        if (i10 < fieldDescriptorArr.length) {
                            if (fieldDescriptorArr[i10] == null) {
                                fieldDescriptorArr[i10] = tVar.f14650c[i10];
                            } else if (tVar.f14650c[i10] != null && this.f14656c[i10] != tVar.f14650c[i10]) {
                                this.f14655b.i(this.f14656c[i10]);
                                this.f14656c[i10] = tVar.f14650c[i10];
                            }
                            i10++;
                        } else {
                            return this;
                        }
                    }
                } else {
                    throw new IllegalArgumentException("mergeFrom(Message) can only merge messages of the same type.");
                }
            } else {
                return (b) super.mergeFrom(message);
            }
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: o */
        public b mergeUnknownFields(j2 j2Var) {
            this.f14657d = j2.h(this.f14657d).t(j2Var).build();
            return this;
        }

        @Override // com.explorestack.protobuf.Message.Builder
        /* renamed from: p */
        public b newBuilderForField(Descriptors.FieldDescriptor fieldDescriptor) {
            t(fieldDescriptor);
            if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                return new b(fieldDescriptor.getMessageType());
            }
            throw new IllegalArgumentException("newBuilderForField is only valid for fields with message type.");
        }

        @Override // com.explorestack.protobuf.Message.Builder
        /* renamed from: q */
        public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            t(fieldDescriptor);
            k();
            if (fieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.ENUM) {
                j(fieldDescriptor, obj);
            }
            Descriptors.OneofDescriptor containingOneof = fieldDescriptor.getContainingOneof();
            if (containingOneof != null) {
                int index = containingOneof.getIndex();
                Descriptors.FieldDescriptor fieldDescriptor2 = this.f14656c[index];
                if (fieldDescriptor2 != null && fieldDescriptor2 != fieldDescriptor) {
                    this.f14655b.i(fieldDescriptor2);
                }
                this.f14656c[index] = fieldDescriptor;
            } else if (fieldDescriptor.getFile().getSyntax() == Descriptors.FileDescriptor.Syntax.PROTO3 && !fieldDescriptor.isRepeated() && fieldDescriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE && obj.equals(fieldDescriptor.getDefaultValue())) {
                this.f14655b.i(fieldDescriptor);
                return this;
            }
            this.f14655b.N(fieldDescriptor, obj);
            return this;
        }

        @Override // com.explorestack.protobuf.Message.Builder
        /* renamed from: r */
        public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
            t(fieldDescriptor);
            k();
            this.f14655b.O(fieldDescriptor, i10, obj);
            return this;
        }

        @Override // com.explorestack.protobuf.Message.Builder
        /* renamed from: s */
        public b setUnknownFields(j2 j2Var) {
            this.f14657d = j2Var;
            return this;
        }

        private b(Descriptors.Descriptor descriptor) {
            this.f14654a = descriptor;
            this.f14655b = e0.L();
            this.f14657d = j2.c();
            this.f14656c = new Descriptors.FieldDescriptor[descriptor.toProto().W()];
        }
    }

    t(Descriptors.Descriptor descriptor, e0<Descriptors.FieldDescriptor> e0Var, Descriptors.FieldDescriptor[] fieldDescriptorArr, j2 j2Var) {
        this.f14648a = descriptor;
        this.f14649b = e0Var;
        this.f14650c = fieldDescriptorArr;
        this.f14651d = j2Var;
    }

    public static t g(Descriptors.Descriptor descriptor) {
        return new t(descriptor, e0.r(), new Descriptors.FieldDescriptor[descriptor.toProto().W()], j2.c());
    }

    static boolean i(Descriptors.Descriptor descriptor, e0<Descriptors.FieldDescriptor> e0Var) {
        for (Descriptors.FieldDescriptor fieldDescriptor : descriptor.getFields()) {
            if (fieldDescriptor.isRequired() && !e0Var.A(fieldDescriptor)) {
                return false;
            }
        }
        return e0Var.D();
    }

    public static b j(Descriptors.Descriptor descriptor) {
        return new b(descriptor, null);
    }

    private void q(Descriptors.FieldDescriptor fieldDescriptor) {
        if (fieldDescriptor.getContainingType() == this.f14648a) {
            return;
        }
        throw new IllegalArgumentException("FieldDescriptor does not match message type.");
    }

    private void r(Descriptors.OneofDescriptor oneofDescriptor) {
        if (oneofDescriptor.getContainingType() == this.f14648a) {
            return;
        }
        throw new IllegalArgumentException("OneofDescriptor does not match message type.");
    }

    @Override // com.explorestack.protobuf.MessageOrBuilder
    public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
        return this.f14649b.s();
    }

    @Override // com.explorestack.protobuf.MessageOrBuilder
    public Descriptors.Descriptor getDescriptorForType() {
        return this.f14648a;
    }

    @Override // com.explorestack.protobuf.MessageOrBuilder
    public Object getField(Descriptors.FieldDescriptor fieldDescriptor) {
        q(fieldDescriptor);
        Object t10 = this.f14649b.t(fieldDescriptor);
        if (t10 == null) {
            if (fieldDescriptor.isRepeated()) {
                return Collections.emptyList();
            }
            if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                return g(fieldDescriptor.getMessageType());
            }
            return fieldDescriptor.getDefaultValue();
        }
        return t10;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageOrBuilder
    public Descriptors.FieldDescriptor getOneofFieldDescriptor(Descriptors.OneofDescriptor oneofDescriptor) {
        r(oneofDescriptor);
        return this.f14650c[oneofDescriptor.getIndex()];
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<t> getParserForType() {
        return new a();
    }

    @Override // com.explorestack.protobuf.MessageOrBuilder
    public Object getRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10) {
        q(fieldDescriptor);
        return this.f14649b.w(fieldDescriptor, i10);
    }

    @Override // com.explorestack.protobuf.MessageOrBuilder
    public int getRepeatedFieldCount(Descriptors.FieldDescriptor fieldDescriptor) {
        q(fieldDescriptor);
        return this.f14649b.x(fieldDescriptor);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int y10;
        int serializedSize;
        int i10 = this.f14652e;
        if (i10 != -1) {
            return i10;
        }
        if (this.f14648a.getOptions().z()) {
            y10 = this.f14649b.u();
            serializedSize = this.f14651d.f();
        } else {
            y10 = this.f14649b.y();
            serializedSize = this.f14651d.getSerializedSize();
        }
        int i11 = y10 + serializedSize;
        this.f14652e = i11;
        return i11;
    }

    @Override // com.explorestack.protobuf.MessageOrBuilder
    public j2 getUnknownFields() {
        return this.f14651d;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: h */
    public t mo4630getDefaultInstanceForType() {
        return g(this.f14648a);
    }

    @Override // com.explorestack.protobuf.MessageOrBuilder
    public boolean hasField(Descriptors.FieldDescriptor fieldDescriptor) {
        q(fieldDescriptor);
        return this.f14649b.A(fieldDescriptor);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageOrBuilder
    public boolean hasOneof(Descriptors.OneofDescriptor oneofDescriptor) {
        r(oneofDescriptor);
        if (this.f14650c[oneofDescriptor.getIndex()] == null) {
            return false;
        }
        return true;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    public boolean isInitialized() {
        return i(this.f14648a, this.f14649b);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    /* renamed from: k */
    public b newBuilderForType() {
        return new b(this.f14648a, null);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    /* renamed from: n */
    public b toBuilder() {
        return newBuilderForType().mergeFrom(this);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.f14648a.getOptions().z()) {
            this.f14649b.T(codedOutputStream);
            this.f14651d.l(codedOutputStream);
            return;
        }
        this.f14649b.V(codedOutputStream);
        this.f14651d.writeTo(codedOutputStream);
    }
}
