package com.google.protobuf;

import com.google.protobuf.MessageLite;
import com.google.protobuf.WireFormat;
import java.io.IOException;
import java.util.AbstractMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class MapEntryLite<K, V> {
    private static final int KEY_FIELD_NUMBER = 1;
    private static final int VALUE_FIELD_NUMBER = 2;
    private final K key;
    private final b<K, V> metadata;
    private final V value;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                iArr[WireFormat.FieldType.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.GROUP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class b<K, V> {
        public final K defaultKey;
        public final V defaultValue;
        public final WireFormat.FieldType keyType;
        public final WireFormat.FieldType valueType;

        public b(WireFormat.FieldType fieldType, K k10, WireFormat.FieldType fieldType2, V v10) {
            this.keyType = fieldType;
            this.defaultKey = k10;
            this.valueType = fieldType2;
            this.defaultValue = v10;
        }
    }

    private MapEntryLite(WireFormat.FieldType fieldType, K k10, WireFormat.FieldType fieldType2, V v10) {
        this.metadata = new b<>(fieldType, k10, fieldType2, v10);
        this.key = k10;
        this.value = v10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> int computeSerializedSize(b<K, V> bVar, K k10, V v10) {
        return FieldSet.computeElementSize(bVar.keyType, 1, k10) + FieldSet.computeElementSize(bVar.valueType, 2, v10);
    }

    public static <K, V> MapEntryLite<K, V> newDefaultInstance(WireFormat.FieldType fieldType, K k10, WireFormat.FieldType fieldType2, V v10) {
        return new MapEntryLite<>(fieldType, k10, fieldType2, v10);
    }

    static <T> T parseField(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, WireFormat.FieldType fieldType, T t10) throws IOException {
        int i10 = a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fieldType.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return (T) FieldSet.readPrimitiveField(codedInputStream, fieldType, true);
                }
                throw new RuntimeException("Groups are not allowed in maps.");
            }
            return (T) Integer.valueOf(codedInputStream.readEnum());
        }
        MessageLite.Builder builder = ((MessageLite) t10).toBuilder();
        codedInputStream.readMessage(builder, extensionRegistryLite);
        return (T) builder.buildPartial();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> void writeTo(CodedOutputStream codedOutputStream, b<K, V> bVar, K k10, V v10) throws IOException {
        FieldSet.writeElement(codedOutputStream, bVar.keyType, 1, k10);
        FieldSet.writeElement(codedOutputStream, bVar.valueType, 2, v10);
    }

    public int computeMessageSize(int i10, K k10, V v10) {
        return CodedOutputStream.computeTagSize(i10) + CodedOutputStream.computeLengthDelimitedFieldSize(computeSerializedSize(this.metadata, k10, v10));
    }

    public K getKey() {
        return this.key;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b<K, V> getMetadata() {
        return this.metadata;
    }

    public V getValue() {
        return this.value;
    }

    public Map.Entry<K, V> parseEntry(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return parseEntry(byteString.newCodedInput(), this.metadata, extensionRegistryLite);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void parseInto(MapFieldLite<K, V> mapFieldLite, CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        int pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
        b<K, V> bVar = this.metadata;
        Object obj = bVar.defaultKey;
        Object obj2 = bVar.defaultValue;
        while (true) {
            int readTag = codedInputStream.readTag();
            if (readTag == 0) {
                break;
            } else if (readTag == WireFormat.makeTag(1, this.metadata.keyType.getWireType())) {
                obj = parseField(codedInputStream, extensionRegistryLite, this.metadata.keyType, obj);
            } else if (readTag == WireFormat.makeTag(2, this.metadata.valueType.getWireType())) {
                obj2 = parseField(codedInputStream, extensionRegistryLite, this.metadata.valueType, obj2);
            } else if (!codedInputStream.skipField(readTag)) {
                break;
            }
        }
        codedInputStream.checkLastTagWas(0);
        codedInputStream.popLimit(pushLimit);
        mapFieldLite.put(obj, obj2);
    }

    public void serializeTo(CodedOutputStream codedOutputStream, int i10, K k10, V v10) throws IOException {
        codedOutputStream.writeTag(i10, 2);
        codedOutputStream.writeUInt32NoTag(computeSerializedSize(this.metadata, k10, v10));
        writeTo(codedOutputStream, this.metadata, k10, v10);
    }

    static <K, V> Map.Entry<K, V> parseEntry(CodedInputStream codedInputStream, b<K, V> bVar, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        Object obj = bVar.defaultKey;
        Object obj2 = bVar.defaultValue;
        while (true) {
            int readTag = codedInputStream.readTag();
            if (readTag == 0) {
                break;
            } else if (readTag == WireFormat.makeTag(1, bVar.keyType.getWireType())) {
                obj = parseField(codedInputStream, extensionRegistryLite, bVar.keyType, obj);
            } else if (readTag == WireFormat.makeTag(2, bVar.valueType.getWireType())) {
                obj2 = parseField(codedInputStream, extensionRegistryLite, bVar.valueType, obj2);
            } else if (!codedInputStream.skipField(readTag)) {
                break;
            }
        }
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    private MapEntryLite(b<K, V> bVar, K k10, V v10) {
        this.metadata = bVar;
        this.key = k10;
        this.value = v10;
    }
}
