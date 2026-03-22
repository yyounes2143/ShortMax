package sl;

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
    private ql.a f66379a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SignalsCollector.java */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f66380a;

        static {
            int[] iArr = new int[UnityAdFormat.values().length];
            f66380a = iArr;
            try {
                iArr[UnityAdFormat.BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f66380a[UnityAdFormat.INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f66380a[UnityAdFormat.REWARDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public b(ql.a aVar) {
        this.f66379a = aVar;
    }

    @Override // ol.c
    public void d(Context context, UnityAdFormat unityAdFormat, com.unity3d.scar.adapter.common.a aVar, f fVar) {
        e(context, f(unityAdFormat), unityAdFormat, aVar, fVar);
    }

    @Override // ol.c
    public void e(Context context, String str, UnityAdFormat unityAdFormat, com.unity3d.scar.adapter.common.a aVar, f fVar) {
        QueryInfo.generate(context, g(unityAdFormat), this.f66379a.a(), new sl.a(str, new d(aVar, fVar)));
    }

    public AdFormat g(UnityAdFormat unityAdFormat) {
        int i10 = a.f66380a[unityAdFormat.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return AdFormat.UNKNOWN;
                }
                return AdFormat.REWARDED;
            }
            return AdFormat.INTERSTITIAL;
        }
        return AdFormat.BANNER;
    }
}
