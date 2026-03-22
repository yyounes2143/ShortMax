package v7;

import androidx.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class x0 extends t0 {

    /* renamed from: a  reason: collision with root package name */
    private String f68830a;

    /* renamed from: b  reason: collision with root package name */
    private String f68831b;

    /* renamed from: c  reason: collision with root package name */
    private String f68832c;

    @Override // v7.t0
    public final t0 a(@Nullable String str) {
        this.f68831b = str;
        return this;
    }

    @Override // v7.t0
    public final u0 b() {
        return new y0(this.f68830a, this.f68831b, this.f68832c);
    }

    @Override // v7.t0
    public final t0 c(@Nullable String str) {
        this.f68832c = str;
        return this;
    }

    @Override // v7.t0
    public final t0 d(@Nullable String str) {
        this.f68830a = str;
        return this;
    }
}
