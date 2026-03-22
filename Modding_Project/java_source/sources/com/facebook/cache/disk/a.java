package com.facebook.cache.disk;

import com.facebook.cache.disk.b;
/* compiled from: DefaultEntryEvictionComparatorSupplier.java */
/* loaded from: classes3.dex */
public class a implements g2.d {

    /* compiled from: DefaultEntryEvictionComparatorSupplier.java */
    /* renamed from: com.facebook.cache.disk.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0257a implements e {
        C0257a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(b.a aVar, b.a aVar2) {
            long timestamp = aVar.getTimestamp();
            long timestamp2 = aVar2.getTimestamp();
            if (timestamp < timestamp2) {
                return -1;
            }
            if (timestamp2 == timestamp) {
                return 0;
            }
            return 1;
        }
    }

    @Override // g2.d
    public e get() {
        return new C0257a();
    }
}
