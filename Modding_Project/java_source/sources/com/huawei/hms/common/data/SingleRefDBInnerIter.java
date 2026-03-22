package com.huawei.hms.common.data;

import com.huawei.hms.common.internal.Preconditions;
/* loaded from: classes5.dex */
public class SingleRefDBInnerIter<T> extends DBInnerIter<T> {
    public SingleRefDBInnerIter(DataBuffer<T> dataBuffer) {
        super(dataBuffer);
    }

    @Override // com.huawei.hms.common.data.DBInnerIter, java.util.Iterator
    public T next() {
        if (!hasNext()) {
            return null;
        }
        int i10 = this.f21993b + 1;
        this.f21993b = i10;
        if (i10 == 0) {
            Preconditions.checkState(this.f21992a.get(0) instanceof DataBufferRef, "DataBuffer reference of type " + this.f21992a.get(0).getClass() + " is not movable");
            ((DataBufferRef) this.f21992a.get(0)).a(this.f21993b);
        }
        return (T) this.f21992a.get(0);
    }
}
