package v7;

import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
final class r0 implements OnSuccessListener<String> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ TaskCompletionSource f68815a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r0(r rVar, TaskCompletionSource taskCompletionSource) {
        this.f68815a = taskCompletionSource;
        Objects.requireNonNull(rVar);
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final /* synthetic */ void onSuccess(String str) {
        this.f68815a.setResult(new x0().d(str).b());
    }
}
