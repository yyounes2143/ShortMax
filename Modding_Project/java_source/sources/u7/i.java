package u7;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.android.play.core.integrity.IntegrityManager;
import com.google.android.play.core.integrity.IntegrityManagerFactory;
import com.google.android.play.core.integrity.IntegrityTokenRequest;
import com.google.android.play.core.integrity.IntegrityTokenResponse;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import q7.l;
/* compiled from: PlayIntegrityAppCheckProvider.java */
/* loaded from: classes5.dex */
public class i implements p7.a {

    /* renamed from: a  reason: collision with root package name */
    private final String f67866a;

    /* renamed from: b  reason: collision with root package name */
    private final IntegrityManager f67867b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.firebase.appcheck.internal.d f67868c;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f67869d;

    /* renamed from: e  reason: collision with root package name */
    private final Executor f67870e;

    /* renamed from: f  reason: collision with root package name */
    private final l f67871f;

    public i(@NonNull com.google.firebase.f fVar, @o7.c Executor executor, @o7.b Executor executor2) {
        this(fVar.p().d(), IntegrityManagerFactory.create(fVar.l()), new com.google.firebase.appcheck.internal.d(fVar), executor, executor2, new l());
    }

    @NonNull
    private Task<IntegrityTokenResponse> f() {
        final b bVar = new b();
        return Tasks.call(this.f67870e, new Callable() { // from class: u7.g
            @Override // java.util.concurrent.Callable
            public final Object call() {
                c g10;
                g10 = i.this.g(bVar);
                return g10;
            }
        }).onSuccessTask(this.f67869d, new SuccessContinuation() { // from class: u7.h
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                Task h10;
                h10 = i.this.h((c) obj);
                return h10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ c g(b bVar) throws Exception {
        return c.a(this.f67868c.c(bVar.a().getBytes("UTF-8"), this.f67871f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task h(c cVar) throws Exception {
        return this.f67867b.requestIntegrityToken(IntegrityTokenRequest.builder().setCloudProjectNumber(Long.parseLong(this.f67866a)).setNonce(cVar.b()).build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ q7.a i(a aVar) throws Exception {
        return this.f67868c.b(aVar.a().getBytes("UTF-8"), 3, this.f67871f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task j(IntegrityTokenResponse integrityTokenResponse) throws Exception {
        final a aVar = new a(integrityTokenResponse.token());
        return Tasks.call(this.f67870e, new Callable() { // from class: u7.f
            @Override // java.util.concurrent.Callable
            public final Object call() {
                q7.a i10;
                i10 = i.this.i(aVar);
                return i10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Task k(q7.a aVar) throws Exception {
        return Tasks.forResult(com.google.firebase.appcheck.internal.a.c(aVar));
    }

    @Override // p7.a
    @NonNull
    public Task<p7.c> getToken() {
        return f().onSuccessTask(this.f67869d, new SuccessContinuation() { // from class: u7.d
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                Task j10;
                j10 = i.this.j((IntegrityTokenResponse) obj);
                return j10;
            }
        }).onSuccessTask(this.f67869d, new SuccessContinuation() { // from class: u7.e
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                Task k10;
                k10 = i.k((q7.a) obj);
                return k10;
            }
        });
    }

    @VisibleForTesting
    i(@NonNull String str, @NonNull IntegrityManager integrityManager, @NonNull com.google.firebase.appcheck.internal.d dVar, @NonNull Executor executor, @NonNull Executor executor2, @NonNull l lVar) {
        this.f67866a = str;
        this.f67867b = integrityManager;
        this.f67868c = dVar;
        this.f67869d = executor;
        this.f67870e = executor2;
        this.f67871f = lVar;
    }
}
