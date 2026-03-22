package g9;

import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
import com.google.firebase.remoteconfig.internal.f;
import com.google.firebase.remoteconfig.internal.g;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
/* compiled from: RolloutsStateSubscriptionsHandler.java */
/* loaded from: classes5.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private f f52231a;

    /* renamed from: b  reason: collision with root package name */
    private a f52232b;

    /* renamed from: c  reason: collision with root package name */
    private Executor f52233c;

    /* renamed from: d  reason: collision with root package name */
    private Set<i9.f> f52234d = Collections.newSetFromMap(new ConcurrentHashMap());

    public e(@NonNull f fVar, @NonNull a aVar, @NonNull Executor executor) {
        this.f52231a = fVar;
        this.f52232b = aVar;
        this.f52233c = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(Task task, final i9.f fVar, g gVar) {
        try {
            g gVar2 = (g) task.getResult();
            if (gVar2 != null) {
                final i9.e b10 = this.f52232b.b(gVar2);
                this.f52233c.execute(new Runnable() { // from class: g9.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        i9.f.this.a(b10);
                    }
                });
            }
        } catch (FirebaseRemoteConfigException e10) {
            Log.w("FirebaseRemoteConfig", "Exception publishing RolloutsState to subscriber. Continuing to listen for changes.", e10);
        }
    }

    public void g(@NonNull g gVar) {
        try {
            final i9.e b10 = this.f52232b.b(gVar);
            for (final i9.f fVar : this.f52234d) {
                this.f52233c.execute(new Runnable() { // from class: g9.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        i9.f.this.a(b10);
                    }
                });
            }
        } catch (FirebaseRemoteConfigException e10) {
            Log.w("FirebaseRemoteConfig", "Exception publishing RolloutsState to subscribers. Continuing to listen for changes.", e10);
        }
    }

    public void h(@NonNull final i9.f fVar) {
        this.f52234d.add(fVar);
        final Task<g> e10 = this.f52231a.e();
        e10.addOnSuccessListener(this.f52233c, new OnSuccessListener() { // from class: g9.b
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                e.this.f(e10, fVar, (g) obj);
            }
        });
    }
}
