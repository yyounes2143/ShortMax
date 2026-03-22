package com.mbridge.msdk.thrid.okio;

import androidx.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Segment.java */
/* loaded from: classes6.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    final byte[] f30164a;

    /* renamed from: b  reason: collision with root package name */
    int f30165b;

    /* renamed from: c  reason: collision with root package name */
    int f30166c;

    /* renamed from: d  reason: collision with root package name */
    boolean f30167d;

    /* renamed from: e  reason: collision with root package name */
    boolean f30168e;

    /* renamed from: f  reason: collision with root package name */
    o f30169f;

    /* renamed from: g  reason: collision with root package name */
    o f30170g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o() {
        this.f30164a = new byte[8192];
        this.f30168e = true;
        this.f30167d = false;
    }

    public final o a(o oVar) {
        oVar.f30170g = this;
        oVar.f30169f = this.f30169f;
        this.f30169f.f30170g = oVar;
        this.f30169f = oVar;
        return oVar;
    }

    @Nullable
    public final o b() {
        o oVar;
        o oVar2 = this.f30169f;
        if (oVar2 != this) {
            oVar = oVar2;
        } else {
            oVar = null;
        }
        o oVar3 = this.f30170g;
        oVar3.f30169f = oVar2;
        this.f30169f.f30170g = oVar3;
        this.f30169f = null;
        this.f30170g = null;
        return oVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final o c() {
        this.f30167d = true;
        return new o(this.f30164a, this.f30165b, this.f30166c, true, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(byte[] bArr, int i10, int i11, boolean z10, boolean z11) {
        this.f30164a = bArr;
        this.f30165b = i10;
        this.f30166c = i11;
        this.f30167d = z10;
        this.f30168e = z11;
    }

    public final o a(int i10) {
        o a10;
        if (i10 > 0 && i10 <= this.f30166c - this.f30165b) {
            if (i10 >= 1024) {
                a10 = c();
            } else {
                a10 = p.a();
                System.arraycopy(this.f30164a, this.f30165b, a10.f30164a, 0, i10);
            }
            a10.f30166c = a10.f30165b + i10;
            this.f30165b += i10;
            this.f30170g.a(a10);
            return a10;
        }
        throw new IllegalArgumentException();
    }

    public final void a() {
        o oVar = this.f30170g;
        if (oVar != this) {
            if (oVar.f30168e) {
                int i10 = this.f30166c - this.f30165b;
                if (i10 > (8192 - oVar.f30166c) + (oVar.f30167d ? 0 : oVar.f30165b)) {
                    return;
                }
                a(oVar, i10);
                b();
                p.a(this);
                return;
            }
            return;
        }
        throw new IllegalStateException();
    }

    public final void a(o oVar, int i10) {
        if (oVar.f30168e) {
            int i11 = oVar.f30166c;
            int i12 = i11 + i10;
            if (i12 > 8192) {
                if (!oVar.f30167d) {
                    int i13 = oVar.f30165b;
                    if (i12 - i13 <= 8192) {
                        byte[] bArr = oVar.f30164a;
                        System.arraycopy(bArr, i13, bArr, 0, i11 - i13);
                        oVar.f30166c -= oVar.f30165b;
                        oVar.f30165b = 0;
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else {
                    throw new IllegalArgumentException();
                }
            }
            System.arraycopy(this.f30164a, this.f30165b, oVar.f30164a, oVar.f30166c, i10);
            oVar.f30166c += i10;
            this.f30165b += i10;
            return;
        }
        throw new IllegalArgumentException();
    }
}
