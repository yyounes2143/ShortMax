package com.explorestack.protobuf;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.i0;
import com.explorestack.protobuf.z1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DescriptorMessageInfoFactory.java */
/* loaded from: classes3.dex */
public final class q implements z0 {

    /* renamed from: a  reason: collision with root package name */
    private static final q f14584a = new q();

    /* renamed from: b  reason: collision with root package name */
    private static final Set<String> f14585b = new HashSet(Arrays.asList("cached_size", "serialized_size", "class"));

    /* renamed from: c  reason: collision with root package name */
    private static d f14586c = new d();

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f14587d = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DescriptorMessageInfoFactory.java */
    /* loaded from: classes3.dex */
    public static class a implements i0.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Descriptors.FieldDescriptor f14588a;

        a(Descriptors.FieldDescriptor fieldDescriptor) {
            this.f14588a = fieldDescriptor;
        }

        @Override // com.explorestack.protobuf.i0.e
        public boolean isInRange(int i10) {
            if (this.f14588a.m4629getEnumType().findValueByNumber(i10) != null) {
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DescriptorMessageInfoFactory.java */
    /* loaded from: classes3.dex */
    public static class b implements i0.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Descriptors.FieldDescriptor f14589a;

        b(Descriptors.FieldDescriptor fieldDescriptor) {
            this.f14589a = fieldDescriptor;
        }

        @Override // com.explorestack.protobuf.i0.e
        public boolean isInRange(int i10) {
            if (this.f14589a.m4629getEnumType().findValueByNumber(i10) != null) {
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DescriptorMessageInfoFactory.java */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class c {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14590a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f14591b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f14592c;

        static {
            int[] iArr = new int[Descriptors.FieldDescriptor.Type.values().length];
            f14592c = iArr;
            try {
                iArr[Descriptors.FieldDescriptor.Type.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14592c[Descriptors.FieldDescriptor.Type.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14592c[Descriptors.FieldDescriptor.Type.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14592c[Descriptors.FieldDescriptor.Type.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14592c[Descriptors.FieldDescriptor.Type.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14592c[Descriptors.FieldDescriptor.Type.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f14592c[Descriptors.FieldDescriptor.Type.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f14592c[Descriptors.FieldDescriptor.Type.GROUP.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f14592c[Descriptors.FieldDescriptor.Type.INT32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f14592c[Descriptors.FieldDescriptor.Type.INT64.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f14592c[Descriptors.FieldDescriptor.Type.MESSAGE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f14592c[Descriptors.FieldDescriptor.Type.SFIXED32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f14592c[Descriptors.FieldDescriptor.Type.SFIXED64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f14592c[Descriptors.FieldDescriptor.Type.SINT32.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f14592c[Descriptors.FieldDescriptor.Type.SINT64.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f14592c[Descriptors.FieldDescriptor.Type.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f14592c[Descriptors.FieldDescriptor.Type.UINT32.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f14592c[Descriptors.FieldDescriptor.Type.UINT64.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr2 = new int[JavaType.values().length];
            f14591b = iArr2;
            try {
                iArr2[JavaType.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f14591b[JavaType.BYTE_STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f14591b[JavaType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f14591b[JavaType.FLOAT.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f14591b[JavaType.ENUM.ordinal()] = 5;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f14591b[JavaType.INT.ordinal()] = 6;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f14591b[JavaType.LONG.ordinal()] = 7;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f14591b[JavaType.STRING.ordinal()] = 8;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f14591b[JavaType.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError unused27) {
            }
            int[] iArr3 = new int[Descriptors.FileDescriptor.Syntax.values().length];
            f14590a = iArr3;
            try {
                iArr3[Descriptors.FileDescriptor.Syntax.PROTO2.ordinal()] = 1;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f14590a[Descriptors.FileDescriptor.Syntax.PROTO3.ordinal()] = 2;
            } catch (NoSuchFieldError unused29) {
            }
        }
    }

    private q() {
    }

    private static java.lang.reflect.Field c(Class<?> cls, int i10) {
        return k(cls, "bitField" + i10 + "_");
    }

    private static d0 d(Class<?> cls, Descriptors.FieldDescriptor fieldDescriptor, e eVar, boolean z10, i0.e eVar2) {
        i1 a10 = eVar.a(cls, fieldDescriptor.getContainingOneof());
        FieldType o10 = o(fieldDescriptor);
        return d0.g(fieldDescriptor.getNumber(), o10, a10, p(cls, fieldDescriptor, o10), z10, eVar2);
    }

    private static java.lang.reflect.Field e(Class<?> cls, Descriptors.FieldDescriptor fieldDescriptor) {
        return k(cls, l(fieldDescriptor));
    }

    private static y0 f(Class<?> cls, Descriptors.Descriptor descriptor) {
        int i10 = c.f14590a[descriptor.getFile().getSyntax().ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                return h(cls, descriptor);
            }
            throw new IllegalArgumentException("Unsupported syntax: " + descriptor.getFile().getSyntax());
        }
        return g(cls, descriptor);
    }

    private static z1 g(Class<?> cls, Descriptors.Descriptor descriptor) {
        i0.e eVar;
        List<Descriptors.FieldDescriptor> fields = descriptor.getFields();
        z1.a c10 = z1.c(fields.size());
        c10.c(m(cls));
        c10.f(ProtoSyntax.PROTO2);
        c10.e(descriptor.getOptions().z());
        i0.e eVar2 = null;
        e eVar3 = new e(null);
        java.lang.reflect.Field field = null;
        int i10 = 0;
        int i11 = 0;
        int i12 = 1;
        while (i10 < fields.size()) {
            Descriptors.FieldDescriptor fieldDescriptor = fields.get(i10);
            boolean v02 = fieldDescriptor.getFile().getOptions().v0();
            Descriptors.FieldDescriptor.JavaType javaType = fieldDescriptor.getJavaType();
            Descriptors.FieldDescriptor.JavaType javaType2 = Descriptors.FieldDescriptor.JavaType.ENUM;
            if (javaType == javaType2) {
                eVar = new a(fieldDescriptor);
            } else {
                eVar = eVar2;
            }
            if (fieldDescriptor.getContainingOneof() != null) {
                c10.d(d(cls, fieldDescriptor, eVar3, v02, eVar));
            } else {
                java.lang.reflect.Field j10 = j(cls, fieldDescriptor);
                int number = fieldDescriptor.getNumber();
                FieldType o10 = o(fieldDescriptor);
                if (fieldDescriptor.isMapField()) {
                    Descriptors.FieldDescriptor findFieldByNumber = fieldDescriptor.getMessageType().findFieldByNumber(2);
                    if (findFieldByNumber.getJavaType() == javaType2) {
                        eVar = new b(findFieldByNumber);
                    }
                    c10.d(d0.f(j10, number, s1.C(cls, fieldDescriptor.getName()), eVar));
                } else if (fieldDescriptor.isRepeated()) {
                    if (eVar != null) {
                        if (fieldDescriptor.isPacked()) {
                            c10.d(d0.i(j10, number, o10, eVar, e(cls, fieldDescriptor)));
                        } else {
                            c10.d(d0.e(j10, number, o10, eVar));
                        }
                    } else if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                        c10.d(d0.l(j10, number, o10, r(cls, fieldDescriptor)));
                    } else if (fieldDescriptor.isPacked()) {
                        c10.d(d0.h(j10, number, o10, e(cls, fieldDescriptor)));
                    } else {
                        c10.d(d0.c(j10, number, o10, v02));
                    }
                } else {
                    if (field == null) {
                        field = c(cls, i11);
                    }
                    if (fieldDescriptor.isRequired()) {
                        c10.d(d0.k(j10, number, o10, field, i12, v02, eVar));
                    } else {
                        c10.d(d0.j(j10, number, o10, field, i12, v02, eVar));
                    }
                }
                i10++;
                eVar2 = null;
            }
            i12 <<= 1;
            if (i12 == 0) {
                i11++;
                i12 = 1;
                field = null;
            }
            i10++;
            eVar2 = null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i13 = 0; i13 < fields.size(); i13++) {
            Descriptors.FieldDescriptor fieldDescriptor2 = fields.get(i13);
            if (fieldDescriptor2.isRequired() || (fieldDescriptor2.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE && t(fieldDescriptor2.getMessageType()))) {
                arrayList.add(Integer.valueOf(fieldDescriptor2.getNumber()));
            }
        }
        int[] iArr = new int[arrayList.size()];
        for (int i14 = 0; i14 < arrayList.size(); i14++) {
            iArr[i14] = ((Integer) arrayList.get(i14)).intValue();
        }
        c10.b(iArr);
        return c10.a();
    }

    private static z1 h(Class<?> cls, Descriptors.Descriptor descriptor) {
        List<Descriptors.FieldDescriptor> fields = descriptor.getFields();
        z1.a c10 = z1.c(fields.size());
        c10.c(m(cls));
        c10.f(ProtoSyntax.PROTO3);
        e eVar = new e(null);
        for (int i10 = 0; i10 < fields.size(); i10++) {
            Descriptors.FieldDescriptor fieldDescriptor = fields.get(i10);
            if (fieldDescriptor.getContainingOneof() != null) {
                c10.d(d(cls, fieldDescriptor, eVar, true, null));
            } else if (fieldDescriptor.isMapField()) {
                c10.d(d0.f(j(cls, fieldDescriptor), fieldDescriptor.getNumber(), s1.C(cls, fieldDescriptor.getName()), null));
            } else if (fieldDescriptor.isRepeated() && fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                c10.d(d0.l(j(cls, fieldDescriptor), fieldDescriptor.getNumber(), o(fieldDescriptor), r(cls, fieldDescriptor)));
            } else if (fieldDescriptor.isPacked()) {
                c10.d(d0.h(j(cls, fieldDescriptor), fieldDescriptor.getNumber(), o(fieldDescriptor), e(cls, fieldDescriptor)));
            } else {
                c10.d(d0.c(j(cls, fieldDescriptor), fieldDescriptor.getNumber(), o(fieldDescriptor), true));
            }
        }
        return c10.a();
    }

    private static Descriptors.Descriptor i(Class<?> cls) {
        return m(cls).getDescriptorForType();
    }

    private static java.lang.reflect.Field j(Class<?> cls, Descriptors.FieldDescriptor fieldDescriptor) {
        return k(cls, n(fieldDescriptor));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static java.lang.reflect.Field k(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Exception unused) {
            throw new IllegalArgumentException("Unable to find field " + str + " in message class " + cls.getName());
        }
    }

    private static String l(Descriptors.FieldDescriptor fieldDescriptor) {
        return u(fieldDescriptor.getName()) + "MemoizedSerializedSize";
    }

    private static Message m(Class<?> cls) {
        try {
            return (Message) cls.getDeclaredMethod("getDefaultInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e10) {
            throw new IllegalArgumentException("Unable to get default instance for message class " + cls.getName(), e10);
        }
    }

    static String n(Descriptors.FieldDescriptor fieldDescriptor) {
        String name;
        String str;
        if (fieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.GROUP) {
            name = fieldDescriptor.getMessageType().getName();
        } else {
            name = fieldDescriptor.getName();
        }
        if (f14585b.contains(name)) {
            str = "__";
        } else {
            str = "_";
        }
        return u(name) + str;
    }

    private static FieldType o(Descriptors.FieldDescriptor fieldDescriptor) {
        switch (c.f14592c[fieldDescriptor.getType().ordinal()]) {
            case 1:
                if (!fieldDescriptor.isRepeated()) {
                    return FieldType.BOOL;
                }
                if (fieldDescriptor.isPacked()) {
                    return FieldType.BOOL_LIST_PACKED;
                }
                return FieldType.BOOL_LIST;
            case 2:
                if (fieldDescriptor.isRepeated()) {
                    return FieldType.BYTES_LIST;
                }
                return FieldType.BYTES;
            case 3:
                if (!fieldDescriptor.isRepeated()) {
                    return FieldType.DOUBLE;
                }
                if (fieldDescriptor.isPacked()) {
                    return FieldType.DOUBLE_LIST_PACKED;
                }
                return FieldType.DOUBLE_LIST;
            case 4:
                if (!fieldDescriptor.isRepeated()) {
                    return FieldType.ENUM;
                }
                if (fieldDescriptor.isPacked()) {
                    return FieldType.ENUM_LIST_PACKED;
                }
                return FieldType.ENUM_LIST;
            case 5:
                if (!fieldDescriptor.isRepeated()) {
                    return FieldType.FIXED32;
                }
                if (fieldDescriptor.isPacked()) {
                    return FieldType.FIXED32_LIST_PACKED;
                }
                return FieldType.FIXED32_LIST;
            case 6:
                if (!fieldDescriptor.isRepeated()) {
                    return FieldType.FIXED64;
                }
                if (fieldDescriptor.isPacked()) {
                    return FieldType.FIXED64_LIST_PACKED;
                }
                return FieldType.FIXED64_LIST;
            case 7:
                if (!fieldDescriptor.isRepeated()) {
                    return FieldType.FLOAT;
                }
                if (fieldDescriptor.isPacked()) {
                    return FieldType.FLOAT_LIST_PACKED;
                }
                return FieldType.FLOAT_LIST;
            case 8:
                if (fieldDescriptor.isRepeated()) {
                    return FieldType.GROUP_LIST;
                }
                return FieldType.GROUP;
            case 9:
                if (!fieldDescriptor.isRepeated()) {
                    return FieldType.INT32;
                }
                if (fieldDescriptor.isPacked()) {
                    return FieldType.INT32_LIST_PACKED;
                }
                return FieldType.INT32_LIST;
            case 10:
                if (!fieldDescriptor.isRepeated()) {
                    return FieldType.INT64;
                }
                if (fieldDescriptor.isPacked()) {
                    return FieldType.INT64_LIST_PACKED;
                }
                return FieldType.INT64_LIST;
            case 11:
                if (fieldDescriptor.isMapField()) {
                    return FieldType.MAP;
                }
                if (fieldDescriptor.isRepeated()) {
                    return FieldType.MESSAGE_LIST;
                }
                return FieldType.MESSAGE;
            case 12:
                if (!fieldDescriptor.isRepeated()) {
                    return FieldType.SFIXED32;
                }
                if (fieldDescriptor.isPacked()) {
                    return FieldType.SFIXED32_LIST_PACKED;
                }
                return FieldType.SFIXED32_LIST;
            case 13:
                if (!fieldDescriptor.isRepeated()) {
                    return FieldType.SFIXED64;
                }
                if (fieldDescriptor.isPacked()) {
                    return FieldType.SFIXED64_LIST_PACKED;
                }
                return FieldType.SFIXED64_LIST;
            case 14:
                if (!fieldDescriptor.isRepeated()) {
                    return FieldType.SINT32;
                }
                if (fieldDescriptor.isPacked()) {
                    return FieldType.SINT32_LIST_PACKED;
                }
                return FieldType.SINT32_LIST;
            case 15:
                if (!fieldDescriptor.isRepeated()) {
                    return FieldType.SINT64;
                }
                if (fieldDescriptor.isPacked()) {
                    return FieldType.SINT64_LIST_PACKED;
                }
                return FieldType.SINT64_LIST;
            case 16:
                if (fieldDescriptor.isRepeated()) {
                    return FieldType.STRING_LIST;
                }
                return FieldType.STRING;
            case 17:
                if (!fieldDescriptor.isRepeated()) {
                    return FieldType.UINT32;
                }
                if (fieldDescriptor.isPacked()) {
                    return FieldType.UINT32_LIST_PACKED;
                }
                return FieldType.UINT32_LIST;
            case 18:
                if (!fieldDescriptor.isRepeated()) {
                    return FieldType.UINT64;
                }
                if (fieldDescriptor.isPacked()) {
                    return FieldType.UINT64_LIST_PACKED;
                }
                return FieldType.UINT64_LIST;
            default:
                throw new IllegalArgumentException("Unsupported field type: " + fieldDescriptor.getType());
        }
    }

    private static Class<?> p(Class<?> cls, Descriptors.FieldDescriptor fieldDescriptor, FieldType fieldType) {
        switch (c.f14591b[fieldType.getJavaType().ordinal()]) {
            case 1:
                return Boolean.class;
            case 2:
                return ByteString.class;
            case 3:
                return Double.class;
            case 4:
                return Float.class;
            case 5:
            case 6:
                return Integer.class;
            case 7:
                return Long.class;
            case 8:
                return String.class;
            case 9:
                return q(cls, fieldDescriptor);
            default:
                throw new IllegalArgumentException("Invalid type for oneof: " + fieldType);
        }
    }

    private static Class<?> q(Class<?> cls, Descriptors.FieldDescriptor fieldDescriptor) {
        String name;
        try {
            if (fieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.GROUP) {
                name = fieldDescriptor.getMessageType().getName();
            } else {
                name = fieldDescriptor.getName();
            }
            return cls.getDeclaredMethod(s(name), new Class[0]).getReturnType();
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    private static Class<?> r(Class<?> cls, Descriptors.FieldDescriptor fieldDescriptor) {
        String name;
        try {
            if (fieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.GROUP) {
                name = fieldDescriptor.getMessageType().getName();
            } else {
                name = fieldDescriptor.getName();
            }
            return cls.getDeclaredMethod(s(name), Integer.TYPE).getReturnType();
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    private static String s(String str) {
        String u10 = u(str);
        return "get" + Character.toUpperCase(u10.charAt(0)) + u10.substring(1, u10.length());
    }

    private static boolean t(Descriptors.Descriptor descriptor) {
        return f14586c.c(descriptor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String u(String str) {
        StringBuilder sb2 = new StringBuilder(str.length() + 1);
        boolean z10 = false;
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if (charAt != '_') {
                if (Character.isDigit(charAt)) {
                    sb2.append(charAt);
                } else {
                    if (z10) {
                        sb2.append(Character.toUpperCase(charAt));
                        z10 = false;
                    } else if (i10 == 0) {
                        sb2.append(Character.toLowerCase(charAt));
                    } else {
                        sb2.append(charAt);
                    }
                }
            }
            z10 = true;
        }
        return sb2.toString();
    }

    @Override // com.explorestack.protobuf.z0
    public boolean isSupported(Class<?> cls) {
        return GeneratedMessageV3.class.isAssignableFrom(cls);
    }

    @Override // com.explorestack.protobuf.z0
    public y0 messageInfoFor(Class<?> cls) {
        if (GeneratedMessageV3.class.isAssignableFrom(cls)) {
            return f(cls, i(cls));
        }
        throw new IllegalArgumentException("Unsupported message type: " + cls.getName());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DescriptorMessageInfoFactory.java */
    /* loaded from: classes3.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private final Map<Descriptors.Descriptor, Boolean> f14593a = new ConcurrentHashMap();

        /* renamed from: b  reason: collision with root package name */
        private int f14594b = 0;

        /* renamed from: c  reason: collision with root package name */
        private final Stack<a> f14595c = new Stack<>();

        /* renamed from: d  reason: collision with root package name */
        private final Map<Descriptors.Descriptor, a> f14596d = new HashMap();

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: DescriptorMessageInfoFactory.java */
        /* loaded from: classes3.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            final Descriptors.Descriptor f14597a;

            /* renamed from: b  reason: collision with root package name */
            final int f14598b;

            /* renamed from: c  reason: collision with root package name */
            int f14599c;

            /* renamed from: d  reason: collision with root package name */
            b f14600d = null;

            a(Descriptors.Descriptor descriptor, int i10) {
                this.f14597a = descriptor;
                this.f14598b = i10;
                this.f14599c = i10;
            }
        }

        d() {
        }

        private void a(b bVar) {
            boolean z10;
            b bVar2;
            Iterator<Descriptors.Descriptor> it = bVar.f14601a.iterator();
            loop0: while (true) {
                if (it.hasNext()) {
                    Descriptors.Descriptor next = it.next();
                    z10 = true;
                    if (next.isExtendable()) {
                        break;
                    }
                    for (Descriptors.FieldDescriptor fieldDescriptor : next.getFields()) {
                        if (fieldDescriptor.isRequired() || (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE && (bVar2 = this.f14596d.get(fieldDescriptor.getMessageType()).f14600d) != bVar && bVar2.f14602b)) {
                            break loop0;
                        }
                    }
                } else {
                    z10 = false;
                    break;
                }
            }
            bVar.f14602b = z10;
            for (Descriptors.Descriptor descriptor : bVar.f14601a) {
                this.f14593a.put(descriptor, Boolean.valueOf(bVar.f14602b));
            }
        }

        private a b(Descriptors.Descriptor descriptor) {
            a pop;
            int i10 = this.f14594b;
            this.f14594b = i10 + 1;
            a aVar = new a(descriptor, i10);
            this.f14595c.push(aVar);
            this.f14596d.put(descriptor, aVar);
            for (Descriptors.FieldDescriptor fieldDescriptor : descriptor.getFields()) {
                if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                    a aVar2 = this.f14596d.get(fieldDescriptor.getMessageType());
                    if (aVar2 == null) {
                        aVar.f14599c = Math.min(aVar.f14599c, b(fieldDescriptor.getMessageType()).f14599c);
                    } else if (aVar2.f14600d == null) {
                        aVar.f14599c = Math.min(aVar.f14599c, aVar2.f14599c);
                    }
                }
            }
            if (aVar.f14598b == aVar.f14599c) {
                b bVar = new b(null);
                do {
                    pop = this.f14595c.pop();
                    pop.f14600d = bVar;
                    bVar.f14601a.add(pop.f14597a);
                } while (pop != aVar);
                a(bVar);
            }
            return aVar;
        }

        public boolean c(Descriptors.Descriptor descriptor) {
            Boolean bool = this.f14593a.get(descriptor);
            if (bool != null) {
                return bool.booleanValue();
            }
            synchronized (this) {
                try {
                    Boolean bool2 = this.f14593a.get(descriptor);
                    if (bool2 != null) {
                        return bool2.booleanValue();
                    }
                    return b(descriptor).f14600d.f14602b;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: DescriptorMessageInfoFactory.java */
        /* loaded from: classes3.dex */
        public static class b {

            /* renamed from: a  reason: collision with root package name */
            final List<Descriptors.Descriptor> f14601a;

            /* renamed from: b  reason: collision with root package name */
            boolean f14602b;

            private b() {
                this.f14601a = new ArrayList();
                this.f14602b = false;
            }

            /* synthetic */ b(a aVar) {
                this();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DescriptorMessageInfoFactory.java */
    /* loaded from: classes3.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        private i1[] f14603a;

        private e() {
            this.f14603a = new i1[2];
        }

        private static i1 b(Class<?> cls, Descriptors.OneofDescriptor oneofDescriptor) {
            String u10 = q.u(oneofDescriptor.getName());
            return new i1(oneofDescriptor.getIndex(), q.k(cls, u10 + "Case_"), q.k(cls, u10 + "_"));
        }

        i1 a(Class<?> cls, Descriptors.OneofDescriptor oneofDescriptor) {
            int index = oneofDescriptor.getIndex();
            i1[] i1VarArr = this.f14603a;
            if (index >= i1VarArr.length) {
                this.f14603a = (i1[]) Arrays.copyOf(i1VarArr, index * 2);
            }
            i1 i1Var = this.f14603a[index];
            if (i1Var == null) {
                i1 b10 = b(cls, oneofDescriptor);
                this.f14603a[index] = b10;
                return b10;
            }
            return i1Var;
        }

        /* synthetic */ e(a aVar) {
            this();
        }
    }
}
