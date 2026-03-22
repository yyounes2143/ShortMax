package c5;

import androidx.annotation.NonNull;
import java.util.Arrays;
/* compiled from: EncodedPayload.java */
/* loaded from: classes4.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private final a5.c f3124a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f3125b;

    public h(@NonNull a5.c cVar, @NonNull byte[] bArr) {
        if (cVar != null) {
            if (bArr != null) {
                this.f3124a = cVar;
                this.f3125b = bArr;
                return;
            }
            throw new NullPointerException("bytes is null");
        }
        throw new NullPointerException("encoding is null");
    }

    public byte[] a() {
        return this.f3125b;
    }

    public a5.c b() {
        return this.f3124a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (!this.f3124a.equals(hVar.f3124a)) {
            return false;
        }
        return Arrays.equals(this.f3125b, hVar.f3125b);
    }

    public int hashCode() {
        return ((this.f3124a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f3125b);
    }

    public String toString() {
        return "EncodedPayload{encoding=" + this.f3124a + ", bytes=[...]}";
    }
}
