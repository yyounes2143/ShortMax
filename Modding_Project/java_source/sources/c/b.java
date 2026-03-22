package c;

import com.google.android.ump.ConsentInformation;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public final class b implements ConsentInformation.OnConsentInfoUpdateSuccessListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ConsentInformation f2825a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ long f2826b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ kotlinx.coroutines.e f2827c;

    public b(ConsentInformation consentInformation, long j10, kotlinx.coroutines.e eVar) {
        this.f2825a = consentInformation;
        this.f2826b = j10;
        this.f2827c = eVar;
    }

    @Override // com.google.android.ump.ConsentInformation.OnConsentInfoUpdateSuccessListener
    public final void onConsentInfoUpdateSuccess() {
        kt.e eVar = ca.i.f3411d;
        Boolean bool = Boolean.TRUE;
        eVar.setValue(bool);
        ca.i iVar = ca.i.f3408a;
        ConsentInformation consentInfo = this.f2825a;
        Intrinsics.checkNotNullExpressionValue(consentInfo, "consentInfo");
        iVar.C(consentInfo);
        StringBuilder sb2 = new StringBuilder("requestConsentInfoUpdate succeed -> ");
        ConsentInformation consentInfo2 = this.f2825a;
        Intrinsics.checkNotNullExpressionValue(consentInfo2, "consentInfo");
        sb2.append(ca.i.u(iVar, consentInfo2, null, 2, null));
        sb2.append(", cost=");
        sb2.append(System.currentTimeMillis() - this.f2826b);
        sb2.append("ms");
        iVar.o(sb2.toString());
        if (this.f2827c.isActive()) {
            this.f2827c.resumeWith(Result.d(bool));
        }
    }
}
