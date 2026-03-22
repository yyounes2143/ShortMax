package com.explorestack.protobuf;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.MessageReflection;
import com.explorestack.protobuf.a;
import com.explorestack.protobuf.i0;
import com.explorestack.protobuf.j2;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public abstract class AbstractMessage extends a implements Message {
    protected int memoizedSize = -1;

    /* loaded from: classes3.dex */
    public static abstract class Builder<BuilderType extends Builder<BuilderType>> extends a.AbstractC0246a implements Message.Builder {
        /* JADX INFO: Access modifiers changed from: protected */
        public static UninitializedMessageException newUninitializedMessageException(Message message) {
            return new UninitializedMessageException(MessageReflection.c(message));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void dispose() {
            throw new IllegalStateException("Should be overridden by subclasses.");
        }

        @Override // com.explorestack.protobuf.MessageOrBuilder
        public List<String> findInitializationErrors() {
            return MessageReflection.c(this);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        public abstract /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        @Override // com.explorestack.protobuf.Message.Builder
        public Message.Builder getFieldBuilder(Descriptors.FieldDescriptor fieldDescriptor) {
            throw new UnsupportedOperationException("getFieldBuilder() called on an unsupported message type.");
        }

        @Override // com.explorestack.protobuf.MessageOrBuilder
        public String getInitializationErrorString() {
            return MessageReflection.a(findInitializationErrors());
        }

        @Override // com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.FieldDescriptor getOneofFieldDescriptor(Descriptors.OneofDescriptor oneofDescriptor) {
            throw new UnsupportedOperationException("getOneofFieldDescriptor() is not implemented.");
        }

        @Override // com.explorestack.protobuf.Message.Builder
        public Message.Builder getRepeatedFieldBuilder(Descriptors.FieldDescriptor fieldDescriptor, int i10) {
            throw new UnsupportedOperationException("getRepeatedFieldBuilder() called on an unsupported message type.");
        }

        @Override // com.explorestack.protobuf.MessageOrBuilder
        public boolean hasOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            throw new UnsupportedOperationException("hasOneof() is not implemented.");
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public abstract /* synthetic */ boolean isInitialized();

        /* JADX INFO: Access modifiers changed from: package-private */
        public void markClean() {
            throw new IllegalStateException("Should be overridden by subclasses.");
        }

        @Override // com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public boolean mergeDelimitedFrom(InputStream inputStream) throws IOException {
            return super.mergeDelimitedFrom(inputStream);
        }

        public String toString() {
            return TextFormat.printer().printToString(this);
        }

        @Override // com.explorestack.protobuf.Message.Builder
        public BuilderType clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            throw new UnsupportedOperationException("clearOneof() is not implemented.");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.a.AbstractC0246a
        public BuilderType internalMergeFrom(a aVar) {
            return mergeFrom((Message) aVar);
        }

        @Override // com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public boolean mergeDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return super.mergeDelimitedFrom(inputStream, yVar);
        }

        @Override // com.explorestack.protobuf.Message.Builder
        public BuilderType mergeUnknownFields(j2 j2Var) {
            setUnknownFields(j2.h(getUnknownFields()).t(j2Var).build());
            return this;
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public BuilderType clear() {
            for (Map.Entry<Descriptors.FieldDescriptor, Object> entry : getAllFields().entrySet()) {
                clearField(entry.getKey());
            }
            return this;
        }

        @Override // com.explorestack.protobuf.a.AbstractC0246a
        /* renamed from: clone */
        public BuilderType mo4628clone() {
            throw new UnsupportedOperationException("clone() should be implemented in subclasses.");
        }

        @Override // com.explorestack.protobuf.Message.Builder
        public BuilderType mergeFrom(Message message) {
            return mergeFrom(message, message.getAllFields());
        }

        BuilderType mergeFrom(Message message, Map<Descriptors.FieldDescriptor, Object> map) {
            if (message.getDescriptorForType() == getDescriptorForType()) {
                for (Map.Entry<Descriptors.FieldDescriptor, Object> entry : map.entrySet()) {
                    Descriptors.FieldDescriptor key = entry.getKey();
                    if (key.isRepeated()) {
                        for (Object obj : (List) entry.getValue()) {
                            addRepeatedField(key, obj);
                        }
                    } else if (key.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                        Message message2 = (Message) getField(key);
                        if (message2 == message2.getDefaultInstanceForType()) {
                            setField(key, entry.getValue());
                        } else {
                            setField(key, message2.newBuilderForType().mergeFrom(message2).mergeFrom((Message) entry.getValue()).build());
                        }
                    } else {
                        setField(key, entry.getValue());
                    }
                }
                mergeUnknownFields(message.getUnknownFields());
                return this;
            }
            throw new IllegalArgumentException("mergeFrom(Message) can only merge messages of the same type.");
        }

        @Override // com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public BuilderType mergeFrom(n nVar) throws IOException {
            return mergeFrom(nVar, (y) w.g());
        }

        @Override // com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public BuilderType mergeFrom(n nVar, y yVar) throws IOException {
            int K;
            j2.b h10 = nVar.N() ? null : j2.h(getUnknownFields());
            do {
                K = nVar.K();
                if (K == 0) {
                    break;
                }
            } while (MessageReflection.g(nVar, h10, yVar, getDescriptorForType(), new MessageReflection.b(this), K));
            if (h10 != null) {
                setUnknownFields(h10.build());
            }
            return this;
        }

        @Override // com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public BuilderType mergeFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return (BuilderType) super.mergeFrom(byteString);
        }

        @Override // com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public BuilderType mergeFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return (BuilderType) super.mergeFrom(byteString, yVar);
        }

        @Override // com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public BuilderType mergeFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return (BuilderType) super.mergeFrom(bArr);
        }

        @Override // com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public BuilderType mergeFrom(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException {
            return (BuilderType) super.mergeFrom(bArr, i10, i11);
        }

        @Override // com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public BuilderType mergeFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return (BuilderType) super.mergeFrom(bArr, yVar);
        }

        @Override // com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public BuilderType mergeFrom(byte[] bArr, int i10, int i11, y yVar) throws InvalidProtocolBufferException {
            return (BuilderType) super.mergeFrom(bArr, i10, i11, yVar);
        }

        @Override // com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public BuilderType mergeFrom(InputStream inputStream) throws IOException {
            return (BuilderType) super.mergeFrom(inputStream);
        }

        @Override // com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public BuilderType mergeFrom(InputStream inputStream, y yVar) throws IOException {
            return (BuilderType) super.mergeFrom(inputStream, yVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes3.dex */
    public interface BuilderParent {
        void markDirty();
    }

    private static boolean compareBytes(Object obj, Object obj2) {
        if ((obj instanceof byte[]) && (obj2 instanceof byte[])) {
            return Arrays.equals((byte[]) obj, (byte[]) obj2);
        }
        return toByteString(obj).equals(toByteString(obj2));
    }

    static boolean compareFields(Map<Descriptors.FieldDescriptor, Object> map, Map<Descriptors.FieldDescriptor, Object> map2) {
        if (map.size() != map2.size()) {
            return false;
        }
        for (Descriptors.FieldDescriptor fieldDescriptor : map.keySet()) {
            if (!map2.containsKey(fieldDescriptor)) {
                return false;
            }
            Object obj = map.get(fieldDescriptor);
            Object obj2 = map2.get(fieldDescriptor);
            if (fieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.BYTES) {
                if (fieldDescriptor.isRepeated()) {
                    List list = (List) obj;
                    List list2 = (List) obj2;
                    if (list.size() != list2.size()) {
                        return false;
                    }
                    for (int i10 = 0; i10 < list.size(); i10++) {
                        if (!compareBytes(list.get(i10), list2.get(i10))) {
                            return false;
                        }
                    }
                    continue;
                } else if (!compareBytes(obj, obj2)) {
                    return false;
                }
            } else if (fieldDescriptor.isMapField()) {
                if (!compareMapField(obj, obj2)) {
                    return false;
                }
            } else if (!obj.equals(obj2)) {
                return false;
            }
        }
        return true;
    }

    private static boolean compareMapField(Object obj, Object obj2) {
        return MapFieldLite.q(convertMapEntryListToMap((List) obj), convertMapEntryListToMap((List) obj2));
    }

    private static Map convertMapEntryListToMap(List list) {
        if (list.isEmpty()) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        Message message = (Message) it.next();
        Descriptors.Descriptor descriptorForType = message.getDescriptorForType();
        Descriptors.FieldDescriptor findFieldByName = descriptorForType.findFieldByName("key");
        Descriptors.FieldDescriptor findFieldByName2 = descriptorForType.findFieldByName(AppMeasurementSdk.ConditionalUserProperty.VALUE);
        Object field = message.getField(findFieldByName2);
        if (field instanceof Descriptors.EnumValueDescriptor) {
            field = Integer.valueOf(((Descriptors.EnumValueDescriptor) field).getNumber());
        }
        hashMap.put(message.getField(findFieldByName), field);
        while (it.hasNext()) {
            Message message2 = (Message) it.next();
            Object field2 = message2.getField(findFieldByName2);
            if (field2 instanceof Descriptors.EnumValueDescriptor) {
                field2 = Integer.valueOf(((Descriptors.EnumValueDescriptor) field2).getNumber());
            }
            hashMap.put(message2.getField(findFieldByName), field2);
        }
        return hashMap;
    }

    @Deprecated
    protected static int hashBoolean(boolean z10) {
        if (z10) {
            return 1231;
        }
        return 1237;
    }

    @Deprecated
    protected static int hashEnum(i0.c cVar) {
        return cVar.getNumber();
    }

    @Deprecated
    protected static int hashEnumList(List<? extends i0.c> list) {
        int i10 = 1;
        for (i0.c cVar : list) {
            i10 = (i10 * 31) + hashEnum(cVar);
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int hashFields(int i10, Map<Descriptors.FieldDescriptor, Object> map) {
        int i11;
        int g10;
        for (Map.Entry<Descriptors.FieldDescriptor, Object> entry : map.entrySet()) {
            Descriptors.FieldDescriptor key = entry.getKey();
            Object value = entry.getValue();
            int number = (i10 * 37) + key.getNumber();
            if (key.isMapField()) {
                i11 = number * 53;
                g10 = hashMapField(value);
            } else if (key.getType() != Descriptors.FieldDescriptor.Type.ENUM) {
                i11 = number * 53;
                g10 = value.hashCode();
            } else if (key.isRepeated()) {
                i11 = number * 53;
                g10 = i0.h((List) value);
            } else {
                i11 = number * 53;
                g10 = i0.g((i0.c) value);
            }
            i10 = i11 + g10;
        }
        return i10;
    }

    @Deprecated
    protected static int hashLong(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }

    private static int hashMapField(Object obj) {
        return MapFieldLite.b(convertMapEntryListToMap((List) obj));
    }

    private static ByteString toByteString(Object obj) {
        if (obj instanceof byte[]) {
            return ByteString.copyFrom((byte[]) obj);
        }
        return (ByteString) obj;
    }

    @Override // com.explorestack.protobuf.Message
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Message)) {
            return false;
        }
        Message message = (Message) obj;
        if (getDescriptorForType() != message.getDescriptorForType()) {
            return false;
        }
        if (compareFields(getAllFields(), message.getAllFields()) && getUnknownFields().equals(message.getUnknownFields())) {
            return true;
        }
        return false;
    }

    @Override // com.explorestack.protobuf.MessageOrBuilder
    public List<String> findInitializationErrors() {
        return MessageReflection.c(this);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    public abstract /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

    @Override // com.explorestack.protobuf.MessageOrBuilder
    public String getInitializationErrorString() {
        return MessageReflection.a(findInitializationErrors());
    }

    @Override // com.explorestack.protobuf.a
    int getMemoizedSerializedSize() {
        return this.memoizedSize;
    }

    @Override // com.explorestack.protobuf.MessageOrBuilder
    public Descriptors.FieldDescriptor getOneofFieldDescriptor(Descriptors.OneofDescriptor oneofDescriptor) {
        throw new UnsupportedOperationException("getOneofFieldDescriptor() is not implemented.");
    }

    @Override // com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = this.memoizedSize;
        if (i10 != -1) {
            return i10;
        }
        int e10 = MessageReflection.e(this, getAllFields());
        this.memoizedSize = e10;
        return e10;
    }

    @Override // com.explorestack.protobuf.MessageOrBuilder
    public boolean hasOneof(Descriptors.OneofDescriptor oneofDescriptor) {
        throw new UnsupportedOperationException("hasOneof() is not implemented.");
    }

    @Override // com.explorestack.protobuf.Message
    public int hashCode() {
        int i10 = this.memoizedHashCode;
        if (i10 == 0) {
            int hashFields = (hashFields(779 + getDescriptorForType().hashCode(), getAllFields()) * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = hashFields;
            return hashFields;
        }
        return i10;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    public boolean isInitialized() {
        return MessageReflection.f(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Message.Builder newBuilderForType(BuilderParent builderParent) {
        throw new UnsupportedOperationException("Nested builder is not supported for this type.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.a
    public UninitializedMessageException newUninitializedMessageException() {
        return Builder.newUninitializedMessageException((Message) this);
    }

    @Override // com.explorestack.protobuf.a
    void setMemoizedSerializedSize(int i10) {
        this.memoizedSize = i10;
    }

    @Override // com.explorestack.protobuf.Message
    public final String toString() {
        return TextFormat.printer().printToString(this);
    }

    @Override // com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        MessageReflection.k(this, getAllFields(), codedOutputStream, false);
    }
}
