package com.explorestack.protobuf;

import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.WireFormat;
import java.io.IOException;
import java.util.AbstractMap;
import java.util.Map;
/* compiled from: MapEntryLite.java */
/* loaded from: classes3.dex */
public class t0<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final b<K, V> f14658a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapEntryLite.java */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14659a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f14659a = iArr;
            try {
                iArr[WireFormat.FieldType.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14659a[WireFormat.FieldType.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14659a[WireFormat.FieldType.GROUP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapEntryLite.java */
    /* loaded from: classes3.dex */
    public static class b<K, V> {

        /* renamed from: a  reason: collision with root package name */
        public final WireFormat.FieldType f14660a;

        /* renamed from: b  reason: collision with root package name */
        public final K f14661b;

        /* renamed from: c  reason: collision with root package name */
        public final WireFormat.FieldType f14662c;

        /* renamed from: d  reason: collision with root package name */
        public final V f14663d;

        public b(WireFormat.FieldType fieldType, K k10, WireFormat.FieldType fieldType2, V v10) {
            this.f14660a = fieldType;
            this.f14661b = k10;
            this.f14662c = fieldType2;
            this.f14663d = v10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> int b(b<K, V> bVar, K k10, V v10) {
        return e0.n(bVar.f14660a, 1, k10) + e0.n(bVar.f14662c, 2, v10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> Map.Entry<K, V> d(n nVar, b<K, V> bVar, y yVar) throws IOException {
        Object obj = bVar.f14661b;
        Object obj2 = bVar.f14663d;
        while (true) {
            int K = nVar.K();
            if (K == 0) {
                break;
            } else if (K == WireFormat.c(1, bVar.f14660a.getWireType())) {
                obj = e(nVar, yVar, bVar.f14660a, obj);
            } else if (K == WireFormat.c(2, bVar.f14662c.getWireType())) {
                obj2 = e(nVar, yVar, bVar.f14662c, obj2);
            } else if (!nVar.O(K)) {
                break;
            }
        }
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    static <T> T e(n nVar, y yVar, WireFormat.FieldType fieldType, T t10) throws IOException {
        int i10 = a.f14659a[fieldType.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return (T) e0.M(nVar, fieldType, true);
                }
                throw new RuntimeException("Groups are not allowed in maps.");
            }
            return (T) Integer.valueOf(nVar.t());
        }
        MessageLite.Builder builder = ((MessageLite) t10).toBuilder();
        nVar.B(builder, yVar);
        return (T) builder.buildPartial();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> void f(CodedOutputStream codedOutputStream, b<K, V> bVar, K k10, V v10) throws IOException {
        e0.Q(codedOutputStream, bVar.f14660a, 1, k10);
        e0.Q(codedOutputStream, bVar.f14662c, 2, v10);
    }

    public int a(int i10, K k10, V v10) {
        return CodedOutputStream.X(i10) + CodedOutputStream.E(b(this.f14658a, k10, v10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b<K, V> c() {
        return this.f14658a;
    }
}
