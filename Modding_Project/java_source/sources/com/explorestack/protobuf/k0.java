package com.explorestack.protobuf;

import java.util.Iterator;
import java.util.Map;
/* compiled from: LazyField.java */
/* loaded from: classes3.dex */
public class k0 extends l0 {

    /* renamed from: f  reason: collision with root package name */
    private final MessageLite f14441f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LazyField.java */
    /* loaded from: classes3.dex */
    public static class b<K> implements Map.Entry<K, Object> {

        /* renamed from: a  reason: collision with root package name */
        private Map.Entry<K, k0> f14442a;

        public k0 a() {
            return this.f14442a.getValue();
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f14442a.getKey();
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            k0 value = this.f14442a.getValue();
            if (value == null) {
                return null;
            }
            return value.g();
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            if (obj instanceof MessageLite) {
                return this.f14442a.getValue().e((MessageLite) obj);
            }
            throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        }

        private b(Map.Entry<K, k0> entry) {
            this.f14442a = entry;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LazyField.java */
    /* loaded from: classes3.dex */
    public static class c<K> implements Iterator<Map.Entry<K, Object>> {

        /* renamed from: a  reason: collision with root package name */
        private Iterator<Map.Entry<K, Object>> f14443a;

        public c(Iterator<Map.Entry<K, Object>> it) {
            this.f14443a = it;
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public Map.Entry<K, Object> next() {
            Map.Entry<K, Object> next = this.f14443a.next();
            if (next.getValue() instanceof k0) {
                return new b(next);
            }
            return next;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14443a.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f14443a.remove();
        }
    }

    public k0(MessageLite messageLite, y yVar, ByteString byteString) {
        super(yVar, byteString);
        this.f14441f = messageLite;
    }

    @Override // com.explorestack.protobuf.l0
    public boolean equals(Object obj) {
        return g().equals(obj);
    }

    public MessageLite g() {
        return d(this.f14441f);
    }

    @Override // com.explorestack.protobuf.l0
    public int hashCode() {
        return g().hashCode();
    }

    public String toString() {
        return g().toString();
    }
}
