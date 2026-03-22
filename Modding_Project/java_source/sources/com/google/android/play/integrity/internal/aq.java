package com.google.android.play.integrity.internal;

import com.ss.texturerender.TextureRenderKeys;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class aq extends ar {

    /* renamed from: d  reason: collision with root package name */
    final transient int f19976d;

    /* renamed from: e  reason: collision with root package name */
    final transient int f19977e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ ar f19978f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aq(ar arVar, int i10, int i11) {
        this.f19978f = arVar;
        this.f19976d = i10;
        this.f19977e = i11;
    }

    @Override // com.google.android.play.integrity.internal.ao
    final int e() {
        return this.f19978f.f() + this.f19976d + this.f19977e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.integrity.internal.ao
    public final int f() {
        return this.f19978f.f() + this.f19976d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.integrity.internal.ao
    public final Object[] g() {
        return this.f19978f.g();
    }

    @Override // java.util.List
    public final Object get(int i10) {
        l.a(i10, this.f19977e, TextureRenderKeys.KEY_IS_INDEX);
        return this.f19978f.get(i10 + this.f19976d);
    }

    @Override // com.google.android.play.integrity.internal.ar
    public final ar h(int i10, int i11) {
        l.c(i10, i11, this.f19977e);
        int i12 = this.f19976d;
        return this.f19978f.subList(i10 + i12, i11 + i12);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f19977e;
    }

    @Override // com.google.android.play.integrity.internal.ar, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i10, int i11) {
        return subList(i10, i11);
    }
}
