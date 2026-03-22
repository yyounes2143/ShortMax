package com.bytedance.bdtracker;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.appsflyer.AppsFlyerProperties;
import com.bytedance.applog.IDataObserver;
import com.bytedance.applog.UriConfig;
import com.bytedance.applog.alink.IALinkListener;
import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.bdtracker.p;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@Metadata
/* loaded from: classes3.dex */
public final class j implements Handler.Callback, IDataObserver {

    /* renamed from: k  reason: collision with root package name */
    public static final /* synthetic */ KProperty[] f12066k = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(j.class), "mHandler", "getMHandler()Landroid/os/Handler;"))};

    /* renamed from: a  reason: collision with root package name */
    public boolean f12067a;

    /* renamed from: b  reason: collision with root package name */
    public final ms.i f12068b;

    /* renamed from: c  reason: collision with root package name */
    public e0 f12069c;

    /* renamed from: d  reason: collision with root package name */
    public h f12070d;

    /* renamed from: e  reason: collision with root package name */
    public int f12071e;

    /* renamed from: f  reason: collision with root package name */
    public q f12072f;

    /* renamed from: g  reason: collision with root package name */
    public int f12073g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public String f12074h;

    /* renamed from: i  reason: collision with root package name */
    public final List<String> f12075i;

    /* renamed from: j  reason: collision with root package name */
    public final List<String> f12076j;

    /* loaded from: classes3.dex */
    public static final class a extends Lambda implements Function0<Handler> {
        public a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Handler invoke() {
            HandlerThread handlerThread = new HandlerThread("bd_tracker_alink");
            handlerThread.start();
            return new Handler(handlerThread.getLooper(), j.this);
        }
    }

    public j(@NotNull e0 engine) {
        Intrinsics.checkParameterIsNotNull(engine, "engine");
        this.f12068b = kotlin.c.b(new a());
        this.f12069c = engine;
        this.f12073g = 10;
        this.f12075i = CollectionsKt.q("utm_campaign", "utm_source", "utm_term", "utm_medium", "utm_content");
        this.f12076j = CollectionsKt.q("tr_shareuser", "tr_admaster", "tr_param1", "tr_param2", "tr_param3", "tr_param4", "reengagement_window", "reengagement_time", "is_retargeting");
        String spName = b.a(engine.f11955d, "ALINK_CACHE_SP");
        Context b10 = engine.b();
        if (b10 != null) {
            Intrinsics.checkExpressionValueIsNotNull(spName, "spName");
            this.f12070d = new h((Application) b10, spName);
            d dVar = engine.f11955d;
            Intrinsics.checkExpressionValueIsNotNull(dVar, "engine.appLog");
            this.f12072f = new q(dVar);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.app.Application");
    }

    public final Handler a() {
        ms.i iVar = this.f12068b;
        KProperty kProperty = f12066k[0];
        return (Handler) iVar.getValue();
    }

    public final IAppLogLogger b() {
        d dVar = this.f12069c.f11955d;
        Intrinsics.checkExpressionValueIsNotNull(dVar, "mEngine.appLog");
        return dVar.D;
    }

    public final void c() {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        k kVar = (k) this.f12070d.a(CampaignEx.JSON_KEY_DEEP_LINK_URL, k.class);
        if (kVar != null) {
            jSONObject = kVar.a();
        } else {
            jSONObject = null;
        }
        if (jSONObject != null) {
            for (String str : this.f12075i) {
                jSONObject3.put(str, jSONObject.optString(str, null));
            }
            for (String str2 : this.f12076j) {
                if (Intrinsics.areEqual(str2, "is_retargeting")) {
                    jSONObject2.put(str2, jSONObject.optBoolean(str2) ? 1 : 0);
                } else {
                    jSONObject2.put(str2, jSONObject.optString(str2, null));
                }
            }
            r1 r1Var = this.f12069c.f11960i;
            if (r1Var != null) {
                r1Var.a("tracer_data", jSONObject2);
            }
            r1 r1Var2 = this.f12069c.f11960i;
            if (r1Var2 != null) {
                Iterator<String> keys = jSONObject3.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    r1Var2.a(next, (Object) jSONObject3.optString(next));
                }
            }
        }
        String a10 = this.f12070d.a("tr_web_ssid");
        if (a10 != null && a10.length() != 0) {
            this.f12069c.f11955d.setHeaderInfo("$tr_web_ssid", a10);
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(@Nullable Message message) {
        Integer num;
        JSONObject jSONObject;
        boolean z10;
        l lVar;
        m<n> mVar;
        n nVar;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        JSONObject jSONObject2;
        String str8;
        String str9;
        m<k> mVar2;
        k a10;
        if (message != null) {
            num = Integer.valueOf(message.what);
        } else {
            num = null;
        }
        String str10 = "$invoke";
        if (num != null) {
            if (num.intValue() != 1) {
                str10 = "$invoke";
            } else {
                r1 r1Var = this.f12069c.f11960i;
                if (r1Var != null && r1Var.h() == 0) {
                    int i10 = this.f12071e;
                    if (i10 < this.f12073g) {
                        this.f12071e = i10 + 1;
                        b().debug(3, "Retry do deep link delay for the {} times...", Integer.valueOf(this.f12071e));
                        Handler a11 = a();
                        a11.sendMessageDelayed(a11.obtainMessage(message.what, message.obj), 500L);
                    } else {
                        b().warn(3, "Retried max times to do deep link until AppLog ready", new Object[0]);
                    }
                    return true;
                }
                Object obj = message.obj;
                if (obj != null) {
                    l lVar2 = (l) obj;
                    String d10 = lVar2.d();
                    if (d10 != null && d10.length() != 0) {
                        lVar2.f12181l = "android";
                        d dVar = this.f12069c.f11955d;
                        Intrinsics.checkExpressionValueIsNotNull(dVar, "mEngine.appLog");
                        lVar2.a(dVar.f11913m);
                        d dVar2 = this.f12069c.f11955d;
                        Intrinsics.checkExpressionValueIsNotNull(dVar2, "mEngine.appLog");
                        lVar2.b(dVar2.getDid());
                        d dVar3 = this.f12069c.f11955d;
                        Intrinsics.checkExpressionValueIsNotNull(dVar3, "mEngine.appLog");
                        lVar2.c(dVar3.getSsid());
                        d dVar4 = this.f12069c.f11955d;
                        Intrinsics.checkExpressionValueIsNotNull(dVar4, "mEngine.appLog");
                        lVar2.d(dVar4.getUserUniqueID());
                        r1 r1Var2 = this.f12069c.f11960i;
                        if (r1Var2 != null) {
                            str3 = r1Var2.g();
                        } else {
                            str3 = null;
                        }
                        lVar2.f12177h = str3;
                        r1 r1Var3 = this.f12069c.f11960i;
                        if (r1Var3 != null) {
                            str4 = r1Var3.j();
                        } else {
                            str4 = null;
                        }
                        lVar2.f12178i = str4;
                        r1 r1Var4 = this.f12069c.f11960i;
                        if (r1Var4 != null) {
                            str5 = null;
                            str6 = (String) r1Var4.a("device_model", (String) null, String.class);
                        } else {
                            str5 = null;
                            str6 = null;
                        }
                        lVar2.f12183n = str6;
                        r1 r1Var5 = this.f12069c.f11960i;
                        if (r1Var5 != null) {
                            str7 = (String) r1Var5.a(TTVideoEngineInterface.PLAY_API_KEY_OSVERSION, str5, String.class);
                        } else {
                            str7 = str5;
                        }
                        lVar2.f12182m = str7;
                        r1 r1Var6 = this.f12069c.f11960i;
                        if (r1Var6 != null) {
                            jSONObject2 = (JSONObject) r1Var6.a("oaid", str5, JSONObject.class);
                        } else {
                            jSONObject2 = null;
                        }
                        if (jSONObject2 != null) {
                            str8 = jSONObject2.optString("id");
                        } else {
                            str8 = null;
                        }
                        lVar2.f12179j = str8;
                        r1 r1Var7 = this.f12069c.f11960i;
                        if (r1Var7 != null) {
                            str9 = (String) r1Var7.a("google_aid", (String) null, String.class);
                        } else {
                            str9 = null;
                        }
                        lVar2.f12180k = str9;
                        UriConfig e10 = this.f12069c.e();
                        Intrinsics.checkExpressionValueIsNotNull(e10, "mEngine.uriConfig");
                        String alinkQueryUri = e10.getAlinkQueryUri();
                        if (alinkQueryUri != null) {
                            mVar2 = this.f12072f.a(alinkQueryUri, lVar2);
                        } else {
                            mVar2 = null;
                        }
                        if (mVar2 != null && (a10 = mVar2.a()) != null) {
                            a10.f12134s = d10;
                            this.f12070d.a(CampaignEx.JSON_KEY_DEEP_LINK_URL, a10, 2592000000L);
                            JSONObject jSONObject3 = new JSONObject();
                            jSONObject3.put("$link_type", DevicePublicKeyStringDef.DIRECT);
                            jSONObject3.put("$deeplink_url", this.f12074h);
                            this.f12069c.f11955d.receive(new b4("$invoke", jSONObject3));
                            c();
                            d dVar5 = this.f12069c.f11955d;
                            Intrinsics.checkExpressionValueIsNotNull(dVar5, "mEngine.appLog");
                            IALinkListener iALinkListener = dVar5.f11926z;
                            if (iALinkListener != null) {
                                iALinkListener.onALinkData(a10.b(), null);
                            }
                        }
                    }
                    return true;
                }
                throw new TypeCastException("null cannot be cast to non-null type com.bytedance.applog.alink.model.ALinkQueryParam");
            }
        }
        if (num != null && num.intValue() == 0) {
            if (this.f12067a) {
                jSONObject = r.f12354a.a(this.f12069c.b());
            } else {
                jSONObject = new JSONObject();
            }
            String str11 = str10;
            b().debug(3, "Start to do defer deeplink with data:{}...", jSONObject);
            p.a aVar = p.f12300a;
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            l lVar3 = (l) aVar.a(jSONObject, l.class);
            if (lVar3 != null) {
                Object obj2 = message.obj;
                if (obj2 != null) {
                    boolean booleanValue = ((Boolean) obj2).booleanValue();
                    d dVar6 = this.f12069c.f11955d;
                    Intrinsics.checkExpressionValueIsNotNull(dVar6, "mEngine.appLog");
                    lVar3.a(dVar6.f11913m);
                    d dVar7 = this.f12069c.f11955d;
                    Intrinsics.checkExpressionValueIsNotNull(dVar7, "mEngine.appLog");
                    lVar3.b(dVar7.getDid());
                    d dVar8 = this.f12069c.f11955d;
                    Intrinsics.checkExpressionValueIsNotNull(dVar8, "mEngine.appLog");
                    lVar3.c(dVar8.getSsid());
                    d dVar9 = this.f12069c.f11955d;
                    Intrinsics.checkExpressionValueIsNotNull(dVar9, "mEngine.appLog");
                    lVar3.d(dVar9.getUserUniqueID());
                    String c10 = lVar3.c();
                    if (c10 != null && c10.length() != 0) {
                        d dVar10 = this.f12069c.f11955d;
                        String c11 = lVar3.c();
                        if (c11 == null) {
                            c11 = "";
                        }
                        dVar10.setExternalAbVersion(c11);
                    }
                    String e11 = lVar3.e();
                    if (e11 == null || e11.length() == 0) {
                        z10 = booleanValue;
                        lVar = lVar3;
                    } else {
                        z10 = booleanValue;
                        lVar = lVar3;
                        this.f12070d.a("tr_web_ssid", lVar3.e(), 31536000000L);
                    }
                    UriConfig e12 = this.f12069c.e();
                    Intrinsics.checkExpressionValueIsNotNull(e12, "mEngine.uriConfig");
                    String alinkAttributionUri = e12.getAlinkAttributionUri();
                    if (alinkAttributionUri != null) {
                        q qVar = this.f12072f;
                        o oVar = new o();
                        r1 r1Var8 = this.f12069c.f11960i;
                        if (r1Var8 != null) {
                            oVar.f12271b = r1Var8.b();
                            oVar.f12275f = "android";
                            oVar.f12274e = r1Var8.f();
                            oVar.f12281l = r1Var8.g();
                            oVar.f12282m = r1Var8.j();
                            JSONObject jSONObject4 = (JSONObject) r1Var8.a("oaid", (String) null, JSONObject.class);
                            oVar.f12273d = r1Var8.c();
                            if (jSONObject4 != null) {
                                str2 = jSONObject4.optString("id");
                            } else {
                                str2 = null;
                            }
                            oVar.f12283n = str2;
                            oVar.f12284o = (String) r1Var8.a("google_aid", (String) null, String.class);
                            oVar.f12286q = (String) r1Var8.a("user_agent", (String) null, String.class);
                            oVar.f12287r = (String) r1Var8.a("device_model", (String) null, String.class);
                            oVar.f12288s = (String) r1Var8.a(TTVideoEngineInterface.PLAY_API_KEY_OSVERSION, (String) null, String.class);
                            oVar.f12277h = r1Var8.o();
                            oVar.f12278i = z10;
                            oVar.f12279j = r1Var8.n();
                            oVar.f12280k = (String) r1Var8.a(AppsFlyerProperties.CHANNEL, (String) null, String.class);
                        }
                        mVar = qVar.a(alinkAttributionUri, oVar, lVar);
                    } else {
                        mVar = null;
                    }
                    if (mVar != null) {
                        nVar = mVar.a();
                    } else {
                        nVar = null;
                    }
                    if (nVar == null) {
                        i iVar = i.f12046a;
                        d dVar11 = this.f12069c.f11955d;
                        Intrinsics.checkExpressionValueIsNotNull(dVar11, "mEngine.appLog");
                        IALinkListener iALinkListener2 = dVar11.f11926z;
                        if (iALinkListener2 != null) {
                            if (mVar != null) {
                                str = mVar.f12208a;
                            } else {
                                str = null;
                            }
                            iALinkListener2.onAttributionFailedCallback(new IllegalStateException(iVar.invoke(str)));
                        }
                    } else if (nVar.G) {
                        nVar.G = false;
                        this.f12070d.a("deferred_deep_link", nVar, -1L);
                        JSONObject jSONObject5 = new JSONObject();
                        jSONObject5.put("$link_type", "deferred");
                        this.f12069c.f11955d.receive(new b4(str11, jSONObject5));
                        d dVar12 = this.f12069c.f11955d;
                        Intrinsics.checkExpressionValueIsNotNull(dVar12, "mEngine.appLog");
                        IALinkListener iALinkListener3 = dVar12.f11926z;
                        if (iALinkListener3 != null) {
                            iALinkListener3.onAttributionData(nVar.b(), null);
                        }
                    } else {
                        d dVar13 = this.f12069c.f11955d;
                        Intrinsics.checkExpressionValueIsNotNull(dVar13, "mEngine.appLog");
                        IALinkListener iALinkListener4 = dVar13.f11926z;
                        if (iALinkListener4 != null) {
                            iALinkListener4.onAttributionFailedCallback(new IllegalStateException("DDL has data but not firstLaunch"));
                        }
                    }
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Boolean");
                }
            }
            return true;
        }
        return true;
    }

    @Override // com.bytedance.applog.IDataObserver
    public void onAbVidsChange(@NotNull String vids, @NotNull String extVids) {
        Intrinsics.checkParameterIsNotNull(vids, "vids");
        Intrinsics.checkParameterIsNotNull(extVids, "extVids");
    }

    @Override // com.bytedance.applog.IDataObserver
    public void onIdLoaded(@NotNull String did, @NotNull String iid, @NotNull String ssid) {
        Intrinsics.checkParameterIsNotNull(did, "did");
        Intrinsics.checkParameterIsNotNull(iid, "iid");
        Intrinsics.checkParameterIsNotNull(ssid, "ssid");
    }

    @Override // com.bytedance.applog.IDataObserver
    public void onRemoteAbConfigGet(boolean z10, @NotNull JSONObject abConfig) {
        Intrinsics.checkParameterIsNotNull(abConfig, "abConfig");
    }

    @Override // com.bytedance.applog.IDataObserver
    public void onRemoteIdGet(boolean z10, @Nullable String str, @NotNull String newDid, @NotNull String oldIid, @NotNull String newIid, @NotNull String oldSsid, @NotNull String newSsid) {
        boolean z11;
        Intrinsics.checkParameterIsNotNull(newDid, "newDid");
        Intrinsics.checkParameterIsNotNull(oldIid, "oldIid");
        Intrinsics.checkParameterIsNotNull(newIid, "newIid");
        Intrinsics.checkParameterIsNotNull(oldSsid, "oldSsid");
        Intrinsics.checkParameterIsNotNull(newSsid, "newSsid");
        c();
        String a10 = this.f12070d.a("app_cache");
        if (a10 != null && a10.length() != 0) {
            z11 = false;
        } else {
            z11 = true;
        }
        boolean z12 = !z11;
        if (z11) {
            this.f12070d.a("app_cache", "app_cache", -1L);
        }
        if (z11 || this.f12069c.h()) {
            Handler a11 = a();
            a11.sendMessage(a11.obtainMessage(0, Boolean.valueOf(z12)));
        }
        this.f12069c.f11955d.removeDataObserver(this);
    }

    @Override // com.bytedance.applog.IDataObserver
    public void onRemoteConfigGet(boolean z10, @Nullable JSONObject jSONObject) {
    }
}
