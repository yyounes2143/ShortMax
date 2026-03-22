package v7;

import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class q0 implements OnSuccessListener<String> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ TaskCompletionSource f68811a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q0(r rVar, TaskCompletionSource taskCompletionSource) {
        this.f68811a = taskCompletionSource;
        Objects.requireNonNull(rVar);
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final /* synthetic */ void onSuccess(String str) {
        this.f68811a.setResult(new x0().c(str).b());
    }
}
