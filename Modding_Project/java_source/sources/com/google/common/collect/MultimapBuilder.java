package com.google.common.collect;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes5.dex */
public abstract class MultimapBuilder<K0, V0> {

    /* loaded from: classes5.dex */
    private static final class ArrayListSupplier<V> implements h7.n<List<V>>, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final int f20232a;

        ArrayListSupplier(int i10) {
            this.f20232a = com.google.common.collect.d.b(i10, "expectedValuesPerKey");
        }

        @Override // h7.n
        /* renamed from: b */
        public List<V> get() {
            return new ArrayList(this.f20232a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a extends d<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f20233a;

        a(int i10) {
            this.f20233a = i10;
        }

        @Override // com.google.common.collect.MultimapBuilder.d
        <K, V> Map<K, Collection<V>> c() {
            return u.c(this.f20233a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b extends d<K0> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Comparator f20234a;

        b(Comparator comparator) {
            this.f20234a = comparator;
        }

        @Override // com.google.common.collect.MultimapBuilder.d
        <K extends K0, V> Map<K, Collection<V>> c() {
            return new TreeMap(this.f20234a);
        }
    }

    /* loaded from: classes5.dex */
    public static abstract class c<K0, V0> extends MultimapBuilder<K0, V0> {
        c() {
            super(null);
        }

        public abstract <K extends K0, V extends V0> m<K, V> e();
    }

    /* loaded from: classes5.dex */
    public static abstract class d<K0> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public class a extends c<K0, Object> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f20235a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ d f20236b;

            a(d dVar, int i10) {
                this.f20235a = i10;
                this.f20236b = dVar;
            }

            @Override // com.google.common.collect.MultimapBuilder.c
            public <K extends K0, V> m<K, V> e() {
                return Multimaps.b(this.f20236b.c(), new ArrayListSupplier(this.f20235a));
            }
        }

        d() {
        }

        public c<K0, Object> a() {
            return b(2);
        }

        public c<K0, Object> b(int i10) {
            com.google.common.collect.d.b(i10, "expectedValuesPerKey");
            return new a(this, i10);
        }

        abstract <K extends K0, V> Map<K, Collection<V>> c();
    }

    /* synthetic */ MultimapBuilder(a aVar) {
        this();
    }

    public static d<Object> a() {
        return b(8);
    }

    public static d<Object> b(int i10) {
        com.google.common.collect.d.b(i10, "expectedKeys");
        return new a(i10);
    }

    public static d<Comparable> c() {
        return d(t.e());
    }

    public static <K0> d<K0> d(Comparator<K0> comparator) {
        h7.k.j(comparator);
        return new b(comparator);
    }

    private MultimapBuilder() {
    }
}
