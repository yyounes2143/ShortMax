package p000admanager.e;

import android.content.Context;
import ca.d;
import ca.e;
import com.applovin.mediation.ads.MaxRewardedAd;
import com.hades.aar.admanager.core.AdFormat;
import fa.c;
import ga.a;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* renamed from: ad-manager.e.i  reason: invalid package */
/* loaded from: classes.dex */
public final class i extends Lambda implements Function0 {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ c f526d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ e f527e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ String f528f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(c cVar, e eVar, String str) {
        super(0);
        this.f526d = cVar;
        this.f527e = eVar;
        this.f528f = str;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Context context;
        if (c.W(this.f526d, this.f527e)) {
            if (this.f526d.w(AdFormat.REWARDED_VIDEO)) {
                a.f52235a.d(this.f526d.T(this.f527e), "Block RewardedAd -> Already Showing");
            } else {
                String e10 = this.f527e.e();
                context = this.f526d.f51690m;
                MaxRewardedAd maxRewardedAd = MaxRewardedAd.getInstance(e10, context);
                c cVar = this.f526d;
                String str = this.f528f;
                e eVar = this.f527e;
                d p10 = cVar.p(str);
                if (p10 != null) {
                    f.e eVar2 = new f.e(cVar, str, p10, maxRewardedAd, eVar);
                    Intrinsics.checkNotNullExpressionValue(maxRewardedAd, "this");
                    eVar2.f(maxRewardedAd);
                }
                maxRewardedAd.loadAd();
            }
        }
        return Unit.f60915a;
    }
}
