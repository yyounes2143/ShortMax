package com.facebook.common.memory;

import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import java.nio.ByteBuffer;
/* loaded from: classes3.dex */
public class DecodeBufferHelper implements Pools.Pool<ByteBuffer> {

    /* renamed from: a  reason: collision with root package name */
    public static final DecodeBufferHelper f15313a = new DecodeBufferHelper();

    /* renamed from: b  reason: collision with root package name */
    private static int f15314b = 16384;

    /* renamed from: c  reason: collision with root package name */
    private static final ThreadLocal<ByteBuffer> f15315c = new a();

    /* loaded from: classes3.dex */
    class a extends ThreadLocal<ByteBuffer> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public ByteBuffer initialValue() {
            return ByteBuffer.allocate(DecodeBufferHelper.f15314b);
        }
    }

    public static int c() {
        return f15314b;
    }

    @Override // androidx.core.util.Pools.Pool
    @Nullable
    /* renamed from: b */
    public ByteBuffer acquire() {
        return f15315c.get();
    }

    @Override // androidx.core.util.Pools.Pool
    /* renamed from: d */
    public boolean release(ByteBuffer byteBuffer) {
        return true;
    }
}
