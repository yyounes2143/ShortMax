package com.facebook.imagepipeline.memory;

import b4.e0;
import b4.f0;
@k2.d
/* loaded from: classes3.dex */
public class NativeMemoryChunkPool extends e {
    @k2.d
    public NativeMemoryChunkPool(n2.c cVar, e0 e0Var, f0 f0Var) {
        super(cVar, e0Var, f0Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.e
    /* renamed from: E */
    public NativeMemoryChunk z(int i10) {
        return new NativeMemoryChunk(i10);
    }
}
