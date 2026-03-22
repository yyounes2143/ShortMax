package com.explorestack.protobuf;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.WireFormat;
import com.explorestack.protobuf.t0;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;
import java.util.TreeMap;
/* compiled from: MapEntry.java */
/* loaded from: classes3.dex */
public final class s0<K, V> extends AbstractMessage {

    /* renamed from: a  reason: collision with root package name */
    private final K f14632a;

    /* renamed from: b  reason: collision with root package name */
    private final V f14633b;

    /* renamed from: c  reason: collision with root package name */
    private final c<K, V> f14634c;

    /* renamed from: d  reason: collision with root package name */
    private volatile int f14635d;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MapEntry.java */
    /* loaded from: classes3.dex */
    public static final class c<K, V> extends t0.b<K, V> {

        /* renamed from: e  reason: collision with root package name */
        public final Descriptors.Descriptor f14641e;

        /* renamed from: f  reason: collision with root package name */
        public final j1<s0<K, V>> f14642f;

        /* compiled from: MapEntry.java */
        /* loaded from: classes3.dex */
        class a extends com.explorestack.protobuf.b<s0<K, V>> {
            a() {
            }

            @Override // com.explorestack.protobuf.j1
            /* renamed from: a */
            public s0<K, V> parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new s0<>(c.this, nVar, yVar);
            }
        }

