package com.bytedance.sdk.openadsdk.oJ.ZYk;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.activity.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGMediaView;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdInteractionCallback;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdInteractionListener;
import com.bytedance.sdk.openadsdk.core.eZI;
import com.bytedance.sdk.openadsdk.core.jFA;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.core.tB.cFZ;
import com.bytedance.sdk.openadsdk.jr.ZYk.Pfn;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.Xe;
import com.bytedance.sdk.openadsdk.utils.nke;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class so extends PAGNativeAd {
    protected int Pfn;
    protected final cY ZYk;

    /* renamed from: ba  reason: collision with root package name */
    protected int f13379ba;
    protected String cFZ;
    protected oJ ex;
    private boolean jFA;
    protected eZI oJ;

    /* renamed from: so  reason: collision with root package name */
    private boolean f13380so;
    protected final Context tB;

    public so(@NonNull Context context, @NonNull cY cYVar, int i10, boolean z10) {
        this.ZYk = cYVar;
        this.tB = context;
        this.Pfn = i10;
        this.f13379ba = cYVar.uv();
        String tB = HyG.tB(i10);
        this.cFZ = tB;
        if (z10) {
            this.ex = new oJ(context, cYVar, tB);
            this.oJ = new eZI(context, this, cYVar, oJ(i10), this.ex);
        }
    }

    private List<View> oJ(List<View> list, List<View> list2) {
        LinkedList linkedList = new LinkedList();
        if (list != null && !list.isEmpty()) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                linkedList.add(list.get(i10));
            }
        }
        if (list2 != null && !list2.isEmpty()) {
            int size2 = list2.size();
            for (int i11 = 0; i11 < size2; i11++) {
                linkedList.add(list2.get(i11));
            }
        }
        return linkedList;
    }

    protected boolean cFZ() {
        cY cYVar = this.ZYk;
        if (cYVar == null || cYVar.sQ() == 5 || si.ex().tB(this.f13379ba) != 1) {
            return false;
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PangleAd
    public Object getExtraInfo(String str) {
        cY cYVar = this.ZYk;
        if (cYVar != null && cYVar.Zwf() != null) {
            try {
                return this.ZYk.Zwf().get(str);
            } catch (Throwable th2) {
                QSm.tB("TTNativeAdImpl", th2.getMessage());
                return null;
            }
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PangleAd
    public Map<String, Object> getMediaExtraInfo() {
        cY cYVar = this.ZYk;
        if (cYVar != null) {
            return cYVar.Zwf();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd
    public PAGNativeAdData getNativeAdData() {
        return new ex(so());
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGClientBidding
    public void loss(Double d10, String str, String str2) {
        if (!this.jFA) {
            nke.oJ(this.ZYk, d10, str, str2);
            this.jFA = true;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd
    public void registerViewForInteraction(@NonNull ViewGroup viewGroup, @NonNull List<View> list, @Nullable List<View> list2, @Nullable View view, PAGNativeAdInteractionListener pAGNativeAdInteractionListener) {
        if (viewGroup == null || list == null || list.size() <= 0) {
            return;
        }
        oJ(viewGroup, null, list, list2, view, new cFZ(pAGNativeAdInteractionListener));
    }

    public oJ so() {
        return this.ex;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGClientBidding
    public void win(Double d10) {
        if (!this.f13380so) {
            nke.oJ(this.ZYk, d10);
            this.f13380so = true;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd
    public void registerViewForInteraction(@NonNull ViewGroup viewGroup, @NonNull List<View> list, @Nullable List<View> list2, @Nullable View view, PAGNativeAdInteractionCallback pAGNativeAdInteractionCallback) {
        registerViewForInteraction(viewGroup, list, list2, view, (PAGNativeAdInteractionListener) pAGNativeAdInteractionCallback);
    }

    private String oJ(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                return "embeded_ad";
            }
            return "interaction";
        }
        return "banner_ad";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void oJ(String str) {
        this.cFZ = str;
    }

    public void oJ(@NonNull ViewGroup viewGroup, @NonNull List<View> list, @NonNull List<View> list2, @Nullable List<View> list3, @Nullable View view, final ba baVar) {
        if (viewGroup == null || list2 == null || list2.size() <= 0) {
            return;
        }
        if (cFZ()) {
            list3 = oJ(list2, list3);
        }
        List<View> list4 = list3;
        if (view != null && baVar != null && baVar.ZYk()) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.oJ.ZYk.so.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    final String oJ = Xe.oJ();
                    TTDelegateActivity.oJ(so.this.ZYk, oJ, new cFZ.oJ() { // from class: com.bytedance.sdk.openadsdk.oJ.ZYk.so.1.1
                        @Override // com.bytedance.sdk.openadsdk.core.tB.cFZ.oJ
                        public void oJ() {
                            baVar.oJ();
                            jFA.ZYk().ba(oJ);
                            PAGMediaView oJ2 = so.this.so().oJ();
                            if (oJ2 != null) {
                                oJ2.close();
                            }
                        }
                    });
                }
            });
        }
        this.oJ.oJ(viewGroup, list, list2, list4, view, baVar);
        cY cYVar = this.ZYk;
        com.bytedance.sdk.openadsdk.jr.ZYk.Pfn.oJ(viewGroup, this.ZYk, (cYVar == null || cYVar.oIC() != 2) ? null : new Pfn.oJ(this.ZYk.uvK()));
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd
    public void showPrivacyActivity() {
    }
}
