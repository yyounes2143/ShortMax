package com.bytedance.bdtracker;

import android.os.Handler;
import com.bytedance.applog.aggregation.Metrics;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes3.dex */
public final class l2 extends Lambda implements Function1<List<? extends Metrics>, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ m2 f12197a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l2(m2 m2Var) {
        super(1);
        this.f12197a = m2Var;
    }

    @Override // kotlin.jvm.functions.Function1
    public Unit invoke(List<? extends Metrics> list) {
        e0 e0Var;
        e0 e0Var2;
        List<? extends Metrics> list2 = list;
        Intrinsics.checkParameterIsNotNull(list2, "list");
        ArrayList arrayList = new ArrayList();
        for (Metrics metrics : list2) {
            i4 i4Var = new i4();
            e0Var = this.f12197a.f12213c;
            j0 j0Var = e0Var.f11965n;
            e0Var2 = this.f12197a.f12213c;
            j0Var.a(e0Var2.f11955d, i4Var);
            i4Var.f12458o = metrics.toParams();
            arrayList.add(i4Var);
        }
        Handler handler = this.f12197a.f12211a;
        handler.sendMessage(handler.obtainMessage(1, arrayList));
        this.f12197a.f12211a.sendEmptyMessage(2);
        return Unit.f60915a;
    }
}
