package p000admanager.d;

import com.google.android.gms.ads.AdView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import ga.a;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* renamed from: ad-manager.d.o0  reason: invalid package */
/* loaded from: classes.dex */
public final class o0 extends Lambda implements Function1 {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ AdView f483d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o0(AdView adView) {
        super(1);
        this.f483d = adView;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        if (((Boolean) obj).booleanValue()) {
            a.f52235a.d("AdManagerAdmobShower", CampaignEx.JSON_NATIVE_VIDEO_RESUME);
            this.f483d.resume();
        } else {
            a.f52235a.d("AdManagerAdmobShower", CampaignEx.JSON_NATIVE_VIDEO_PAUSE);
            this.f483d.pause();
        }
        return Unit.f60915a;
    }
}
