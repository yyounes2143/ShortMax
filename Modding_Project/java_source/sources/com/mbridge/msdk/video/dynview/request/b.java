package com.mbridge.msdk.video.dynview.request;

import android.content.Context;
import android.os.Build;
import com.mbridge.msdk.foundation.same.net.wrapper.c;
import com.mbridge.msdk.foundation.same.net.wrapper.e;
import com.mbridge.msdk.foundation.tools.f;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.out.MBConfiguration;
import com.ss.ttm.player.MediaFormat;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.unity3d.services.ads.adunit.AdUnitActivity;
/* compiled from: MoreOfferLoadRequest.java */
/* loaded from: classes6.dex */
public class b extends c {
    public b(Context context) {
        super(context);
    }

    private void a(e eVar) {
        eVar.a("platform", "1");
        eVar.a(TTVideoEngineInterface.PLAY_API_KEY_OSVERSION, Build.VERSION.RELEASE);
        eVar.a("package_name", l0.t(this.mContext));
        eVar.a("app_version_name", l0.B(this.mContext));
        eVar.a("app_version_code", l0.A(this.mContext) + "");
        eVar.a(AdUnitActivity.EXTRA_ORIENTATION, l0.F(this.mContext) + "");
        eVar.a("model", l0.n());
        eVar.a("brand", l0.s());
        eVar.a("gaid", "");
        eVar.a("gaid2", f.c());
        int s10 = l0.s(this.mContext);
        eVar.a("network_type", s10 + "");
        eVar.a("network_str", l0.a(this.mContext, s10) + "");
        eVar.a(MediaFormat.KEY_LANGUAGE, l0.p(this.mContext));
        eVar.a("timezone", l0.w());
        eVar.a("useragent", l0.i());
        eVar.a("sdk_version", MBConfiguration.SDK_VERSION);
        com.mbridge.msdk.foundation.same.net.wrapper.f.a(eVar, this.mContext);
        com.mbridge.msdk.foundation.same.net.wrapper.f.b(eVar);
        com.mbridge.msdk.foundation.same.net.wrapper.f.j(eVar);
    }

    @Override // com.mbridge.msdk.foundation.same.net.wrapper.c
    public void addExtraParams(String str, e eVar) {
        super.addExtraParams(str, eVar);
        a(eVar);
    }
}
