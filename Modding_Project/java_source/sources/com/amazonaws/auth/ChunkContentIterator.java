package com.amazonaws.auth;
/* loaded from: classes2.dex */
class ChunkContentIterator {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f4921a;

    /* renamed from: b  reason: collision with root package name */
    private int f4922b;

    public ChunkContentIterator(byte[] bArr) {
        this.f4921a = bArr;
    }

    public boolean a() {
        if (this.f4922b < this.f4921a.length) {
            return true;
        }
        return false;
    }

    public int b(byte[] bArr, int i10, int i11) {
        if (i11 == 0) {
            return 0;
        }
        if (!a()) {
            return -1;
        }
        int min = Math.min(this.f4921a.length - this.f4922b, i11);
        System.arraycopy(this.f4921a, this.f4922b, bArr, i10, min);
        this.f4922b += min;
        return min;
    }
}
