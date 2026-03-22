package com.explorestack.protobuf;

import com.explorestack.protobuf.WireFormat;
import com.explorestack.protobuf.Writer;
import com.explorestack.protobuf.t0;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CodedOutputStreamWriter.java */
/* loaded from: classes3.dex */
public final class p implements Writer {

    /* renamed from: a  reason: collision with root package name */
    private final CodedOutputStream f14571a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CodedOutputStreamWriter.java */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14572a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f14572a = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14572a[WireFormat.FieldType.FIXED32.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14572a[WireFormat.FieldType.INT32.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14572a[WireFormat.FieldType.SFIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14572a[WireFormat.FieldType.SINT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14572a[WireFormat.FieldType.UINT32.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f14572a[WireFormat.FieldType.FIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f14572a[WireFormat.FieldType.INT64.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f14572a[WireFormat.FieldType.SFIXED64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f14572a[WireFormat.FieldType.SINT64.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f14572a[WireFormat.FieldType.UINT64.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f14572a[WireFormat.FieldType.STRING.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    private p(CodedOutputStream codedOutputStream) {
        CodedOutputStream codedOutputStream2 = (CodedOutputStream) i0.b(codedOutputStream, "output");
        this.f14571a = codedOutputStream2;
        codedOutputStream2.f13590a = this;
    }

    public static p g(CodedOutputStream codedOutputStream) {
        p pVar = codedOutputStream.f13590a;
        if (pVar != null) {
            return pVar;
        }
        return new p(codedOutputStream);
    }

    private <V> void h(int i10, boolean z10, V v10, t0.b<Boolean, V> bVar) throws IOException {
        this.f14571a.b1(i10, 2);
        this.f14571a.d1(t0.b(bVar, Boolean.valueOf(z10), v10));
        t0.f(this.f14571a, bVar, Boolean.valueOf(z10), v10);
    }

    private <V> void i(int i10, t0.b<Integer, V> bVar, Map<Integer, V> map) throws IOException {
        int size = map.size();
        int[] iArr = new int[size];
        int i11 = 0;
        for (Integer num : map.keySet()) {
            iArr[i11] = num.intValue();
            i11++;
        }
        Arrays.sort(iArr);
        for (int i12 = 0; i12 < size; i12++) {
            int i13 = iArr[i12];
            V v10 = map.get(Integer.valueOf(i13));
            this.f14571a.b1(i10, 2);
            this.f14571a.d1(t0.b(bVar, Integer.valueOf(i13), v10));
            t0.f(this.f14571a, bVar, Integer.valueOf(i13), v10);
        }
    }

    private <V> void j(int i10, t0.b<Long, V> bVar, Map<Long, V> map) throws IOException {
        int size = map.size();
        long[] jArr = new long[size];
        int i11 = 0;
        for (Long l10 : map.keySet()) {
            jArr[i11] = l10.longValue();
            i11++;
        }
        Arrays.sort(jArr);
        for (int i12 = 0; i12 < size; i12++) {
            long j10 = jArr[i12];
            V v10 = map.get(Long.valueOf(j10));
            this.f14571a.b1(i10, 2);
            this.f14571a.d1(t0.b(bVar, Long.valueOf(j10), v10));
            t0.f(this.f14571a, bVar, Long.valueOf(j10), v10);
        }
    }

    private <K, V> void k(int i10, t0.b<K, V> bVar, Map<K, V> map) throws IOException {
        switch (a.f14572a[bVar.f14660a.ordinal()]) {
            case 1:
                V v10 = map.get(Boolean.FALSE);
                if (v10 != null) {
                    h(i10, false, v10, bVar);
                }
                V v11 = map.get(Boolean.TRUE);
                if (v11 != null) {
                    h(i10, true, v11, bVar);
                    return;
                }
                return;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                i(i10, bVar, map);
                return;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                j(i10, bVar, map);
                return;
            case 12:
                l(i10, bVar, map);
                return;
            default:
                throw new IllegalArgumentException("does not support key type: " + bVar.f14660a);
        }
    }

    private <V> void l(int i10, t0.b<String, V> bVar, Map<String, V> map) throws IOException {
        int size = map.size();
        String[] strArr = new String[size];
        int i11 = 0;
        for (String str : map.keySet()) {
            strArr[i11] = str;
            i11++;
        }
        Arrays.sort(strArr);
        for (int i12 = 0; i12 < size; i12++) {
            String str2 = strArr[i12];
            V v10 = map.get(str2);
            this.f14571a.b1(i10, 2);
            this.f14571a.d1(t0.b(bVar, str2, v10));
            t0.f(this.f14571a, bVar, str2, v10);
        }
    }

    private void m(int i10, Object obj) throws IOException {
        if (obj instanceof String) {
            this.f14571a.Z0(i10, (String) obj);
        } else {
            this.f14571a.r0(i10, (ByteString) obj);
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public void a(int i10, ByteString byteString) throws IOException {
        this.f14571a.r0(i10, byteString);
    }

    @Override // com.explorestack.protobuf.Writer
    public <K, V> void b(int i10, t0.b<K, V> bVar, Map<K, V> map) throws IOException {
        if (this.f14571a.g0()) {
            k(i10, bVar, map);
            return;
        }
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.f14571a.b1(i10, 2);
            this.f14571a.d1(t0.b(bVar, entry.getKey(), entry.getValue()));
            t0.f(this.f14571a, bVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public void c(int i10, Object obj, q1 q1Var) throws IOException {
        this.f14571a.E0(i10, (MessageLite) obj, q1Var);
    }

    @Override // com.explorestack.protobuf.Writer
    public void d(int i10, List<?> list, q1 q1Var) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            f(i10, list.get(i11), q1Var);
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public void e(int i10, List<?> list, q1 q1Var) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            c(i10, list.get(i11), q1Var);
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public void f(int i10, Object obj, q1 q1Var) throws IOException {
        this.f14571a.M0(i10, (MessageLite) obj, q1Var);
    }

    @Override // com.explorestack.protobuf.Writer
    public Writer.FieldOrder fieldOrder() {
        return Writer.FieldOrder.ASCENDING;
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeBool(int i10, boolean z10) throws IOException {
        this.f14571a.n0(i10, z10);
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeBoolList(int i10, List<Boolean> list, boolean z10) throws IOException {
        int i11 = 0;
        if (z10) {
            this.f14571a.b1(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += CodedOutputStream.f(list.get(i13).booleanValue());
            }
            this.f14571a.d1(i12);
            while (i11 < list.size()) {
                this.f14571a.o0(list.get(i11).booleanValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f14571a.n0(i10, list.get(i11).booleanValue());
            i11++;
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeBytesList(int i10, List<ByteString> list) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            this.f14571a.r0(i10, list.get(i11));
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeDouble(int i10, double d10) throws IOException {
        this.f14571a.t0(i10, d10);
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeDoubleList(int i10, List<Double> list, boolean z10) throws IOException {
        int i11 = 0;
        if (z10) {
            this.f14571a.b1(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += CodedOutputStream.k(list.get(i13).doubleValue());
            }
            this.f14571a.d1(i12);
            while (i11 < list.size()) {
                this.f14571a.u0(list.get(i11).doubleValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f14571a.t0(i10, list.get(i11).doubleValue());
            i11++;
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeEndGroup(int i10) throws IOException {
        this.f14571a.b1(i10, 4);
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeEnum(int i10, int i11) throws IOException {
        this.f14571a.v0(i10, i11);
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeEnumList(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (z10) {
            this.f14571a.b1(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += CodedOutputStream.m(list.get(i13).intValue());
            }
            this.f14571a.d1(i12);
            while (i11 < list.size()) {
                this.f14571a.w0(list.get(i11).intValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f14571a.v0(i10, list.get(i11).intValue());
            i11++;
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeFixed32(int i10, int i11) throws IOException {
        this.f14571a.x0(i10, i11);
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeFixed32List(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (z10) {
            this.f14571a.b1(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += CodedOutputStream.o(list.get(i13).intValue());
            }
            this.f14571a.d1(i12);
            while (i11 < list.size()) {
                this.f14571a.y0(list.get(i11).intValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f14571a.x0(i10, list.get(i11).intValue());
            i11++;
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeFixed64(int i10, long j10) throws IOException {
        this.f14571a.z0(i10, j10);
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeFixed64List(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (z10) {
            this.f14571a.b1(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += CodedOutputStream.q(list.get(i13).longValue());
            }
            this.f14571a.d1(i12);
            while (i11 < list.size()) {
                this.f14571a.A0(list.get(i11).longValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f14571a.z0(i10, list.get(i11).longValue());
            i11++;
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeFloat(int i10, float f10) throws IOException {
        this.f14571a.B0(i10, f10);
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeFloatList(int i10, List<Float> list, boolean z10) throws IOException {
        int i11 = 0;
        if (z10) {
            this.f14571a.b1(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += CodedOutputStream.s(list.get(i13).floatValue());
            }
            this.f14571a.d1(i12);
            while (i11 < list.size()) {
                this.f14571a.C0(list.get(i11).floatValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f14571a.B0(i10, list.get(i11).floatValue());
            i11++;
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeGroup(int i10, Object obj) throws IOException {
        this.f14571a.D0(i10, (MessageLite) obj);
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeGroupList(int i10, List<?> list) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            writeGroup(i10, list.get(i11));
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeInt32(int i10, int i11) throws IOException {
        this.f14571a.H0(i10, i11);
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeInt32List(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (z10) {
            this.f14571a.b1(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += CodedOutputStream.y(list.get(i13).intValue());
            }
            this.f14571a.d1(i12);
            while (i11 < list.size()) {
                this.f14571a.I0(list.get(i11).intValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f14571a.H0(i10, list.get(i11).intValue());
            i11++;
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeInt64(int i10, long j10) throws IOException {
        this.f14571a.J0(i10, j10);
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeInt64List(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (z10) {
            this.f14571a.b1(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += CodedOutputStream.A(list.get(i13).longValue());
            }
            this.f14571a.d1(i12);
            while (i11 < list.size()) {
                this.f14571a.K0(list.get(i11).longValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f14571a.J0(i10, list.get(i11).longValue());
            i11++;
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeMessage(int i10, Object obj) throws IOException {
        this.f14571a.L0(i10, (MessageLite) obj);
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeMessageList(int i10, List<?> list) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            writeMessage(i10, list.get(i11));
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeMessageSetItem(int i10, Object obj) throws IOException {
        if (obj instanceof ByteString) {
            this.f14571a.P0(i10, (ByteString) obj);
        } else {
            this.f14571a.O0(i10, (MessageLite) obj);
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeSFixed32(int i10, int i11) throws IOException {
        this.f14571a.R0(i10, i11);
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeSFixed32List(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (z10) {
            this.f14571a.b1(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += CodedOutputStream.O(list.get(i13).intValue());
            }
            this.f14571a.d1(i12);
            while (i11 < list.size()) {
                this.f14571a.S0(list.get(i11).intValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f14571a.R0(i10, list.get(i11).intValue());
            i11++;
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeSFixed64(int i10, long j10) throws IOException {
        this.f14571a.T0(i10, j10);
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeSFixed64List(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (z10) {
            this.f14571a.b1(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += CodedOutputStream.Q(list.get(i13).longValue());
            }
            this.f14571a.d1(i12);
            while (i11 < list.size()) {
                this.f14571a.U0(list.get(i11).longValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f14571a.T0(i10, list.get(i11).longValue());
            i11++;
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeSInt32(int i10, int i11) throws IOException {
        this.f14571a.V0(i10, i11);
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeSInt32List(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (z10) {
            this.f14571a.b1(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += CodedOutputStream.S(list.get(i13).intValue());
            }
            this.f14571a.d1(i12);
            while (i11 < list.size()) {
                this.f14571a.W0(list.get(i11).intValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f14571a.V0(i10, list.get(i11).intValue());
            i11++;
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeSInt64(int i10, long j10) throws IOException {
        this.f14571a.X0(i10, j10);
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeSInt64List(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (z10) {
            this.f14571a.b1(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += CodedOutputStream.U(list.get(i13).longValue());
            }
            this.f14571a.d1(i12);
            while (i11 < list.size()) {
                this.f14571a.Y0(list.get(i11).longValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f14571a.X0(i10, list.get(i11).longValue());
            i11++;
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeStartGroup(int i10) throws IOException {
        this.f14571a.b1(i10, 3);
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeString(int i10, String str) throws IOException {
        this.f14571a.Z0(i10, str);
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeStringList(int i10, List<String> list) throws IOException {
        int i11 = 0;
        if (list instanceof n0) {
            n0 n0Var = (n0) list;
            while (i11 < list.size()) {
                m(i10, n0Var.getRaw(i11));
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f14571a.Z0(i10, list.get(i11));
            i11++;
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeUInt32(int i10, int i11) throws IOException {
        this.f14571a.c1(i10, i11);
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeUInt32List(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (z10) {
            this.f14571a.b1(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += CodedOutputStream.Z(list.get(i13).intValue());
            }
            this.f14571a.d1(i12);
            while (i11 < list.size()) {
                this.f14571a.d1(list.get(i11).intValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f14571a.c1(i10, list.get(i11).intValue());
            i11++;
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeUInt64(int i10, long j10) throws IOException {
        this.f14571a.e1(i10, j10);
    }

    @Override // com.explorestack.protobuf.Writer
    public void writeUInt64List(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (z10) {
            this.f14571a.b1(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += CodedOutputStream.b0(list.get(i13).longValue());
            }
            this.f14571a.d1(i12);
            while (i11 < list.size()) {
                this.f14571a.f1(list.get(i11).longValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f14571a.e1(i10, list.get(i11).longValue());
            i11++;
        }
    }
}
