package com.google.android.gms.internal.p002authapi;

import com.ss.texturerender.TextureRenderKeys;
import java.util.List;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-auth@@21.4.0 */
/* renamed from: com.google.android.gms.internal.auth-api.zbbh  reason: invalid package */
/* loaded from: classes4.dex */
public final class zbbh extends zbbi {
    final transient int zba;
    final transient int zbb;
    final /* synthetic */ zbbi zbc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zbbh(zbbi zbbiVar, int i10, int i11) {
        Objects.requireNonNull(zbbiVar);
        this.zbc = zbbiVar;
        this.zba = i10;
        this.zbb = i11;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        zbbc.zba(i10, this.zbb, TextureRenderKeys.KEY_IS_INDEX);
        return this.zbc.get(i10 + this.zba);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zbb;
    }

    @Override // com.google.android.gms.internal.p002authapi.zbbi, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i10, int i11) {
        return subList(i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.p002authapi.zbbf
    public final Object[] zbb() {
        return this.zbc.zbb();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.p002authapi.zbbf
    public final int zbc() {
        return this.zbc.zbc() + this.zba;
    }

    @Override // com.google.android.gms.internal.p002authapi.zbbf
    final int zbd() {
        return this.zbc.zbc() + this.zba + this.zbb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.p002authapi.zbbf
    public final boolean zbf() {
        return true;
    }

    @Override // com.google.android.gms.internal.p002authapi.zbbi
    public final zbbi zbh(int i10, int i11) {
        zbbc.zbc(i10, i11, this.zbb);
        int i12 = this.zba;
        return this.zbc.subList(i10 + i12, i11 + i12);
    }
}
