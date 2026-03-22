package com.mbridge.msdk.thrid.okhttp.internal.http2;

import java.util.Arrays;
/* compiled from: Settings.java */
/* loaded from: classes6.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    private int f29917a;

    /* renamed from: b  reason: collision with root package name */
    private final int[] f29918b = new int[10];

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f29917a = 0;
        Arrays.fill(this.f29918b, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        if ((this.f29917a & 2) != 0) {
            return this.f29918b[1];
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c(int i10) {
        return (this.f29917a & 32) != 0 ? this.f29918b[5] : i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d(int i10) {
        return ((1 << i10) & this.f29917a) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b(int i10) {
        return (this.f29917a & 16) != 0 ? this.f29918b[4] : i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        if ((this.f29917a & 128) != 0) {
            return this.f29918b[7];
        }
        return 65535;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        return Integer.bitCount(this.f29917a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m a(int i10, int i11) {
        if (i10 >= 0) {
            int[] iArr = this.f29918b;
            if (i10 < iArr.length) {
                this.f29917a = (1 << i10) | this.f29917a;
                iArr[i10] = i11;
            }
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(int i10) {
        return this.f29918b[i10];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(m mVar) {
        for (int i10 = 0; i10 < 10; i10++) {
            if (mVar.d(i10)) {
                a(i10, mVar.a(i10));
            }
        }
    }
}
