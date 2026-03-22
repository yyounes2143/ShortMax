package com.google.android.play.integrity.internal;

import com.ss.texturerender.TextureRenderKeys;
import java.util.NoSuchElementException;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
abstract class n extends q {

    /* renamed from: a  reason: collision with root package name */
    private final int f20008a;

    /* renamed from: b  reason: collision with root package name */
    private int f20009b;

    /* JADX INFO: Access modifiers changed from: protected */
    public n(int i10, int i11) {
        l.b(i11, i10, TextureRenderKeys.KEY_IS_INDEX);
        this.f20008a = i10;
        this.f20009b = i11;
    }

    protected abstract Object a(int i10);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        if (this.f20009b < this.f20008a) {
            return true;
        }
        return false;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        if (this.f20009b > 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (hasNext()) {
            int i10 = this.f20009b;
            this.f20009b = i10 + 1;
            return a(i10);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f20009b;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (hasPrevious()) {
            int i10 = this.f20009b - 1;
            this.f20009b = i10;
            return a(i10);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f20009b - 1;
    }
}
