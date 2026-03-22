package com.explorestack.protobuf;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.WireFormat;
import com.explorestack.protobuf.w;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ExtensionSchemaFull.java */
/* loaded from: classes3.dex */
public final class a0 extends z<Descriptors.FieldDescriptor> {

    /* renamed from: a  reason: collision with root package name */
    private static final long f14213a = k();

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int f14214b = 0;

    /* compiled from: ExtensionSchemaFull.java */
    /* loaded from: classes3.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14215a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f14215a = iArr;
            try {
                iArr[WireFormat.FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14215a[WireFormat.FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14215a[WireFormat.FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14215a[WireFormat.FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14215a[WireFormat.FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14215a[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f14215a[WireFormat.FieldType.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f14215a[WireFormat.FieldType.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f14215a[WireFormat.FieldType.UINT32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f14215a[WireFormat.FieldType.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f14215a[WireFormat.FieldType.SFIXED64.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f14215a[WireFormat.FieldType.SINT32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f14215a[WireFormat.FieldType.SINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f14215a[WireFormat.FieldType.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f14215a[WireFormat.FieldType.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f14215a[WireFormat.FieldType.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f14215a[WireFormat.FieldType.GROUP.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f14215a[WireFormat.FieldType.MESSAGE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    a0() {
    }

    private static <T> long k() {
        return o2.M(GeneratedMessageV3.ExtendableMessage.class.getDeclaredField("a"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.z
    public int a(Map.Entry<?, ?> entry) {
        return ((Descriptors.FieldDescriptor) entry.getKey()).getNumber();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.z
    public Object b(y yVar, MessageLite messageLite, int i10) {
        return ((w) yVar).d(((Message) messageLite).getDescriptorForType(), i10);
    }

    @Override // com.explorestack.protobuf.z
    public e0<Descriptors.FieldDescriptor> c(Object obj) {
        return (e0) o2.G(obj, f14213a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.z
    public e0<Descriptors.FieldDescriptor> d(Object obj) {
        e0<Descriptors.FieldDescriptor> c10 = c(obj);
        if (c10.C()) {
            e0<Descriptors.FieldDescriptor> clone = c10.clone();
            l(obj, clone);
            return clone;
        }
        return c10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.z
    public boolean e(MessageLite messageLite) {
        return messageLite instanceof GeneratedMessageV3.ExtendableMessage;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.z
    public void f(Object obj) {
        c(obj).H();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.z
    public <UT, UB> UB g(o1 o1Var, Object obj, y yVar, e0<Descriptors.FieldDescriptor> e0Var, UB ub2, i2<UT, UB> i2Var) throws IOException {
        Object valueOf;
        Object t10;
        ArrayList arrayList;
        ArrayList arrayList2;
        w.b bVar = (w.b) obj;
        int number = bVar.f14699a.getNumber();
        if (bVar.f14699a.isRepeated() && bVar.f14699a.isPacked()) {
            switch (a.f14215a[bVar.f14699a.getLiteType().ordinal()]) {
                case 1:
                    arrayList = new ArrayList();
                    o1Var.readDoubleList(arrayList);
                    arrayList2 = arrayList;
                    break;
                case 2:
                    arrayList = new ArrayList();
                    o1Var.readFloatList(arrayList);
                    arrayList2 = arrayList;
                    break;
                case 3:
                    arrayList = new ArrayList();
                    o1Var.readInt64List(arrayList);
                    arrayList2 = arrayList;
                    break;
                case 4:
                    arrayList = new ArrayList();
                    o1Var.readUInt64List(arrayList);
                    arrayList2 = arrayList;
                    break;
                case 5:
                    arrayList = new ArrayList();
                    o1Var.readInt32List(arrayList);
                    arrayList2 = arrayList;
                    break;
                case 6:
                    arrayList = new ArrayList();
                    o1Var.readFixed64List(arrayList);
                    arrayList2 = arrayList;
                    break;
                case 7:
                    arrayList = new ArrayList();
                    o1Var.readFixed32List(arrayList);
                    arrayList2 = arrayList;
                    break;
                case 8:
                    arrayList = new ArrayList();
                    o1Var.readBoolList(arrayList);
                    arrayList2 = arrayList;
                    break;
                case 9:
                    arrayList = new ArrayList();
                    o1Var.readUInt32List(arrayList);
                    arrayList2 = arrayList;
                    break;
                case 10:
                    arrayList = new ArrayList();
                    o1Var.readSFixed32List(arrayList);
                    arrayList2 = arrayList;
                    break;
                case 11:
                    arrayList = new ArrayList();
                    o1Var.readSFixed64List(arrayList);
                    arrayList2 = arrayList;
                    break;
                case 12:
                    arrayList = new ArrayList();
                    o1Var.readSInt32List(arrayList);
                    arrayList2 = arrayList;
                    break;
                case 13:
                    arrayList = new ArrayList();
                    o1Var.readSInt64List(arrayList);
                    arrayList2 = arrayList;
                    break;
                case 14:
                    ArrayList<Integer> arrayList3 = new ArrayList();
                    o1Var.readEnumList(arrayList3);
                    arrayList2 = new ArrayList();
                    for (Integer num : arrayList3) {
                        int intValue = num.intValue();
                        Descriptors.EnumValueDescriptor findValueByNumber = bVar.f14699a.m4629getEnumType().findValueByNumber(intValue);
                        if (findValueByNumber != null) {
                            arrayList2.add(findValueByNumber);
                        } else {
                            ub2 = (UB) s1.M(number, intValue, ub2, i2Var);
                        }
                    }
                    break;
                default:
                    throw new IllegalStateException("Type cannot be packed: " + bVar.f14699a.getLiteType());
            }
            e0Var.N(bVar.f14699a, arrayList2);
        } else {
            if (bVar.f14699a.getLiteType() == WireFormat.FieldType.ENUM) {
                int readInt32 = o1Var.readInt32();
                valueOf = bVar.f14699a.m4629getEnumType().findValueByNumber(readInt32);
                if (valueOf == null) {
                    return (UB) s1.M(number, readInt32, ub2, i2Var);
                }
            } else {
                switch (a.f14215a[bVar.f14699a.getLiteType().ordinal()]) {
                    case 1:
                        valueOf = Double.valueOf(o1Var.readDouble());
                        break;
                    case 2:
                        valueOf = Float.valueOf(o1Var.readFloat());
                        break;
                    case 3:
                        valueOf = Long.valueOf(o1Var.readInt64());
                        break;
                    case 4:
                        valueOf = Long.valueOf(o1Var.readUInt64());
                        break;
                    case 5:
                        valueOf = Integer.valueOf(o1Var.readInt32());
                        break;
                    case 6:
                        valueOf = Long.valueOf(o1Var.readFixed64());
                        break;
                    case 7:
                        valueOf = Integer.valueOf(o1Var.readFixed32());
                        break;
                    case 8:
                        valueOf = Boolean.valueOf(o1Var.readBool());
                        break;
                    case 9:
                        valueOf = Integer.valueOf(o1Var.readUInt32());
                        break;
                    case 10:
                        valueOf = Integer.valueOf(o1Var.readSFixed32());
                        break;
                    case 11:
                        valueOf = Long.valueOf(o1Var.readSFixed64());
                        break;
                    case 12:
                        valueOf = Integer.valueOf(o1Var.readSInt32());
                        break;
                    case 13:
                        valueOf = Long.valueOf(o1Var.readSInt64());
                        break;
                    case 14:
                        throw new IllegalStateException("Shouldn't reach here.");
                    case 15:
                        valueOf = o1Var.readBytes();
                        break;
                    case 16:
                        valueOf = o1Var.readString();
                        break;
                    case 17:
                        valueOf = o1Var.g(bVar.f14700b.getClass(), yVar);
                        break;
                    case 18:
                        valueOf = o1Var.d(bVar.f14700b.getClass(), yVar);
                        break;
                    default:
                        valueOf = null;
                        break;
                }
            }
            if (bVar.f14699a.isRepeated()) {
                e0Var.g(bVar.f14699a, valueOf);
            } else {
                int i10 = a.f14215a[bVar.f14699a.getLiteType().ordinal()];
                if ((i10 == 17 || i10 == 18) && (t10 = e0Var.t(bVar.f14699a)) != null) {
                    valueOf = i0.k(t10, valueOf);
                }
                e0Var.N(bVar.f14699a, valueOf);
            }
        }
        return ub2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.z
    public void h(o1 o1Var, Object obj, y yVar, e0<Descriptors.FieldDescriptor> e0Var) throws IOException {
        w.b bVar = (w.b) obj;
        if (y.c()) {
            e0Var.N(bVar.f14699a, o1Var.d(bVar.f14700b.getClass(), yVar));
            return;
        }
        e0Var.N(bVar.f14699a, new k0(bVar.f14700b, yVar, o1Var.readBytes()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.z
    public void i(ByteString byteString, Object obj, y yVar, e0<Descriptors.FieldDescriptor> e0Var) throws IOException {
        w.b bVar = (w.b) obj;
        Message buildPartial = bVar.f14700b.newBuilderForType().buildPartial();
        if (y.c()) {
            h h10 = h.h(ByteBuffer.wrap(byteString.toByteArray()), true);
            l1.a().b(buildPartial, h10, yVar);
            e0Var.N(bVar.f14699a, buildPartial);
            if (h10.getFieldNumber() != Integer.MAX_VALUE) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
            return;
        }
        e0Var.N(bVar.f14699a, new k0(bVar.f14700b, yVar, byteString));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.z
    public void j(Writer writer, Map.Entry<?, ?> entry) throws IOException {
        Descriptors.FieldDescriptor fieldDescriptor = (Descriptors.FieldDescriptor) entry.getKey();
        if (fieldDescriptor.isRepeated()) {
            switch (a.f14215a[fieldDescriptor.getLiteType().ordinal()]) {
                case 1:
                    s1.R(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                    return;
                case 2:
                    s1.V(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                    return;
                case 3:
                    s1.Z(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                    return;
                case 4:
                    s1.i0(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                    return;
                case 5:
                    s1.Y(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                    return;
                case 6:
                    s1.U(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                    return;
                case 7:
                    s1.T(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                    return;
                case 8:
                    s1.P(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                    return;
                case 9:
                    s1.h0(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                    return;
                case 10:
                    s1.c0(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                    return;
                case 11:
                    s1.d0(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                    return;
                case 12:
                    s1.e0(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                    return;
                case 13:
                    s1.f0(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                    return;
                case 14:
                    ArrayList arrayList = new ArrayList();
                    for (Descriptors.EnumValueDescriptor enumValueDescriptor : (List) entry.getValue()) {
                        arrayList.add(Integer.valueOf(enumValueDescriptor.getNumber()));
                    }
                    s1.Y(fieldDescriptor.getNumber(), arrayList, writer, fieldDescriptor.isPacked());
                    return;
                case 15:
                    s1.Q(fieldDescriptor.getNumber(), (List) entry.getValue(), writer);
                    return;
                case 16:
                    s1.g0(fieldDescriptor.getNumber(), (List) entry.getValue(), writer);
                    return;
                case 17:
                    s1.W(fieldDescriptor.getNumber(), (List) entry.getValue(), writer);
                    return;
                case 18:
                    s1.a0(fieldDescriptor.getNumber(), (List) entry.getValue(), writer);
                    return;
                default:
                    return;
            }
        }
        switch (a.f14215a[fieldDescriptor.getLiteType().ordinal()]) {
            case 1:
                writer.writeDouble(fieldDescriptor.getNumber(), ((Double) entry.getValue()).doubleValue());
                return;
            case 2:
                writer.writeFloat(fieldDescriptor.getNumber(), ((Float) entry.getValue()).floatValue());
                return;
            case 3:
                writer.writeInt64(fieldDescriptor.getNumber(), ((Long) entry.getValue()).longValue());
                return;
            case 4:
                writer.writeUInt64(fieldDescriptor.getNumber(), ((Long) entry.getValue()).longValue());
                return;
            case 5:
                writer.writeInt32(fieldDescriptor.getNumber(), ((Integer) entry.getValue()).intValue());
                return;
            case 6:
                writer.writeFixed64(fieldDescriptor.getNumber(), ((Long) entry.getValue()).longValue());
                return;
            case 7:
                writer.writeFixed32(fieldDescriptor.getNumber(), ((Integer) entry.getValue()).intValue());
                return;
            case 8:
                writer.writeBool(fieldDescriptor.getNumber(), ((Boolean) entry.getValue()).booleanValue());
                return;
            case 9:
                writer.writeUInt32(fieldDescriptor.getNumber(), ((Integer) entry.getValue()).intValue());
                return;
            case 10:
                writer.writeSFixed32(fieldDescriptor.getNumber(), ((Integer) entry.getValue()).intValue());
                return;
            case 11:
                writer.writeSFixed64(fieldDescriptor.getNumber(), ((Long) entry.getValue()).longValue());
                return;
            case 12:
                writer.writeSInt32(fieldDescriptor.getNumber(), ((Integer) entry.getValue()).intValue());
                return;
            case 13:
                writer.writeSInt64(fieldDescriptor.getNumber(), ((Long) entry.getValue()).longValue());
                return;
            case 14:
                writer.writeInt32(fieldDescriptor.getNumber(), ((Descriptors.EnumValueDescriptor) entry.getValue()).getNumber());
                return;
            case 15:
                writer.a(fieldDescriptor.getNumber(), (ByteString) entry.getValue());
                return;
            case 16:
                writer.writeString(fieldDescriptor.getNumber(), (String) entry.getValue());
                return;
            case 17:
                writer.writeGroup(fieldDescriptor.getNumber(), entry.getValue());
                return;
            case 18:
                writer.writeMessage(fieldDescriptor.getNumber(), entry.getValue());
                return;
            default:
                return;
        }
    }

    void l(Object obj, e0<Descriptors.FieldDescriptor> e0Var) {
        o2.X(obj, f14213a, e0Var);
    }
}
