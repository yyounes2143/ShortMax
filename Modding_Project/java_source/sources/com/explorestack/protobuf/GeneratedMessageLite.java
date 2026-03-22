package com.explorestack.protobuf;

import com.explorestack.protobuf.GeneratedMessageLite;
import com.explorestack.protobuf.GeneratedMessageLite.a;
import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.WireFormat;
import com.explorestack.protobuf.a;
import com.explorestack.protobuf.e0;
import com.explorestack.protobuf.g;
import com.explorestack.protobuf.i0;
import java.io.IOException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3.dex */
public abstract class GeneratedMessageLite<MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends com.explorestack.protobuf.a<MessageType, BuilderType> {

    /* renamed from: c  reason: collision with root package name */
    private static Map<Object, GeneratedMessageLite<?, ?>> f14071c = new ConcurrentHashMap();

    /* renamed from: a  reason: collision with root package name */
    protected k2 f14072a = k2.c();

    /* renamed from: b  reason: collision with root package name */
    protected int f14073b = -1;

    /* loaded from: classes3.dex */
    public enum MethodToInvoke {
        GET_MEMOIZED_IS_INITIALIZED,
        SET_MEMOIZED_IS_INITIALIZED,
        BUILD_MESSAGE_INFO,
        NEW_MUTABLE_INSTANCE,
        NEW_BUILDER,
        GET_DEFAULT_INSTANCE,
        GET_PARSER
    }

    /* loaded from: classes3.dex */
    protected static final class SerializedForm implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final Class<?> f14074a;

        /* renamed from: b  reason: collision with root package name */
        private final String f14075b;

        /* renamed from: c  reason: collision with root package name */
        private final byte[] f14076c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public SerializedForm(MessageLite messageLite) {
            Class<?> cls = messageLite.getClass();
            this.f14074a = cls;
            this.f14075b = cls.getName();
            this.f14076c = messageLite.toByteArray();
        }

        @Deprecated
        private Object b() throws ObjectStreamException {
            try {
                java.lang.reflect.Field declaredField = d().getDeclaredField("defaultInstance");
                declaredField.setAccessible(true);
                return ((MessageLite) declaredField.get(null)).newBuilderForType().mergeFrom(this.f14076c).buildPartial();
            } catch (InvalidProtocolBufferException e10) {
                throw new RuntimeException("Unable to understand proto buffer", e10);
            } catch (ClassNotFoundException e11) {
                throw new RuntimeException("Unable to find proto buffer class: " + this.f14075b, e11);
            } catch (IllegalAccessException e12) {
                throw new RuntimeException("Unable to call parsePartialFrom", e12);
            } catch (NoSuchFieldException e13) {
                throw new RuntimeException("Unable to find defaultInstance in " + this.f14075b, e13);
            } catch (SecurityException e14) {
                throw new RuntimeException("Unable to call defaultInstance in " + this.f14075b, e14);
            }
        }

        private Class<?> d() throws ClassNotFoundException {
            Class<?> cls = this.f14074a;
            if (cls == null) {
                return Class.forName(this.f14075b);
            }
            return cls;
        }

