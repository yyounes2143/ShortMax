package p000admanager.b;

import com.hades.aar.admanager.core.AdFormat;
import java.util.HashMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* renamed from: ad-manager.b.b  reason: invalid package */
/* loaded from: classes.dex */
public final class b extends Lambda implements Function0 {

    /* renamed from: d  reason: collision with root package name */
    public static final b f395d = new b();

    public b() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        HashMap hashMap = new HashMap();
        hashMap.put(AdFormat.APP_OPEN, 2400000L);
        hashMap.put(AdFormat.NATIVE, 2400000L);
        hashMap.put(AdFormat.INTERSTITIAL, 2400000L);
        hashMap.put(AdFormat.REWARDED_VIDEO, 2400000L);
        hashMap.put(AdFormat.MEDIA_VIDEO, 2400000L);
        hashMap.put(AdFormat.BANNER, 2400000L);
        return hashMap;
    }
}
