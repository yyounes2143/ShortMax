package com.explorestack.protobuf;

import com.explorestack.protobuf.i0;
/* compiled from: FieldInfo.java */
/* loaded from: classes3.dex */
final class d0 implements Comparable<d0> {

    /* renamed from: a  reason: collision with root package name */
    private final java.lang.reflect.Field f14336a;

    /* renamed from: b  reason: collision with root package name */
    private final FieldType f14337b;

    /* renamed from: c  reason: collision with root package name */
    private final Class<?> f14338c;

    /* renamed from: d  reason: collision with root package name */
    private final int f14339d;

    /* renamed from: e  reason: collision with root package name */
    private final java.lang.reflect.Field f14340e;

    /* renamed from: f  reason: collision with root package name */
    private final int f14341f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f14342g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f14343h;

    /* renamed from: i  reason: collision with root package name */
    private final i1 f14344i;

    /* renamed from: j  reason: collision with root package name */
    private final java.lang.reflect.Field f14345j;

    /* renamed from: k  reason: collision with root package name */
    private final Class<?> f14346k;

    /* renamed from: l  reason: collision with root package name */
    private final Object f14347l;

    /* renamed from: m  reason: collision with root package name */
    private final i0.e f14348m;

    /* compiled from: FieldInfo.java */
    /* loaded from: classes3.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14349a;

        static {
            int[] iArr = new int[FieldType.values().length];
            f14349a = iArr;
            try {
                iArr[FieldType.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14349a[FieldType.GROUP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14349a[FieldType.MESSAGE_LIST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14349a[FieldType.GROUP_LIST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private d0(java.lang.reflect.Field field, int i10, FieldType fieldType, Class<?> cls, java.lang.reflect.Field field2, int i11, boolean z10, boolean z11, i1 i1Var, Class<?> cls2, Object obj, i0.e eVar, java.lang.reflect.Field field3) {
        this.f14336a = field;
        this.f14337b = fieldType;
        this.f14338c = cls;
        this.f14339d = i10;
        this.f14340e = field2;
        this.f14341f = i11;
        this.f14342g = z10;
        this.f14343h = z11;
        this.f14344i = i1Var;
        this.f14346k = cls2;
        this.f14347l = obj;
        this.f14348m = eVar;
        this.f14345j = field3;
    }

    private static void a(int i10) {
        if (i10 > 0) {
            return;
        }
        throw new IllegalArgumentException("fieldNumber must be positive: " + i10);
    }

    public static d0 c(java.lang.reflect.Field field, int i10, FieldType fieldType, boolean z10) {
        a(i10);
        i0.b(field, "field");
        i0.b(fieldType, "fieldType");
        if (fieldType != FieldType.MESSAGE_LIST && fieldType != FieldType.GROUP_LIST) {
            return new d0(field, i10, fieldType, null, null, 0, false, z10, null, null, null, null, null);
        }
        throw new IllegalStateException("Shouldn't be called for repeated message fields.");
    }

    public static d0 e(java.lang.reflect.Field field, int i10, FieldType fieldType, i0.e eVar) {
        a(i10);
        i0.b(field, "field");
        return new d0(field, i10, fieldType, null, null, 0, false, false, null, null, null, eVar, null);
    }

    public static d0 f(java.lang.reflect.Field field, int i10, Object obj, i0.e eVar) {
        i0.b(obj, "mapDefaultEntry");
        a(i10);
        i0.b(field, "field");
        return new d0(field, i10, FieldType.MAP, null, null, 0, false, true, null, null, obj, eVar, null);
    }

    public static d0 g(int i10, FieldType fieldType, i1 i1Var, Class<?> cls, boolean z10, i0.e eVar) {
        a(i10);
        i0.b(fieldType, "fieldType");
        i0.b(i1Var, "oneof");
        i0.b(cls, "oneofStoredType");
        if (fieldType.isScalar()) {
            return new d0(null, i10, fieldType, null, null, 0, false, z10, i1Var, cls, null, eVar, null);
        }
        throw new IllegalArgumentException("Oneof is only supported for scalar fields. Field " + i10 + " is of type " + fieldType);
    }

    public static d0 h(java.lang.reflect.Field field, int i10, FieldType fieldType, java.lang.reflect.Field field2) {
        a(i10);
        i0.b(field, "field");
        i0.b(fieldType, "fieldType");
        if (fieldType != FieldType.MESSAGE_LIST && fieldType != FieldType.GROUP_LIST) {
            return new d0(field, i10, fieldType, null, null, 0, false, false, null, null, null, null, field2);
        }
        throw new IllegalStateException("Shouldn't be called for repeated message fields.");
    }

    public static d0 i(java.lang.reflect.Field field, int i10, FieldType fieldType, i0.e eVar, java.lang.reflect.Field field2) {
        a(i10);
        i0.b(field, "field");
        return new d0(field, i10, fieldType, null, null, 0, false, false, null, null, null, eVar, field2);
    }

    public static d0 j(java.lang.reflect.Field field, int i10, FieldType fieldType, java.lang.reflect.Field field2, int i11, boolean z10, i0.e eVar) {
        a(i10);
        i0.b(field, "field");
        i0.b(fieldType, "fieldType");
        i0.b(field2, "presenceField");
        if (field2 != null && !x(i11)) {
            throw new IllegalArgumentException("presenceMask must have exactly one bit set: " + i11);
        }
        return new d0(field, i10, fieldType, null, field2, i11, false, z10, null, null, null, eVar, null);
    }

    public static d0 k(java.lang.reflect.Field field, int i10, FieldType fieldType, java.lang.reflect.Field field2, int i11, boolean z10, i0.e eVar) {
        a(i10);
        i0.b(field, "field");
        i0.b(fieldType, "fieldType");
        i0.b(field2, "presenceField");
        if (field2 != null && !x(i11)) {
            throw new IllegalArgumentException("presenceMask must have exactly one bit set: " + i11);
        }
        return new d0(field, i10, fieldType, null, field2, i11, true, z10, null, null, null, eVar, null);
    }

    public static d0 l(java.lang.reflect.Field field, int i10, FieldType fieldType, Class<?> cls) {
        a(i10);
        i0.b(field, "field");
        i0.b(fieldType, "fieldType");
        i0.b(cls, "messageClass");
        return new d0(field, i10, fieldType, cls, null, 0, false, false, null, null, null, null, null);
    }

    private static boolean x(int i10) {
        if (i10 != 0 && (i10 & (i10 - 1)) == 0) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Comparable
    /* renamed from: b */
    public int compareTo(d0 d0Var) {
        return this.f14339d - d0Var.f14339d;
    }

    public java.lang.reflect.Field m() {
        return this.f14345j;
    }

    public i0.e n() {
        return this.f14348m;
    }

    public java.lang.reflect.Field o() {
        return this.f14336a;
    }

    public int p() {
        return this.f14339d;
    }

    public Object q() {
        return this.f14347l;
    }

    public Class<?> r() {
        int i10 = a.f14349a[this.f14337b.ordinal()];
        if (i10 != 1 && i10 != 2) {
            if (i10 != 3 && i10 != 4) {
                return null;
            }
            return this.f14338c;
        }
        java.lang.reflect.Field field = this.f14336a;
        if (field != null) {
            return field.getType();
        }
        return this.f14346k;
    }

    public i1 s() {
        return this.f14344i;
    }

    public java.lang.reflect.Field t() {
        return this.f14340e;
    }

    public int u() {
        return this.f14341f;
    }

    public FieldType v() {
        return this.f14337b;
    }

    public boolean w() {
        return this.f14343h;
    }

    public boolean y() {
        return this.f14342g;
    }
}
