package com.inmobi.media;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableIterator;
/* renamed from: com.inmobi.media.g8  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2969g8 implements Iterator, KMutableIterator {

    /* renamed from: a  reason: collision with root package name */
    public int f24769a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C2985h8 f24770b;

    public C2969g8(C2985h8 c2985h8) {
        this.f24770b = c2985h8;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f24769a < this.f24770b.B) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        try {
            ArrayList arrayList = this.f24770b.A;
            int i10 = this.f24769a;
            this.f24769a = i10 + 1;
            C2920d8 c2920d8 = (C2920d8) arrayList.get(i10);
            Intrinsics.checkNotNull(c2920d8);
            return c2920d8;
        } catch (IndexOutOfBoundsException e10) {
            this.f24769a--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
