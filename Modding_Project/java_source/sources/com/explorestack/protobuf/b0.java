package com.explorestack.protobuf;

import com.explorestack.protobuf.GeneratedMessageLite;
import com.explorestack.protobuf.WireFormat;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* compiled from: ExtensionSchemaLite.java */
/* loaded from: classes3.dex */
final class b0 extends z<GeneratedMessageLite.c> {

    /* compiled from: ExtensionSchemaLite.java */
    /* loaded from: classes3.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14270a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f14270a = iArr;
            try {
                iArr[WireFormat.FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14270a[WireFormat.FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14270a[WireFormat.FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14270a[WireFormat.FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14270a[WireFormat.FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14270a[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f14270a[WireFormat.FieldType.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f14270a[WireFormat.FieldType.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f14270a[WireFormat.FieldType.UINT32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f14270a[WireFormat.FieldType.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f14270a[WireFormat.FieldType.SFIXED64.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f14270a[WireFormat.FieldType.SINT32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f14270a[WireFormat.FieldType.SINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f14270a[WireFormat.FieldType.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f14270a[WireFormat.FieldType.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f14270a[WireFormat.FieldType.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f14270a[WireFormat.FieldType.GROUP.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f14270a[WireFormat.FieldType.MESSAGE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.z
    public int a(Map.Entry<?, ?> entry) {
        return ((GeneratedMessageLite.c) entry.getKey()).getNumber();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.z
    public Object b(y yVar, MessageLite messageLite, int i10) {
        return yVar.a(messageLite, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.z
    public e0<GeneratedMessageLite.c> c(Object obj) {
        return ((GeneratedMessageLite.b) obj).f14080d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.z
    public e0<GeneratedMessageLite.c> d(Object obj) {
        return ((GeneratedMessageLite.b) obj).q();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.z
    public boolean e(MessageLite messageLite) {
        return messageLite instanceof GeneratedMessageLite.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.z
    public void f(Object obj) {
        c(obj).H();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.z
    public <UT, UB> UB g(o1 o1Var, Object obj, y yVar, e0<GeneratedMessageLite.c> e0Var, UB ub2, i2<UT, UB> i2Var) throws IOException {
        Object valueOf;
        Object t10;
        ArrayList arrayList;
        GeneratedMessageLite.d dVar = (GeneratedMessageLite.d) obj;
        int d10 = dVar.d();
        if (dVar.f14087b.isRepeated() && dVar.f14087b.isPacked()) {
            switch (a.f14270a[dVar.b().ordinal()]) {
                case 1:
                    arrayList = new ArrayList();
                    o1Var.readDoubleList(arrayList);
                    break;
                case 2:
                    arrayList = new ArrayList();
                    o1Var.readFloatList(arrayList);
                    break;
                case 3:
                    arrayList = new ArrayList();
                    o1Var.readInt64List(arrayList);
                    break;
                case 4:
                    arrayList = new ArrayList();
                    o1Var.readUInt64List(arrayList);
                    break;
                case 5:
                    arrayList = new ArrayList();
                    o1Var.readInt32List(arrayList);
                    break;
                case 6:
                    arrayList = new ArrayList();
                    o1Var.readFixed64List(arrayList);
                    break;
                case 7:
                    arrayList = new ArrayList();
                    o1Var.readFixed32List(arrayList);
                    break;
                case 8:
                    arrayList = new ArrayList();
                    o1Var.readBoolList(arrayList);
                    break;
                case 9:
                    arrayList = new ArrayList();
                    o1Var.readUInt32List(arrayList);
                    break;
                case 10:
                    arrayList = new ArrayList();
                    o1Var.readSFixed32List(arrayList);
                    break;
                case 11:
                    arrayList = new ArrayList();
                    o1Var.readSFixed64List(arrayList);
                    break;
                case 12:
                    arrayList = new ArrayList();
                    o1Var.readSInt32List(arrayList);
                    break;
                case 13:
                    arrayList = new ArrayList();
                    o1Var.readSInt64List(arrayList);
                    break;
                case 14:
                    arrayList = new ArrayList();
                    o1Var.readEnumList(arrayList);
                    ub2 = (UB) s1.z(d10, arrayList, dVar.f14087b.b(), ub2, i2Var);
                    break;
                default:
                    throw new IllegalStateException("Type cannot be packed: " + dVar.f14087b.getLiteType());
            }
            e0Var.N(dVar.f14087b, arrayList);
        } else {
            if (dVar.b() == WireFormat.FieldType.ENUM) {
                int readInt32 = o1Var.readInt32();
                if (dVar.f14087b.b().findValueByNumber(readInt32) == null) {
                    return (UB) s1.M(d10, readInt32, ub2, i2Var);
                }
                valueOf = Integer.valueOf(readInt32);
            } else {
                switch (a.f14270a[dVar.b().ordinal()]) {
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
                        valueOf = o1Var.g(dVar.c().getClass(), yVar);
                        break;
                    case 18:
                        valueOf = o1Var.d(dVar.c().getClass(), yVar);
                        break;
                    default:
                        valueOf = null;
                        break;
                }
            }
            if (dVar.e()) {
                e0Var.g(dVar.f14087b, valueOf);
            } else {
                int i10 = a.f14270a[dVar.b().ordinal()];
                if ((i10 == 17 || i10 == 18) && (t10 = e0Var.t(dVar.f14087b)) != null) {
                    valueOf = i0.k(t10, valueOf);
                }
                e0Var.N(dVar.f14087b, valueOf);
            }
        }
        return ub2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.z
    public void h(o1 o1Var, Object obj, y yVar, e0<GeneratedMessageLite.c> e0Var) throws IOException {
        GeneratedMessageLite.d dVar = (GeneratedMessageLite.d) obj;
        e0Var.N(dVar.f14087b, o1Var.d(dVar.c().getClass(), yVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.z
    public void i(ByteString byteString, Object obj, y yVar, e0<GeneratedMessageLite.c> e0Var) throws IOException {
        GeneratedMessageLite.d dVar = (GeneratedMessageLite.d) obj;
        MessageLite buildPartial = dVar.c().newBuilderForType().buildPartial();
        h h10 = h.h(ByteBuffer.wrap(byteString.toByteArray()), true);
        l1.a().b(buildPartial, h10, yVar);
        e0Var.N(dVar.f14087b, buildPartial);
        if (h10.getFieldNumber() == Integer.MAX_VALUE) {
            return;
        }
        throw InvalidProtocolBufferException.invalidEndTag();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.z
    public void j(Writer writer, Map.Entry<?, ?> entry) throws IOException {
        GeneratedMessageLite.c cVar = (GeneratedMessageLite.c) entry.getKey();
        if (cVar.isRepeated()) {
            switch (a.f14270a[cVar.getLiteType().ordinal()]) {
                case 1:
                    s1.R(cVar.getNumber(), (List) entry.getValue(), writer, cVar.isPacked());
                    return;
                case 2:
                    s1.V(cVar.getNumber(), (List) entry.getValue(), writer, cVar.isPacked());
                    return;
                case 3:
                    s1.Z(cVar.getNumber(), (List) entry.getValue(), writer, cVar.isPacked());
                    return;
                case 4:
                    s1.i0(cVar.getNumber(), (List) entry.getValue(), writer, cVar.isPacked());
                    return;
                case 5:
                    s1.Y(cVar.getNumber(), (List) entry.getValue(), writer, cVar.isPacked());
                    return;
                case 6:
                    s1.U(cVar.getNumber(), (List) entry.getValue(), writer, cVar.isPacked());
                    return;
                case 7:
                    s1.T(cVar.getNumber(), (List) entry.getValue(), writer, cVar.isPacked());
                    return;
                case 8:
                    s1.P(cVar.getNumber(), (List) entry.getValue(), writer, cVar.isPacked());
                    return;
                case 9:
                    s1.h0(cVar.getNumber(), (List) entry.getValue(), writer, cVar.isPacked());
                    return;
                case 10:
                    s1.c0(cVar.getNumber(), (List) entry.getValue(), writer, cVar.isPacked());
                    return;
                case 11:
                    s1.d0(cVar.getNumber(), (List) entry.getValue(), writer, cVar.isPacked());
                    return;
                case 12:
                    s1.e0(cVar.getNumber(), (List) entry.getValue(), writer, cVar.isPacked());
                    return;
                case 13:
                    s1.f0(cVar.getNumber(), (List) entry.getValue(), writer, cVar.isPacked());
                    return;
                case 14:
                    s1.Y(cVar.getNumber(), (List) entry.getValue(), writer, cVar.isPacked());
                    return;
                case 15:
                    s1.Q(cVar.getNumber(), (List) entry.getValue(), writer);
                    return;
                case 16:
                    s1.g0(cVar.getNumber(), (List) entry.getValue(), writer);
                    return;
                case 17:
                    List list = (List) entry.getValue();
                    if (list != null && !list.isEmpty()) {
                        s1.X(cVar.getNumber(), (List) entry.getValue(), writer, l1.a().d(list.get(0).getClass()));
                        return;
                    }
                    return;
                case 18:
                    List list2 = (List) entry.getValue();
                    if (list2 != null && !list2.isEmpty()) {
                        s1.b0(cVar.getNumber(), (List) entry.getValue(), writer, l1.a().d(list2.get(0).getClass()));
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
        switch (a.f14270a[cVar.getLiteType().ordinal()]) {
            case 1:
                writer.writeDouble(cVar.getNumber(), ((Double) entry.getValue()).doubleValue());
                return;
            case 2:
                writer.writeFloat(cVar.getNumber(), ((Float) entry.getValue()).floatValue());
                return;
            case 3:
                writer.writeInt64(cVar.getNumber(), ((Long) entry.getValue()).longValue());
                return;
            case 4:
                writer.writeUInt64(cVar.getNumber(), ((Long) entry.getValue()).longValue());
                return;
            case 5:
                writer.writeInt32(cVar.getNumber(), ((Integer) entry.getValue()).intValue());
                return;
            case 6:
                writer.writeFixed64(cVar.getNumber(), ((Long) entry.getValue()).longValue());
                return;
            case 7:
                writer.writeFixed32(cVar.getNumber(), ((Integer) entry.getValue()).intValue());
                return;
            case 8:
                writer.writeBool(cVar.getNumber(), ((Boolean) entry.getValue()).booleanValue());
                return;
            case 9:
                writer.writeUInt32(cVar.getNumber(), ((Integer) entry.getValue()).intValue());
                return;
            case 10:
                writer.writeSFixed32(cVar.getNumber(), ((Integer) entry.getValue()).intValue());
                return;
            case 11:
                writer.writeSFixed64(cVar.getNumber(), ((Long) entry.getValue()).longValue());
                return;
            case 12:
                writer.writeSInt32(cVar.getNumber(), ((Integer) entry.getValue()).intValue());
                return;
            case 13:
                writer.writeSInt64(cVar.getNumber(), ((Long) entry.getValue()).longValue());
                return;
            case 14:
                writer.writeInt32(cVar.getNumber(), ((Integer) entry.getValue()).intValue());
                return;
            case 15:
                writer.a(cVar.getNumber(), (ByteString) entry.getValue());
                return;
            case 16:
                writer.writeString(cVar.getNumber(), (String) entry.getValue());
                return;
            case 17:
                writer.c(cVar.getNumber(), entry.getValue(), l1.a().d(entry.getValue().getClass()));
                return;
            case 18:
                writer.f(cVar.getNumber(), entry.getValue(), l1.a().d(entry.getValue().getClass()));
                return;
            default:
                return;
        }
    }
}
