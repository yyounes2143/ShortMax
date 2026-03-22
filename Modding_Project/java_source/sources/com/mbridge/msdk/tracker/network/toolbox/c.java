package com.mbridge.msdk.tracker.network.toolbox;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* compiled from: ByteArrayPool.java */
/* loaded from: classes6.dex */
public class c {

    /* renamed from: e  reason: collision with root package name */
    protected static final Comparator<byte[]> f30350e = new a();

    /* renamed from: a  reason: collision with root package name */
    private final List<byte[]> f30351a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private final List<byte[]> f30352b = new ArrayList(64);

    /* renamed from: c  reason: collision with root package name */
    private int f30353c = 0;

    /* renamed from: d  reason: collision with root package name */
    private final int f30354d;

    /* compiled from: ByteArrayPool.java */
    /* loaded from: classes6.dex */
    class a implements Comparator<byte[]> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }
    }

    public c(int i10) {
        this.f30354d = i10;
    }

    public synchronized byte[] a(int i10) {
        for (int i11 = 0; i11 < this.f30352b.size(); i11++) {
            byte[] bArr = this.f30352b.get(i11);
            if (bArr.length >= i10) {
                this.f30353c -= bArr.length;
                this.f30352b.remove(i11);
                this.f30351a.remove(bArr);
                return bArr;
            }
        }
        return new byte[i10];
    }

    public synchronized void a(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length <= this.f30354d) {
                this.f30351a.add(bArr);
                int binarySearch = Collections.binarySearch(this.f30352b, bArr, f30350e);
                if (binarySearch < 0) {
                    binarySearch = (-binarySearch) - 1;
                }
                this.f30352b.add(binarySearch, bArr);
                this.f30353c += bArr.length;
                a();
            }
        }
    }

    private synchronized void a() {
        while (this.f30353c > this.f30354d) {
            byte[] remove = this.f30351a.remove(0);
            this.f30352b.remove(remove);
            this.f30353c -= remove.length;
        }
    }
}
