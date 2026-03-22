package com.google.android.gms.internal.p002authapi;

import com.ss.texturerender.TextureRenderKeys;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-auth@@21.4.0 */
/* renamed from: com.google.android.gms.internal.auth-api.zbbj  reason: invalid package */
/* loaded from: classes4.dex */
public final class zbbj extends zbbi {
    static final zbbi zba = new zbbj(new Object[0], 0);
    final transient Object[] zbb;
    private final transient int zbc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zbbj(Object[] objArr, int i10) {
        this.zbb = objArr;
        this.zbc = i10;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        zbbc.zba(i10, this.zbc, TextureRenderKeys.KEY_IS_INDEX);
        Object obj = this.zbb[i10];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zbc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.p002authapi.zbbf
    public final Object[] zbb() {
        return this.zbb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.p002authapi.zbbf
    public final int zbc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.p002authapi.zbbf
    final int zbd() {
        return this.zbc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.p002authapi.zbbf
    public final boolean zbf() {
        return false;
    }

    @Override // com.google.android.gms.internal.p002authapi.zbbi, com.google.android.gms.internal.p002authapi.zbbf
    final int zbg(Object[] objArr, int i10) {
        Object[] objArr2 = this.zbb;
        int i11 = this.zbc;
        System.arraycopy(objArr2, 0, objArr, 0, i11);
        return i11;
    }
}
