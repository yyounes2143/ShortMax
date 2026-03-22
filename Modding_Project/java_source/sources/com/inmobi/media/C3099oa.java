package com.inmobi.media;

import androidx.core.app.NotificationCompat;
import com.iab.omid.library.inmobi.adsession.Partner;
import com.inmobi.commons.core.configs.AdConfig;
import kotlin.text.StringsKt;
/* renamed from: com.inmobi.media.oa  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3099oa extends AbstractC3083na {

    /* renamed from: b  reason: collision with root package name */
    public Partner f25122b = Partner.createPartner("Inmobi", "a" + StringsKt.P("10.8.7", ".", "", false, 4, null));

    public final void a(AdConfig adConfig) {
        AdConfig.OmidConfig omidConfig;
        if (adConfig != null) {
            try {
                AdConfig.ViewabilityConfig viewability = adConfig.getViewability();
                if (viewability != null) {
                    omidConfig = viewability.getOmidConfig();
                    if (omidConfig == null) {
                    }
                    String partnerKey = omidConfig.getPartnerKey();
                    this.f25122b = Partner.createPartner(partnerKey, "a" + StringsKt.P("10.8.7", ".", "", false, 4, null));
                    AbstractC3003ia.a(omidConfig);
                }
            } catch (Exception e10) {
                S5 s52 = S5.f24132a;
                S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
                return;
            }
        }
        omidConfig = new AdConfig.OmidConfig();
        String partnerKey2 = omidConfig.getPartnerKey();
        this.f25122b = Partner.createPartner(partnerKey2, "a" + StringsKt.P("10.8.7", ".", "", false, 4, null));
        AbstractC3003ia.a(omidConfig);
    }
}
