package c;

import com.google.android.ump.FormError;
import com.google.android.ump.UserMessagingPlatform;
import kotlin.Result;
/* loaded from: classes.dex */
public final class n implements UserMessagingPlatform.OnConsentFormLoadFailureListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ kotlinx.coroutines.e f2843a;

    public n(kotlinx.coroutines.e eVar) {
        this.f2843a = eVar;
    }

    @Override // com.google.android.ump.UserMessagingPlatform.OnConsentFormLoadFailureListener
    public final void onConsentFormLoadFailure(FormError formError) {
        if (this.f2843a.isActive()) {
            kotlinx.coroutines.e eVar = this.f2843a;
            Result.a aVar = Result.f60901b;
            eVar.resumeWith(Result.d(Boolean.FALSE));
        }
    }
}
