package com.explorestack.protobuf;

import java.io.IOException;
/* loaded from: classes3.dex */
public final class WireFormat {

    /* renamed from: a  reason: collision with root package name */
    static final int f14207a = c(1, 3);

    /* renamed from: b  reason: collision with root package name */
    static final int f14208b = c(1, 4);

    /* renamed from: c  reason: collision with root package name */
    static final int f14209c = c(2, 0);

    /* renamed from: d  reason: collision with root package name */
    static final int f14210d = c(3, 2);

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum INT64 uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* loaded from: classes3.dex */
    public static class FieldType {
        private static final /* synthetic */ FieldType[] $VALUES;
        public static final FieldType BOOL;
        public static final FieldType BYTES;
        public static final FieldType DOUBLE;
        public static final FieldType ENUM;
        public static final FieldType FIXED32;
        public static final FieldType FIXED64;
        public static final FieldType FLOAT;
        public static final FieldType GROUP;
        public static final FieldType INT32;
        public static final FieldType INT64;
        public static final FieldType MESSAGE;
        public static final FieldType SFIXED32;
        public static final FieldType SFIXED64;
        public static final FieldType SINT32;
        public static final FieldType SINT64;
        public static final FieldType STRING;
        public static final FieldType UINT32;
        public static final FieldType UINT64;
        private final JavaType javaType;
        private final int wireType;

        static {
            FieldType fieldType = new FieldType("DOUBLE", 0, JavaType.DOUBLE, 1);
            DOUBLE = fieldType;
            FieldType fieldType2 = new FieldType("FLOAT", 1, JavaType.FLOAT, 5);
            FLOAT = fieldType2;
            JavaType javaType = JavaType.LONG;
            FieldType fieldType3 = new FieldType("INT64", 2, javaType, 0);
            INT64 = fieldType3;
            FieldType fieldType4 = new FieldType("UINT64", 3, javaType, 0);
            UINT64 = fieldType4;
            JavaType javaType2 = JavaType.INT;
            FieldType fieldType5 = new FieldType("INT32", 4, javaType2, 0);
            INT32 = fieldType5;
            FieldType fieldType6 = new FieldType("FIXED64", 5, javaType, 1);
            FIXED64 = fieldType6;
            FieldType fieldType7 = new FieldType("FIXED32", 6, javaType2, 5);
            FIXED32 = fieldType7;
            FieldType fieldType8 = new FieldType("BOOL", 7, JavaType.BOOLEAN, 0);
            BOOL = fieldType8;
            FieldType fieldType9 = new FieldType("STRING", 8, JavaType.STRING, 2) { // from class: com.explorestack.protobuf.WireFormat.FieldType.1
                @Override // com.explorestack.protobuf.WireFormat.FieldType
                public boolean isPackable() {
                    return false;
                }
            };
            STRING = fieldType9;
            JavaType javaType3 = JavaType.MESSAGE;
            FieldType fieldType10 = new FieldType("GROUP", 9, javaType3, 3) { // from class: com.explorestack.protobuf.WireFormat.FieldType.2
                @Override // com.explorestack.protobuf.WireFormat.FieldType
                public boolean isPackable() {
                    return false;
                }
            };
            GROUP = fieldType10;
            FieldType fieldType11 = new FieldType("MESSAGE", 10, javaType3, 2) { // from class: com.explorestack.protobuf.WireFormat.FieldType.3
                @Override // com.explorestack.protobuf.WireFormat.FieldType
                public boolean isPackable() {
                    return false;
                }
            };
            MESSAGE = fieldType11;
            FieldType fieldType12 = new FieldType("BYTES", 11, JavaType.BYTE_STRING, 2) { // from class: com.explorestack.protobuf.WireFormat.FieldType.4
                @Override // com.explorestack.protobuf.WireFormat.FieldType
                public boolean isPackable() {
                    return false;
                }
            };
            BYTES = fieldType12;
            FieldType fieldType13 = new FieldType("UINT32", 12, javaType2, 0);
            UINT32 = fieldType13;
            FieldType fieldType14 = new FieldType("ENUM", 13, JavaType.ENUM, 0);
            ENUM = fieldType14;
            FieldType fieldType15 = new FieldType("SFIXED32", 14, javaType2, 5);
            SFIXED32 = fieldType15;
            FieldType fieldType16 = new FieldType("SFIXED64", 15, javaType, 1);
            SFIXED64 = fieldType16;
            FieldType fieldType17 = new FieldType("SINT32", 16, javaType2, 0);
            SINT32 = fieldType17;
            FieldType fieldType18 = new FieldType("SINT64", 17, javaType, 0);
            SINT64 = fieldType18;
            $VALUES = new FieldType[]{fieldType, fieldType2, fieldType3, fieldType4, fieldType5, fieldType6, fieldType7, fieldType8, fieldType9, fieldType10, fieldType11, fieldType12, fieldType13, fieldType14, fieldType15, fieldType16, fieldType17, fieldType18};
        }

