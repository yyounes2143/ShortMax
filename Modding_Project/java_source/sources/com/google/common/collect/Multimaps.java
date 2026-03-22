package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
/* loaded from: classes5.dex */
public final class Multimaps {

    /* loaded from: classes5.dex */
    private static class CustomListMultimap<K, V> extends AbstractListMultimap<K, V> {

        /* renamed from: g  reason: collision with root package name */
        transient h7.n<? extends List<V>> f20237g;

        CustomListMultimap(Map<K, Collection<V>> map, h7.n<? extends List<V>> nVar) {
            super(map);
            this.f20237g = (h7.n) h7.k.j(nVar);
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            Object readObject = objectInputStream.readObject();
            Objects.requireNonNull(readObject);
            this.f20237g = (h7.n) readObject;
            Object readObject2 = objectInputStream.readObject();
            Objects.requireNonNull(readObject2);
            H((Map) readObject2);
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.f20237g);
            objectOutputStream.writeObject(A());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.AbstractMapBasedMultimap
        /* renamed from: M */
        public List<V> B() {
            return this.f20237g.get();
        }

        @Override // com.google.common.collect.c
        Map<K, Collection<V>> g() {
            return D();
        }

        @Override // com.google.common.collect.c
        Set<K> i() {
            return E();
        }
    }

    /* loaded from: classes5.dex */
    static abstract class a<K, V> extends AbstractCollection<Map.Entry<K, V>> {
        abstract p<K, V> a();

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return a().e(entry.getKey(), entry.getValue());
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return a().remove(entry.getKey(), entry.getValue());
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return a().size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(p<?, ?> pVar, Object obj) {
        if (obj == pVar) {
            return true;
        }
        if (obj instanceof p) {
            return pVar.d().equals(((p) obj).d());
        }
        return false;
    }

    public static <K, V> m<K, V> b(Map<K, Collection<V>> map, h7.n<? extends List<V>> nVar) {
        return new CustomListMultimap(map, nVar);
    }
}
