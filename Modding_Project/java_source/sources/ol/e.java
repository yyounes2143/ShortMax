package ol;

import android.content.Context;
import com.unity3d.scar.adapter.common.scarads.UnityAdFormat;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: SignalsCollectorBase.java */
/* loaded from: classes7.dex */
public abstract class e implements c {

    /* compiled from: SignalsCollectorBase.java */
    /* loaded from: classes7.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f64270a;

        static {
            int[] iArr = new int[UnityAdFormat.values().length];
            f64270a = iArr;
            try {
                iArr[UnityAdFormat.BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f64270a[UnityAdFormat.INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f64270a[UnityAdFormat.REWARDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* compiled from: SignalsCollectorBase.java */
    /* loaded from: classes7.dex */
    private class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private ol.b f64271a;

        /* renamed from: b  reason: collision with root package name */
        private f f64272b;

        public b(ol.b bVar, f fVar) {
            this.f64271a = bVar;
            this.f64272b = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            Map<String, String> c10 = this.f64272b.c();
            if (c10.size() > 0) {
                this.f64271a.onSignalsCollected(new JSONObject(c10).toString());
            } else if (this.f64272b.b() == null) {
                this.f64271a.onSignalsCollected("");
            } else {
                this.f64271a.onSignalsCollectionFailed(this.f64272b.b());
            }
        }
    }

    @Override // ol.c
    public void a(Context context, String str, UnityAdFormat unityAdFormat, ol.b bVar) {
        com.unity3d.scar.adapter.common.a aVar = new com.unity3d.scar.adapter.common.a();
        f fVar = new f();
        aVar.a();
        e(context, str, unityAdFormat, aVar, fVar);
        aVar.c(new b(bVar, fVar));
    }

    @Override // ol.c
    public void b(Context context, boolean z10, ol.b bVar) {
        com.unity3d.scar.adapter.common.a aVar = new com.unity3d.scar.adapter.common.a();
        f fVar = new f();
        aVar.a();
        d(context, UnityAdFormat.INTERSTITIAL, aVar, fVar);
        aVar.a();
        d(context, UnityAdFormat.REWARDED, aVar, fVar);
        if (z10) {
            aVar.a();
            d(context, UnityAdFormat.BANNER, aVar, fVar);
        }
        aVar.c(new b(bVar, fVar));
    }

    @Override // ol.c
    public void c(Context context, List<UnityAdFormat> list, ol.b bVar) {
        com.unity3d.scar.adapter.common.a aVar = new com.unity3d.scar.adapter.common.a();
        f fVar = new f();
        for (UnityAdFormat unityAdFormat : list) {
            aVar.a();
            d(context, unityAdFormat, aVar, fVar);
        }
        aVar.c(new b(bVar, fVar));
    }

    public String f(UnityAdFormat unityAdFormat) {
        int i10 = a.f64270a[unityAdFormat.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return "";
                }
                return "gmaScarBiddingRewardedSignal";
            }
            return "gmaScarBiddingInterstitialSignal";
        }
        return "gmaScarBiddingBannerSignal";
    }
}
