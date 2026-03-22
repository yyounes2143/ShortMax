package com.google.android.datatransport.cct.internal;

import androidx.annotation.NonNull;
import java.util.List;
/* compiled from: AutoValue_BatchedLogRequest.java */
/* loaded from: classes4.dex */
final class d extends m {

    /* renamed from: a  reason: collision with root package name */
    private final List<r> f17102a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(List<r> list) {
        if (list != null) {
            this.f17102a = list;
            return;
        }
        throw new NullPointerException("Null logRequests");
    }

    @Override // com.google.android.datatransport.cct.internal.m
    @NonNull
    public List<r> c() {
        return this.f17102a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof m) {
            return this.f17102a.equals(((m) obj).c());
        }
        return false;
    }

    public int hashCode() {
        return this.f17102a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "BatchedLogRequest{logRequests=" + this.f17102a + "}";
    }
}
