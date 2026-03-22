package v7;

import android.util.Base64;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.p003firebaseauthapi.zzahr;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.android.play.core.integrity.IntegrityManager;
import com.google.android.play.core.integrity.IntegrityTokenRequest;
import com.google.android.play.core.integrity.IntegrityTokenResponse;
import java.security.MessageDigest;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class p0 implements Continuation<zzahr, Task<IntegrityTokenResponse>> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ String f68805a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ IntegrityManager f68806b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ r f68807c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p0(r rVar, String str, IntegrityManager integrityManager) {
        this.f68805a = str;
        this.f68806b = integrityManager;
        Objects.requireNonNull(rVar);
        this.f68807c = rVar;
    }

    @Override // com.google.android.gms.tasks.Continuation
    @Nullable
    public final /* synthetic */ Task<IntegrityTokenResponse> then(Task<zzahr> task) throws Exception {
        String str;
        if (!task.isSuccessful()) {
            str = r.f68812b;
            String message = task.getException().getMessage();
            Log.e(str, "Problem retrieving Play Integrity producer project:  " + message);
            return Tasks.forException(task.getException());
        }
        this.f68807c.f68814a = task.getResult().zza();
        return this.f68806b.requestIntegrityToken(IntegrityTokenRequest.builder().setCloudProjectNumber(Long.parseLong(task.getResult().zza())).setNonce(new String(Base64.encode(MessageDigest.getInstance("SHA-256").digest(this.f68805a.getBytes("UTF-8")), 11))).build());
    }
}
