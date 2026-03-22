package v7;

import androidx.annotation.Nullable;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class e extends com.google.firebase.auth.f {

    /* renamed from: a  reason: collision with root package name */
    private String f68747a;

    /* renamed from: b  reason: collision with root package name */
    private String f68748b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f68749c = false;

    /* renamed from: d  reason: collision with root package name */
    private boolean f68750d = false;

    @Nullable
    public final String a() {
        return this.f68747a;
    }

    @Nullable
    public final String b() {
        return this.f68748b;
    }

    public final boolean c() {
        return this.f68750d;
    }

    public final boolean d() {
        if (this.f68747a != null && this.f68748b != null) {
            return true;
        }
        return false;
    }

    public final boolean e() {
        return this.f68749c;
    }
}
