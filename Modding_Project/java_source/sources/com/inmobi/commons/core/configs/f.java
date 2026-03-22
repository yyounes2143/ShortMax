package com.inmobi.commons.core.configs;

import com.inmobi.commons.core.configs.SignalsConfig;
import com.inmobi.media.C2925dd;
import com.inmobi.media.C2942ed;
import com.inmobi.media.C2958fd;
import com.inmobi.media.C2974gd;
import com.inmobi.media.C2990hd;
import com.inmobi.media.C3127q6;
import com.inmobi.media.C3128q7;
import com.inmobi.media.Dc;
import com.inmobi.media.Ec;
import com.inmobi.media.U6;
/* loaded from: classes5.dex */
public final class f {
    public static C3127q6 a() {
        return new C3127q6().a(new Ec("carrierNames", SignalsConfig.NovatiqConfig.class), (Dc) new U6(new C2925dd(), String.class)).a(new Ec("control", SignalsConfig.SessionConfig.class), (Dc) new U6(new C2942ed(), Integer.TYPE)).a(new Ec("generalKeys", SignalsConfig.PublisherConfig.class), (Dc) new C3128q7(new C2958fd(), String.class)).a(new Ec("adSpecificKeys", SignalsConfig.PublisherConfig.class), (Dc) new C3128q7(new C2974gd(), String.class)).a(new Ec("versionList", SignalsConfig.Purchases.class), (Dc) new U6(new C2990hd(), String.class));
    }
}
