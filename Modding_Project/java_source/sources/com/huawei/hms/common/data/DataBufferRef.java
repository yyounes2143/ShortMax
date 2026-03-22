package com.huawei.hms.common.data;

import com.huawei.hms.common.internal.Objects;
import com.huawei.hms.common.internal.Preconditions;
/* loaded from: classes5.dex */
public class DataBufferRef {

    /* renamed from: a  reason: collision with root package name */
    protected final DataHolder f21994a;

    /* renamed from: b  reason: collision with root package name */
    protected int f21995b;

    /* renamed from: c  reason: collision with root package name */
    private int f21996c;

    public DataBufferRef(DataHolder dataHolder, int i10) {
        Preconditions.checkNotNull(dataHolder, "dataHolder cannot be null");
        this.f21994a = dataHolder;
        a(i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(int i10) {
        boolean z10;
        if (i10 >= 0 && i10 < this.f21994a.getCount()) {
            z10 = true;
        } else {
            z10 = false;
        }
        Preconditions.checkArgument(z10, "rowNum is out of index");
        this.f21995b = i10;
        this.f21996c = this.f21994a.getWindowIndex(i10);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DataBufferRef)) {
            return false;
        }
        DataBufferRef dataBufferRef = (DataBufferRef) obj;
        if (dataBufferRef.f21995b != this.f21995b || dataBufferRef.f21996c != this.f21996c || dataBufferRef.f21994a != this.f21994a) {
            return false;
        }
        return true;
    }

    public boolean hasColumn(String str) {
        return this.f21994a.hasColumn(str);
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f21995b), Integer.valueOf(this.f21996c), this.f21994a);
    }

    public boolean isDataValid() {
        return !this.f21994a.isClosed();
    }
}
