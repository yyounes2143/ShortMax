package c;

import com.google.android.ump.ConsentForm;
import com.google.android.ump.UserMessagingPlatform;
import kotlin.Result;
/* loaded from: classes.dex */
public final class m implements UserMessagingPlatform.OnConsentFormLoadSuccessListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ kotlinx.coroutines.e f2842a;

    public m(kotlinx.coroutines.e eVar) {
        this.f2842a = eVar;
    }

    @Override // com.google.android.ump.UserMessagingPlatform.OnConsentFormLoadSuccessListener
    public final void onConsentFormLoadSuccess(ConsentForm consentForm) {
        if (this.f2842a.isActive()) {
            kotlinx.coroutines.e eVar = this.f2842a;
            Result.a aVar = Result.f60901b;
            eVar.resumeWith(Result.d(Boolean.TRUE));
        }
    }
}
