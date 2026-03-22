package com.bytedance.sdk.openadsdk.core.dLZ;

import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import com.iab.omid.library.bytedance2.adsession.AdEvents;
import com.iab.omid.library.bytedance2.adsession.AdSession;
import com.iab.omid.library.bytedance2.adsession.AdSessionConfiguration;
import com.iab.omid.library.bytedance2.adsession.AdSessionContext;
import com.iab.omid.library.bytedance2.adsession.CreativeType;
import com.iab.omid.library.bytedance2.adsession.ImpressionType;
import com.iab.omid.library.bytedance2.adsession.Owner;
import com.iab.omid.library.bytedance2.adsession.Partner;
import com.iab.omid.library.bytedance2.adsession.VerificationScriptResource;
import com.iab.omid.library.bytedance2.adsession.media.MediaEvents;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
/* loaded from: classes3.dex */
public class so {
    @NonNull
    public static cFZ oJ(@NonNull View view, @NonNull Set<kkU> set) {
        AdSession oJ = oJ(CreativeType.VIDEO, set, Owner.NATIVE);
        return new jFA(oJ, AdEvents.createAdEvents(oJ), view, MediaEvents.createMediaEvents(oJ));
    }

    public static cFZ oJ(WebView webView) {
        Partner oJ = Pfn.oJ();
        if (oJ != null) {
            AdSession createAdSession = AdSession.createAdSession(AdSessionConfiguration.createAdSessionConfiguration(CreativeType.HTML_DISPLAY, ImpressionType.BEGIN_TO_RENDER, Owner.NATIVE, Owner.NONE, false), AdSessionContext.createHtmlAdSessionContext(oJ, webView, "", ""));
            return new cFZ(createAdSession, AdEvents.createAdEvents(createAdSession), webView);
        }
        throw new IllegalArgumentException("Parameter 'partner' may not be null.");
    }

    private static AdSession oJ(CreativeType creativeType, Set<kkU> set, Owner owner) {
        List<VerificationScriptResource> oJ = oJ(set);
        oJ.isEmpty();
        Partner oJ2 = Pfn.oJ();
        if (oJ2 == null) {
            return null;
        }
        return AdSession.createAdSession(AdSessionConfiguration.createAdSessionConfiguration(creativeType, ImpressionType.BEGIN_TO_RENDER, Owner.NATIVE, owner, false), AdSessionContext.createNativeAdSessionContext(oJ2, Pfn.ZYk(), oJ, "", ""));
    }

    private static List<VerificationScriptResource> oJ(Set<kkU> set) {
        ArrayList arrayList = new ArrayList();
        for (kkU kku : set) {
            if (!TextUtils.isEmpty(kku.oJ()) && !TextUtils.isEmpty(kku.ZYk())) {
                arrayList.add(VerificationScriptResource.createVerificationScriptResourceWithParameters(kku.oJ(), kku.tB(), kku.ZYk()));
            }
            arrayList.add(VerificationScriptResource.createVerificationScriptResourceWithoutParameters(kku.tB()));
        }
        return arrayList;
    }
}
