package com.explorestack.protobuf;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageLite;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.MessageReflection;
import com.explorestack.protobuf.WireFormat;
import com.explorestack.protobuf.e0;
import com.explorestack.protobuf.i0;
import com.explorestack.protobuf.j2;
import com.explorestack.protobuf.k0;
import com.explorestack.protobuf.t;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes3.dex */
public abstract class GeneratedMessageV3 extends AbstractMessage implements Serializable {
    protected static boolean alwaysUseFieldBuilders = false;
    private static final long serialVersionUID = 1;
    protected j2 unknownFields;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AbstractMessage.BuilderParent f14093a;

        a(AbstractMessage.BuilderParent builderParent) {
            this.f14093a = builderParent;
        }

        @Override // com.explorestack.protobuf.AbstractMessage.BuilderParent
        public void markDirty() {
            this.f14093a.markDirty();
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class b<BuilderType extends b<BuilderType>> extends AbstractMessage.Builder<BuilderType> {
        private c builderParent;
        private boolean isClean;
        private b<BuilderType>.a meAsParent;
        private j2 unknownFields;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public class a implements c {
            private a() {
            }

            @Override // com.explorestack.protobuf.AbstractMessage.BuilderParent
            public void markDirty() {
                b.this.onChanged();
            }

            /* synthetic */ a(b bVar, a aVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public b() {
            this(null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Map<Descriptors.FieldDescriptor, Object> getAllFieldsMutable() {
            TreeMap treeMap = new TreeMap();
            List<Descriptors.FieldDescriptor> fields = internalGetFieldAccessorTable().f14097a.getFields();
            int i10 = 0;
            while (i10 < fields.size()) {
                Descriptors.FieldDescriptor fieldDescriptor = fields.get(i10);
                Descriptors.OneofDescriptor containingOneof = fieldDescriptor.getContainingOneof();
                if (containingOneof != null) {
                    i10 += containingOneof.getFieldCount() - 1;
                    if (hasOneof(containingOneof)) {
                        fieldDescriptor = getOneofFieldDescriptor(containingOneof);
                        treeMap.put(fieldDescriptor, getField(fieldDescriptor));
                        i10++;
                    } else {
                        i10++;
                    }
                } else {
                    if (fieldDescriptor.isRepeated()) {
                        List list = (List) getField(fieldDescriptor);
                        if (!list.isEmpty()) {
                            treeMap.put(fieldDescriptor, list);
                        }
                    } else {
                        if (!hasField(fieldDescriptor)) {
                        }
                        treeMap.put(fieldDescriptor, getField(fieldDescriptor));
                    }
                    i10++;
                }
            }
            return treeMap;
        }

        private BuilderType setUnknownFieldsInternal(j2 j2Var) {
            this.unknownFields = j2Var;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder
        void dispose() {
            this.builderParent = null;
        }

        @Override // com.explorestack.protobuf.MessageOrBuilder
        public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
            return Collections.unmodifiableMap(getAllFieldsMutable());
        }

        public Descriptors.Descriptor getDescriptorForType() {
            return internalGetFieldAccessorTable().f14097a;
        }

        @Override // com.explorestack.protobuf.MessageOrBuilder
        public Object getField(Descriptors.FieldDescriptor fieldDescriptor) {
            Object c10 = internalGetFieldAccessorTable().e(fieldDescriptor).c(this);
            if (fieldDescriptor.isRepeated()) {
                return Collections.unmodifiableList((List) c10);
            }
            return c10;
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Message.Builder getFieldBuilder(Descriptors.FieldDescriptor fieldDescriptor) {
            return internalGetFieldAccessorTable().e(fieldDescriptor).m(this);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.FieldDescriptor getOneofFieldDescriptor(Descriptors.OneofDescriptor oneofDescriptor) {
            return internalGetFieldAccessorTable().f(oneofDescriptor).b(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public c getParentForChildren() {
            if (this.meAsParent == null) {
                this.meAsParent = new a(this, null);
            }
            return this.meAsParent;
        }

        @Override // com.explorestack.protobuf.MessageOrBuilder
        public Object getRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10) {
            return internalGetFieldAccessorTable().e(fieldDescriptor).d(this, i10);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Message.Builder getRepeatedFieldBuilder(Descriptors.FieldDescriptor fieldDescriptor, int i10) {
            return internalGetFieldAccessorTable().e(fieldDescriptor).n(this, i10);
        }

        @Override // com.explorestack.protobuf.MessageOrBuilder
        public int getRepeatedFieldCount(Descriptors.FieldDescriptor fieldDescriptor) {
            return internalGetFieldAccessorTable().e(fieldDescriptor).l(this);
        }

        @Override // com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.MessageOrBuilder
        public boolean hasField(Descriptors.FieldDescriptor fieldDescriptor) {
            return internalGetFieldAccessorTable().e(fieldDescriptor).g(this);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageOrBuilder
        public boolean hasOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            return internalGetFieldAccessorTable().f(oneofDescriptor).d(this);
        }

        protected abstract e internalGetFieldAccessorTable();

        protected MapField internalGetMapField(int i10) {
            throw new RuntimeException("No map fields found in " + getClass().getName());
        }

        protected MapField internalGetMutableMapField(int i10) {
            throw new RuntimeException("No map fields found in " + getClass().getName());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public boolean isClean() {
            return this.isClean;
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public boolean isInitialized() {
            for (Descriptors.FieldDescriptor fieldDescriptor : getDescriptorForType().getFields()) {
                if (fieldDescriptor.isRequired() && !hasField(fieldDescriptor)) {
                    return false;
                }
                if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                    if (fieldDescriptor.isRepeated()) {
                        for (Message message : (List) getField(fieldDescriptor)) {
                            if (!message.isInitialized()) {
                                return false;
                            }
                        }
                        continue;
                    } else if (hasField(fieldDescriptor) && !((Message) getField(fieldDescriptor)).isInitialized()) {
                        return false;
                    }
                }
            }
            return true;
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder
        protected void markClean() {
            this.isClean = true;
        }

        @Override // com.explorestack.protobuf.Message.Builder
        public Message.Builder newBuilderForField(Descriptors.FieldDescriptor fieldDescriptor) {
            return internalGetFieldAccessorTable().e(fieldDescriptor).p();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onBuilt() {
            if (this.builderParent != null) {
                markClean();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void onChanged() {
            c cVar;
            if (this.isClean && (cVar = this.builderParent) != null) {
                cVar.markDirty();
                this.isClean = false;
            }
        }

        protected BuilderType setUnknownFieldsProto3(j2 j2Var) {
            return setUnknownFieldsInternal(j2Var);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public b(c cVar) {
            this.unknownFields = j2.c();
            this.builderParent = cVar;
        }

        public BuilderType addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            internalGetFieldAccessorTable().e(fieldDescriptor).e(this, obj);
            return this;
        }

        public BuilderType clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            internalGetFieldAccessorTable().e(fieldDescriptor).a(this);
            return this;
        }

        public BuilderType setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            internalGetFieldAccessorTable().e(fieldDescriptor).j(this, obj);
            return this;
        }

        public BuilderType setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
            internalGetFieldAccessorTable().e(fieldDescriptor).k(this, i10, obj);
            return this;
        }

        public BuilderType setUnknownFields(j2 j2Var) {
            return setUnknownFieldsInternal(j2Var);
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public BuilderType clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            internalGetFieldAccessorTable().f(oneofDescriptor).a(this);
            return this;
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public BuilderType mergeUnknownFields(j2 j2Var) {
            return setUnknownFields(j2.h(this.unknownFields).t(j2Var).build());
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public BuilderType clear() {
            this.unknownFields = j2.c();
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
        /* renamed from: clone */
        public BuilderType mo4628clone() {
            BuilderType buildertype = (BuilderType) getDefaultInstanceForType().newBuilderForType();
            buildertype.mergeFrom(buildPartial());
            return buildertype;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes3.dex */
    public interface c extends AbstractMessage.BuilderParent {
    }

    /* loaded from: classes3.dex */
    public static abstract class d<MessageType extends ExtendableMessage, BuilderType extends d<MessageType, BuilderType>> extends b<BuilderType> implements MessageOrBuilder {

        /* renamed from: a  reason: collision with root package name */
        private e0.b<Descriptors.FieldDescriptor> f14096a;

        /* JADX INFO: Access modifiers changed from: protected */
        public d() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public e0<Descriptors.FieldDescriptor> c() {
            e0.b<Descriptors.FieldDescriptor> bVar = this.f14096a;
            if (bVar == null) {
                return e0.r();
            }
            return bVar.b();
        }

        private void g() {
            if (this.f14096a == null) {
                this.f14096a = e0.K();
            }
        }

        private void m(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.getContainingType() == getDescriptorForType()) {
                return;
            }
            throw new IllegalArgumentException("FieldDescriptor does not match message type.");
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        /* renamed from: b */
        public BuilderType addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            if (fieldDescriptor.isExtension()) {
                m(fieldDescriptor);
                g();
                this.f14096a.a(fieldDescriptor, obj);
                onChanged();
                return this;
            }
            return (BuilderType) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: e */
        public BuilderType clear() {
            this.f14096a = null;
            return (BuilderType) super.clear();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        /* renamed from: f */
        public BuilderType clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.isExtension()) {
                m(fieldDescriptor);
                g();
                this.f14096a.c(fieldDescriptor);
                onChanged();
                return this;
            }
            return (BuilderType) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.MessageOrBuilder
        public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
            Map allFieldsMutable = getAllFieldsMutable();
            e0.b<Descriptors.FieldDescriptor> bVar = this.f14096a;
            if (bVar != null) {
                allFieldsMutable.putAll(bVar.e());
            }
            return Collections.unmodifiableMap(allFieldsMutable);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.MessageOrBuilder
        public Object getField(Descriptors.FieldDescriptor fieldDescriptor) {
            Object f10;
            if (fieldDescriptor.isExtension()) {
                m(fieldDescriptor);
                e0.b<Descriptors.FieldDescriptor> bVar = this.f14096a;
                if (bVar == null) {
                    f10 = null;
                } else {
                    f10 = bVar.f(fieldDescriptor);
                }
                if (f10 == null) {
                    if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                        return t.g(fieldDescriptor.getMessageType());
                    }
                    return fieldDescriptor.getDefaultValue();
                }
                return f10;
            }
            return super.getField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Message.Builder getFieldBuilder(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.isExtension()) {
                m(fieldDescriptor);
                if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                    g();
                    Object g10 = this.f14096a.g(fieldDescriptor);
                    if (g10 == null) {
                        t.b j10 = t.j(fieldDescriptor.getMessageType());
                        this.f14096a.s(fieldDescriptor, j10);
                        onChanged();
                        return j10;
                    } else if (g10 instanceof Message.Builder) {
                        return (Message.Builder) g10;
                    } else {
                        if (g10 instanceof Message) {
                            Message.Builder builder = ((Message) g10).toBuilder();
                            this.f14096a.s(fieldDescriptor, builder);
                            onChanged();
                            return builder;
                        }
                        throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
                    }
                }
                throw new UnsupportedOperationException("getFieldBuilder() called on a non-Message type.");
            }
            return super.getFieldBuilder(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.MessageOrBuilder
        public Object getRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10) {
            if (fieldDescriptor.isExtension()) {
                m(fieldDescriptor);
                e0.b<Descriptors.FieldDescriptor> bVar = this.f14096a;
                if (bVar != null) {
                    return bVar.h(fieldDescriptor, i10);
                }
                throw new IndexOutOfBoundsException();
            }
            return super.getRepeatedField(fieldDescriptor, i10);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public Message.Builder getRepeatedFieldBuilder(Descriptors.FieldDescriptor fieldDescriptor, int i10) {
            if (fieldDescriptor.isExtension()) {
                m(fieldDescriptor);
                g();
                if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                    Object i11 = this.f14096a.i(fieldDescriptor, i10);
                    if (i11 instanceof Message.Builder) {
                        return (Message.Builder) i11;
                    }
                    if (i11 instanceof Message) {
                        Message.Builder builder = ((Message) i11).toBuilder();
                        this.f14096a.t(fieldDescriptor, i10, builder);
                        onChanged();
                        return builder;
                    }
                    throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
                }
                throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
            }
            return super.getRepeatedFieldBuilder(fieldDescriptor, i10);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.MessageOrBuilder
        public int getRepeatedFieldCount(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.isExtension()) {
                m(fieldDescriptor);
                e0.b<Descriptors.FieldDescriptor> bVar = this.f14096a;
                if (bVar == null) {
                    return 0;
                }
                return bVar.j(fieldDescriptor);
            }
            return super.getRepeatedFieldCount(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.MessageOrBuilder
        public boolean hasField(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.isExtension()) {
                m(fieldDescriptor);
                e0.b<Descriptors.FieldDescriptor> bVar = this.f14096a;
                if (bVar == null) {
                    return false;
                }
                return bVar.k(fieldDescriptor);
            }
            return super.hasField(fieldDescriptor);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public boolean i() {
            e0.b<Descriptors.FieldDescriptor> bVar = this.f14096a;
            if (bVar == null) {
                return true;
            }
            return bVar.l();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public boolean isInitialized() {
            if (super.isInitialized() && i()) {
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void j(ExtendableMessage extendableMessage) {
            if (extendableMessage.f14088a != null) {
                g();
                this.f14096a.m(extendableMessage.f14088a);
                onChanged();
            }
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        /* renamed from: k */
        public BuilderType setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            if (fieldDescriptor.isExtension()) {
                m(fieldDescriptor);
                g();
                this.f14096a.s(fieldDescriptor, obj);
                onChanged();
                return this;
            }
            return (BuilderType) super.setField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        /* renamed from: l */
        public BuilderType setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
            if (fieldDescriptor.isExtension()) {
                m(fieldDescriptor);
                g();
                this.f14096a.t(fieldDescriptor, i10, obj);
                onChanged();
                return this;
            }
            return (BuilderType) super.setRepeatedField(fieldDescriptor, i10, obj);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
        public Message.Builder newBuilderForField(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.isExtension()) {
                return t.j(fieldDescriptor.getMessageType());
            }
            return super.newBuilderForField(fieldDescriptor);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public d(c cVar) {
            super(cVar);
        }
    }

    /* loaded from: classes3.dex */
    protected static final class f {

        /* renamed from: a  reason: collision with root package name */
        static final f f14155a = new f();

        private f() {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public GeneratedMessageV3() {
        this.unknownFields = j2.c();
    }

    protected static boolean canUseUnsafe() {
        if (o2.J() && o2.K()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <MessageType extends ExtendableMessage<MessageType>, T> u<MessageType, T> checkNotLite(v<MessageType, T> vVar) {
        if (!vVar.a()) {
            return (u) vVar;
        }
        throw new IllegalArgumentException("Expected non-lite extension.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int computeStringSize(int i10, Object obj) {
        if (obj instanceof String) {
            return CodedOutputStream.V(i10, (String) obj);
        }
        return CodedOutputStream.h(i10, (ByteString) obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int computeStringSizeNoTag(Object obj) {
        if (obj instanceof String) {
            return CodedOutputStream.W((String) obj);
        }
        return CodedOutputStream.i((ByteString) obj);
    }

    protected static i0.a emptyBooleanList() {
        return j.f();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static i0.b emptyDoubleList() {
        return r.f();
    }

    protected static i0.f emptyFloatList() {
        return f0.f();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static i0.g emptyIntList() {
        return h0.f();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static i0.i emptyLongList() {
        return q0.f();
    }

    static void enableAlwaysUseFieldBuildersForTesting() {
        setAlwaysUseFieldBuildersForTesting(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<Descriptors.FieldDescriptor, Object> getAllFieldsMutable(boolean z10) {
        TreeMap treeMap = new TreeMap();
        List<Descriptors.FieldDescriptor> fields = internalGetFieldAccessorTable().f14097a.getFields();
        int i10 = 0;
        while (i10 < fields.size()) {
            Descriptors.FieldDescriptor fieldDescriptor = fields.get(i10);
            Descriptors.OneofDescriptor containingOneof = fieldDescriptor.getContainingOneof();
            if (containingOneof != null) {
                i10 += containingOneof.getFieldCount() - 1;
                if (hasOneof(containingOneof)) {
                    fieldDescriptor = getOneofFieldDescriptor(containingOneof);
                    if (!z10 && fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.STRING) {
                        treeMap.put(fieldDescriptor, getFieldRaw(fieldDescriptor));
                    } else {
                        treeMap.put(fieldDescriptor, getField(fieldDescriptor));
                    }
                    i10++;
                } else {
                    i10++;
                }
            } else {
                if (fieldDescriptor.isRepeated()) {
                    List list = (List) getField(fieldDescriptor);
                    if (!list.isEmpty()) {
                        treeMap.put(fieldDescriptor, list);
                    }
                } else {
                    if (!hasField(fieldDescriptor)) {
                    }
                    if (!z10) {
                    }
                    treeMap.put(fieldDescriptor, getField(fieldDescriptor));
                }
                i10++;
            }
        }
        return treeMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Method getMethodOrDie(Class cls, String str, Class... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e10) {
            throw new RuntimeException("Generated message class \"" + cls.getName() + "\" missing method \"" + str + "\".", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object invokeOrDie(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e10) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e10);
        } catch (InvocationTargetException e11) {
            Throwable cause = e11.getCause();
            if (!(cause instanceof RuntimeException)) {
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
            throw ((RuntimeException) cause);
        }
    }

    private static <V> void maybeSerializeBooleanEntryTo(CodedOutputStream codedOutputStream, Map<Boolean, V> map, s0<Boolean, V> s0Var, int i10, boolean z10) throws IOException {
        if (map.containsKey(Boolean.valueOf(z10))) {
            codedOutputStream.L0(i10, s0Var.newBuilderForType().o(Boolean.valueOf(z10)).r(map.get(Boolean.valueOf(z10))).build());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.explorestack.protobuf.i0$g] */
    public static i0.g mutableCopy(i0.g gVar) {
        int size = gVar.size();
        return gVar.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
    }

    protected static i0.a newBooleanList() {
        return new j();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static i0.b newDoubleList() {
        return new r();
    }

    protected static i0.f newFloatList() {
        return new f0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static i0.g newIntList() {
        return new h0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static i0.i newLongList() {
        return new q0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <M extends Message> M parseDelimitedWithIOException(j1<M> j1Var, InputStream inputStream) throws IOException {
        try {
            return j1Var.parseDelimitedFrom(inputStream);
        } catch (InvalidProtocolBufferException e10) {
            throw e10.unwrapIOException();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <M extends Message> M parseWithIOException(j1<M> j1Var, InputStream inputStream) throws IOException {
        try {
            return j1Var.parseFrom(inputStream);
        } catch (InvalidProtocolBufferException e10) {
            throw e10.unwrapIOException();
        }
    }

    protected static <V> void serializeBooleanMapTo(CodedOutputStream codedOutputStream, MapField<Boolean, V> mapField, s0<Boolean, V> s0Var, int i10) throws IOException {
        Map<Boolean, V> i11 = mapField.i();
        if (!codedOutputStream.g0()) {
            serializeMapTo(codedOutputStream, i11, s0Var, i10);
            return;
        }
        maybeSerializeBooleanEntryTo(codedOutputStream, i11, s0Var, i10, false);
        maybeSerializeBooleanEntryTo(codedOutputStream, i11, s0Var, i10, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <V> void serializeIntegerMapTo(CodedOutputStream codedOutputStream, MapField<Integer, V> mapField, s0<Integer, V> s0Var, int i10) throws IOException {
        Map<Integer, V> i11 = mapField.i();
        if (!codedOutputStream.g0()) {
            serializeMapTo(codedOutputStream, i11, s0Var, i10);
            return;
        }
        int size = i11.size();
        int[] iArr = new int[size];
        int i12 = 0;
        for (Integer num : i11.keySet()) {
            iArr[i12] = num.intValue();
            i12++;
        }
        Arrays.sort(iArr);
        for (int i13 = 0; i13 < size; i13++) {
            int i14 = iArr[i13];
            codedOutputStream.L0(i10, s0Var.newBuilderForType().o(Integer.valueOf(i14)).r(i11.get(Integer.valueOf(i14))).build());
        }
    }

    protected static <V> void serializeLongMapTo(CodedOutputStream codedOutputStream, MapField<Long, V> mapField, s0<Long, V> s0Var, int i10) throws IOException {
        Map<Long, V> i11 = mapField.i();
        if (!codedOutputStream.g0()) {
            serializeMapTo(codedOutputStream, i11, s0Var, i10);
            return;
        }
        int size = i11.size();
        long[] jArr = new long[size];
        int i12 = 0;
        for (Long l10 : i11.keySet()) {
            jArr[i12] = l10.longValue();
            i12++;
        }
        Arrays.sort(jArr);
        for (int i13 = 0; i13 < size; i13++) {
            long j10 = jArr[i13];
            codedOutputStream.L0(i10, s0Var.newBuilderForType().o(Long.valueOf(j10)).r(i11.get(Long.valueOf(j10))).build());
        }
    }

    private static <K, V> void serializeMapTo(CodedOutputStream codedOutputStream, Map<K, V> map, s0<K, V> s0Var, int i10) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            codedOutputStream.L0(i10, s0Var.newBuilderForType().o(entry.getKey()).r(entry.getValue()).build());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <V> void serializeStringMapTo(CodedOutputStream codedOutputStream, MapField<String, V> mapField, s0<String, V> s0Var, int i10) throws IOException {
        Map<String, V> i11 = mapField.i();
        if (!codedOutputStream.g0()) {
            serializeMapTo(codedOutputStream, i11, s0Var, i10);
            return;
        }
        String[] strArr = (String[]) i11.keySet().toArray(new String[i11.size()]);
        Arrays.sort(strArr);
        for (String str : strArr) {
            codedOutputStream.L0(i10, s0Var.newBuilderForType().o(str).r(i11.get(str)).build());
        }
    }

    static void setAlwaysUseFieldBuildersForTesting(boolean z10) {
        alwaysUseFieldBuilders = z10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void writeString(CodedOutputStream codedOutputStream, int i10, Object obj) throws IOException {
        if (obj instanceof String) {
            codedOutputStream.Z0(i10, (String) obj);
        } else {
            codedOutputStream.r0(i10, (ByteString) obj);
        }
    }

    protected static void writeStringNoTag(CodedOutputStream codedOutputStream, Object obj) throws IOException {
        if (obj instanceof String) {
            codedOutputStream.a1((String) obj);
        } else {
            codedOutputStream.s0((ByteString) obj);
        }
    }

    @Override // com.explorestack.protobuf.MessageOrBuilder
    public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
        return Collections.unmodifiableMap(getAllFieldsMutable(false));
    }

    Map<Descriptors.FieldDescriptor, Object> getAllFieldsRaw() {
        return Collections.unmodifiableMap(getAllFieldsMutable(true));
    }

    @Override // com.explorestack.protobuf.MessageOrBuilder
    public Descriptors.Descriptor getDescriptorForType() {
        return internalGetFieldAccessorTable().f14097a;
    }

    @Override // com.explorestack.protobuf.MessageOrBuilder
    public Object getField(Descriptors.FieldDescriptor fieldDescriptor) {
        return internalGetFieldAccessorTable().e(fieldDescriptor).b(this);
    }

    Object getFieldRaw(Descriptors.FieldDescriptor fieldDescriptor) {
        return internalGetFieldAccessorTable().e(fieldDescriptor).o(this);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageOrBuilder
    public Descriptors.FieldDescriptor getOneofFieldDescriptor(Descriptors.OneofDescriptor oneofDescriptor) {
        return internalGetFieldAccessorTable().f(oneofDescriptor).c(this);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public j1<? extends GeneratedMessageV3> getParserForType() {
        throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    @Override // com.explorestack.protobuf.MessageOrBuilder
    public Object getRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10) {
        return internalGetFieldAccessorTable().e(fieldDescriptor).i(this, i10);
    }

    @Override // com.explorestack.protobuf.MessageOrBuilder
    public int getRepeatedFieldCount(Descriptors.FieldDescriptor fieldDescriptor) {
        return internalGetFieldAccessorTable().e(fieldDescriptor).h(this);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int e10 = MessageReflection.e(this, getAllFieldsRaw());
        this.memoizedSize = e10;
        return e10;
    }

    public j2 getUnknownFields() {
        throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    @Override // com.explorestack.protobuf.MessageOrBuilder
    public boolean hasField(Descriptors.FieldDescriptor fieldDescriptor) {
        return internalGetFieldAccessorTable().e(fieldDescriptor).f(this);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageOrBuilder
    public boolean hasOneof(Descriptors.OneofDescriptor oneofDescriptor) {
        return internalGetFieldAccessorTable().f(oneofDescriptor).e(this);
    }

    protected abstract e internalGetFieldAccessorTable();

    protected MapField internalGetMapField(int i10) {
        throw new RuntimeException("No map fields found in " + getClass().getName());
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    public boolean isInitialized() {
        for (Descriptors.FieldDescriptor fieldDescriptor : getDescriptorForType().getFields()) {
            if (fieldDescriptor.isRequired() && !hasField(fieldDescriptor)) {
                return false;
            }
            if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                if (fieldDescriptor.isRepeated()) {
                    for (Message message : (List) getField(fieldDescriptor)) {
                        if (!message.isInitialized()) {
                            return false;
                        }
                    }
                    continue;
                } else if (hasField(fieldDescriptor) && !((Message) getField(fieldDescriptor)).isInitialized()) {
                    return false;
                }
            }
        }
        return true;
    }

    protected void mergeFromAndMakeImmutableInternal(n nVar, y yVar) throws InvalidProtocolBufferException {
        q1 e10 = l1.a().e(this);
        try {
            e10.c(this, o.h(nVar), yVar);
            e10.makeImmutable(this);
        } catch (InvalidProtocolBufferException e11) {
            throw e11.setUnfinishedMessage(this);
        } catch (IOException e12) {
            throw new InvalidProtocolBufferException(e12).setUnfinishedMessage(this);
        }
    }

    @Override // com.explorestack.protobuf.AbstractMessage
    protected Message.Builder newBuilderForType(AbstractMessage.BuilderParent builderParent) {
        return newBuilderForType((c) new a(builderParent));
    }

    protected abstract Message.Builder newBuilderForType(c cVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public Object newInstance(f fVar) {
        throw new UnsupportedOperationException("This method must be overridden by the subclass.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean parseUnknownField(n nVar, j2.b bVar, y yVar, int i10) throws IOException {
        if (nVar.N()) {
            return nVar.O(i10);
        }
        return bVar.n(i10, nVar);
    }

    protected boolean parseUnknownFieldProto3(n nVar, j2.b bVar, y yVar, int i10) throws IOException {
        return parseUnknownField(nVar, bVar, yVar, i10);
    }

    protected Object writeReplace() throws ObjectStreamException {
        return new GeneratedMessageLite.SerializedForm(this);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        MessageReflection.k(this, getAllFieldsRaw(), codedOutputStream, false);
    }

    /* loaded from: classes3.dex */
    public static abstract class ExtendableMessage<MessageType extends ExtendableMessage> extends GeneratedMessageV3 implements MessageOrBuilder {

        /* renamed from: a  reason: collision with root package name */
        private final e0<Descriptors.FieldDescriptor> f14088a;

        /* loaded from: classes3.dex */
        protected class a {

            /* renamed from: a  reason: collision with root package name */
            private final Iterator<Map.Entry<Descriptors.FieldDescriptor, Object>> f14089a;

            /* renamed from: b  reason: collision with root package name */
            private Map.Entry<Descriptors.FieldDescriptor, Object> f14090b;

            /* renamed from: c  reason: collision with root package name */
            private final boolean f14091c;

            /* synthetic */ a(ExtendableMessage extendableMessage, boolean z10, a aVar) {
                this(z10);
            }

            public void a(int i10, CodedOutputStream codedOutputStream) throws IOException {
                while (true) {
                    Map.Entry<Descriptors.FieldDescriptor, Object> entry = this.f14090b;
                    if (entry != null && entry.getKey().getNumber() < i10) {
                        Descriptors.FieldDescriptor key = this.f14090b.getKey();
                        if (this.f14091c && key.getLiteJavaType() == WireFormat.JavaType.MESSAGE && !key.isRepeated()) {
                            if (this.f14090b instanceof k0.b) {
                                codedOutputStream.P0(key.getNumber(), ((k0.b) this.f14090b).a().f());
                            } else {
                                codedOutputStream.O0(key.getNumber(), (Message) this.f14090b.getValue());
                            }
                        } else {
                            e0.S(key, this.f14090b.getValue(), codedOutputStream);
                        }
                        if (this.f14089a.hasNext()) {
                            this.f14090b = this.f14089a.next();
                        } else {
                            this.f14090b = null;
                        }
                    } else {
                        return;
                    }
                }
            }

            private a(boolean z10) {
                Iterator<Map.Entry<Descriptors.FieldDescriptor, Object>> G = ExtendableMessage.this.f14088a.G();
                this.f14089a = G;
                if (G.hasNext()) {
                    this.f14090b = G.next();
                }
                this.f14091c = z10;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public ExtendableMessage() {
            this.f14088a = e0.L();
        }

        private void h(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.getContainingType() == getDescriptorForType()) {
                return;
            }
            throw new IllegalArgumentException("FieldDescriptor does not match message type.");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public boolean d() {
            return this.f14088a.D();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public int e() {
            return this.f14088a.y();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Map<Descriptors.FieldDescriptor, Object> f() {
            return this.f14088a.s();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public ExtendableMessage<MessageType>.a g() {
            return new a(this, false, null);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
            Map allFieldsMutable = getAllFieldsMutable(false);
            allFieldsMutable.putAll(f());
            return Collections.unmodifiableMap(allFieldsMutable);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Map<Descriptors.FieldDescriptor, Object> getAllFieldsRaw() {
            Map allFieldsMutable = getAllFieldsMutable(false);
            allFieldsMutable.putAll(f());
            return Collections.unmodifiableMap(allFieldsMutable);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public Object getField(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.isExtension()) {
                h(fieldDescriptor);
                Object t10 = this.f14088a.t(fieldDescriptor);
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
            return super.getField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public Object getRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10) {
            if (fieldDescriptor.isExtension()) {
                h(fieldDescriptor);
                return this.f14088a.w(fieldDescriptor, i10);
            }
            return super.getRepeatedField(fieldDescriptor, i10);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public int getRepeatedFieldCount(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.isExtension()) {
                h(fieldDescriptor);
                return this.f14088a.x(fieldDescriptor);
            }
            return super.getRepeatedFieldCount(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public boolean hasField(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.isExtension()) {
                h(fieldDescriptor);
                return this.f14088a.A(fieldDescriptor);
            }
            return super.hasField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public boolean isInitialized() {
            if (super.isInitialized() && d()) {
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public void makeExtensionsImmutable() {
            this.f14088a.H();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public boolean parseUnknownField(n nVar, j2.b bVar, y yVar, int i10) throws IOException {
            if (nVar.N()) {
                bVar = null;
            }
            return MessageReflection.g(nVar, bVar, yVar, getDescriptorForType(), new MessageReflection.c(this.f14088a), i10);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected boolean parseUnknownFieldProto3(n nVar, j2.b bVar, y yVar, int i10) throws IOException {
            return parseUnknownField(nVar, bVar, yVar, i10);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public ExtendableMessage(d<MessageType, ?> dVar) {
            super(dVar);
            this.f14088a = dVar.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public GeneratedMessageV3(b<?> bVar) {
        this.unknownFields = bVar.getUnknownFields();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.explorestack.protobuf.i0$i] */
    public static i0.i mutableCopy(i0.i iVar) {
        int size = iVar.size();
        return iVar.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <M extends Message> M parseDelimitedWithIOException(j1<M> j1Var, InputStream inputStream, y yVar) throws IOException {
        try {
            return j1Var.parseDelimitedFrom(inputStream, yVar);
        } catch (InvalidProtocolBufferException e10) {
            throw e10.unwrapIOException();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <M extends Message> M parseWithIOException(j1<M> j1Var, InputStream inputStream, y yVar) throws IOException {
        try {
            return j1Var.parseFrom(inputStream, yVar);
        } catch (InvalidProtocolBufferException e10) {
            throw e10.unwrapIOException();
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.explorestack.protobuf.i0$f] */
    protected static i0.f mutableCopy(i0.f fVar) {
        int size = fVar.size();
        return fVar.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <M extends Message> M parseWithIOException(j1<M> j1Var, n nVar) throws IOException {
        try {
            return j1Var.parseFrom(nVar);
        } catch (InvalidProtocolBufferException e10) {
            throw e10.unwrapIOException();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.explorestack.protobuf.i0$b] */
    public static i0.b mutableCopy(i0.b bVar) {
        int size = bVar.size();
        return bVar.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <M extends Message> M parseWithIOException(j1<M> j1Var, n nVar, y yVar) throws IOException {
        try {
            return j1Var.parseFrom(nVar, yVar);
        } catch (InvalidProtocolBufferException e10) {
            throw e10.unwrapIOException();
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.explorestack.protobuf.i0$a] */
    protected static i0.a mutableCopy(i0.a aVar) {
        int size = aVar.size();
        return aVar.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void makeExtensionsImmutable() {
    }

    /* loaded from: classes3.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        private final Descriptors.Descriptor f14097a;

        /* renamed from: b  reason: collision with root package name */
        private final a[] f14098b;

        /* renamed from: c  reason: collision with root package name */
        private String[] f14099c;

        /* renamed from: d  reason: collision with root package name */
        private final c[] f14100d;

        /* renamed from: e  reason: collision with root package name */
        private volatile boolean f14101e = false;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public interface a {
            void a(b bVar);

            Object b(GeneratedMessageV3 generatedMessageV3);

            Object c(b bVar);

            Object d(b bVar, int i10);

            void e(b bVar, Object obj);

            boolean f(GeneratedMessageV3 generatedMessageV3);

            boolean g(b bVar);

            int h(GeneratedMessageV3 generatedMessageV3);

            Object i(GeneratedMessageV3 generatedMessageV3, int i10);

            void j(b bVar, Object obj);

            void k(b bVar, int i10, Object obj);

            int l(b bVar);

            Message.Builder m(b bVar);

            Message.Builder n(b bVar, int i10);

            Object o(GeneratedMessageV3 generatedMessageV3);

            Message.Builder p();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public static class b implements a {

            /* renamed from: a  reason: collision with root package name */
            private final Descriptors.FieldDescriptor f14102a;

            /* renamed from: b  reason: collision with root package name */
            private final Message f14103b;

            b(Descriptors.FieldDescriptor fieldDescriptor, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends b> cls2) {
                this.f14102a = fieldDescriptor;
                this.f14103b = s((GeneratedMessageV3) GeneratedMessageV3.invokeOrDie(GeneratedMessageV3.getMethodOrDie(cls, "getDefaultInstance", new Class[0]), null, new Object[0])).j();
            }

            private Message q(Message message) {
                if (message == null) {
                    return null;
                }
                if (this.f14103b.getClass().isInstance(message)) {
                    return message;
                }
                return this.f14103b.toBuilder().mergeFrom(message).build();
            }

            private MapField<?, ?> r(b bVar) {
                return bVar.internalGetMapField(this.f14102a.getNumber());
            }

            private MapField<?, ?> s(GeneratedMessageV3 generatedMessageV3) {
                return generatedMessageV3.internalGetMapField(this.f14102a.getNumber());
            }

            private MapField<?, ?> t(b bVar) {
                return bVar.internalGetMutableMapField(this.f14102a.getNumber());
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public void a(b bVar) {
                t(bVar).k().clear();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Object b(GeneratedMessageV3 generatedMessageV3) {
                ArrayList arrayList = new ArrayList();
                for (int i10 = 0; i10 < h(generatedMessageV3); i10++) {
                    arrayList.add(i(generatedMessageV3, i10));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Object c(b bVar) {
                ArrayList arrayList = new ArrayList();
                for (int i10 = 0; i10 < l(bVar); i10++) {
                    arrayList.add(d(bVar, i10));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Object d(b bVar, int i10) {
                return r(bVar).h().get(i10);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public void e(b bVar, Object obj) {
                t(bVar).k().add(q((Message) obj));
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public boolean f(GeneratedMessageV3 generatedMessageV3) {
                throw new UnsupportedOperationException("hasField() is not supported for repeated fields.");
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public boolean g(b bVar) {
                throw new UnsupportedOperationException("hasField() is not supported for repeated fields.");
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public int h(GeneratedMessageV3 generatedMessageV3) {
                return s(generatedMessageV3).h().size();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Object i(GeneratedMessageV3 generatedMessageV3, int i10) {
                return s(generatedMessageV3).h().get(i10);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public void j(b bVar, Object obj) {
                a(bVar);
                for (Object obj2 : (List) obj) {
                    e(bVar, obj2);
                }
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public void k(b bVar, int i10, Object obj) {
                t(bVar).k().set(i10, q((Message) obj));
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public int l(b bVar) {
                return r(bVar).h().size();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Message.Builder m(b bVar) {
                throw new UnsupportedOperationException("Nested builder not supported for map fields.");
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Message.Builder n(b bVar, int i10) {
                throw new UnsupportedOperationException("Nested builder not supported for map fields.");
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Object o(GeneratedMessageV3 generatedMessageV3) {
                return b(generatedMessageV3);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Message.Builder p() {
                return this.f14103b.newBuilderForType();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public static class c {

            /* renamed from: a  reason: collision with root package name */
            private final Descriptors.Descriptor f14104a;

            /* renamed from: b  reason: collision with root package name */
            private final Method f14105b;

            /* renamed from: c  reason: collision with root package name */
            private final Method f14106c;

            /* renamed from: d  reason: collision with root package name */
            private final Method f14107d;

            /* renamed from: e  reason: collision with root package name */
            private final Descriptors.FieldDescriptor f14108e;

            c(Descriptors.Descriptor descriptor, int i10, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends b> cls2) {
                this.f14104a = descriptor;
                Descriptors.OneofDescriptor oneofDescriptor = descriptor.getOneofs().get(i10);
                if (oneofDescriptor.isSynthetic()) {
                    this.f14105b = null;
                    this.f14106c = null;
                    this.f14108e = oneofDescriptor.getFields().get(0);
                } else {
                    this.f14105b = GeneratedMessageV3.getMethodOrDie(cls, "get" + str + "Case", new Class[0]);
                    this.f14106c = GeneratedMessageV3.getMethodOrDie(cls2, "get" + str + "Case", new Class[0]);
                    this.f14108e = null;
                }
                this.f14107d = GeneratedMessageV3.getMethodOrDie(cls2, "clear" + str, new Class[0]);
            }

            public void a(b bVar) {
                GeneratedMessageV3.invokeOrDie(this.f14107d, bVar, new Object[0]);
            }

            public Descriptors.FieldDescriptor b(b bVar) {
                Descriptors.FieldDescriptor fieldDescriptor = this.f14108e;
                if (fieldDescriptor != null) {
                    if (!bVar.hasField(fieldDescriptor)) {
                        return null;
                    }
                    return this.f14108e;
                }
                int number = ((i0.c) GeneratedMessageV3.invokeOrDie(this.f14106c, bVar, new Object[0])).getNumber();
                if (number <= 0) {
                    return null;
                }
                return this.f14104a.findFieldByNumber(number);
            }

            public Descriptors.FieldDescriptor c(GeneratedMessageV3 generatedMessageV3) {
                Descriptors.FieldDescriptor fieldDescriptor = this.f14108e;
                if (fieldDescriptor != null) {
                    if (!generatedMessageV3.hasField(fieldDescriptor)) {
                        return null;
                    }
                    return this.f14108e;
                }
                int number = ((i0.c) GeneratedMessageV3.invokeOrDie(this.f14105b, generatedMessageV3, new Object[0])).getNumber();
                if (number <= 0) {
                    return null;
                }
                return this.f14104a.findFieldByNumber(number);
            }

            public boolean d(b bVar) {
                Descriptors.FieldDescriptor fieldDescriptor = this.f14108e;
                if (fieldDescriptor != null) {
                    return bVar.hasField(fieldDescriptor);
                }
                if (((i0.c) GeneratedMessageV3.invokeOrDie(this.f14106c, bVar, new Object[0])).getNumber() == 0) {
                    return false;
                }
                return true;
            }

            public boolean e(GeneratedMessageV3 generatedMessageV3) {
                Descriptors.FieldDescriptor fieldDescriptor = this.f14108e;
                if (fieldDescriptor != null) {
                    return generatedMessageV3.hasField(fieldDescriptor);
                }
                if (((i0.c) GeneratedMessageV3.invokeOrDie(this.f14105b, generatedMessageV3, new Object[0])).getNumber() == 0) {
                    return false;
                }
                return true;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public static final class d extends C0244e {

            /* renamed from: c  reason: collision with root package name */
            private Descriptors.EnumDescriptor f14109c;

            /* renamed from: d  reason: collision with root package name */
            private final Method f14110d;

            /* renamed from: e  reason: collision with root package name */
            private final Method f14111e;

            /* renamed from: f  reason: collision with root package name */
            private boolean f14112f;

            /* renamed from: g  reason: collision with root package name */
            private Method f14113g;

            /* renamed from: h  reason: collision with root package name */
            private Method f14114h;

            /* renamed from: i  reason: collision with root package name */
            private Method f14115i;

            /* renamed from: j  reason: collision with root package name */
            private Method f14116j;

            d(Descriptors.FieldDescriptor fieldDescriptor, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends b> cls2) {
                super(fieldDescriptor, str, cls, cls2);
                this.f14109c = fieldDescriptor.m4629getEnumType();
                this.f14110d = GeneratedMessageV3.getMethodOrDie(this.f14117a, "valueOf", Descriptors.EnumValueDescriptor.class);
                this.f14111e = GeneratedMessageV3.getMethodOrDie(this.f14117a, "getValueDescriptor", new Class[0]);
                boolean supportsUnknownEnumValue = fieldDescriptor.getFile().supportsUnknownEnumValue();
                this.f14112f = supportsUnknownEnumValue;
                if (supportsUnknownEnumValue) {
                    Class cls3 = Integer.TYPE;
                    this.f14113g = GeneratedMessageV3.getMethodOrDie(cls, "get" + str + "Value", cls3);
                    this.f14114h = GeneratedMessageV3.getMethodOrDie(cls2, "get" + str + "Value", cls3);
                    this.f14115i = GeneratedMessageV3.getMethodOrDie(cls2, "set" + str + "Value", cls3, cls3);
                    this.f14116j = GeneratedMessageV3.getMethodOrDie(cls2, "add" + str + "Value", cls3);
                }
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.C0244e, com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Object b(GeneratedMessageV3 generatedMessageV3) {
                ArrayList arrayList = new ArrayList();
                int h10 = h(generatedMessageV3);
                for (int i10 = 0; i10 < h10; i10++) {
                    arrayList.add(i(generatedMessageV3, i10));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.C0244e, com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Object c(b bVar) {
                ArrayList arrayList = new ArrayList();
                int l10 = l(bVar);
                for (int i10 = 0; i10 < l10; i10++) {
                    arrayList.add(d(bVar, i10));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.C0244e, com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Object d(b bVar, int i10) {
                if (!this.f14112f) {
                    return GeneratedMessageV3.invokeOrDie(this.f14111e, super.d(bVar, i10), new Object[0]);
                }
                return this.f14109c.findValueByNumberCreatingIfUnknown(((Integer) GeneratedMessageV3.invokeOrDie(this.f14114h, bVar, Integer.valueOf(i10))).intValue());
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.C0244e, com.explorestack.protobuf.GeneratedMessageV3.e.a
            public void e(b bVar, Object obj) {
                if (this.f14112f) {
                    GeneratedMessageV3.invokeOrDie(this.f14116j, bVar, Integer.valueOf(((Descriptors.EnumValueDescriptor) obj).getNumber()));
                } else {
                    super.e(bVar, GeneratedMessageV3.invokeOrDie(this.f14110d, null, obj));
                }
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.C0244e, com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Object i(GeneratedMessageV3 generatedMessageV3, int i10) {
                if (!this.f14112f) {
                    return GeneratedMessageV3.invokeOrDie(this.f14111e, super.i(generatedMessageV3, i10), new Object[0]);
                }
                return this.f14109c.findValueByNumberCreatingIfUnknown(((Integer) GeneratedMessageV3.invokeOrDie(this.f14113g, generatedMessageV3, Integer.valueOf(i10))).intValue());
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.C0244e, com.explorestack.protobuf.GeneratedMessageV3.e.a
            public void k(b bVar, int i10, Object obj) {
                if (this.f14112f) {
                    GeneratedMessageV3.invokeOrDie(this.f14115i, bVar, Integer.valueOf(i10), Integer.valueOf(((Descriptors.EnumValueDescriptor) obj).getNumber()));
                } else {
                    super.k(bVar, i10, GeneratedMessageV3.invokeOrDie(this.f14110d, null, obj));
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public static final class f extends C0244e {

            /* renamed from: c  reason: collision with root package name */
            private final Method f14128c;

            /* renamed from: d  reason: collision with root package name */
            private final Method f14129d;

            f(Descriptors.FieldDescriptor fieldDescriptor, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends b> cls2) {
                super(fieldDescriptor, str, cls, cls2);
                this.f14128c = GeneratedMessageV3.getMethodOrDie(this.f14117a, "newBuilder", new Class[0]);
                this.f14129d = GeneratedMessageV3.getMethodOrDie(cls2, "get" + str + "Builder", Integer.TYPE);
            }

            private Object r(Object obj) {
                if (this.f14117a.isInstance(obj)) {
                    return obj;
                }
                return ((Message.Builder) GeneratedMessageV3.invokeOrDie(this.f14128c, null, new Object[0])).mergeFrom((Message) obj).build();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.C0244e, com.explorestack.protobuf.GeneratedMessageV3.e.a
            public void e(b bVar, Object obj) {
                super.e(bVar, r(obj));
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.C0244e, com.explorestack.protobuf.GeneratedMessageV3.e.a
            public void k(b bVar, int i10, Object obj) {
                super.k(bVar, i10, r(obj));
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.C0244e, com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Message.Builder n(b bVar, int i10) {
                return (Message.Builder) GeneratedMessageV3.invokeOrDie(this.f14129d, bVar, Integer.valueOf(i10));
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.C0244e, com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Message.Builder p() {
                return (Message.Builder) GeneratedMessageV3.invokeOrDie(this.f14128c, null, new Object[0]);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public static final class g extends h {

            /* renamed from: f  reason: collision with root package name */
            private Descriptors.EnumDescriptor f14130f;

            /* renamed from: g  reason: collision with root package name */
            private Method f14131g;

            /* renamed from: h  reason: collision with root package name */
            private Method f14132h;

            /* renamed from: i  reason: collision with root package name */
            private boolean f14133i;

            /* renamed from: j  reason: collision with root package name */
            private Method f14134j;

            /* renamed from: k  reason: collision with root package name */
            private Method f14135k;

            /* renamed from: l  reason: collision with root package name */
            private Method f14136l;

            g(Descriptors.FieldDescriptor fieldDescriptor, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends b> cls2, String str2) {
                super(fieldDescriptor, str, cls, cls2, str2);
                this.f14130f = fieldDescriptor.m4629getEnumType();
                this.f14131g = GeneratedMessageV3.getMethodOrDie(this.f14137a, "valueOf", Descriptors.EnumValueDescriptor.class);
                this.f14132h = GeneratedMessageV3.getMethodOrDie(this.f14137a, "getValueDescriptor", new Class[0]);
                boolean supportsUnknownEnumValue = fieldDescriptor.getFile().supportsUnknownEnumValue();
                this.f14133i = supportsUnknownEnumValue;
                if (supportsUnknownEnumValue) {
                    this.f14134j = GeneratedMessageV3.getMethodOrDie(cls, "get" + str + "Value", new Class[0]);
                    this.f14135k = GeneratedMessageV3.getMethodOrDie(cls2, "get" + str + "Value", new Class[0]);
                    this.f14136l = GeneratedMessageV3.getMethodOrDie(cls2, "set" + str + "Value", Integer.TYPE);
                }
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.h, com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Object b(GeneratedMessageV3 generatedMessageV3) {
                if (!this.f14133i) {
                    return GeneratedMessageV3.invokeOrDie(this.f14132h, super.b(generatedMessageV3), new Object[0]);
                }
                return this.f14130f.findValueByNumberCreatingIfUnknown(((Integer) GeneratedMessageV3.invokeOrDie(this.f14134j, generatedMessageV3, new Object[0])).intValue());
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.h, com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Object c(b bVar) {
                if (!this.f14133i) {
                    return GeneratedMessageV3.invokeOrDie(this.f14132h, super.c(bVar), new Object[0]);
                }
                return this.f14130f.findValueByNumberCreatingIfUnknown(((Integer) GeneratedMessageV3.invokeOrDie(this.f14135k, bVar, new Object[0])).intValue());
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.h, com.explorestack.protobuf.GeneratedMessageV3.e.a
            public void j(b bVar, Object obj) {
                if (this.f14133i) {
                    GeneratedMessageV3.invokeOrDie(this.f14136l, bVar, Integer.valueOf(((Descriptors.EnumValueDescriptor) obj).getNumber()));
                } else {
                    super.j(bVar, GeneratedMessageV3.invokeOrDie(this.f14131g, null, obj));
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public static final class i extends h {

            /* renamed from: f  reason: collision with root package name */
            private final Method f14150f;

            /* renamed from: g  reason: collision with root package name */
            private final Method f14151g;

            i(Descriptors.FieldDescriptor fieldDescriptor, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends b> cls2, String str2) {
                super(fieldDescriptor, str, cls, cls2, str2);
                this.f14150f = GeneratedMessageV3.getMethodOrDie(this.f14137a, "newBuilder", new Class[0]);
                this.f14151g = GeneratedMessageV3.getMethodOrDie(cls2, "get" + str + "Builder", new Class[0]);
            }

            private Object r(Object obj) {
                if (this.f14137a.isInstance(obj)) {
                    return obj;
                }
                return ((Message.Builder) GeneratedMessageV3.invokeOrDie(this.f14150f, null, new Object[0])).mergeFrom((Message) obj).buildPartial();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.h, com.explorestack.protobuf.GeneratedMessageV3.e.a
            public void j(b bVar, Object obj) {
                super.j(bVar, r(obj));
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.h, com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Message.Builder m(b bVar) {
                return (Message.Builder) GeneratedMessageV3.invokeOrDie(this.f14151g, bVar, new Object[0]);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.h, com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Message.Builder p() {
                return (Message.Builder) GeneratedMessageV3.invokeOrDie(this.f14150f, null, new Object[0]);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public static final class j extends h {

            /* renamed from: f  reason: collision with root package name */
            private final Method f14152f;

            /* renamed from: g  reason: collision with root package name */
            private final Method f14153g;

            /* renamed from: h  reason: collision with root package name */
            private final Method f14154h;

            j(Descriptors.FieldDescriptor fieldDescriptor, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends b> cls2, String str2) {
                super(fieldDescriptor, str, cls, cls2, str2);
                this.f14152f = GeneratedMessageV3.getMethodOrDie(cls, "get" + str + "Bytes", new Class[0]);
                this.f14153g = GeneratedMessageV3.getMethodOrDie(cls2, "get" + str + "Bytes", new Class[0]);
                this.f14154h = GeneratedMessageV3.getMethodOrDie(cls2, "set" + str + "Bytes", ByteString.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.h, com.explorestack.protobuf.GeneratedMessageV3.e.a
            public void j(b bVar, Object obj) {
                if (obj instanceof ByteString) {
                    GeneratedMessageV3.invokeOrDie(this.f14154h, bVar, obj);
                } else {
                    super.j(bVar, obj);
                }
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.h, com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Object o(GeneratedMessageV3 generatedMessageV3) {
                return GeneratedMessageV3.invokeOrDie(this.f14152f, generatedMessageV3, new Object[0]);
            }
        }

        public e(Descriptors.Descriptor descriptor, String[] strArr) {
            this.f14097a = descriptor;
            this.f14099c = strArr;
            this.f14098b = new a[descriptor.getFields().size()];
            this.f14100d = new c[descriptor.getOneofs().size()];
        }

        /* JADX INFO: Access modifiers changed from: private */
        public a e(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.getContainingType() == this.f14097a) {
                if (!fieldDescriptor.isExtension()) {
                    return this.f14098b[fieldDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("This type does not have extensions.");
            }
            throw new IllegalArgumentException("FieldDescriptor does not match message type.");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public c f(Descriptors.OneofDescriptor oneofDescriptor) {
            if (oneofDescriptor.getContainingType() == this.f14097a) {
                return this.f14100d[oneofDescriptor.getIndex()];
            }
            throw new IllegalArgumentException("OneofDescriptor does not match message type.");
        }

        public e d(Class<? extends GeneratedMessageV3> cls, Class<? extends b> cls2) {
            if (this.f14101e) {
                return this;
            }
            synchronized (this) {
                try {
                    if (this.f14101e) {
                        return this;
                    }
                    int length = this.f14098b.length;
                    int i10 = 0;
                    while (true) {
                        String str = null;
                        if (i10 >= length) {
                            break;
                        }
                        Descriptors.FieldDescriptor fieldDescriptor = this.f14097a.getFields().get(i10);
                        if (fieldDescriptor.getContainingOneof() != null) {
                            str = this.f14099c[fieldDescriptor.getContainingOneof().getIndex() + length];
                        }
                        String str2 = str;
                        if (fieldDescriptor.isRepeated()) {
                            if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                                if (fieldDescriptor.isMapField()) {
                                    this.f14098b[i10] = new b(fieldDescriptor, this.f14099c[i10], cls, cls2);
                                } else {
                                    this.f14098b[i10] = new f(fieldDescriptor, this.f14099c[i10], cls, cls2);
                                }
                            } else if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.ENUM) {
                                this.f14098b[i10] = new d(fieldDescriptor, this.f14099c[i10], cls, cls2);
                            } else {
                                this.f14098b[i10] = new C0244e(fieldDescriptor, this.f14099c[i10], cls, cls2);
                            }
                        } else if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                            this.f14098b[i10] = new i(fieldDescriptor, this.f14099c[i10], cls, cls2, str2);
                        } else if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.ENUM) {
                            this.f14098b[i10] = new g(fieldDescriptor, this.f14099c[i10], cls, cls2, str2);
                        } else if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.STRING) {
                            this.f14098b[i10] = new j(fieldDescriptor, this.f14099c[i10], cls, cls2, str2);
                        } else {
                            this.f14098b[i10] = new h(fieldDescriptor, this.f14099c[i10], cls, cls2, str2);
                        }
                        i10++;
                    }
                    int length2 = this.f14100d.length;
                    for (int i11 = 0; i11 < length2; i11++) {
                        this.f14100d[i11] = new c(this.f14097a, i11, this.f14099c[i11 + length], cls, cls2);
                    }
                    this.f14101e = true;
                    this.f14099c = null;
                    return this;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.explorestack.protobuf.GeneratedMessageV3$e$e  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static class C0244e implements a {

            /* renamed from: a  reason: collision with root package name */
            protected final Class f14117a;

            /* renamed from: b  reason: collision with root package name */
            protected final a f14118b;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: com.explorestack.protobuf.GeneratedMessageV3$e$e$a */
            /* loaded from: classes3.dex */
            public interface a {
                void a(b<?> bVar);

                Object b(GeneratedMessageV3 generatedMessageV3);

                Object c(b<?> bVar);

                Object d(b<?> bVar, int i10);

                void e(b<?> bVar, Object obj);

                int h(GeneratedMessageV3 generatedMessageV3);

                Object i(GeneratedMessageV3 generatedMessageV3, int i10);

                void k(b<?> bVar, int i10, Object obj);

                int l(b<?> bVar);
            }

            /* renamed from: com.explorestack.protobuf.GeneratedMessageV3$e$e$b */
            /* loaded from: classes3.dex */
            private static final class b implements a {

                /* renamed from: a  reason: collision with root package name */
                protected final Method f14119a;

                /* renamed from: b  reason: collision with root package name */
                protected final Method f14120b;

                /* renamed from: c  reason: collision with root package name */
                protected final Method f14121c;

                /* renamed from: d  reason: collision with root package name */
                protected final Method f14122d;

                /* renamed from: e  reason: collision with root package name */
                protected final Method f14123e;

                /* renamed from: f  reason: collision with root package name */
                protected final Method f14124f;

                /* renamed from: g  reason: collision with root package name */
                protected final Method f14125g;

                /* renamed from: h  reason: collision with root package name */
                protected final Method f14126h;

                /* renamed from: i  reason: collision with root package name */
                protected final Method f14127i;

                b(Descriptors.FieldDescriptor fieldDescriptor, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends b> cls2) {
                    this.f14119a = GeneratedMessageV3.getMethodOrDie(cls, "get" + str + "List", new Class[0]);
                    this.f14120b = GeneratedMessageV3.getMethodOrDie(cls2, "get" + str + "List", new Class[0]);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("get");
                    sb2.append(str);
                    String sb3 = sb2.toString();
                    Class cls3 = Integer.TYPE;
                    Method methodOrDie = GeneratedMessageV3.getMethodOrDie(cls, sb3, cls3);
                    this.f14121c = methodOrDie;
                    this.f14122d = GeneratedMessageV3.getMethodOrDie(cls2, "get" + str, cls3);
                    Class<?> returnType = methodOrDie.getReturnType();
                    this.f14123e = GeneratedMessageV3.getMethodOrDie(cls2, "set" + str, cls3, returnType);
                    this.f14124f = GeneratedMessageV3.getMethodOrDie(cls2, "add" + str, returnType);
                    this.f14125g = GeneratedMessageV3.getMethodOrDie(cls, "get" + str + "Count", new Class[0]);
                    this.f14126h = GeneratedMessageV3.getMethodOrDie(cls2, "get" + str + "Count", new Class[0]);
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("clear");
                    sb4.append(str);
                    this.f14127i = GeneratedMessageV3.getMethodOrDie(cls2, sb4.toString(), new Class[0]);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.e.C0244e.a
                public void a(b<?> bVar) {
                    GeneratedMessageV3.invokeOrDie(this.f14127i, bVar, new Object[0]);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.e.C0244e.a
                public Object b(GeneratedMessageV3 generatedMessageV3) {
                    return GeneratedMessageV3.invokeOrDie(this.f14119a, generatedMessageV3, new Object[0]);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.e.C0244e.a
                public Object c(b<?> bVar) {
                    return GeneratedMessageV3.invokeOrDie(this.f14120b, bVar, new Object[0]);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.e.C0244e.a
                public Object d(b<?> bVar, int i10) {
                    return GeneratedMessageV3.invokeOrDie(this.f14122d, bVar, Integer.valueOf(i10));
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.e.C0244e.a
                public void e(b<?> bVar, Object obj) {
                    GeneratedMessageV3.invokeOrDie(this.f14124f, bVar, obj);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.e.C0244e.a
                public int h(GeneratedMessageV3 generatedMessageV3) {
                    return ((Integer) GeneratedMessageV3.invokeOrDie(this.f14125g, generatedMessageV3, new Object[0])).intValue();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.e.C0244e.a
                public Object i(GeneratedMessageV3 generatedMessageV3, int i10) {
                    return GeneratedMessageV3.invokeOrDie(this.f14121c, generatedMessageV3, Integer.valueOf(i10));
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.e.C0244e.a
                public void k(b<?> bVar, int i10, Object obj) {
                    GeneratedMessageV3.invokeOrDie(this.f14123e, bVar, Integer.valueOf(i10), obj);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.e.C0244e.a
                public int l(b<?> bVar) {
                    return ((Integer) GeneratedMessageV3.invokeOrDie(this.f14126h, bVar, new Object[0])).intValue();
                }
            }

            C0244e(Descriptors.FieldDescriptor fieldDescriptor, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends b> cls2) {
                b bVar = new b(fieldDescriptor, str, cls, cls2);
                this.f14117a = bVar.f14121c.getReturnType();
                this.f14118b = q(bVar);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public void a(b bVar) {
                this.f14118b.a(bVar);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Object b(GeneratedMessageV3 generatedMessageV3) {
                return this.f14118b.b(generatedMessageV3);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Object c(b bVar) {
                return this.f14118b.c(bVar);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Object d(b bVar, int i10) {
                return this.f14118b.d(bVar, i10);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public void e(b bVar, Object obj) {
                this.f14118b.e(bVar, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public boolean f(GeneratedMessageV3 generatedMessageV3) {
                throw new UnsupportedOperationException("hasField() called on a repeated field.");
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public boolean g(b bVar) {
                throw new UnsupportedOperationException("hasField() called on a repeated field.");
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public int h(GeneratedMessageV3 generatedMessageV3) {
                return this.f14118b.h(generatedMessageV3);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Object i(GeneratedMessageV3 generatedMessageV3, int i10) {
                return this.f14118b.i(generatedMessageV3, i10);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public void j(b bVar, Object obj) {
                a(bVar);
                for (Object obj2 : (List) obj) {
                    e(bVar, obj2);
                }
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public void k(b bVar, int i10, Object obj) {
                this.f14118b.k(bVar, i10, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public int l(b bVar) {
                return this.f14118b.l(bVar);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Message.Builder m(b bVar) {
                throw new UnsupportedOperationException("getFieldBuilder() called on a non-Message type.");
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Message.Builder n(b bVar, int i10) {
                throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Object o(GeneratedMessageV3 generatedMessageV3) {
                return b(generatedMessageV3);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Message.Builder p() {
                throw new UnsupportedOperationException("newBuilderForField() called on a non-Message type.");
            }

            static a q(b bVar) {
                return bVar;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public static class h implements a {

            /* renamed from: a  reason: collision with root package name */
            protected final Class<?> f14137a;

            /* renamed from: b  reason: collision with root package name */
            protected final Descriptors.FieldDescriptor f14138b;

            /* renamed from: c  reason: collision with root package name */
            protected final boolean f14139c;

            /* renamed from: d  reason: collision with root package name */
            protected final boolean f14140d;

            /* renamed from: e  reason: collision with root package name */
            protected final a f14141e;

            /* JADX INFO: Access modifiers changed from: private */
            /* loaded from: classes3.dex */
            public interface a {
                void a(b<?> bVar);

                Object b(GeneratedMessageV3 generatedMessageV3);

                Object c(b<?> bVar);

                int d(GeneratedMessageV3 generatedMessageV3);

                int e(b<?> bVar);

                boolean f(GeneratedMessageV3 generatedMessageV3);

                boolean g(b<?> bVar);

                void j(b<?> bVar, Object obj);
            }

            /* loaded from: classes3.dex */
            private static final class b implements a {

                /* renamed from: a  reason: collision with root package name */
                protected final Method f14142a;

                /* renamed from: b  reason: collision with root package name */
                protected final Method f14143b;

                /* renamed from: c  reason: collision with root package name */
                protected final Method f14144c;

                /* renamed from: d  reason: collision with root package name */
                protected final Method f14145d;

                /* renamed from: e  reason: collision with root package name */
                protected final Method f14146e;

                /* renamed from: f  reason: collision with root package name */
                protected final Method f14147f;

                /* renamed from: g  reason: collision with root package name */
                protected final Method f14148g;

                /* renamed from: h  reason: collision with root package name */
                protected final Method f14149h;

                b(Descriptors.FieldDescriptor fieldDescriptor, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends b> cls2, String str2, boolean z10, boolean z11) {
                    Method method;
                    Method method2;
                    Method method3;
                    Method methodOrDie = GeneratedMessageV3.getMethodOrDie(cls, "get" + str, new Class[0]);
                    this.f14142a = methodOrDie;
                    this.f14143b = GeneratedMessageV3.getMethodOrDie(cls2, "get" + str, new Class[0]);
                    this.f14144c = GeneratedMessageV3.getMethodOrDie(cls2, "set" + str, methodOrDie.getReturnType());
                    Method method4 = null;
                    if (z11) {
                        method = GeneratedMessageV3.getMethodOrDie(cls, "has" + str, new Class[0]);
                    } else {
                        method = null;
                    }
                    this.f14145d = method;
                    if (z11) {
                        method2 = GeneratedMessageV3.getMethodOrDie(cls2, "has" + str, new Class[0]);
                    } else {
                        method2 = null;
                    }
                    this.f14146e = method2;
                    this.f14147f = GeneratedMessageV3.getMethodOrDie(cls2, "clear" + str, new Class[0]);
                    if (z10) {
                        method3 = GeneratedMessageV3.getMethodOrDie(cls, "get" + str2 + "Case", new Class[0]);
                    } else {
                        method3 = null;
                    }
                    this.f14148g = method3;
                    if (z10) {
                        method4 = GeneratedMessageV3.getMethodOrDie(cls2, "get" + str2 + "Case", new Class[0]);
                    }
                    this.f14149h = method4;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.e.h.a
                public void a(b<?> bVar) {
                    GeneratedMessageV3.invokeOrDie(this.f14147f, bVar, new Object[0]);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.e.h.a
                public Object b(GeneratedMessageV3 generatedMessageV3) {
                    return GeneratedMessageV3.invokeOrDie(this.f14142a, generatedMessageV3, new Object[0]);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.e.h.a
                public Object c(b<?> bVar) {
                    return GeneratedMessageV3.invokeOrDie(this.f14143b, bVar, new Object[0]);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.e.h.a
                public int d(GeneratedMessageV3 generatedMessageV3) {
                    return ((i0.c) GeneratedMessageV3.invokeOrDie(this.f14148g, generatedMessageV3, new Object[0])).getNumber();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.e.h.a
                public int e(b<?> bVar) {
                    return ((i0.c) GeneratedMessageV3.invokeOrDie(this.f14149h, bVar, new Object[0])).getNumber();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.e.h.a
                public boolean f(GeneratedMessageV3 generatedMessageV3) {
                    return ((Boolean) GeneratedMessageV3.invokeOrDie(this.f14145d, generatedMessageV3, new Object[0])).booleanValue();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.e.h.a
                public boolean g(b<?> bVar) {
                    return ((Boolean) GeneratedMessageV3.invokeOrDie(this.f14146e, bVar, new Object[0])).booleanValue();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.e.h.a
                public void j(b<?> bVar, Object obj) {
                    GeneratedMessageV3.invokeOrDie(this.f14144c, bVar, obj);
                }
            }

            h(Descriptors.FieldDescriptor fieldDescriptor, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends b> cls2, String str2) {
                boolean z10;
                boolean z11;
                if (fieldDescriptor.getContainingOneof() != null && !fieldDescriptor.getContainingOneof().isSynthetic()) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                this.f14139c = z10;
                if (fieldDescriptor.getFile().getSyntax() != Descriptors.FileDescriptor.Syntax.PROTO2 && !fieldDescriptor.hasOptionalKeyword() && (z10 || fieldDescriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE)) {
                    z11 = false;
                } else {
                    z11 = true;
                }
                this.f14140d = z11;
                b bVar = new b(fieldDescriptor, str, cls, cls2, str2, z10, z11);
                this.f14138b = fieldDescriptor;
                this.f14137a = bVar.f14142a.getReturnType();
                this.f14141e = q(bVar);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public void a(b bVar) {
                this.f14141e.a(bVar);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Object b(GeneratedMessageV3 generatedMessageV3) {
                return this.f14141e.b(generatedMessageV3);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Object c(b bVar) {
                return this.f14141e.c(bVar);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Object d(b bVar, int i10) {
                throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public void e(b bVar, Object obj) {
                throw new UnsupportedOperationException("addRepeatedField() called on a singular field.");
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public boolean f(GeneratedMessageV3 generatedMessageV3) {
                if (!this.f14140d) {
                    if (this.f14139c) {
                        if (this.f14141e.d(generatedMessageV3) == this.f14138b.getNumber()) {
                            return true;
                        }
                        return false;
                    }
                    return !b(generatedMessageV3).equals(this.f14138b.getDefaultValue());
                }
                return this.f14141e.f(generatedMessageV3);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public boolean g(b bVar) {
                if (!this.f14140d) {
                    if (this.f14139c) {
                        if (this.f14141e.e(bVar) == this.f14138b.getNumber()) {
                            return true;
                        }
                        return false;
                    }
                    return !c(bVar).equals(this.f14138b.getDefaultValue());
                }
                return this.f14141e.g(bVar);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public int h(GeneratedMessageV3 generatedMessageV3) {
                throw new UnsupportedOperationException("getRepeatedFieldSize() called on a singular field.");
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Object i(GeneratedMessageV3 generatedMessageV3, int i10) {
                throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public void j(b bVar, Object obj) {
                this.f14141e.j(bVar, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public void k(b bVar, int i10, Object obj) {
                throw new UnsupportedOperationException("setRepeatedField() called on a singular field.");
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public int l(b bVar) {
                throw new UnsupportedOperationException("getRepeatedFieldSize() called on a singular field.");
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Message.Builder m(b bVar) {
                throw new UnsupportedOperationException("getFieldBuilder() called on a non-Message type.");
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Message.Builder n(b bVar, int i10) {
                throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on a non-Message type.");
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Object o(GeneratedMessageV3 generatedMessageV3) {
                return b(generatedMessageV3);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.e.a
            public Message.Builder p() {
                throw new UnsupportedOperationException("newBuilderForField() called on a non-Message type.");
            }

            static a q(b bVar) {
                return bVar;
            }
        }
    }
}
