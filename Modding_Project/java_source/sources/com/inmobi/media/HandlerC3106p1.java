package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.core.app.NotificationCompat;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.commons.core.configs.Config;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.p1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class HandlerC3106p1 extends Handler {

    /* renamed from: a  reason: collision with root package name */
    public final WeakReference f25128a;

    /* renamed from: b  reason: collision with root package name */
    public final C3090o1 f25129b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC3106p1(Looper looper, C3169t1 assetStore) {
        super(looper);
        Intrinsics.checkNotNullParameter(looper, "looper");
        Intrinsics.checkNotNullParameter(assetStore, "assetStore");
        this.f25128a = new WeakReference(assetStore);
        this.f25129b = new C3090o1(this);
    }

    public final void a() {
        try {
            sendEmptyMessage(1);
        } catch (Exception unused) {
            C3169t1 c3169t1 = C3169t1.f25278a;
            Intrinsics.checkNotNullExpressionValue("t1", "access$getTAG$p(...)");
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        try {
        } catch (Exception e10) {
            C3169t1 c3169t1 = C3169t1.f25278a;
            Intrinsics.checkNotNullExpressionValue("t1", "access$getTAG$p(...)");
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
        if (!C3169t1.f25290m.get()) {
            return;
        }
        C3169t1 c3169t12 = (C3169t1) this.f25128a.get();
        int i10 = msg.what;
        String str = null;
        C3008j asset = null;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 == 4) {
                        if (c3169t12 != null) {
                            Object obj = msg.obj;
                            if (obj instanceof C3008j) {
                                asset = (C3008j) obj;
                            }
                            if (asset != null) {
                                C3058m1 a10 = Nc.a();
                                a10.getClass();
                                Intrinsics.checkNotNullParameter(asset, "asset");
                                a10.a("id = ?", new String[]{String.valueOf(asset.f24868a)});
                            }
                        }
                        a();
                        return;
                    }
                    return;
                }
                a();
                return;
            } else if (c3169t12 != null) {
                Object obj2 = msg.obj;
                if (obj2 instanceof String) {
                    str = (String) obj2;
                }
                if (str == null) {
                    return;
                }
                C3008j b10 = Nc.a().b(str);
                if (b10 == null) {
                    a();
                    return;
                } else if (!b10.a()) {
                    AdConfig.AssetCacheConfig assetCacheConfig = C3169t1.f25280c;
                    if (assetCacheConfig != null) {
                        assetCacheConfig.getMaxRetries();
                    }
                    if (b10.f24871d <= 0) {
                        b10.f24879l = (byte) 6;
                        c3169t12.a(b10, (byte) 6);
                        try {
                            Message obtain = Message.obtain();
                            obtain.what = 4;
                            obtain.obj = b10;
                            sendMessage(obtain);
                            return;
                        } catch (Exception unused) {
                            C3169t1 c3169t13 = C3169t1.f25278a;
                            Intrinsics.checkNotNullExpressionValue("t1", "access$getTAG$p(...)");
                            return;
                        }
                    } else if (T9.a(false) != null) {
                        c3169t12.a(b10, b10.f24879l);
                        C3169t1.d();
                        return;
                    } else if (C3169t1.a(b10, this.f25129b)) {
                        Intrinsics.checkNotNullExpressionValue("t1", "access$getTAG$p(...)");
                        Intrinsics.checkNotNullExpressionValue("t1", "access$getTAG$p(...)");
                        return;
                    } else {
                        Intrinsics.checkNotNullExpressionValue("t1", "access$getTAG$p(...)");
                        a();
                        return;
                    }
                } else {
                    Intrinsics.checkNotNullExpressionValue("t1", "access$getTAG$p(...)");
                    try {
                        sendEmptyMessage(3);
                    } catch (Exception unused2) {
                        C3169t1 c3169t14 = C3169t1.f25278a;
                        Intrinsics.checkNotNullExpressionValue("t1", "access$getTAG$p(...)");
                    }
                    c3169t12.a(b10, (byte) -1);
                    return;
                }
            } else {
                return;
            }
        } else if (c3169t12 != null) {
            AdConfig.AssetCacheConfig assetCacheConfig2 = C3169t1.f25280c;
            if (assetCacheConfig2 == null) {
                LinkedHashMap linkedHashMap = O2.f23923a;
                Config a11 = M2.a(com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, Uc.b(), null);
                Intrinsics.checkNotNull(a11, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig");
                assetCacheConfig2 = ((AdConfig) a11).getAssetCacheConfig();
            }
            ArrayList b11 = Nc.a().b();
            if (b11.isEmpty()) {
                Intrinsics.checkNotNullExpressionValue("t1", "access$getTAG$p(...)");
                C3169t1.d();
                return;
            }
            Intrinsics.checkNotNullExpressionValue("t1", "access$getTAG$p(...)");
            C3008j c3008j = (C3008j) b11.get(0);
            Iterator it = b11.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                C3008j c3008j2 = (C3008j) it.next();
                if (!C3169t1.f25288k.containsKey(c3008j.f24869b)) {
                    c3008j = c3008j2;
                    break;
                }
            }
            Message obtain2 = Message.obtain();
            obtain2.what = 1;
            long currentTimeMillis = System.currentTimeMillis() - c3008j.f24872e;
            try {
                if (currentTimeMillis < assetCacheConfig2.getRetryInterval() * 1000) {
                    sendMessageDelayed(obtain2, (assetCacheConfig2.getRetryInterval() * 1000) - currentTimeMillis);
                } else if (C3169t1.f25288k.containsKey(c3008j.f24869b)) {
                    sendMessageDelayed(obtain2, assetCacheConfig2.getRetryInterval() * 1000);
                } else {
                    Intrinsics.checkNotNullExpressionValue("t1", "access$getTAG$p(...)");
                    Message obtain3 = Message.obtain();
                    obtain3.what = 2;
                    obtain3.obj = c3008j.f24869b;
                    sendMessage(obtain3);
                }
                return;
            } catch (Exception unused3) {
                C3169t1 c3169t15 = C3169t1.f25278a;
                Intrinsics.checkNotNullExpressionValue("t1", "access$getTAG$p(...)");
                return;
            }
        } else {
            return;
        }
        C3169t1 c3169t16 = C3169t1.f25278a;
        Intrinsics.checkNotNullExpressionValue("t1", "access$getTAG$p(...)");
        S5 s522 = S5.f24132a;
        S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
    }
}