        public c(Descriptors.Descriptor descriptor, s0<K, V> s0Var, WireFormat.FieldType fieldType, WireFormat.FieldType fieldType2) {
            super(fieldType, ((s0) s0Var).f14632a, fieldType2, ((s0) s0Var).f14633b);
            this.f14641e = descriptor;
            this.f14642f = new a();
        }
    }

    private void f(Descriptors.FieldDescriptor fieldDescriptor) {
        if (fieldDescriptor.getContainingType() == this.f14634c.f14641e) {
            return;
        }
        throw new RuntimeException("Wrong FieldDescriptor \"" + fieldDescriptor.getFullName() + "\" used in message \"" + this.f14634c.f14641e.getFullName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <V> boolean k(c cVar, V v10) {
        if (cVar.f14662c.getJavaType() == WireFormat.JavaType.MESSAGE) {
            return ((MessageLite) v10).isInitialized();
        }
        return true;
    }

    public static <K, V> s0<K, V> q(Descriptors.Descriptor descriptor, WireFormat.FieldType fieldType, K k10, WireFormat.FieldType fieldType2, V v10) {
        return new s0<>(descriptor, fieldType, k10, fieldType2, v10);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: g */
    public s0<K, V> mo4630getDefaultInstanceForType() {
        c<K, V> cVar = this.f14634c;
        return new s0<>(cVar, cVar.f14661b, cVar.f14663d);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.explorestack.protobuf.MessageOrBuilder
    public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
        TreeMap treeMap = new TreeMap();
        for (Descriptors.FieldDescriptor fieldDescriptor : this.f14634c.f14641e.getFields()) {
            if (hasField(fieldDescriptor)) {
                treeMap.put(fieldDescriptor, getField(fieldDescriptor));
            }
        }
        return Collections.unmodifiableMap(treeMap);
    }

    @Override // com.explorestack.protobuf.MessageOrBuilder
    public Descriptors.Descriptor getDescriptorForType() {
        return this.f14634c.f14641e;
    }

    @Override // com.explorestack.protobuf.MessageOrBuilder
    public Object getField(Descriptors.FieldDescriptor fieldDescriptor) {
        Object j10;
        f(fieldDescriptor);
        if (fieldDescriptor.getNumber() == 1) {
            j10 = h();
        } else {
            j10 = j();
        }
        if (fieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.ENUM) {
            return fieldDescriptor.m4629getEnumType().findValueByNumberCreatingIfUnknown(((Integer) j10).intValue());
        }
        return j10;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<s0<K, V>> getParserForType() {
        return this.f14634c.f14642f;
    }

    @Override // com.explorestack.protobuf.MessageOrBuilder
    public Object getRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10) {
        throw new RuntimeException("There is no repeated field in a map entry message.");
    }

    @Override // com.explorestack.protobuf.MessageOrBuilder
    public int getRepeatedFieldCount(Descriptors.FieldDescriptor fieldDescriptor) {
        throw new RuntimeException("There is no repeated field in a map entry message.");
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        if (this.f14635d != -1) {
            return this.f14635d;
        }
        int b10 = t0.b(this.f14634c, this.f14632a, this.f14633b);
        this.f14635d = b10;
        return b10;
    }

    @Override // com.explorestack.protobuf.MessageOrBuilder
    public j2 getUnknownFields() {
        return j2.c();
    }

    public K h() {
        return this.f14632a;
    }

    @Override // com.explorestack.protobuf.MessageOrBuilder
    public boolean hasField(Descriptors.FieldDescriptor fieldDescriptor) {
        f(fieldDescriptor);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final c<K, V> i() {
        return this.f14634c;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    public boolean isInitialized() {
        return k(this.f14634c, this.f14633b);
    }

    public V j() {
        return this.f14633b;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    /* renamed from: n */
    public b<K, V> newBuilderForType() {
        return new b<>(this.f14634c);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    /* renamed from: r */
    public b<K, V> toBuilder() {
        return new b<>(this.f14634c, this.f14632a, this.f14633b, true, true);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        t0.f(codedOutputStream, this.f14634c, this.f14632a, this.f14633b);
    }

    /* compiled from: MapEntry.java */
    /* loaded from: classes3.dex */
    public static class b<K, V> extends AbstractMessage.Builder<b<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        private final c<K, V> f14636a;

        /* renamed from: b  reason: collision with root package name */
        private K f14637b;

        /* renamed from: c  reason: collision with root package name */
        private V f14638c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f14639d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f14640e;

        private void e(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.getContainingType() == this.f14636a.f14641e) {
                return;
            }
            throw new RuntimeException("Wrong FieldDescriptor \"" + fieldDescriptor.getFullName() + "\" used in message \"" + this.f14636a.f14641e.getFullName());
        }

        @Override // com.explorestack.protobuf.Message.Builder
        /* renamed from: a */
        public b<K, V> addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            throw new RuntimeException("There is no repeated field in a map entry message.");
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: b */
        public s0<K, V> build() {
            s0<K, V> buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: c */
        public s0<K, V> buildPartial() {
            return new s0<>(this.f14636a, this.f14637b, this.f14638c);
        }

        @Override // com.explorestack.protobuf.Message.Builder
        /* renamed from: f */
        public b<K, V> clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            e(fieldDescriptor);
            if (fieldDescriptor.getNumber() == 1) {
                g();
            } else {
                i();
            }
            return this;
        }

        public b<K, V> g() {
            this.f14637b = this.f14636a.f14661b;
            this.f14639d = false;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.explorestack.protobuf.MessageOrBuilder
        public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
            TreeMap treeMap = new TreeMap();
            for (Descriptors.FieldDescriptor fieldDescriptor : this.f14636a.f14641e.getFields()) {
                if (hasField(fieldDescriptor)) {
                    treeMap.put(fieldDescriptor, getField(fieldDescriptor));
                }
            }
            return Collections.unmodifiableMap(treeMap);
        }

        @Override // com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return this.f14636a.f14641e;
        }

        @Override // com.explorestack.protobuf.MessageOrBuilder
        public Object getField(Descriptors.FieldDescriptor fieldDescriptor) {
            Object m10;
            e(fieldDescriptor);
            if (fieldDescriptor.getNumber() == 1) {
                m10 = l();
            } else {
                m10 = m();
            }
            if (fieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.ENUM) {
                return fieldDescriptor.m4629getEnumType().findValueByNumberCreatingIfUnknown(((Integer) m10).intValue());
            }
            return m10;
        }

        @Override // com.explorestack.protobuf.MessageOrBuilder
        public Object getRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10) {
            throw new RuntimeException("There is no repeated field in a map entry message.");
        }

        @Override // com.explorestack.protobuf.MessageOrBuilder
        public int getRepeatedFieldCount(Descriptors.FieldDescriptor fieldDescriptor) {
            throw new RuntimeException("There is no repeated field in a map entry message.");
        }

        @Override // com.explorestack.protobuf.MessageOrBuilder
        public j2 getUnknownFields() {
            return j2.c();
        }

        @Override // com.explorestack.protobuf.MessageOrBuilder
        public boolean hasField(Descriptors.FieldDescriptor fieldDescriptor) {
            e(fieldDescriptor);
            if (fieldDescriptor.getNumber() == 1) {
                return this.f14639d;
            }
            return this.f14640e;
        }

        public b<K, V> i() {
            this.f14638c = this.f14636a.f14663d;
            this.f14640e = false;
            return this;
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public boolean isInitialized() {
            return s0.k(this.f14636a, this.f14638c);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
        /* renamed from: j */
        public b<K, V> mo4628clone() {
            return new b<>(this.f14636a, this.f14637b, this.f14638c, this.f14639d, this.f14640e);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: k */
        public s0<K, V> mo4630getDefaultInstanceForType() {
            c<K, V> cVar = this.f14636a;
            return new s0<>(cVar, cVar.f14661b, cVar.f14663d);
        }

        public K l() {
            return this.f14637b;
        }

        public V m() {
            return this.f14638c;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.explorestack.protobuf.Message.Builder
        /* renamed from: n */
        public b<K, V> setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            e(fieldDescriptor);
            if (fieldDescriptor.getNumber() == 1) {
                o(obj);
            } else {
                if (fieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.ENUM) {
                    obj = Integer.valueOf(((Descriptors.EnumValueDescriptor) obj).getNumber());
                } else if (fieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.MESSAGE && obj != null && !this.f14636a.f14663d.getClass().isInstance(obj)) {
                    obj = ((Message) this.f14636a.f14663d).toBuilder().mergeFrom((Message) obj).build();
                }
                r(obj);
            }
            return this;
        }

        @Override // com.explorestack.protobuf.Message.Builder
        public Message.Builder newBuilderForField(Descriptors.FieldDescriptor fieldDescriptor) {
            e(fieldDescriptor);
            if (fieldDescriptor.getNumber() == 2 && fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                return ((Message) this.f14638c).newBuilderForType();
            }
            throw new RuntimeException("\"" + fieldDescriptor.getFullName() + "\" is not a message value field.");
        }

        public b<K, V> o(K k10) {
            this.f14637b = k10;
            this.f14639d = true;
            return this;
        }

        @Override // com.explorestack.protobuf.Message.Builder
        /* renamed from: p */
        public b<K, V> setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
            throw new RuntimeException("There is no repeated field in a map entry message.");
        }

        public b<K, V> r(V v10) {
            this.f14638c = v10;
            this.f14640e = true;
            return this;
        }

        private b(c<K, V> cVar) {
            this(cVar, cVar.f14661b, cVar.f14663d, false, false);
        }

        private b(c<K, V> cVar, K k10, V v10, boolean z10, boolean z11) {
            this.f14636a = cVar;
            this.f14637b = k10;
            this.f14638c = v10;
            this.f14639d = z10;
            this.f14640e = z11;
        }

        @Override // com.explorestack.protobuf.Message.Builder
        /* renamed from: q */
        public b<K, V> setUnknownFields(j2 j2Var) {
            return this;
        }
    }

    private s0(Descriptors.Descriptor descriptor, WireFormat.FieldType fieldType, K k10, WireFormat.FieldType fieldType2, V v10) {
        this.f14635d = -1;
        this.f14632a = k10;
        this.f14633b = v10;
        this.f14634c = new c<>(descriptor, this, fieldType, fieldType2);
    }

    private s0(c cVar, K k10, V v10) {
        this.f14635d = -1;
        this.f14632a = k10;
        this.f14633b = v10;
        this.f14634c = cVar;
    }

    private s0(c<K, V> cVar, n nVar, y yVar) throws InvalidProtocolBufferException {
        this.f14635d = -1;
        try {
            this.f14634c = cVar;
            Map.Entry d10 = t0.d(nVar, cVar, yVar);
            this.f14632a = (K) d10.getKey();
            this.f14633b = (V) d10.getValue();
        } catch (InvalidProtocolBufferException e10) {
            throw e10.setUnfinishedMessage(this);
        } catch (IOException e11) {
            throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
        }
    }
}
