package com.mbridge.msdk.dycreator.binding;

import android.text.TextUtils;
import android.view.View;
import com.mbridge.msdk.dycreator.baseview.MBCountDownView;
import com.mbridge.msdk.dycreator.baseview.MBLinearLayout;
import com.mbridge.msdk.dycreator.baseview.MBRelativeLayout;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.binding.base.BaseStrategy;
import com.mbridge.msdk.dycreator.bridge.MBSplashData;
import com.mbridge.msdk.dycreator.utils.d;
/* compiled from: BindViewClickListener.java */
/* loaded from: classes5.dex */
public class a implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private com.mbridge.msdk.dycreator.viewdata.base.a f26420a;

    public a(com.mbridge.msdk.dycreator.viewdata.base.a aVar) {
        this.f26420a = aVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        BaseStrategy a10;
        com.mbridge.msdk.dycreator.viewdata.base.a aVar;
        if (view != null && (view instanceof InterBase)) {
            if ((view instanceof MBCountDownView) && (aVar = this.f26420a) != null && aVar.getEffectData() != null && !this.f26420a.getEffectData().isCanSkip()) {
                return;
            }
            com.mbridge.msdk.dycreator.viewdata.base.a aVar2 = this.f26420a;
            if (aVar2 != null && (view instanceof MBRelativeLayout) && d.a(view, aVar2)) {
                com.mbridge.msdk.dycreator.viewdata.base.a aVar3 = this.f26420a;
                if (aVar3 instanceof MBSplashData) {
                    MBRelativeLayout mBRelativeLayout = (MBRelativeLayout) view;
                    ((MBSplashData) aVar3).setxInScreen(mBRelativeLayout.getxInScreen());
                    ((MBSplashData) this.f26420a).setyInScreen(mBRelativeLayout.getyInScreen());
                    ((MBSplashData) this.f26420a).setClickType(1);
                }
            }
            com.mbridge.msdk.dycreator.viewdata.base.a aVar4 = this.f26420a;
            if (aVar4 != null && (view instanceof MBLinearLayout) && d.a(view, aVar4)) {
                com.mbridge.msdk.dycreator.viewdata.base.a aVar5 = this.f26420a;
                if (aVar5 instanceof MBSplashData) {
                    MBLinearLayout mBLinearLayout = (MBLinearLayout) view;
                    ((MBSplashData) aVar5).setxInScreen(mBLinearLayout.getxInScreen());
                    ((MBSplashData) this.f26420a).setyInScreen(mBLinearLayout.getyInScreen());
                    ((MBSplashData) this.f26420a).setClickType(0);
                }
            }
            String strategyDes = ((InterBase) view).getStrategyDes();
            if (!TextUtils.isEmpty(strategyDes) && (a10 = c.a().a(strategyDes)) != null) {
                a10.bindClickData(view, this.f26420a);
            }
        }
    }
}
