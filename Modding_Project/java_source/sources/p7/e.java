package p7;

import androidx.annotation.NonNull;
import com.google.android.gms.tasks.Task;
/* compiled from: FirebaseAppCheck.java */
/* loaded from: classes5.dex */
public abstract class e implements s7.b {

    /* compiled from: FirebaseAppCheck.java */
    /* loaded from: classes5.dex */
    public interface a {
        void a(@NonNull c cVar);
    }

    @NonNull
    public static e c() {
        return d(com.google.firebase.f.m());
    }

    @NonNull
    public static e d(@NonNull com.google.firebase.f fVar) {
        return (e) fVar.j(e.class);
    }

    @NonNull
    public abstract Task<c> b(boolean z10);

    public abstract void e(@NonNull b bVar);
}
