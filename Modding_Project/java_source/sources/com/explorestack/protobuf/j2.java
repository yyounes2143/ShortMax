package com.explorestack.protobuf;

import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.Writer;
import com.explorestack.protobuf.a;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.TreeMap;
/* compiled from: UnknownFieldSet.java */
/* loaded from: classes3.dex */
public final class j2 implements MessageLite {

    /* renamed from: c  reason: collision with root package name */
    private static final j2 f14424c = new j2(Collections.emptyMap(), Collections.emptyMap());

    /* renamed from: d  reason: collision with root package name */
    private static final d f14425d = new d();

    /* renamed from: a  reason: collision with root package name */
    private final Map<Integer, c> f14426a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<Integer, c> f14427b;

    /* compiled from: UnknownFieldSet.java */
    /* loaded from: classes3.dex */
    public static final class c {

        /* renamed from: f  reason: collision with root package name */
        private static final c f14431f = t().g();

        /* renamed from: a  reason: collision with root package name */
        private List<Long> f14432a;

        /* renamed from: b  reason: collision with root package name */
        private List<Integer> f14433b;

        /* renamed from: c  reason: collision with root package name */
        private List<Long> f14434c;

        /* renamed from: d  reason: collision with root package name */
        private List<ByteString> f14435d;

        /* renamed from: e  reason: collision with root package name */
        private List<j2> f14436e;

        /* compiled from: UnknownFieldSet.java */
        /* loaded from: classes3.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private c f14437a;

            private a() {
            }

            static /* synthetic */ a a() {
                return h();
            }

            private static a h() {
                a aVar = new a();
                aVar.f14437a = new c();
                return aVar;
            }

            public a b(int i10) {
                if (this.f14437a.f14433b == null) {
                    this.f14437a.f14433b = new ArrayList();
                }
                this.f14437a.f14433b.add(Integer.valueOf(i10));
                return this;
            }

            public a c(long j10) {
                if (this.f14437a.f14434c == null) {
                    this.f14437a.f14434c = new ArrayList();
                }
                this.f14437a.f14434c.add(Long.valueOf(j10));
                return this;
            }

            public a d(j2 j2Var) {
                if (this.f14437a.f14436e == null) {
                    this.f14437a.f14436e = new ArrayList();
                }
                this.f14437a.f14436e.add(j2Var);
                return this;
            }

            public a e(ByteString byteString) {
                if (this.f14437a.f14435d == null) {
                    this.f14437a.f14435d = new ArrayList();
                }
                this.f14437a.f14435d.add(byteString);
                return this;
            }

            public a f(long j10) {
                if (this.f14437a.f14432a == null) {
                    this.f14437a.f14432a = new ArrayList();
                }
                this.f14437a.f14432a.add(Long.valueOf(j10));
                return this;
            }

            public c g() {
                if (this.f14437a.f14432a == null) {
                    this.f14437a.f14432a = Collections.emptyList();
                } else {
                    c cVar = this.f14437a;
                    cVar.f14432a = Collections.unmodifiableList(cVar.f14432a);
                }
                if (this.f14437a.f14433b == null) {
                    this.f14437a.f14433b = Collections.emptyList();
                } else {
                    c cVar2 = this.f14437a;
                    cVar2.f14433b = Collections.unmodifiableList(cVar2.f14433b);
                }
                if (this.f14437a.f14434c == null) {
                    this.f14437a.f14434c = Collections.emptyList();
                } else {
                    c cVar3 = this.f14437a;
                    cVar3.f14434c = Collections.unmodifiableList(cVar3.f14434c);
                }
                if (this.f14437a.f14435d == null) {
                    this.f14437a.f14435d = Collections.emptyList();
                } else {
                    c cVar4 = this.f14437a;
                    cVar4.f14435d = Collections.unmodifiableList(cVar4.f14435d);
                }
                if (this.f14437a.f14436e == null) {
                    this.f14437a.f14436e = Collections.emptyList();
                } else {
                    c cVar5 = this.f14437a;
                    cVar5.f14436e = Collections.unmodifiableList(cVar5.f14436e);
                }
                c cVar6 = this.f14437a;
                this.f14437a = null;
                return cVar6;
            }

