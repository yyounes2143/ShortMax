package com.explorestack.protobuf;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.WireFormat;
import com.explorestack.protobuf.j2;
import com.explorestack.protobuf.w;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class MessageReflection {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public interface MergeTarget {

        /* loaded from: classes3.dex */
        public enum ContainerType {
            MESSAGE,
            EXTENSION_SET
        }

        w.b a(w wVar, Descriptors.Descriptor descriptor, int i10);

        MergeTarget addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj);

        ContainerType b();

        Object c(ByteString byteString, y yVar, Descriptors.FieldDescriptor fieldDescriptor, Message message) throws IOException;

        Object d(n nVar, y yVar, Descriptors.FieldDescriptor fieldDescriptor, Message message) throws IOException;

        MergeTarget e(Descriptors.FieldDescriptor fieldDescriptor, Message message);

        Object f(n nVar, y yVar, Descriptors.FieldDescriptor fieldDescriptor, Message message) throws IOException;

        Object finish();

        w.b g(w wVar, String str);

        Descriptors.Descriptor getDescriptorForType();

        Descriptors.FieldDescriptor getOneofFieldDescriptor(Descriptors.OneofDescriptor oneofDescriptor);

        WireFormat.Utf8Validation h(Descriptors.FieldDescriptor fieldDescriptor);

        boolean hasField(Descriptors.FieldDescriptor fieldDescriptor);

        boolean hasOneof(Descriptors.OneofDescriptor oneofDescriptor);

        MergeTarget setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14172a;

        static {
            int[] iArr = new int[Descriptors.FieldDescriptor.Type.values().length];
            f14172a = iArr;
            try {
                iArr[Descriptors.FieldDescriptor.Type.GROUP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14172a[Descriptors.FieldDescriptor.Type.MESSAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14172a[Descriptors.FieldDescriptor.Type.ENUM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class b implements MergeTarget {

        /* renamed from: a  reason: collision with root package name */
        private final Message.Builder f14173a;

        public b(Message.Builder builder) {
            this.f14173a = builder;
        }

        @Override // com.explorestack.protobuf.MessageReflection.MergeTarget
        public w.b a(w wVar, Descriptors.Descriptor descriptor, int i10) {
            return wVar.f(descriptor, i10);
        }

        @Override // com.explorestack.protobuf.MessageReflection.MergeTarget
        public MergeTarget addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            this.f14173a.addRepeatedField(fieldDescriptor, obj);
            return this;
        }

        @Override // com.explorestack.protobuf.MessageReflection.MergeTarget
        public MergeTarget.ContainerType b() {
            return MergeTarget.ContainerType.MESSAGE;
        }

        @Override // com.explorestack.protobuf.MessageReflection.MergeTarget
        public Object c(ByteString byteString, y yVar, Descriptors.FieldDescriptor fieldDescriptor, Message message) throws IOException {
            Message.Builder newBuilderForField;
            Message message2;
            if (message != null) {
                newBuilderForField = message.newBuilderForType();
            } else {
                newBuilderForField = this.f14173a.newBuilderForField(fieldDescriptor);
            }
            if (!fieldDescriptor.isRepeated() && (message2 = (Message) i(fieldDescriptor)) != null) {
                newBuilderForField.mergeFrom(message2);
            }
            newBuilderForField.mergeFrom(byteString, yVar);
            return newBuilderForField.buildPartial();
        }

        @Override // com.explorestack.protobuf.MessageReflection.MergeTarget
        public Object d(n nVar, y yVar, Descriptors.FieldDescriptor fieldDescriptor, Message message) throws IOException {
            Message.Builder newBuilderForField;
            Message message2;
            if (message != null) {
                newBuilderForField = message.newBuilderForType();
            } else {
                newBuilderForField = this.f14173a.newBuilderForField(fieldDescriptor);
            }
            if (!fieldDescriptor.isRepeated() && (message2 = (Message) i(fieldDescriptor)) != null) {
                newBuilderForField.mergeFrom(message2);
            }
            nVar.B(newBuilderForField, yVar);
            return newBuilderForField.buildPartial();
        }

        @Override // com.explorestack.protobuf.MessageReflection.MergeTarget
        public MergeTarget e(Descriptors.FieldDescriptor fieldDescriptor, Message message) {
            Message.Builder newBuilderForField;
            Message message2;
            if (message != null) {
                newBuilderForField = message.newBuilderForType();
            } else {
                newBuilderForField = this.f14173a.newBuilderForField(fieldDescriptor);
            }
            if (!fieldDescriptor.isRepeated() && (message2 = (Message) i(fieldDescriptor)) != null) {
                newBuilderForField.mergeFrom(message2);
            }
            return new b(newBuilderForField);
        }

        @Override // com.explorestack.protobuf.MessageReflection.MergeTarget
        public Object f(n nVar, y yVar, Descriptors.FieldDescriptor fieldDescriptor, Message message) throws IOException {
            Message.Builder newBuilderForField;
            Message message2;
            if (message != null) {
                newBuilderForField = message.newBuilderForType();
            } else {
                newBuilderForField = this.f14173a.newBuilderForField(fieldDescriptor);
            }
            if (!fieldDescriptor.isRepeated() && (message2 = (Message) i(fieldDescriptor)) != null) {
                newBuilderForField.mergeFrom(message2);
            }
            nVar.x(fieldDescriptor.getNumber(), newBuilderForField, yVar);
            return newBuilderForField.buildPartial();
        }

        @Override // com.explorestack.protobuf.MessageReflection.MergeTarget
        public Object finish() {
            return this.f14173a.buildPartial();
        }

        @Override // com.explorestack.protobuf.MessageReflection.MergeTarget
        public w.b g(w wVar, String str) {
            return wVar.e(str);
        }

        @Override // com.explorestack.protobuf.MessageReflection.MergeTarget
        public Descriptors.Descriptor getDescriptorForType() {
            return this.f14173a.getDescriptorForType();
        }

        @Override // com.explorestack.protobuf.MessageReflection.MergeTarget
        public Descriptors.FieldDescriptor getOneofFieldDescriptor(Descriptors.OneofDescriptor oneofDescriptor) {
            return this.f14173a.getOneofFieldDescriptor(oneofDescriptor);
        }

        @Override // com.explorestack.protobuf.MessageReflection.MergeTarget
        public WireFormat.Utf8Validation h(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.needsUtf8Check()) {
                return WireFormat.Utf8Validation.STRICT;
            }
            fieldDescriptor.isRepeated();
            return WireFormat.Utf8Validation.LOOSE;
        }

        @Override // com.explorestack.protobuf.MessageReflection.MergeTarget
        public boolean hasField(Descriptors.FieldDescriptor fieldDescriptor) {
            return this.f14173a.hasField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.MessageReflection.MergeTarget
        public boolean hasOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            return this.f14173a.hasOneof(oneofDescriptor);
        }

        public Object i(Descriptors.FieldDescriptor fieldDescriptor) {
            return this.f14173a.getField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.MessageReflection.MergeTarget
        public MergeTarget setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            this.f14173a.setField(fieldDescriptor, obj);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class c implements MergeTarget {

        /* renamed from: a  reason: collision with root package name */
        private final e0<Descriptors.FieldDescriptor> f14174a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(e0<Descriptors.FieldDescriptor> e0Var) {
            this.f14174a = e0Var;
        }

        @Override // com.explorestack.protobuf.MessageReflection.MergeTarget
        public w.b a(w wVar, Descriptors.Descriptor descriptor, int i10) {
            return wVar.f(descriptor, i10);
        }

        @Override // com.explorestack.protobuf.MessageReflection.MergeTarget
        public MergeTarget addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            this.f14174a.g(fieldDescriptor, obj);
            return this;
        }

        @Override // com.explorestack.protobuf.MessageReflection.MergeTarget
        public MergeTarget.ContainerType b() {
            return MergeTarget.ContainerType.EXTENSION_SET;
        }

        @Override // com.explorestack.protobuf.MessageReflection.MergeTarget
        public Object c(ByteString byteString, y yVar, Descriptors.FieldDescriptor fieldDescriptor, Message message) throws IOException {
            Message message2;
            Message.Builder newBuilderForType = message.newBuilderForType();
            if (!fieldDescriptor.isRepeated() && (message2 = (Message) i(fieldDescriptor)) != null) {
                newBuilderForType.mergeFrom(message2);
            }
            newBuilderForType.mergeFrom(byteString, yVar);
            return newBuilderForType.buildPartial();
        }

        @Override // com.explorestack.protobuf.MessageReflection.MergeTarget
        public Object d(n nVar, y yVar, Descriptors.FieldDescriptor fieldDescriptor, Message message) throws IOException {
            Message message2;
            Message.Builder newBuilderForType = message.newBuilderForType();
            if (!fieldDescriptor.isRepeated() && (message2 = (Message) i(fieldDescriptor)) != null) {
                newBuilderForType.mergeFrom(message2);
            }
            nVar.B(newBuilderForType, yVar);
            return newBuilderForType.buildPartial();
        }

        @Override // com.explorestack.protobuf.MessageReflection.MergeTarget
        public MergeTarget e(Descriptors.FieldDescriptor fieldDescriptor, Message message) {
            throw new UnsupportedOperationException("newMergeTargetForField() called on FieldSet object");
        }

        @Override // com.explorestack.protobuf.MessageReflection.MergeTarget
        public Object f(n nVar, y yVar, Descriptors.FieldDescriptor fieldDescriptor, Message message) throws IOException {
            Message message2;
            Message.Builder newBuilderForType = message.newBuilderForType();
            if (!fieldDescriptor.isRepeated() && (message2 = (Message) i(fieldDescriptor)) != null) {
                newBuilderForType.mergeFrom(message2);
            }
            nVar.x(fieldDescriptor.getNumber(), newBuilderForType, yVar);
            return newBuilderForType.buildPartial();
        }

        @Override // com.explorestack.protobuf.MessageReflection.MergeTarget
        public Object finish() {
            throw new UnsupportedOperationException("finish() called on FieldSet object");
        }

        @Override // com.explorestack.protobuf.MessageReflection.MergeTarget
        public w.b g(w wVar, String str) {
            return wVar.e(str);
        }

        @Override // com.explorestack.protobuf.MessageReflection.MergeTarget
        public Descriptors.Descriptor getDescriptorForType() {
            throw new UnsupportedOperationException("getDescriptorForType() called on FieldSet object");
        }

        @Override // com.explorestack.protobuf.MessageReflection.MergeTarget
        public Descriptors.FieldDescriptor getOneofFieldDescriptor(Descriptors.OneofDescriptor oneofDescriptor) {
            return null;
        }

        @Override // com.explorestack.protobuf.MessageReflection.MergeTarget
        public WireFormat.Utf8Validation h(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.needsUtf8Check()) {
                return WireFormat.Utf8Validation.STRICT;
            }
            return WireFormat.Utf8Validation.LOOSE;
        }

        @Override // com.explorestack.protobuf.MessageReflection.MergeTarget
        public boolean hasField(Descriptors.FieldDescriptor fieldDescriptor) {
            return this.f14174a.A(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.MessageReflection.MergeTarget
        public boolean hasOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            return false;
        }

        public Object i(Descriptors.FieldDescriptor fieldDescriptor) {
            return this.f14174a.t(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.MessageReflection.MergeTarget
        public MergeTarget setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            this.f14174a.N(fieldDescriptor, obj);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(List<String> list) {
        StringBuilder sb2 = new StringBuilder();
        for (String str : list) {
            if (sb2.length() > 0) {
                sb2.append(", ");
            }
            sb2.append(str);
        }
        return sb2.toString();
    }

    private static void b(n nVar, w.b bVar, y yVar, MergeTarget mergeTarget) throws IOException {
        Descriptors.FieldDescriptor fieldDescriptor = bVar.f14699a;
        mergeTarget.setField(fieldDescriptor, mergeTarget.d(nVar, yVar, fieldDescriptor, bVar.f14700b));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<String> c(MessageOrBuilder messageOrBuilder) {
        ArrayList arrayList = new ArrayList();
        d(messageOrBuilder, "", arrayList);
        return arrayList;
    }

    private static void d(MessageOrBuilder messageOrBuilder, String str, List<String> list) {
        for (Descriptors.FieldDescriptor fieldDescriptor : messageOrBuilder.getDescriptorForType().getFields()) {
            if (fieldDescriptor.isRequired() && !messageOrBuilder.hasField(fieldDescriptor)) {
                list.add(str + fieldDescriptor.getName());
            }
        }
        for (Map.Entry<Descriptors.FieldDescriptor, Object> entry : messageOrBuilder.getAllFields().entrySet()) {
            Descriptors.FieldDescriptor key = entry.getKey();
            Object value = entry.getValue();
            if (key.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                if (key.isRepeated()) {
                    int i10 = 0;
                    for (MessageOrBuilder messageOrBuilder2 : (List) value) {
                        d(messageOrBuilder2, j(str, key, i10), list);
                        i10++;
                    }
                } else if (messageOrBuilder.hasField(key)) {
                    d((MessageOrBuilder) value, j(str, key, -1), list);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(Message message, Map<Descriptors.FieldDescriptor, Object> map) {
        int serializedSize;
        int p10;
        boolean z10 = message.getDescriptorForType().getOptions().z();
        int i10 = 0;
        for (Map.Entry<Descriptors.FieldDescriptor, Object> entry : map.entrySet()) {
            Descriptors.FieldDescriptor key = entry.getKey();
            Object value = entry.getValue();
            if (z10 && key.isExtension() && key.getType() == Descriptors.FieldDescriptor.Type.MESSAGE && !key.isRepeated()) {
                p10 = CodedOutputStream.F(key.getNumber(), (Message) value);
            } else {
                p10 = e0.p(key, value);
            }
            i10 += p10;
        }
        j2 unknownFields = message.getUnknownFields();
        if (z10) {
            serializedSize = unknownFields.f();
        } else {
            serializedSize = unknownFields.getSerializedSize();
        }
        return i10 + serializedSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean f(MessageOrBuilder messageOrBuilder) {
        for (Descriptors.FieldDescriptor fieldDescriptor : messageOrBuilder.getDescriptorForType().getFields()) {
            if (fieldDescriptor.isRequired() && !messageOrBuilder.hasField(fieldDescriptor)) {
                return false;
            }
        }
        for (Map.Entry<Descriptors.FieldDescriptor, Object> entry : messageOrBuilder.getAllFields().entrySet()) {
            Descriptors.FieldDescriptor key = entry.getKey();
            if (key.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                if (key.isRepeated()) {
                    for (Message message : (List) entry.getValue()) {
                        if (!message.isInitialized()) {
                            return false;
                        }
                    }
                    continue;
                } else if (!((Message) entry.getValue()).isInitialized()) {
                    return false;
                }
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean g(com.explorestack.protobuf.n r7, com.explorestack.protobuf.j2.b r8, com.explorestack.protobuf.y r9, com.explorestack.protobuf.Descriptors.Descriptor r10, com.explorestack.protobuf.MessageReflection.MergeTarget r11, int r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.MessageReflection.g(com.explorestack.protobuf.n, com.explorestack.protobuf.j2$b, com.explorestack.protobuf.y, com.explorestack.protobuf.Descriptors$Descriptor, com.explorestack.protobuf.MessageReflection$MergeTarget, int):boolean");
    }

    private static void h(ByteString byteString, w.b bVar, y yVar, MergeTarget mergeTarget) throws IOException {
        Descriptors.FieldDescriptor fieldDescriptor = bVar.f14699a;
        if (!mergeTarget.hasField(fieldDescriptor) && !y.c()) {
            mergeTarget.setField(fieldDescriptor, new k0(bVar.f14700b, yVar, byteString));
        } else {
            mergeTarget.setField(fieldDescriptor, mergeTarget.c(byteString, yVar, fieldDescriptor, bVar.f14700b));
        }
    }

    private static void i(n nVar, j2.b bVar, y yVar, Descriptors.Descriptor descriptor, MergeTarget mergeTarget) throws IOException {
        int i10 = 0;
        ByteString byteString = null;
        w.b bVar2 = null;
        while (true) {
            int K = nVar.K();
            if (K == 0) {
                break;
            } else if (K == WireFormat.f14209c) {
                i10 = nVar.L();
                if (i10 != 0 && (yVar instanceof w)) {
                    bVar2 = mergeTarget.a((w) yVar, descriptor, i10);
                }
            } else if (K == WireFormat.f14210d) {
                if (i10 != 0 && bVar2 != null && y.c()) {
                    b(nVar, bVar2, yVar, mergeTarget);
                    byteString = null;
                } else {
                    byteString = nVar.r();
                }
            } else if (!nVar.O(K)) {
                break;
            }
        }
        nVar.a(WireFormat.f14208b);
        if (byteString != null && i10 != 0) {
            if (bVar2 != null) {
                h(byteString, bVar2, yVar, mergeTarget);
            } else if (bVar != null) {
                bVar.m(i10, j2.c.t().e(byteString).g());
            }
        }
    }

    private static String j(String str, Descriptors.FieldDescriptor fieldDescriptor, int i10) {
        StringBuilder sb2 = new StringBuilder(str);
        if (fieldDescriptor.isExtension()) {
            sb2.append('(');
            sb2.append(fieldDescriptor.getFullName());
            sb2.append(')');
        } else {
            sb2.append(fieldDescriptor.getName());
        }
        if (i10 != -1) {
            sb2.append('[');
            sb2.append(i10);
            sb2.append(']');
        }
        sb2.append('.');
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void k(Message message, Map<Descriptors.FieldDescriptor, Object> map, CodedOutputStream codedOutputStream, boolean z10) throws IOException {
        boolean z11 = message.getDescriptorForType().getOptions().z();
        if (z10) {
            TreeMap treeMap = new TreeMap(map);
            for (Descriptors.FieldDescriptor fieldDescriptor : message.getDescriptorForType().getFields()) {
                if (fieldDescriptor.isRequired() && !treeMap.containsKey(fieldDescriptor)) {
                    treeMap.put(fieldDescriptor, message.getField(fieldDescriptor));
                }
            }
            map = treeMap;
        }
        for (Map.Entry<Descriptors.FieldDescriptor, Object> entry : map.entrySet()) {
            Descriptors.FieldDescriptor key = entry.getKey();
            Object value = entry.getValue();
            if (z11 && key.isExtension() && key.getType() == Descriptors.FieldDescriptor.Type.MESSAGE && !key.isRepeated()) {
                codedOutputStream.O0(key.getNumber(), (Message) value);
            } else {
                e0.S(key, value, codedOutputStream);
            }
        }
        j2 unknownFields = message.getUnknownFields();
        if (z11) {
            unknownFields.l(codedOutputStream);
        } else {
            unknownFields.writeTo(codedOutputStream);
        }
    }
}
