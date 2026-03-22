package com.google.android.play.core.review;

import com.ss.texturerender.effect.GLDefaultFilter;
import io.bidmachine.Framework;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
/* compiled from: com.google.android.play:review@@2.0.2 */
/* loaded from: classes5.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private static final Map f19967a;

    static {
        new HashSet(Arrays.asList("native", Framework.UNITY));
        f19967a = new HashMap();
        new f7.i("PlayCoreVersion");
    }

    public static synchronized Map a() {
        Map map;
        synchronized (j.class) {
            map = f19967a;
            map.put("java", Integer.valueOf((int) GLDefaultFilter.OPTION_FILTER_INT_PORT_HEIGHT));
        }
        return map;
    }
}
