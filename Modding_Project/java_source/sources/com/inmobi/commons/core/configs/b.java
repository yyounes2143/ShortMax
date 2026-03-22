package com.inmobi.commons.core.configs;

import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.media.C3127q6;
import com.inmobi.media.C3128q7;
import com.inmobi.media.C3167t;
import com.inmobi.media.C3183u;
import com.inmobi.media.C3199v;
import com.inmobi.media.Dc;
import com.inmobi.media.Ec;
import com.inmobi.media.U6;
/* loaded from: classes5.dex */
public final class b {
    public static C3127q6 a() {
        return new C3127q6().a(new Ec("cache", AdConfig.class), (Dc) new C3128q7(new a(), AdConfig.CacheConfig.class)).a(new Ec("allowedContentType", AdConfig.VastVideoConfig.class), (Dc) new U6(new C3167t(), String.class)).a(new Ec("gestures", AdConfig.RenderingConfig.class), (Dc) new U6(new C3183u(), Integer.TYPE)).a(new Ec("skipFields", AdConfig.ContextualDataConfig.class), (Dc) new U6(new C3199v(), String.class));
    }
}
