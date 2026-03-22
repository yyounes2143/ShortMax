package wn;

import androidx.annotation.Nullable;
/* compiled from: Allocator.java */
/* loaded from: classes8.dex */
public interface b {

    /* compiled from: Allocator.java */
    /* loaded from: classes8.dex */
    public interface a {
        wn.a a();

        @Nullable
        a next();
    }

    void a(wn.a aVar);

    wn.a allocate();

    void b(a aVar);

    int getIndividualAllocationLength();

    void trim();
}