            public a i(c cVar) {
                if (!cVar.f14432a.isEmpty()) {
                    if (this.f14437a.f14432a == null) {
                        this.f14437a.f14432a = new ArrayList();
                    }
                    this.f14437a.f14432a.addAll(cVar.f14432a);
                }
                if (!cVar.f14433b.isEmpty()) {
                    if (this.f14437a.f14433b == null) {
                        this.f14437a.f14433b = new ArrayList();
                    }
                    this.f14437a.f14433b.addAll(cVar.f14433b);
                }
                if (!cVar.f14434c.isEmpty()) {
                    if (this.f14437a.f14434c == null) {
                        this.f14437a.f14434c = new ArrayList();
                    }
                    this.f14437a.f14434c.addAll(cVar.f14434c);
                }
                if (!cVar.f14435d.isEmpty()) {
                    if (this.f14437a.f14435d == null) {
                        this.f14437a.f14435d = new ArrayList();
                    }
                    this.f14437a.f14435d.addAll(cVar.f14435d);
                }
                if (!cVar.f14436e.isEmpty()) {
                    if (this.f14437a.f14436e == null) {
                        this.f14437a.f14436e = new ArrayList();
                    }
                    this.f14437a.f14436e.addAll(cVar.f14436e);
                }
                return this;
            }
        }

        private Object[] o() {
            return new Object[]{this.f14432a, this.f14433b, this.f14434c, this.f14435d, this.f14436e};
        }

        public static a t() {
            return a.a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void v(int i10, Writer writer) throws IOException {
            if (writer.fieldOrder() == Writer.FieldOrder.DESCENDING) {
                List<ByteString> list = this.f14435d;
                ListIterator<ByteString> listIterator = list.listIterator(list.size());
                while (listIterator.hasPrevious()) {
                    writer.writeMessageSetItem(i10, listIterator.previous());
                }
                return;
            }
            for (ByteString byteString : this.f14435d) {
                writer.writeMessageSetItem(i10, byteString);
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            return Arrays.equals(o(), ((c) obj).o());
        }

        public int hashCode() {
            return Arrays.hashCode(o());
        }

        public List<Integer> l() {
            return this.f14433b;
        }

        public List<Long> m() {
            return this.f14434c;
        }

        public List<j2> n() {
            return this.f14436e;
        }

        public List<ByteString> p() {
            return this.f14435d;
        }

        public int q(int i10) {
            int i11 = 0;
            for (Long l10 : this.f14432a) {
                i11 += CodedOutputStream.a0(i10, l10.longValue());
            }
            for (Integer num : this.f14433b) {
                i11 += CodedOutputStream.n(i10, num.intValue());
            }
            for (Long l11 : this.f14434c) {
                i11 += CodedOutputStream.p(i10, l11.longValue());
            }
            for (ByteString byteString : this.f14435d) {
                i11 += CodedOutputStream.h(i10, byteString);
            }
            for (j2 j2Var : this.f14436e) {
                i11 += CodedOutputStream.t(i10, j2Var);
            }
            return i11;
        }

        public int r(int i10) {
            int i11 = 0;
            for (ByteString byteString : this.f14435d) {
                i11 += CodedOutputStream.L(i10, byteString);
            }
            return i11;
        }

        public List<Long> s() {
            return this.f14432a;
        }

        public void u(int i10, CodedOutputStream codedOutputStream) throws IOException {
            for (ByteString byteString : this.f14435d) {
                codedOutputStream.P0(i10, byteString);
            }
        }

        public void w(int i10, CodedOutputStream codedOutputStream) throws IOException {
            for (Long l10 : this.f14432a) {
                codedOutputStream.e1(i10, l10.longValue());
            }
            for (Integer num : this.f14433b) {
                codedOutputStream.x0(i10, num.intValue());
            }
            for (Long l11 : this.f14434c) {
                codedOutputStream.z0(i10, l11.longValue());
            }
            for (ByteString byteString : this.f14435d) {
                codedOutputStream.r0(i10, byteString);
            }
            for (j2 j2Var : this.f14436e) {
                codedOutputStream.D0(i10, j2Var);
            }
        }

        void x(int i10, Writer writer) throws IOException {
            writer.writeInt64List(i10, this.f14432a, false);
            writer.writeFixed32List(i10, this.f14433b, false);
            writer.writeFixed64List(i10, this.f14434c, false);
            writer.writeBytesList(i10, this.f14435d);
            if (writer.fieldOrder() == Writer.FieldOrder.ASCENDING) {
                for (int i11 = 0; i11 < this.f14436e.size(); i11++) {
                    writer.writeStartGroup(i10);
                    this.f14436e.get(i11).n(writer);
                    writer.writeEndGroup(i10);
                }
                return;
            }
            for (int size = this.f14436e.size() - 1; size >= 0; size--) {
                writer.writeEndGroup(i10);
                this.f14436e.get(size).n(writer);
                writer.writeStartGroup(i10);
            }
        }

        private c() {
        }
    }

    /* compiled from: UnknownFieldSet.java */
    /* loaded from: classes3.dex */
    public static final class d extends com.explorestack.protobuf.b<j2> {
        @Override // com.explorestack.protobuf.j1
        /* renamed from: a */
        public j2 parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
            b g10 = j2.g();
            try {
                g10.mergeFrom(nVar);
                return g10.buildPartial();
            } catch (InvalidProtocolBufferException e10) {
                throw e10.setUnfinishedMessage(g10.buildPartial());
            } catch (IOException e11) {
                throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(g10.buildPartial());
            }
        }
    }

