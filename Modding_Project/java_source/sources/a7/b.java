package a7;

import androidx.annotation.Nullable;
/* compiled from: Allocator.java */
/* loaded from: classes4.dex */
public interface b {

    /* compiled from: Allocator.java */
    /* loaded from: classes4.dex */
    public interface a {
        a7.a a();

        @Nullable
        a next();
    }

    void a(a7.a aVar);

    a7.a allocate();

    void b(a aVar);

    int getIndividualAllocationLength();

    void trim();
}
