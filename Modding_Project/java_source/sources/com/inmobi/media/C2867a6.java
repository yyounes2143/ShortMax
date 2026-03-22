package com.inmobi.media;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.inmobi.media.C2867a6;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.a6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2867a6 {

    /* renamed from: a  reason: collision with root package name */
    public final long f24479a;

    public C2867a6(long j10) {
        this.f24479a = j10;
    }

    public final void a(final String message, final String exitData, final int i10, final long j10) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(exitData, "exitData");
        ScheduledExecutorService scheduledExecutorService = AbstractC3048l7.f24958a;
        Runnable runnable = new Runnable() { // from class: ub.n3
            @Override // java.lang.Runnable
            public final void run() {
                C2867a6.a(C2867a6.this, j10, message, i10, exitData);
            }
        };
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        AbstractC3048l7.f24958a.submit(runnable);
    }

    public static final void a(C2867a6 c2867a6, long j10, String message, int i10, String exitData) {
        Object d10;
        C2867a6 this$0 = c2867a6;
        long j11 = j10;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(message, "$message");
        Intrinsics.checkNotNullParameter(exitData, "$exitData");
        ArrayList arrayList = new ArrayList();
        CopyOnWriteArrayList copyOnWriteArrayList = D5.f23562a;
        ArrayList arrayList2 = new ArrayList();
        Y5 y52 = new Y5();
        ArrayList arrayList3 = new ArrayList();
        Z6 d11 = Nc.d();
        ArrayList a10 = T1.a(d11, "hasLoggerFinished=0", null, null, null, null, Integer.valueOf(T1.a(d11, null, null, 63)), 30);
        X5 action = new X5(y52, arrayList3);
        Intrinsics.checkNotNullParameter(a10, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        for (Object obj : CollectionsKt.o0(a10)) {
            action.invoke(obj);
        }
        B5 action2 = new B5(arrayList2);
        Intrinsics.checkNotNullParameter(arrayList3, "<this>");
        Intrinsics.checkNotNullParameter(action2, "action");
        for (Object obj2 : CollectionsKt.o0(arrayList3)) {
            action2.invoke(obj2);
        }
        arrayList.addAll(arrayList2);
        Iterator it = arrayList.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            Object next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            C2918d6 c2918d6 = (C2918d6) next;
            c2867a6.getClass();
            long j12 = c2918d6.f24576a.f24437c.f24397b;
            if (j11 >= j12 && j11 - j12 <= this$0.f24479a) {
                String message2 = "Message - " + message + ", Reason - " + i10 + ", Timestamp - " + j11 + ", Data - " + exitData;
                Intrinsics.checkNotNullParameter("IncompleteLogFinalizer", ITTVideoEngineEventSource.KEY_TAG);
                Intrinsics.checkNotNullParameter(message2, "message");
                try {
                    JSONArray jSONArray = c2918d6.f24576a.f24436b;
                    EnumC2868a7 logLevel = EnumC2868a7.f24482c;
                    SimpleDateFormat simpleDateFormat = AbstractC2919d7.f24577a;
                    Intrinsics.checkNotNullParameter(logLevel, "logLevel");
                    Intrinsics.checkNotNullParameter("IncompleteLogFinalizer", ITTVideoEngineEventSource.KEY_TAG);
                    Intrinsics.checkNotNullParameter(message2, "message");
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(CommonConstant.ReqAccessTokenParam.SCOPE_LABEL, "ERROR");
                    jSONObject.put("timestamp", AbstractC2919d7.f24577a.format(new Date()));
                    jSONObject.put(ITTVideoEngineEventSource.KEY_TAG, "IncompleteLogFinalizer");
                    jSONObject.put("data", message2);
                    jSONArray.put(jSONObject);
                } catch (Exception unused) {
                }
                String value = String.valueOf(i10);
                Intrinsics.checkNotNullParameter("IncompleteLogFinalizer", ITTVideoEngineEventSource.KEY_TAG);
                Intrinsics.checkNotNullParameter("exitReason", "key");
                Intrinsics.checkNotNullParameter(value, "value");
                try {
                    c2918d6.f24576a.f24435a.put("exitReason", value);
                } catch (Exception unused2) {
                }
                Intrinsics.checkNotNullParameter("IncompleteLogFinalizer", ITTVideoEngineEventSource.KEY_TAG);
                try {
                    Result.a aVar = Result.f60901b;
                    JSONObject jSONObject2 = c2918d6.f24576a.f24435a;
                    Intrinsics.checkNotNullParameter(jSONObject2, "<this>");
                    if (!Intrinsics.areEqual(jSONObject2.toString(), JsonUtils.EMPTY_JSON) && !B2.a(c2918d6.f24576a.f24436b)) {
                        ScheduledExecutorService scheduledExecutorService = AbstractC3048l7.f24958a;
                        AbstractC3032k7.a(new C2901c6(c2918d6));
                    }
                    d10 = Result.d(Unit.f60915a);
                } catch (Throwable th2) {
                    Result.a aVar2 = Result.f60901b;
                    d10 = Result.d(kotlin.f.a(th2));
                }
                Throwable g10 = Result.g(d10);
                if (g10 != null) {
                    try {
                        C2947f2 event = new C2947f2(g10);
                        S5 s52 = S5.f24132a;
                        Intrinsics.checkNotNullParameter(event, "event");
                        S5.f24135d.a(event);
                        ScheduledExecutorService scheduledExecutorService2 = AbstractC3048l7.f24958a;
                        Object d12 = Result.d(Result.b(AbstractC3032k7.a(new C2884b6(c2918d6))));
                        Throwable g11 = Result.g(d12);
                        if (g11 != null) {
                            C2947f2 event2 = new C2947f2(g11);
                            S5 s53 = S5.f24132a;
                            Intrinsics.checkNotNullParameter(event2, "event");
                            S5.f24135d.a(event2);
                            d12 = Result.d(Unit.f60915a);
                        }
                        Result.d(Result.b(d12));
                    } catch (Throwable th3) {
                        Result.a aVar3 = Result.f60901b;
                        Result.d(kotlin.f.a(th3));
                    }
                }
            }
            this$0 = c2867a6;
            j11 = j10;
        }
    }
}
