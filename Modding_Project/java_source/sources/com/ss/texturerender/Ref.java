package com.ss.texturerender;

import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes6.dex */
public class Ref implements IRef {
    private AtomicInteger mCount;

    public Ref(int i10) {
        this.mCount = new AtomicInteger(i10);
    }

    @Override // com.ss.texturerender.IRef
    public int addRef() {
        return this.mCount.getAndIncrement();
    }

    @Override // com.ss.texturerender.IRef
    public int decRef() {
        return this.mCount.getAndDecrement();
    }

    @Override // com.ss.texturerender.IRef
    public int refCnt() {
        return this.mCount.intValue();
    }

    public Ref() {
        this(0);
    }
}
