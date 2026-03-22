package com.google.android.datatransport.cct.internal;

import androidx.annotation.NonNull;
import com.google.auto.value.AutoValue;
import java.util.List;
/* compiled from: BatchedLogRequest.java */
@AutoValue
/* loaded from: classes4.dex */
public abstract class m {
    @NonNull
    public static m a(@NonNull List<r> list) {
        return new d(list);
    }

    @NonNull
    public static p8.a b() {
        return new r8.d().j(b.f17028a).k(true).i();
    }

    @NonNull
    public abstract List<r> c();
}
