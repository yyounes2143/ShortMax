package com.inmobi.media;

import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.Config;
import com.inmobi.media.Fa;
import java.util.LinkedHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public abstract class Fa {

    /* renamed from: a  reason: collision with root package name */
    public final Pa f23654a;

    /* renamed from: b  reason: collision with root package name */
    public final Ba f23655b;

    /* renamed from: c  reason: collision with root package name */
    public final Ka f23656c;

    /* renamed from: d  reason: collision with root package name */
    public volatile Ca f23657d;

    /* renamed from: e  reason: collision with root package name */
    public final ConcurrentHashMap f23658e;

    /* renamed from: f  reason: collision with root package name */
    public AdConfig.PingsV2Config f23659f;

    public Fa(Pa dao, Ba ba2, Ka networkHandler) {
        Intrinsics.checkNotNullParameter(dao, "dao");
        Intrinsics.checkNotNullParameter(networkHandler, "networkHandler");
        this.f23654a = dao;
        this.f23655b = ba2;
        this.f23656c = networkHandler;
        this.f23657d = Ca.f23536a;
        this.f23658e = new ConcurrentHashMap();
        Ea ea2 = new Ea(this);
        LinkedHashMap linkedHashMap = O2.f23923a;
        Config a10 = M2.a(com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, Uc.b(), ea2);
        Intrinsics.checkNotNull(a10, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig");
        this.f23659f = ((AdConfig) a10).getPingsV2Config();
    }

    public final void a(final C3274za ping, ExecutorService executorService, final Function1 onPingResponse) {
        Intrinsics.checkNotNullParameter(ping, "ping");
        Intrinsics.checkNotNullParameter(onPingResponse, "onPingResponse");
        if (this.f23657d == Ca.f23536a || this.f23658e.containsKey(ping.f25505b)) {
            return;
        }
        this.f23658e.put(ping.f25505b, ping.f25504a);
        if (executorService != null) {
            executorService.execute(new Runnable() { // from class: ub.g0
                @Override // java.lang.Runnable
                public final void run() {
                    Fa.a(Function1.this, this, ping);
                }
            });
        }
    }

    public static final void a(Function1 onPingResponse, Fa this$0, C3274za ping) {
        Intrinsics.checkNotNullParameter(onPingResponse, "$onPingResponse");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(ping, "$ping");
        onPingResponse.invoke(this$0.f23656c.a(ping));
        this$0.f23658e.remove(ping.f25505b);
    }

    public final boolean a(Ca ca2) {
        int ordinal = ca2.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal == 2) {
                    if (this.f23657d.compareTo(Ca.f23538c) < 0) {
                        return true;
                    }
                } else {
                    throw new NoWhenBranchMatchedException();
                }
            } else if (this.f23657d == Ca.f23538c) {
                return true;
            }
        } else if (this.f23657d != Ca.f23536a) {
            return true;
        }
        return false;
    }
}
