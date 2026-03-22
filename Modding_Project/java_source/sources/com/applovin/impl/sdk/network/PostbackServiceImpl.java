package com.applovin.impl.sdk.network;

import androidx.core.app.NotificationCompat;
import com.applovin.impl.b6;
import com.applovin.impl.g5;
import com.applovin.impl.o5;
import com.applovin.impl.sdk.EventServiceImpl;
import com.applovin.impl.sdk.k;
import com.applovin.sdk.AppLovinPostbackListener;
import com.applovin.sdk.AppLovinPostbackService;
import java.util.Map;
/* loaded from: classes2.dex */
public class PostbackServiceImpl implements AppLovinPostbackService {

    /* renamed from: a  reason: collision with root package name */
    private final k f9853a;

    public PostbackServiceImpl(k kVar) {
        this.f9853a = kVar;
    }

    private boolean a(e eVar) {
        Map i10 = eVar.i();
        if (i10 == null) {
            return false;
        }
        Object obj = i10.get(NotificationCompat.CATEGORY_EVENT);
        if ("postinstall".equals(obj)) {
            obj = i10.get("sub_event");
        }
        return EventServiceImpl.ALLOW_PRE_INIT_EVENT_TYPES.contains(obj);
    }

    @Override // com.applovin.sdk.AppLovinPostbackService
    public void dispatchPostbackAsync(String str, AppLovinPostbackListener appLovinPostbackListener) {
        dispatchPostbackRequest(e.b(this.f9853a).b(str).a(false).a(), appLovinPostbackListener);
    }

    public void dispatchPostbackRequest(e eVar, AppLovinPostbackListener appLovinPostbackListener) {
        dispatchPostbackRequest(eVar, b6.b.OTHER, appLovinPostbackListener);
    }

    public String toString() {
        return "PostbackService{}";
    }

    public void dispatchPostbackRequest(e eVar, b6.b bVar, AppLovinPostbackListener appLovinPostbackListener) {
        o5 o5Var = new o5(eVar, bVar, this.f9853a, appLovinPostbackListener);
        o5Var.a(a(eVar));
        this.f9853a.r0().a((g5) o5Var, bVar);
    }
}
