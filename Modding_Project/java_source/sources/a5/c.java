package a5;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: Encoding.java */
/* loaded from: classes4.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final String f134a;

    private c(@NonNull String str) {
        if (str != null) {
            this.f134a = str;
            return;
        }
        throw new NullPointerException("name is null");
    }

    public static c b(@NonNull String str) {
        return new c(str);
    }

    public String a() {
        return this.f134a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        return this.f134a.equals(((c) obj).f134a);
    }

    public int hashCode() {
        return this.f134a.hashCode() ^ 1000003;
    }

    @NonNull
    public String toString() {
        return "Encoding{name=\"" + this.f134a + "\"}";
    }
}