        protected Object readResolve() throws ObjectStreamException {
            try {
                java.lang.reflect.Field declaredField = d().getDeclaredField("DEFAULT_INSTANCE");
                declaredField.setAccessible(true);
                return ((MessageLite) declaredField.get(null)).newBuilderForType().mergeFrom(this.f14076c).buildPartial();
            } catch (InvalidProtocolBufferException e10) {
                throw new RuntimeException("Unable to understand proto buffer", e10);
            } catch (ClassNotFoundException e11) {
                throw new RuntimeException("Unable to find proto buffer class: " + this.f14075b, e11);
            } catch (IllegalAccessException e12) {
                throw new RuntimeException("Unable to call parsePartialFrom", e12);
            } catch (NoSuchFieldException unused) {
                return b();
            } catch (SecurityException e13) {
                throw new RuntimeException("Unable to call DEFAULT_INSTANCE in " + this.f14075b, e13);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class a<MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends a.AbstractC0246a<MessageType, BuilderType> {

        /* renamed from: a  reason: collision with root package name */
        private final MessageType f14077a;

        /* renamed from: b  reason: collision with root package name */
        protected MessageType f14078b;

        /* renamed from: c  reason: collision with root package name */
        protected boolean f14079c;

        private void o(MessageType messagetype, MessageType messagetype2) {
            l1.a().e(messagetype).mergeFrom(messagetype, messagetype2);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: a */
        public final MessageType build() {
            MessageType buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw a.AbstractC0246a.newUninitializedMessageException(buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: b */
        public MessageType buildPartial() {
            if (this.f14079c) {
                return this.f14078b;
            }
            this.f14078b.j();
            this.f14079c = true;
            return this.f14078b;
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: c */
        public final BuilderType clear() {
            this.f14078b = (MessageType) this.f14078b.d(MethodToInvoke.NEW_MUTABLE_INSTANCE);
            return this;
        }

        @Override // com.explorestack.protobuf.a.AbstractC0246a
        /* renamed from: e */
        public BuilderType mo4628clone() {
            BuilderType buildertype = (BuilderType) mo4630getDefaultInstanceForType().newBuilderForType();
            buildertype.l(buildPartial());
            return buildertype;
        }

        protected final void f() {
            if (this.f14079c) {
                g();
                this.f14079c = false;
            }
        }

        protected void g() {
            MessageType messagetype = (MessageType) this.f14078b.d(MethodToInvoke.NEW_MUTABLE_INSTANCE);
            o(messagetype, this.f14078b);
            this.f14078b = messagetype;
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: i */
        public MessageType mo4630getDefaultInstanceForType() {
            return this.f14077a;
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            return GeneratedMessageLite.i(this.f14078b, false);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.a.AbstractC0246a
        /* renamed from: j */
        public BuilderType internalMergeFrom(MessageType messagetype) {
            return l(messagetype);
        }

        @Override // com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: k */
        public BuilderType mergeFrom(n nVar, y yVar) throws IOException {
            f();
            try {
                l1.a().e(this.f14078b).c(this.f14078b, o.h(nVar), yVar);
                return this;
            } catch (RuntimeException e10) {
                if (e10.getCause() instanceof IOException) {
                    throw ((IOException) e10.getCause());
                }
                throw e10;
            }
        }

        public BuilderType l(MessageType messagetype) {
            f();
            o(this.f14078b, messagetype);
            return this;
        }

        @Override // com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: m */
        public BuilderType mergeFrom(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException {
            return mergeFrom(bArr, i10, i11, y.b());
        }

        @Override // com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: n */
        public BuilderType mergeFrom(byte[] bArr, int i10, int i11, y yVar) throws InvalidProtocolBufferException {
            f();
            try {
                l1.a().e(this.f14078b).a(this.f14078b, bArr, i10, i10 + i11, new g.b(yVar));
                return this;
            } catch (InvalidProtocolBufferException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e11);
            } catch (IndexOutOfBoundsException unused) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class b<MessageType extends b<MessageType, BuilderType>, BuilderType> extends GeneratedMessageLite<MessageType, BuilderType> {

        /* renamed from: d  reason: collision with root package name */
        protected e0<c> f14080d = e0.r();

        @Override // com.explorestack.protobuf.GeneratedMessageLite, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public /* bridge */ /* synthetic */ MessageLite mo4630getDefaultInstanceForType() {
            return super.mo4630getDefaultInstanceForType();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageLite, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public /* bridge */ /* synthetic */ MessageLite.Builder newBuilderForType() {
            return super.newBuilderForType();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public e0<c> q() {
            if (this.f14080d.C()) {
                this.f14080d = this.f14080d.clone();
            }
            return this.f14080d;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageLite, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public /* bridge */ /* synthetic */ MessageLite.Builder toBuilder() {
            return super.toBuilder();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class c implements e0.c<c> {

        /* renamed from: a  reason: collision with root package name */
        final i0.d<?> f14081a;

        /* renamed from: b  reason: collision with root package name */
        final int f14082b;

        /* renamed from: c  reason: collision with root package name */
        final WireFormat.FieldType f14083c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f14084d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f14085e;

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(c cVar) {
            return this.f14082b - cVar.f14082b;
        }

        public i0.d<?> b() {
            return this.f14081a;
        }

        @Override // com.explorestack.protobuf.e0.c
        public WireFormat.JavaType getLiteJavaType() {
            return this.f14083c.getJavaType();
        }

        @Override // com.explorestack.protobuf.e0.c
        public WireFormat.FieldType getLiteType() {
            return this.f14083c;
        }

        @Override // com.explorestack.protobuf.e0.c
        public int getNumber() {
            return this.f14082b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.explorestack.protobuf.e0.c
        public MessageLite.Builder internalMergeFrom(MessageLite.Builder builder, MessageLite messageLite) {
            return ((a) builder).l((GeneratedMessageLite) messageLite);
        }

        @Override // com.explorestack.protobuf.e0.c
        public boolean isPacked() {
            return this.f14085e;
        }

        @Override // com.explorestack.protobuf.e0.c
        public boolean isRepeated() {
            return this.f14084d;
        }
    }

    /* loaded from: classes3.dex */
    public static class d<ContainingType extends MessageLite, Type> extends v<ContainingType, Type> {

        /* renamed from: a  reason: collision with root package name */
        final MessageLite f14086a;

        /* renamed from: b  reason: collision with root package name */
        final c f14087b;

        public WireFormat.FieldType b() {
            return this.f14087b.getLiteType();
        }

        public MessageLite c() {
            return this.f14086a;
        }

        public int d() {
            return this.f14087b.getNumber();
        }

        public boolean e() {
            return this.f14087b.f14084d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends GeneratedMessageLite<?, ?>> T g(Class<T> cls) {
        GeneratedMessageLite<?, ?> generatedMessageLite = f14071c.get(cls);
        if (generatedMessageLite == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                generatedMessageLite = f14071c.get(cls);
            } catch (ClassNotFoundException e10) {
                throw new IllegalStateException("Class initialization cannot fail.", e10);
            }
        }
        if (generatedMessageLite == null) {
            generatedMessageLite = (T) ((GeneratedMessageLite) o2.l(cls)).mo4630getDefaultInstanceForType();
            if (generatedMessageLite != null) {
                f14071c.put(cls, generatedMessageLite);
            } else {
                throw new IllegalStateException();
            }
        }
        return (T) generatedMessageLite;
    }

    protected static final <T extends GeneratedMessageLite<T, ?>> boolean i(T t10, boolean z10) {
        Object obj;
        byte byteValue = ((Byte) t10.d(MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean isInitialized = l1.a().e(t10).isInitialized(t10);
        if (z10) {
            MethodToInvoke methodToInvoke = MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED;
            if (isInitialized) {
                obj = t10;
            } else {
                obj = null;
            }
            t10.e(methodToInvoke, obj);
        }
        return isInitialized;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object b() throws Exception {
        return d(MethodToInvoke.BUILD_MESSAGE_INFO);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object d(MethodToInvoke methodToInvoke) {
        return f(methodToInvoke, null, null);
    }

    protected Object e(MethodToInvoke methodToInvoke, Object obj) {
        return f(methodToInvoke, obj, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return l1.a().e(this).equals(this, (GeneratedMessageLite) obj);
    }

    protected abstract Object f(MethodToInvoke methodToInvoke, Object obj, Object obj2);

    @Override // com.explorestack.protobuf.a
    int getMemoizedSerializedSize() {
        return this.f14073b;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final j1<MessageType> getParserForType() {
        return (j1) d(MethodToInvoke.GET_PARSER);
    }

    @Override // com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        if (this.f14073b == -1) {
            this.f14073b = l1.a().e(this).getSerializedSize(this);
        }
        return this.f14073b;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: h */
    public final MessageType mo4630getDefaultInstanceForType() {
        return (MessageType) d(MethodToInvoke.GET_DEFAULT_INSTANCE);
    }

    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode = l1.a().e(this).hashCode(this);
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    public final boolean isInitialized() {
        return i(this, true);
    }

    protected void j() {
        l1.a().e(this).makeImmutable(this);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    /* renamed from: k */
    public final BuilderType newBuilderForType() {
        return (BuilderType) d(MethodToInvoke.NEW_BUILDER);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    /* renamed from: n */
    public final BuilderType toBuilder() {
        BuilderType buildertype = (BuilderType) d(MethodToInvoke.NEW_BUILDER);
        buildertype.l(this);
        return buildertype;
    }

    @Override // com.explorestack.protobuf.a
    void setMemoizedSerializedSize(int i10) {
        this.f14073b = i10;
    }

    public String toString() {
        return a1.e(this, super.toString());
    }

    @Override // com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        l1.a().e(this).b(this, p.g(codedOutputStream));
    }
}
