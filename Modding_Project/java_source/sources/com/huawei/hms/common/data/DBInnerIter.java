package com.huawei.hms.common.data;

import com.huawei.hms.common.internal.Preconditions;
import java.util.Iterator;
/* loaded from: classes5.dex */
public class DBInnerIter<O> implements Iterator<O> {

    /* renamed from: a  reason: collision with root package name */
    protected final DataBuffer<O> f21992a;

    /* renamed from: b  reason: collision with root package name */
    protected int f21993b = -1;

    public DBInnerIter(DataBuffer<O> dataBuffer) {
        Preconditions.checkNotNull(dataBuffer, "dataBuffer cannot be null");
        this.f21992a = dataBuffer;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.f21993b + 1 < this.f21992a.getCount()) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public O next() {
        if (hasNext()) {
            DataBuffer<O> dataBuffer = this.f21992a;
            int i10 = this.f21993b + 1;
            this.f21993b = i10;
            return dataBuffer.get(i10);
        }
        return null;
    }
}
