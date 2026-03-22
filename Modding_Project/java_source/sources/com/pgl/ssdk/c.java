package com.pgl.ssdk;

import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes6.dex */
public abstract class c {

    /* loaded from: classes6.dex */
    public static class a extends t {
        public a(long j10, long j11, int i10, long j12, ByteBuffer byteBuffer) {
            super(j10, j11, i10, j12, byteBuffer);
        }
    }

    public static a a(q qVar) throws IOException, s {
        t a10 = d.a(qVar);
        return new a(a10.a(), a10.c(), a10.b(), a10.e(), a10.d());
    }
}
