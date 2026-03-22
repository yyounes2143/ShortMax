package com.google.android.gms.internal.p002authapi;

import com.ss.texturerender.TextureRenderKeys;
import java.util.NoSuchElementException;
/* compiled from: com.google.android.gms:play-services-auth@@21.4.0 */
/* renamed from: com.google.android.gms.internal.auth-api.zbbe  reason: invalid package */
/* loaded from: classes4.dex */
abstract class zbbe extends zbbl {
    private final int zba;
    private int zbb;

    /* JADX INFO: Access modifiers changed from: protected */
    public zbbe(int i10, int i11) {
        zbbc.zbb(i11, i10, TextureRenderKeys.KEY_IS_INDEX);
        this.zba = i10;
        this.zbb = i11;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        if (this.zbb < this.zba) {
            return true;
        }
        return false;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        if (this.zbb > 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (hasNext()) {
            int i10 = this.zbb;
            this.zbb = i10 + 1;
            return zba(i10);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.zbb;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (hasPrevious()) {
            int i10 = this.zbb - 1;
            this.zbb = i10;
            return zba(i10);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.zbb - 1;
    }

    protected abstract Object zba(int i10);
}
