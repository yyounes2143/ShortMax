package com.google.android.play.integrity.internal;

import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class au extends as {

    /* renamed from: e  reason: collision with root package name */
    private static final Object[] f19984e;

    /* renamed from: f  reason: collision with root package name */
    static final au f19985f;

    /* renamed from: c  reason: collision with root package name */
    final transient Object[] f19986c;

    /* renamed from: d  reason: collision with root package name */
    final transient Object[] f19987d;

    static {
        Object[] objArr = new Object[0];
        f19984e = objArr;
        f19985f = new au(objArr, 0, objArr, 0, 0);
    }

    au(Object[] objArr, int i10, Object[] objArr2, int i11, int i12) {
        this.f19986c = objArr;
        this.f19987d = objArr2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj != null) {
            int length = this.f19987d.length;
            return false;
        }
        return false;
    }

    @Override // com.google.android.play.integrity.internal.ao
    final int d(Object[] objArr, int i10) {
        System.arraycopy(this.f19986c, 0, objArr, 0, 0);
        return 0;
    }

    @Override // com.google.android.play.integrity.internal.ao
    final int e() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.integrity.internal.ao
    public final int f() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.integrity.internal.ao
    public final Object[] g() {
        return this.f19986c;
    }

    @Override // com.google.android.play.integrity.internal.as
    public final p h() {
        return i().listIterator(0);
    }

    @Override // com.google.android.play.integrity.internal.as, java.util.Collection, java.util.Set
    public final int hashCode() {
        return 0;
    }

    @Override // com.google.android.play.integrity.internal.as, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return i().listIterator(0);
    }

    @Override // com.google.android.play.integrity.internal.as
    final ar j() {
        int i10 = ar.f19980c;
        return at.f19982e;
    }

    @Override // com.google.android.play.integrity.internal.as
    final boolean q() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 0;
    }
}
