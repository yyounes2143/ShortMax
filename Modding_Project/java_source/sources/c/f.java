package c;

import android.app.Activity;
import com.google.android.ump.ConsentForm;
import com.google.android.ump.ConsentInformation;
import com.google.android.ump.FormError;
import com.google.android.ump.UserMessagingPlatform;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public final class f implements ConsentForm.OnConsentFormDismissedListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Activity f2833a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ kotlinx.coroutines.e f2834b;

    public f(Activity activity, kotlinx.coroutines.e eVar) {
        this.f2833a = activity;
        this.f2834b = eVar;
    }

    @Override // com.google.android.ump.ConsentForm.OnConsentFormDismissedListener
    public final void onConsentFormDismissed(FormError formError) {
        String t10;
        ConsentInformation c10 = UserMessagingPlatform.getConsentInformation(this.f2833a);
        ca.i iVar = ca.i.f3408a;
        Intrinsics.checkNotNullExpressionValue(c10, "c");
        iVar.C(c10);
        if (formError != null) {
            StringBuilder sb2 = new StringBuilder("showPrivacyOptionsForm failed -> ");
            t10 = iVar.t(c10, formError);
            sb2.append(t10);
            iVar.m(sb2.toString());
            if (this.f2834b.isActive()) {
                kotlinx.coroutines.e eVar = this.f2834b;
                Result.a aVar = Result.f60901b;
                eVar.resumeWith(Result.d(Boolean.FALSE));
                return;
            }
            return;
        }
        iVar.o("showPrivacyOptionsForm succeed -> " + ca.i.u(iVar, c10, null, 2, null));
        if (this.f2834b.isActive()) {
            kotlinx.coroutines.e eVar2 = this.f2834b;
            Result.a aVar2 = Result.f60901b;
            eVar2.resumeWith(Result.d(Boolean.TRUE));
        }
    }
}
