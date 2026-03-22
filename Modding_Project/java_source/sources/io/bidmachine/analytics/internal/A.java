package io.bidmachine.analytics.internal;

import android.content.Context;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.impressionData.ImpressionData;
import com.ironsource.mediationsdk.impressionData.ImpressionDataListener;
import io.bidmachine.analytics.internal.AbstractC3310e;
import io.bidmachine.analytics.internal.AbstractC3312g;
import io.bidmachine.analytics.internal.q0;
import java.util.Locale;
import java.util.Map;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
/* loaded from: classes7.dex */
public final class A extends AbstractC3310e {

    /* renamed from: j  reason: collision with root package name */
    public static final a f53933j = new a(null);

    /* renamed from: h  reason: collision with root package name */
    private final String f53934h = "isimp";

    /* renamed from: i  reason: collision with root package name */
    private b f53935i;

    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* loaded from: classes7.dex */
    public static final class b implements ImpressionDataListener {

        /* renamed from: a  reason: collision with root package name */
        private final InterfaceC3311f f53936a;

        public b(InterfaceC3311f interfaceC3311f) {
            this.f53936a = interfaceC3311f;
        }

        public void onImpressionSuccess(ImpressionData impressionData) {
            if (impressionData == null) {
                return;
            }
            try {
                Result.a aVar = Result.f60901b;
                JSONObject allData = impressionData.getAllData();
                if (allData != null && allData.length() > 0) {
                    this.f53936a.a(s0.a(allData));
                    Result.d(Unit.f60915a);
                    return;
                }
                this.f53936a.a(new q0("isimp", q0.a.MONITOR_NO_CONTENT, null, 4, null));
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                Result.d(kotlin.f.a(th2));
            }
        }
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3315j
    public String a() {
        return this.f53934h;
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3310e
    public AbstractC3310e.a c(Map map) {
        String obj;
        String upperCase;
        Object obj2 = map.get("adFormat");
        if (obj2 == null || (obj = obj2.toString()) == null || (upperCase = obj.toUpperCase(Locale.US)) == null) {
            return null;
        }
        int hashCode = upperCase.hashCode();
        if (hashCode != -1466654086) {
            if (hashCode != -1372958932) {
                if (hashCode != 1666382058) {
                    if (hashCode != 1951953708 || !upperCase.equals("BANNER")) {
                        return null;
                    }
                    return AbstractC3310e.a.BANNER;
                } else if (!upperCase.equals("REWARDED_VIDEO")) {
                    return null;
                } else {
                    return AbstractC3310e.a.REWARDED;
                }
            } else if (!upperCase.equals("INTERSTITIAL")) {
                return null;
            } else {
                return AbstractC3310e.a.INTERSTITIAL;
            }
        } else if (!upperCase.equals("NATIVEAD")) {
            return null;
        } else {
            return AbstractC3310e.a.NATIVE;
        }
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3315j
    public void e(Context context) {
        b bVar = this.f53935i;
        if (bVar != null) {
            IronSource.removeImpressionDataListener(bVar);
        }
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3310e, io.bidmachine.analytics.internal.AbstractC3315j
    public void f(Context context) {
        super.f(context);
        b bVar = this.f53935i;
        if (bVar != null) {
            IronSource.addImpressionDataListener(bVar);
        }
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3315j
    /* renamed from: a */
    public void b(AbstractC3312g.a aVar) {
        super.a(aVar);
        this.f53935i = new b(this);
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3310e
    public AbstractC3310e.b b(Map map) {
        String obj;
        Float a10 = a0.a(map.get("revenue"));
        if (a10 != null) {
            float floatValue = a10.floatValue();
            Object obj2 = map.get("adNetwork");
            if (obj2 != null && (obj = obj2.toString()) != null) {
                return new AbstractC3310e.b(0, floatValue, obj, 1, null);
            }
        }
        return null;
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3315j
    public void d(Context context) {
    }
}
