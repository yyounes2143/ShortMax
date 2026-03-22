package v7;

import android.app.Activity;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.FirebaseAuth;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class h0 implements OnFailureListener {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ FirebaseAuth f68768a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ String f68769b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ Activity f68770c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ boolean f68771d;

    /* renamed from: e  reason: collision with root package name */
    private final /* synthetic */ boolean f68772e;

    /* renamed from: f  reason: collision with root package name */
    private final /* synthetic */ n0 f68773f;

    /* renamed from: g  reason: collision with root package name */
    private final /* synthetic */ TaskCompletionSource f68774g;

    /* renamed from: h  reason: collision with root package name */
    private final /* synthetic */ r f68775h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h0(r rVar, FirebaseAuth firebaseAuth, String str, Activity activity, boolean z10, boolean z11, n0 n0Var, TaskCompletionSource taskCompletionSource) {
        this.f68768a = firebaseAuth;
        this.f68769b = str;
        this.f68770c = activity;
        this.f68771d = z10;
        this.f68772e = z11;
        this.f68773f = n0Var;
        this.f68774g = taskCompletionSource;
        Objects.requireNonNull(rVar);
        this.f68775h = rVar;
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(@NonNull Exception exc) {
        String str;
        str = r.f68812b;
        String message = exc.getMessage();
        Log.e(str, "Failed to get reCAPTCHA enterprise token: " + message + "\n\n Using fallback methods.");
        if (this.f68768a.E().d("PHONE_PROVIDER")) {
            this.f68775h.c(this.f68768a, this.f68769b, this.f68770c, this.f68771d, this.f68772e, this.f68773f, this.f68774g);
        } else {
            this.f68774g.setResult(new x0().b());
        }
    }
}
