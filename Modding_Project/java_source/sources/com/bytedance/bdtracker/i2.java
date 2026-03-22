package com.bytedance.bdtracker;

import android.content.Context;
import android.os.Looper;
import com.bytedance.applog.aggregation.IAggregation;
import com.bytedance.applog.aggregation.IAggregationFlushCallback;
import com.bytedance.applog.aggregation.IMetricsTracker;
import com.bytedance.applog.aggregation.Metrics;
import com.bytedance.applog.aggregation.MetricsSQLiteCache;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes3.dex */
public final class i2 {

    /* renamed from: c  reason: collision with root package name */
    public static final /* synthetic */ KProperty[] f12053c = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(i2.class), "aggregation", "getAggregation()Lcom/bytedance/applog/aggregation/IAggregation;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(i2.class), "trackMap", "getTrackMap()Ljava/util/Map;"))};

    /* renamed from: a  reason: collision with root package name */
    public final ms.i f12054a;

    /* renamed from: b  reason: collision with root package name */
    public final ms.i f12055b;

    /* loaded from: classes3.dex */
    public static final class a extends Lambda implements Function0<IAggregation> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ String f12056a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ Context f12057b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ Looper f12058c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, Context context, Looper looper) {
            super(0);
            this.f12056a = str;
            this.f12057b = context;
            this.f12058c = looper;
        }

        @Override // kotlin.jvm.functions.Function0
        public IAggregation invoke() {
            StringBuilder a10 = com.bytedance.bdtracker.a.a("applog-aggregation-");
            a10.append(this.f12056a);
            return IAggregation.Companion.newInstance(new MetricsSQLiteCache(this.f12057b, a10.toString()), this.f12058c);
        }
    }

    /* loaded from: classes3.dex */
    public static final class b implements IAggregationFlushCallback {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Function1 f12059a;

        public b(Function1 function1) {
            this.f12059a = function1;
        }

        @Override // com.bytedance.applog.aggregation.IAggregationFlushCallback
        public void onFinish(@NotNull List<Metrics> metrics) {
            Intrinsics.checkParameterIsNotNull(metrics, "metrics");
            this.f12059a.invoke(metrics);
        }
    }

    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function0<Map<String, IMetricsTracker>> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f12060a = new c();

        public c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Map<String, IMetricsTracker> invoke() {
            return new LinkedHashMap();
        }
    }

    public i2(@NotNull Looper looper, @NotNull String appId, @NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(looper, "looper");
        Intrinsics.checkParameterIsNotNull(appId, "appId");
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.f12054a = kotlin.c.b(new a(appId, context, looper));
        this.f12055b = kotlin.c.b(c.f12060a);
    }

    public final void a(@NotNull Function1<? super List<Metrics>, Unit> callback) {
        Intrinsics.checkParameterIsNotNull(callback, "callback");
        ms.i iVar = this.f12054a;
        KProperty kProperty = f12053c[0];
        ((IAggregation) iVar.getValue()).flush(new b(callback));
    }

    @NotNull
    public final IMetricsTracker a(@NotNull p2 data) {
        Intrinsics.checkParameterIsNotNull(data, "data");
        ms.i iVar = this.f12055b;
        KProperty[] kPropertyArr = f12053c;
        KProperty kProperty = kPropertyArr[1];
        IMetricsTracker iMetricsTracker = (IMetricsTracker) ((Map) iVar.getValue()).get(Intrinsics.stringPlus(Reflection.getOrCreateKotlinClass(data.getClass()).getSimpleName(), data.a()));
        if (iMetricsTracker != null) {
            return iMetricsTracker;
        }
        ms.i iVar2 = this.f12054a;
        KProperty kProperty2 = kPropertyArr[0];
        String simpleName = data.getClass().getSimpleName();
        Intrinsics.checkExpressionValueIsNotNull(simpleName, "data::class.java.simpleName");
        IMetricsTracker newMetricsTracker = ((IAggregation) iVar2.getValue()).newMetricsTracker(simpleName, data.c(), data.a(), data.f());
        ms.i iVar3 = this.f12055b;
        KProperty kProperty3 = kPropertyArr[1];
        ((Map) iVar3.getValue()).put(Intrinsics.stringPlus(Reflection.getOrCreateKotlinClass(data.getClass()).getSimpleName(), data.a()), newMetricsTracker);
        return newMetricsTracker;
    }
}
