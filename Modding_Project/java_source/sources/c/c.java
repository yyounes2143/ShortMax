package c;

import com.google.android.ump.ConsentInformation;
import com.google.android.ump.FormError;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public final class c implements ConsentInformation.OnConsentInfoUpdateFailureListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ConsentInformation f2828a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ long f2829b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ kotlinx.coroutines.e f2830c;

    public c(ConsentInformation consentInformation, long j10, kotlinx.coroutines.e eVar) {
        this.f2828a = consentInformation;
        this.f2829b = j10;
        this.f2830c = eVar;
    }

    @Override // com.google.android.ump.ConsentInformation.OnConsentInfoUpdateFailureListener
    public final void onConsentInfoUpdateFailure(FormError formError) {
        String t10;
        ca.i iVar = ca.i.f3408a;
        StringBuilder sb2 = new StringBuilder("requestConsentInfoUpdate failed -> ");
        ConsentInformation consentInfo = this.f2828a;
        Intrinsics.checkNotNullExpressionValue(consentInfo, "consentInfo");
        t10 = iVar.t(consentInfo, formError);
        sb2.append(t10);
        sb2.append(", cost=");
        sb2.append(System.currentTimeMillis() - this.f2829b);
        sb2.append("ms");
        iVar.m(sb2.toString());
        if (this.f2830c.isActive()) {
            kotlinx.coroutines.e eVar = this.f2830c;
            Result.a aVar = Result.f60901b;
            eVar.resumeWith(Result.d(Boolean.FALSE));
        }
    }
}