        /* synthetic */ FieldType(String str, int i10, JavaType javaType, int i11, a aVar) {
            this(str, i10, javaType, i11);
        }

        public static FieldType valueOf(String str) {
            return (FieldType) Enum.valueOf(FieldType.class, str);
        }

        public static FieldType[] values() {
            return (FieldType[]) $VALUES.clone();
        }

        public JavaType getJavaType() {
            return this.javaType;
        }

        public int getWireType() {
            return this.wireType;
        }

        public boolean isPackable() {
            return true;
        }

        private FieldType(String str, int i10, JavaType javaType, int i11) {
            this.javaType = javaType;
            this.wireType = i11;
        }
    }

    /* loaded from: classes3.dex */
    public enum JavaType {
        INT(0),
        LONG(0L),
        FLOAT(Float.valueOf(0.0f)),
        DOUBLE(Double.valueOf(0.0d)),
        BOOLEAN(Boolean.FALSE),
        STRING(""),
        BYTE_STRING(ByteString.EMPTY),
        ENUM(null),
        MESSAGE(null);
        
        private final Object defaultDefault;

        JavaType(Object obj) {
            this.defaultDefault = obj;
        }

        Object getDefaultDefault() {
            return this.defaultDefault;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public enum Utf8Validation {
        LOOSE { // from class: com.explorestack.protobuf.WireFormat.Utf8Validation.1
            @Override // com.explorestack.protobuf.WireFormat.Utf8Validation
            Object readString(n nVar) throws IOException {
                return nVar.I();
            }
        },
        STRICT { // from class: com.explorestack.protobuf.WireFormat.Utf8Validation.2
            @Override // com.explorestack.protobuf.WireFormat.Utf8Validation
            Object readString(n nVar) throws IOException {
                return nVar.J();
            }
        },
        LAZY { // from class: com.explorestack.protobuf.WireFormat.Utf8Validation.3
            @Override // com.explorestack.protobuf.WireFormat.Utf8Validation
            Object readString(n nVar) throws IOException {
                return nVar.r();
            }
        };

        abstract Object readString(n nVar) throws IOException;

        /* synthetic */ Utf8Validation(a aVar) {
            this();
        }
    }

    /* loaded from: classes3.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14211a;

        static {
            int[] iArr = new int[FieldType.values().length];
            f14211a = iArr;
            try {
                iArr[FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14211a[FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14211a[FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14211a[FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14211a[FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14211a[FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f14211a[FieldType.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f14211a[FieldType.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f14211a[FieldType.BYTES.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f14211a[FieldType.UINT32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f14211a[FieldType.SFIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f14211a[FieldType.SFIXED64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f14211a[FieldType.SINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f14211a[FieldType.SINT64.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f14211a[FieldType.STRING.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f14211a[FieldType.GROUP.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f14211a[FieldType.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f14211a[FieldType.ENUM.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    public static int a(int i10) {
        return i10 >>> 3;
    }

    public static int b(int i10) {
        return i10 & 7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(int i10, int i11) {
        return (i10 << 3) | i11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object d(n nVar, FieldType fieldType, Utf8Validation utf8Validation) throws IOException {
        switch (a.f14211a[fieldType.ordinal()]) {
            case 1:
                return Double.valueOf(nVar.s());
            case 2:
                return Float.valueOf(nVar.w());
            case 3:
                return Long.valueOf(nVar.z());
            case 4:
                return Long.valueOf(nVar.M());
            case 5:
                return Integer.valueOf(nVar.y());
            case 6:
                return Long.valueOf(nVar.v());
            case 7:
                return Integer.valueOf(nVar.u());
            case 8:
                return Boolean.valueOf(nVar.q());
            case 9:
                return nVar.r();
            case 10:
                return Integer.valueOf(nVar.L());
            case 11:
                return Integer.valueOf(nVar.E());
            case 12:
                return Long.valueOf(nVar.F());
            case 13:
                return Integer.valueOf(nVar.G());
            case 14:
                return Long.valueOf(nVar.H());
            case 15:
                return utf8Validation.readString(nVar);
            case 16:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle nested groups.");
            case 17:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle embedded messages.");
            case 18:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle enums.");
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }
}
