package v7;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.FirebaseAuth;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class n0 {

    /* renamed from: c  reason: collision with root package name */
    private static final n0 f68797c = new n0();

    /* renamed from: a  reason: collision with root package name */
    private final v f68798a;

    /* renamed from: b  reason: collision with root package name */
    private final q f68799b;

    private n0() {
        this(v.i(), q.a());
    }

    public static n0 d() {
        return f68797c;
    }

    public final void a(Context context) {
        this.f68798a.a(context);
    }

    public final void b(FirebaseAuth firebaseAuth) {
        this.f68798a.g(firebaseAuth);
    }

    public final Task<String> c() {
        return this.f68798a.h();
    }

    @VisibleForTesting
    private n0(v vVar, q qVar) {
        this.f68798a = vVar;
        this.f68799b = qVar;
    }
}
