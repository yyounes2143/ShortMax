package dn;

import androidx.annotation.Nullable;
import zm.t;
/* compiled from: Mp4AlternateGroupData.java */
/* loaded from: classes8.dex */
public final class c implements t.a {

    /* renamed from: a  reason: collision with root package name */
    public final int f50451a;

    public c(int i10) {
        this.f50451a = i10;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof c) && this.f50451a == ((c) obj).f50451a) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f50451a;
    }

    public String toString() {
        return "Mp4AlternateGroup: " + this.f50451a;
    }
}
