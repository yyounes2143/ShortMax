package com.bytedance.bdtracker;

import android.app.Activity;
import android.view.View;
import com.bytedance.applog.exposure.ViewExposureManager;
import java.util.Map;
import java.util.WeakHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes3.dex */
public final class t0 extends Lambda implements Function1<Activity, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ViewExposureManager f12394a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t0(ViewExposureManager viewExposureManager) {
        super(1);
        this.f12394a = viewExposureManager;
    }

    @Override // kotlin.jvm.functions.Function1
    public Unit invoke(Activity activity) {
        WeakHashMap<View, r0> weakHashMap;
        Activity activity2 = activity;
        if (activity2 != null && (weakHashMap = this.f12394a.getActivitiesMap$agent_liteGlobalRelease().get(activity2)) != null) {
            Intrinsics.checkExpressionValueIsNotNull(weakHashMap, "activitiesMap[activity] …erActivityStoppedCallback");
            for (Map.Entry<View, r0> entry : weakHashMap.entrySet()) {
                entry.getValue().f12356b = false;
            }
        }
        return Unit.f60915a;
    }
}
