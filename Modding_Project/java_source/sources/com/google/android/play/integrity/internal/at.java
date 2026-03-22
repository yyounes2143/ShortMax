package com.google.android.play.integrity.internal;

import com.ss.texturerender.TextureRenderKeys;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class at extends ar {

    /* renamed from: e  reason: collision with root package name */
    static final ar f19982e = new at(new Object[0], 0);

    /* renamed from: d  reason: collision with root package name */
    final transient Object[] f19983d;

    at(Object[] objArr, int i10) {
        this.f19983d = objArr;
    }

    @Override // com.google.android.play.integrity.internal.ar, com.google.android.play.integrity.internal.ao
    final int d(Object[] objArr, int i10) {
        System.arraycopy(this.f19983d, 0, objArr, 0, 0);
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
        return this.f19983d;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        l.a(i10, 0, TextureRenderKeys.KEY_IS_INDEX);
        Object obj = this.f19983d[i10];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return 0;
    }
}
