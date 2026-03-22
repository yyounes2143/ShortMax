package com.bytedance.bdtracker;

import android.app.Activity;
import com.bytedance.applog.exposure.ViewExposureManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes3.dex */
public final class s0 extends Lambda implements Function1<Activity, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ViewExposureManager f12380a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s0(ViewExposureManager viewExposureManager) {
        super(1);
        this.f12380a = viewExposureManager;
    }

    @Override // kotlin.jvm.functions.Function1
    public Unit invoke(Activity activity) {
        Activity it = activity;
        Intrinsics.checkParameterIsNotNull(it, "it");
        ViewExposureManager.access$getTask$p(this.f12380a).f12538b.a();
        return Unit.f60915a;
    }
}