    private j2() {
        this.f14426a = null;
        this.f14427b = null;
    }

    public static j2 c() {
        return f14424c;
    }

    public static b g() {
        return b.a();
    }

    public static b h(j2 j2Var) {
        return g().t(j2Var);
    }

    public static j2 j(ByteString byteString) throws InvalidProtocolBufferException {
        return g().mergeFrom(byteString).build();
    }

    public Map<Integer, c> b() {
        return this.f14426a;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: d */
    public j2 mo4630getDefaultInstanceForType() {
        return f14424c;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    /* renamed from: e */
    public final d getParserForType() {
        return f14425d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof j2) && this.f14426a.equals(((j2) obj).f14426a)) {
            return true;
        }
        return false;
    }

    public int f() {
        int i10 = 0;
        for (Map.Entry<Integer, c> entry : this.f14426a.entrySet()) {
            i10 += entry.getValue().r(entry.getKey().intValue());
        }
        return i10;
    }

    @Override // com.explorestack.protobuf.MessageLite
    public int getSerializedSize() {
        int i10 = 0;
        for (Map.Entry<Integer, c> entry : this.f14426a.entrySet()) {
            i10 += entry.getValue().q(entry.getKey().intValue());
        }
        return i10;
    }

    public int hashCode() {
        return this.f14426a.hashCode();
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    /* renamed from: i */
    public b newBuilderForType() {
        return g();
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
    public boolean isInitialized() {
        return true;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    /* renamed from: k */
    public b toBuilder() {
        return g().t(this);
    }

    public void l(CodedOutputStream codedOutputStream) throws IOException {
        for (Map.Entry<Integer, c> entry : this.f14426a.entrySet()) {
            entry.getValue().u(entry.getKey().intValue(), codedOutputStream);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(Writer writer) throws IOException {
        if (writer.fieldOrder() == Writer.FieldOrder.DESCENDING) {
            for (Map.Entry<Integer, c> entry : this.f14427b.entrySet()) {
                entry.getValue().v(entry.getKey().intValue(), writer);
            }
            return;
        }
        for (Map.Entry<Integer, c> entry2 : this.f14426a.entrySet()) {
            entry2.getValue().v(entry2.getKey().intValue(), writer);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(Writer writer) throws IOException {
        if (writer.fieldOrder() == Writer.FieldOrder.DESCENDING) {
            for (Map.Entry<Integer, c> entry : this.f14427b.entrySet()) {
                entry.getValue().x(entry.getKey().intValue(), writer);
            }
            return;
        }
        for (Map.Entry<Integer, c> entry2 : this.f14426a.entrySet()) {
            entry2.getValue().x(entry2.getKey().intValue(), writer);
        }
    }

    @Override // com.explorestack.protobuf.MessageLite
    public byte[] toByteArray() {
        try {
            byte[] bArr = new byte[getSerializedSize()];
            CodedOutputStream j02 = CodedOutputStream.j0(bArr);
            writeTo(j02);
            j02.d();
            return bArr;
        } catch (IOException e10) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e10);
        }
    }

    @Override // com.explorestack.protobuf.MessageLite
    public ByteString toByteString() {
        try {
            ByteString.CodedBuilder newCodedBuilder = ByteString.newCodedBuilder(getSerializedSize());
            writeTo(newCodedBuilder.getCodedOutput());
            return newCodedBuilder.build();
        } catch (IOException e10) {
            throw new RuntimeException("Serializing to a ByteString threw an IOException (should never happen).", e10);
        }
    }

    public String toString() {
        return TextFormat.printer().printToString(this);
    }

    @Override // com.explorestack.protobuf.MessageLite
    public void writeDelimitedTo(OutputStream outputStream) throws IOException {
        CodedOutputStream h02 = CodedOutputStream.h0(outputStream);
        h02.Q0(getSerializedSize());
        writeTo(h02);
        h02.e0();
    }

    @Override // com.explorestack.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (Map.Entry<Integer, c> entry : this.f14426a.entrySet()) {
            entry.getValue().w(entry.getKey().intValue(), codedOutputStream);
        }
    }

    /* compiled from: UnknownFieldSet.java */
    /* loaded from: classes3.dex */
    public static final class b implements MessageLite.Builder {

        /* renamed from: a  reason: collision with root package name */
        private Map<Integer, c> f14428a;

        /* renamed from: b  reason: collision with root package name */
        private int f14429b;

        /* renamed from: c  reason: collision with root package name */
        private c.a f14430c;

        private b() {
        }

        private void B() {
            this.f14428a = Collections.emptyMap();
            this.f14429b = 0;
            this.f14430c = null;
        }

        static /* synthetic */ b a() {
            return i();
        }

        private static b i() {
            b bVar = new b();
            bVar.B();
            return bVar;
        }

        private c.a k(int i10) {
            c.a aVar = this.f14430c;
            if (aVar != null) {
                int i11 = this.f14429b;
                if (i10 == i11) {
                    return aVar;
                }
                b(i11, aVar.g());
            }
            if (i10 == 0) {
                return null;
            }
            c cVar = this.f14428a.get(Integer.valueOf(i10));
            this.f14429b = i10;
            c.a t10 = c.t();
            this.f14430c = t10;
            if (cVar != null) {
                t10.i(cVar);
            }
            return this.f14430c;
        }

        public b A(int i10, int i11) {
            if (i10 != 0) {
                k(i10).f(i11);
                return this;
            }
            throw new IllegalArgumentException("Zero is not a valid field number.");
        }

        public b b(int i10, c cVar) {
            if (i10 != 0) {
                if (this.f14430c != null && this.f14429b == i10) {
                    this.f14430c = null;
                    this.f14429b = 0;
                }
                if (this.f14428a.isEmpty()) {
                    this.f14428a = new TreeMap();
                }
                this.f14428a.put(Integer.valueOf(i10), cVar);
                return this;
            }
            throw new IllegalArgumentException("Zero is not a valid field number.");
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: c */
        public j2 build() {
            j2 j2Var;
            k(0);
            if (this.f14428a.isEmpty()) {
                j2Var = j2.c();
            } else {
                j2Var = new j2(Collections.unmodifiableMap(this.f14428a), Collections.unmodifiableMap(((TreeMap) this.f14428a).descendingMap()));
            }
            this.f14428a = null;
            return j2Var;
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: e */
        public j2 buildPartial() {
            return build();
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: f */
        public b clear() {
            B();
            return this;
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: g */
        public b m4658clone() {
            k(0);
            return j2.g().t(new j2(this.f14428a, Collections.unmodifiableMap(((TreeMap) this.f14428a).descendingMap())));
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public boolean isInitialized() {
            return true;
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: j */
        public j2 mo4630getDefaultInstanceForType() {
            return j2.c();
        }

        public boolean l(int i10) {
            if (i10 != 0) {
                if (i10 != this.f14429b && !this.f14428a.containsKey(Integer.valueOf(i10))) {
                    return false;
                }
                return true;
            }
            throw new IllegalArgumentException("Zero is not a valid field number.");
        }

        public b m(int i10, c cVar) {
            if (i10 != 0) {
                if (l(i10)) {
                    k(i10).i(cVar);
                } else {
                    b(i10, cVar);
                }
                return this;
            }
            throw new IllegalArgumentException("Zero is not a valid field number.");
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public boolean mergeDelimitedFrom(InputStream inputStream) throws IOException {
            int read = inputStream.read();
            if (read == -1) {
                return false;
            }
            mergeFrom(new a.AbstractC0246a.C0247a(inputStream, n.D(read, inputStream)));
            return true;
        }

        public boolean n(int i10, n nVar) throws IOException {
            int a10 = WireFormat.a(i10);
            int b10 = WireFormat.b(i10);
            if (b10 != 0) {
                if (b10 != 1) {
                    if (b10 != 2) {
                        if (b10 != 3) {
                            if (b10 != 4) {
                                if (b10 == 5) {
                                    k(a10).b(nVar.u());
                                    return true;
                                }
                                throw InvalidProtocolBufferException.invalidWireType();
                            }
                            return false;
                        }
                        b g10 = j2.g();
                        nVar.x(a10, g10, w.g());
                        k(a10).d(g10.build());
                        return true;
                    }
                    k(a10).e(nVar.r());
                    return true;
                }
                k(a10).c(nVar.v());
                return true;
            }
            k(a10).f(nVar.z());
            return true;
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: o */
        public b mergeFrom(ByteString byteString) throws InvalidProtocolBufferException {
            try {
                n newCodedInput = byteString.newCodedInput();
                mergeFrom(newCodedInput);
                newCodedInput.a(0);
                return this;
            } catch (InvalidProtocolBufferException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RuntimeException("Reading from a ByteString threw an IOException (should never happen).", e11);
            }
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: p */
        public b mergeFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return mergeFrom(byteString);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: q */
        public b mergeFrom(n nVar) throws IOException {
            int K;
            do {
                K = nVar.K();
                if (K == 0) {
                    break;
                }
            } while (n(K, nVar));
            return this;
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: r */
        public b mergeFrom(n nVar, y yVar) throws IOException {
            return mergeFrom(nVar);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder
        /* renamed from: s */
        public b mergeFrom(MessageLite messageLite) {
            if (messageLite instanceof j2) {
                return t((j2) messageLite);
            }
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }

        public b t(j2 j2Var) {
            if (j2Var != j2.c()) {
                for (Map.Entry entry : j2Var.f14426a.entrySet()) {
                    m(((Integer) entry.getKey()).intValue(), (c) entry.getValue());
                }
            }
            return this;
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: u */
        public b mergeFrom(InputStream inputStream) throws IOException {
            n g10 = n.g(inputStream);
            mergeFrom(g10);
            g10.a(0);
            return this;
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: v */
        public b mergeFrom(InputStream inputStream, y yVar) throws IOException {
            return mergeFrom(inputStream);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: w */
        public b mergeFrom(byte[] bArr) throws InvalidProtocolBufferException {
            try {
                n l10 = n.l(bArr);
                mergeFrom(l10);
                l10.a(0);
                return this;
            } catch (InvalidProtocolBufferException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", e11);
            }
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: x */
        public b mergeFrom(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException {
            try {
                n m10 = n.m(bArr, i10, i11);
                mergeFrom(m10);
                m10.a(0);
                return this;
            } catch (InvalidProtocolBufferException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", e11);
            }
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: y */
        public b mergeFrom(byte[] bArr, int i10, int i11, y yVar) throws InvalidProtocolBufferException {
            return mergeFrom(bArr, i10, i11);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /* renamed from: z */
        public b mergeFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return mergeFrom(bArr);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public boolean mergeDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            return mergeDelimitedFrom(inputStream);
        }
    }

    j2(Map<Integer, c> map, Map<Integer, c> map2) {
        this.f14426a = map;
        this.f14427b = map2;
    }

    @Override // com.explorestack.protobuf.MessageLite
    public void writeTo(OutputStream outputStream) throws IOException {
        CodedOutputStream h02 = CodedOutputStream.h0(outputStream);
        writeTo(h02);
        h02.e0();
    }
}
