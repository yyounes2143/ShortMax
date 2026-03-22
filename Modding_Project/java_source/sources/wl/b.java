package wl;

import android.content.Context;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.query.QueryInfo;
import com.unity3d.scar.adapter.common.scarads.UnityAdFormat;
import ol.c;
import ol.d;
import ol.e;
import ol.f;
/* compiled from: SignalsCollector.java */
/* loaded from: classes7.dex */
public class b extends e implements c {

    /* renamed from: a  reason: collision with root package name */
    private ul.a f69937a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SignalsCollector.java */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f69938a;

        static {
            int[] iArr = new int[UnityAdFormat.values().length];
            f69938a = iArr;
            try {
                iArr[UnityAdFormat.BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f69938a[UnityAdFormat.REWARDED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public b(ul.a aVar) {
        this.f69937a = aVar;
    }

    @Override // ol.c
    public void d(Context context, UnityAdFormat unityAdFormat, com.unity3d.scar.adapter.common.a aVar, f fVar) {
        e(context, f(unityAdFormat), unityAdFormat, aVar, fVar);
    }

    @Override // ol.c
    public void e(Context context, String str, UnityAdFormat unityAdFormat, com.unity3d.scar.adapter.common.a aVar, f fVar) {
        QueryInfo.generate(context, g(unityAdFormat), this.f69937a.a(), new wl.a(str, new d(aVar, fVar)));
    }

    public AdFormat g(UnityAdFormat unityAdFormat) {
        int i10 = a.f69938a[unityAdFormat.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                return AdFormat.INTERSTITIAL;
            }
            return AdFormat.REWARDED;
        }
        return AdFormat.BANNER;
    }
}
