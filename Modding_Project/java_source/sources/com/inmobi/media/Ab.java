package com.inmobi.media;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.inmobi.media.Ab;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class Ab {

    /* renamed from: a  reason: collision with root package name */
    public final Context f23474a;

    /* renamed from: b  reason: collision with root package name */
    public final long f23475b;

    /* renamed from: c  reason: collision with root package name */
    public final int f23476c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f23477d;

    /* renamed from: e  reason: collision with root package name */
    public final C2902c7 f23478e;

    /* renamed from: f  reason: collision with root package name */
    public final Pc f23479f;

    /* renamed from: g  reason: collision with root package name */
    public final List f23480g;

    /* renamed from: h  reason: collision with root package name */
    public final ConcurrentHashMap f23481h;

    /* renamed from: i  reason: collision with root package name */
    public final AtomicBoolean f23482i;

    /* renamed from: j  reason: collision with root package name */
    public String f23483j;

    /* renamed from: k  reason: collision with root package name */
    public final AtomicInteger f23484k;

    public Ab(Context context, double d10, EnumC2868a7 logLevel, long j10, int i10, boolean z10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        this.f23474a = context;
        this.f23475b = j10;
        this.f23476c = i10;
        this.f23477d = z10;
        this.f23478e = new C2902c7(logLevel);
        this.f23479f = new Pc(d10);
        this.f23480g = Collections.synchronizedList(new ArrayList());
        this.f23481h = new ConcurrentHashMap();
        this.f23482i = new AtomicBoolean(false);
        this.f23483j = "";
        this.f23484k = new AtomicInteger(0);
    }

    public final void a(final EnumC2868a7 logLevel, String tag, String message) {
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        if (this.f23482i.get()) {
            return;
        }
        SimpleDateFormat simpleDateFormat = AbstractC2919d7.f24577a;
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        final JSONObject jSONObject = new JSONObject();
        jSONObject.put(CommonConstant.ReqAccessTokenParam.SCOPE_LABEL, logLevel.name());
        jSONObject.put("timestamp", AbstractC2919d7.f24577a.format(new Date()));
        jSONObject.put(ITTVideoEngineEventSource.KEY_TAG, tag);
        jSONObject.put("data", message);
        ScheduledExecutorService scheduledExecutorService = AbstractC3048l7.f24958a;
        Runnable runnable = new Runnable() { // from class: ub.h
            @Override // java.lang.Runnable
            public final void run() {
                Ab.a(Ab.this, logLevel, jSONObject);
            }
        };
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        AbstractC3048l7.f24958a.submit(runnable);
    }

    public final void b() {
        Objects.toString(this.f23482i);
        if ((this.f23477d || this.f23479f.a()) && !this.f23482i.getAndSet(true)) {
            ScheduledExecutorService scheduledExecutorService = AbstractC3048l7.f24958a;
            Runnable runnable = new Runnable() { // from class: ub.i
                @Override // java.lang.Runnable
                public final void run() {
                    Ab.b(Ab.this);
                }
            };
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            AbstractC3048l7.f24958a.submit(runnable);
        }
    }

    public final String c() {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        synchronized (this.f23481h) {
            try {
                for (Map.Entry entry : this.f23481h.entrySet()) {
                    jSONObject2.put((String) entry.getKey(), entry.getValue());
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        jSONObject.put("vitals", jSONObject2);
        jSONObject.put("log", d());
        String jSONObject3 = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject3, "toString(...)");
        return jSONObject3;
    }

    public final JSONArray d() {
        JSONArray jSONArray = new JSONArray();
        List logData = this.f23480g;
        Intrinsics.checkNotNullExpressionValue(logData, "logData");
        synchronized (logData) {
            try {
                List<JSONObject> logData2 = this.f23480g;
                Intrinsics.checkNotNullExpressionValue(logData2, "logData");
                for (JSONObject jSONObject : logData2) {
                    jSONArray.put(jSONObject);
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return jSONArray;
    }

    public static final void b(Ab this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Objects.toString(this$0.f23482i);
        ScheduledExecutorService scheduledExecutorService = AbstractC3048l7.f24958a;
        if (Result.g(AbstractC3032k7.a(new C3275zb(this$0, true))) != null) {
            try {
                Result.d(Unit.f60915a);
            } catch (Throwable th2) {
                Result.a aVar = Result.f60901b;
                Result.d(kotlin.f.a(th2));
            }
        }
    }

    public static final void a(Ab this$0, EnumC2868a7 eventLogLevel, JSONObject data) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(eventLogLevel, "$logLevel");
        Intrinsics.checkNotNullParameter(data, "$data");
        try {
            C2902c7 c2902c7 = this$0.f23478e;
            c2902c7.getClass();
            Intrinsics.checkNotNullParameter(eventLogLevel, "eventLogLevel");
            int ordinal = c2902c7.f24550a.ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    if (ordinal != 2) {
                        if (ordinal != 3) {
                            throw new NoWhenBranchMatchedException();
                        }
                        if (eventLogLevel != EnumC2868a7.f24483d) {
                            return;
                        }
                    } else if (eventLogLevel != EnumC2868a7.f24482c && eventLogLevel != EnumC2868a7.f24483d) {
                        return;
                    }
                } else if (eventLogLevel != EnumC2868a7.f24481b && eventLogLevel != EnumC2868a7.f24482c && eventLogLevel != EnumC2868a7.f24483d) {
                    return;
                }
            }
            this$0.f23480g.add(data);
        } catch (Exception e10) {
            this$0.getClass();
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
    }

    public final void a() {
        Objects.toString(this.f23482i);
        if ((this.f23477d || this.f23479f.a()) && !this.f23482i.get()) {
            ScheduledExecutorService scheduledExecutorService = AbstractC3048l7.f24958a;
            Runnable runnable = new Runnable() { // from class: ub.g
                @Override // java.lang.Runnable
                public final void run() {
                    Ab.a(Ab.this);
                }
            };
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            AbstractC3048l7.f24958a.submit(runnable);
        }
    }

    public static final void a(Ab this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f23484k.getAndIncrement();
        Objects.toString(this$0.f23482i);
        ScheduledExecutorService scheduledExecutorService = AbstractC3048l7.f24958a;
        if (Result.g(AbstractC3032k7.a(new C3275zb(this$0, false))) != null) {
            try {
                Result.d(Unit.f60915a);
            } catch (Throwable th2) {
                Result.a aVar = Result.f60901b;
                Result.d(kotlin.f.a(th2));
            }
        }
    }
}
