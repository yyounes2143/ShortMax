package com.google.android.exoplayer2.mediacodec;

import java.util.NoSuchElementException;
/* compiled from: IntArrayQueue.java */
/* loaded from: classes4.dex */
final class i {

    /* renamed from: a  reason: collision with root package name */
    private int f17962a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f17963b = -1;

    /* renamed from: c  reason: collision with root package name */
    private int f17964c = 0;

    /* renamed from: d  reason: collision with root package name */
    private int[] f17965d;

    /* renamed from: e  reason: collision with root package name */
    private int f17966e;

    public i() {
        int[] iArr = new int[16];
        this.f17965d = iArr;
        this.f17966e = iArr.length - 1;
    }

    private void c() {
        int[] iArr = this.f17965d;
        int length = iArr.length << 1;
        if (length >= 0) {
            int[] iArr2 = new int[length];
            int length2 = iArr.length;
            int i10 = this.f17962a;
            int i11 = length2 - i10;
            System.arraycopy(iArr, i10, iArr2, 0, i11);
            System.arraycopy(this.f17965d, 0, iArr2, i11, i10);
            this.f17962a = 0;
            this.f17963b = this.f17964c - 1;
            this.f17965d = iArr2;
            this.f17966e = iArr2.length - 1;
            return;
        }
        throw new IllegalStateException();
    }

    public void a(int i10) {
        if (this.f17964c == this.f17965d.length) {
            c();
        }
        int i11 = (this.f17963b + 1) & this.f17966e;
        this.f17963b = i11;
        this.f17965d[i11] = i10;
        this.f17964c++;
    }

    public void b() {
        this.f17962a = 0;
        this.f17963b = -1;
        this.f17964c = 0;
    }

    public boolean d() {
        if (this.f17964c == 0) {
            return true;
        }
        return false;
    }

    public int e() {
        int i10 = this.f17964c;
        if (i10 != 0) {
            int[] iArr = this.f17965d;
            int i11 = this.f17962a;
            int i12 = iArr[i11];
            this.f17962a = (i11 + 1) & this.f17966e;
            this.f17964c = i10 - 1;
            return i12;
        }
        throw new NoSuchElementException();
    }
}
