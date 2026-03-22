package com.inmobi.media;

import android.content.Context;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.media.C2932e3;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.e3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2932e3 {

    /* renamed from: a  reason: collision with root package name */
    public final C2976h f24622a;

    /* renamed from: b  reason: collision with root package name */
    public final long f24623b;

    /* renamed from: c  reason: collision with root package name */
    public final String f24624c = C2932e3.class.getSimpleName();

    /* renamed from: d  reason: collision with root package name */
    public final C2996i3 f24625d = new C2996i3();

    /* renamed from: e  reason: collision with root package name */
    public long f24626e = -1;

    /* renamed from: f  reason: collision with root package name */
    public final AtomicBoolean f24627f = new AtomicBoolean();

    /* renamed from: g  reason: collision with root package name */
    public final AtomicBoolean f24628g = new AtomicBoolean();

    public C2932e3(C2976h c2976h, long j10) {
        this.f24622a = c2976h;
        this.f24623b = j10;
    }

    public final void a() {
        C2976h c2976h;
        C2976h c2976h2;
        Long m10;
        String h10;
        Boolean C;
        Intrinsics.checkNotNull(this.f24624c);
        C2976h c2976h3 = this.f24622a;
        if (c2976h3 != null && (C = c2976h3.C()) != null) {
            boolean booleanValue = C.booleanValue();
            C2980h3 c2980h3 = C2980h3.f24787a;
            Context d10 = Uc.d();
            if (d10 != null) {
                Intrinsics.checkNotNull("h3");
                if (booleanValue != C2980h3.d()) {
                    Intrinsics.checkNotNull("h3");
                    ConcurrentHashMap concurrentHashMap = C6.f23529b;
                    C6.a(B6.a(d10, "c_data_store"), "isEnabled", booleanValue, false, 4, (Object) null);
                    if (!booleanValue) {
                        c2980h3.e();
                    }
                }
            }
        }
        if (C2980h3.d() && !this.f24627f.getAndSet(true)) {
            this.f24626e = System.currentTimeMillis();
            if (!this.f24628g.get()) {
                C2976h c2976h4 = this.f24622a;
                if ((c2976h4 != null ? c2976h4.h() : null) != null && (h10 = this.f24622a.h()) != null) {
                    C2996i3 c2996i3 = this.f24625d;
                    c2996i3.getClass();
                    Intrinsics.checkNotNullParameter(h10, "<set-?>");
                    c2996i3.f24843a = h10;
                    Intrinsics.checkNotNull(this.f24624c);
                }
            }
            if (!this.f24628g.get() && (c2976h2 = this.f24622a) != null && (m10 = c2976h2.m()) != null) {
                this.f24625d.f24844b = m10.longValue();
                Intrinsics.checkNotNull(this.f24624c);
            }
            if (!this.f24628g.get()) {
                this.f24625d.f24847e = this.f24623b;
                Intrinsics.checkNotNull(this.f24624c);
            }
            if (!this.f24628g.get() && (c2976h = this.f24622a) != null) {
                this.f24625d.f24848f = c2976h.n();
                Intrinsics.checkNotNull(this.f24624c);
            }
            long j10 = this.f24626e / 1000;
            if (this.f24628g.get()) {
                return;
            }
            this.f24625d.f24845c = j10;
            Intrinsics.checkNotNull(this.f24624c);
        }
    }

    public final void b() {
        if (!C2980h3.d()) {
            Intrinsics.checkNotNull(this.f24624c);
        } else if (!this.f24627f.get()) {
            Intrinsics.checkNotNull(this.f24624c);
        } else {
            int currentTimeMillis = (int) (System.currentTimeMillis() - this.f24626e);
            if (!this.f24628g.get()) {
                this.f24625d.f24846d = currentTimeMillis;
                Intrinsics.checkNotNull(this.f24624c);
            }
            if (this.f24628g.getAndSet(true)) {
                Intrinsics.checkNotNull(this.f24624c);
                return;
            }
            Intrinsics.checkNotNull(this.f24624c);
            Uc.a(new Runnable() { // from class: ub.y3
                @Override // java.lang.Runnable
                public final void run() {
                    C2932e3.a(C2932e3.this);
                }
            });
        }
    }

    public static final void a(C2932e3 this$0) {
        List<String> n10;
        AdConfig.ContextualDataConfig contextualData;
        AdConfig.ContextualDataConfig contextualData2;
        AdConfig.ContextualDataConfig contextualData3;
        AdConfig.ContextualDataConfig contextualData4;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        C2980h3 c2980h3 = C2980h3.f24787a;
        C2996i3 contextualDataModel = this$0.f24625d;
        Intrinsics.checkNotNullParameter(contextualDataModel, "contextualDataModel");
        synchronized (c2980h3) {
            try {
                Intrinsics.checkNotNull("h3");
                long currentTimeMillis = System.currentTimeMillis();
                AdConfig adConfig = C2980h3.f24791e;
                int i10 = 0;
                long expiryTime = currentTimeMillis - (((adConfig == null || (contextualData4 = adConfig.getContextualData()) == null) ? 0 : contextualData4.getExpiryTime()) * 1000);
                AdConfig adConfig2 = C2980h3.f24791e;
                C2980h3.a(expiryTime, ((adConfig2 == null || (contextualData3 = adConfig2.getContextualData()) == null) ? 0 : contextualData3.getMaxAdRecords()) - 1);
                AdConfig adConfig3 = C2980h3.f24791e;
                if (adConfig3 == null || (contextualData2 = adConfig3.getContextualData()) == null || (n10 = contextualData2.getSkipFields()) == null) {
                    n10 = CollectionsKt.n();
                }
                String jSONArray = AbstractC3012j3.a(contextualDataModel, n10).toString();
                Intrinsics.checkNotNullExpressionValue(jSONArray, "toString(...)");
                C2997i4 c2997i4 = new C2997i4(AbstractC3013j4.a(jSONArray, C2980h3.f24792f), currentTimeMillis);
                C2980h3.f24788b.add(c2997i4);
                Object clone = C2980h3.f24788b.clone();
                Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type java.util.LinkedList<com.inmobi.signals.contextualdata.EncryptedContextualData>");
                C2980h3.f24789c = (LinkedList) clone;
                AdConfig adConfig4 = C2980h3.f24791e;
                if (adConfig4 != null && (contextualData = adConfig4.getContextualData()) != null) {
                    i10 = contextualData.getMaxAdRecords();
                }
                Intrinsics.checkNotNull("h3");
                C2915d3 c2915d3 = (C2915d3) Nc.f23913d.getValue();
                c2915d3.getClass();
                Objects.toString(c2997i4);
                c2915d3.a(c2997i4);
                c2915d3.a("id NOT IN (SELECT id FROM ( SELECT id FROM c_data WHERE timestamp > " + expiryTime + " ORDER BY timestamp DESC LIMIT " + i10 + ") foo);", null);
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
