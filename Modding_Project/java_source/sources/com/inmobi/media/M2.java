package com.inmobi.media;

import android.os.Message;
import com.inmobi.commons.core.configs.Config;
import com.inmobi.media.M2;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class M2 {
    public static void a() {
        if (O2.f23925c.getAndSet(true)) {
            return;
        }
        Intrinsics.checkNotNullExpressionValue(O2.f(), "access$getTAG$cp(...)");
        b();
        a("root", Uc.b(), null);
    }

    public static void b() {
        ms.i iVar;
        final ArrayList arrayList = new ArrayList();
        iVar = O2.f23928f;
        Q2 q22 = (Q2) iVar.getValue();
        q22.getClass();
        for (Config config : CollectionsKt.o0(T1.a(q22, null, null, null, null, null, null, 63))) {
            ConcurrentHashMap concurrentHashMap = O2.f23927e;
            Intrinsics.checkNotNullParameter(config, "<this>");
            HashMap hashMap = D3.f23561a;
            Config config2 = (Config) concurrentHashMap.put(D3.b(config.getAccountId$media_release(), config.getType()), config);
            if (config2 == null || config2.getLastUpdateTimeStamp() != config.getLastUpdateTimeStamp()) {
                Intrinsics.checkNotNullParameter(config, "<this>");
                arrayList.add(D3.b(config.getAccountId$media_release(), config.getType()));
            }
        }
        ((I2) O2.f23924b.getValue()).post(new Runnable() { // from class: ub.f1
            @Override // java.lang.Runnable
            public final void run() {
                M2.a(arrayList);
            }
        });
    }

    public static final void a(List changedConfigKeys) {
        Intrinsics.checkNotNullParameter(changedConfigKeys, "$changedConfigKeys");
        try {
            Intrinsics.checkNotNullExpressionValue(O2.f(), "access$getTAG$cp(...)");
            Iterator it = changedConfigKeys.iterator();
            while (it.hasNext()) {
                Config config = (Config) O2.f23927e.get((String) it.next());
                if (config != null) {
                    b(config);
                }
            }
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue(O2.f(), "access$getTAG$cp(...)");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.inmobi.commons.core.configs.Config a(java.lang.String r3, java.lang.String r4, com.inmobi.media.N2 r5) {
        /*
            java.lang.String r0 = "type"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = com.inmobi.media.O2.f()
            java.lang.String r1 = "access$getTAG$cp(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.util.Objects.toString(r5)
            com.inmobi.commons.core.configs.Config r3 = com.inmobi.media.D3.a(r4, r3)
            if (r4 != 0) goto L1f
            java.lang.String r4 = com.inmobi.media.O2.f()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r1)
            return r3
        L1f:
            ms.i r4 = com.inmobi.media.O2.d()
            java.lang.Object r4 = r4.getValue()
            com.inmobi.media.I2 r4 = (com.inmobi.media.I2) r4
            android.os.Message r4 = r4.obtainMessage()
            java.lang.String r0 = "obtainMessage(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r0)
            r0 = 0
            r4.what = r0
            com.inmobi.media.S2 r0 = new com.inmobi.media.S2
            r0.<init>(r3, r5)
            r4.obj = r0
            ms.i r5 = com.inmobi.media.O2.d()
            java.lang.Object r5 = r5.getValue()
            com.inmobi.media.I2 r5 = (com.inmobi.media.I2) r5
            r5.sendMessage(r4)
            java.lang.String r4 = com.inmobi.media.O2.f()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r1)
            java.util.Objects.toString(r3)
            java.lang.String r4 = r3.getAccountId$media_release()
            if (r4 == 0) goto L82
            java.lang.String r5 = r3.getType()
            java.lang.String r0 = com.inmobi.media.O2.f()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.util.concurrent.ConcurrentHashMap r0 = com.inmobi.media.O2.f23927e
            java.lang.String r2 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r2)
            java.lang.String r4 = com.inmobi.media.D3.b(r4, r5)
            java.lang.Object r4 = r0.get(r4)
            com.inmobi.commons.core.configs.Config r4 = (com.inmobi.commons.core.configs.Config) r4
            if (r4 == 0) goto L82
            java.lang.String r5 = com.inmobi.media.O2.f()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r1)
            r4.getLastUpdateTimeStamp()
            goto L83
        L82:
            r4 = 0
        L83:
            if (r4 != 0) goto L86
            goto L87
        L86:
            r3 = r4
        L87:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.M2.a(java.lang.String, java.lang.String, com.inmobi.media.N2):com.inmobi.commons.core.configs.Config");
    }

    public static void b(Config config) {
        Map map;
        Map map2;
        Intrinsics.checkNotNullExpressionValue(O2.f(), "access$getTAG$cp(...)");
        map = O2.f23923a;
        ArrayList arrayList = (ArrayList) map.get(config);
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
            while (it.hasNext()) {
                Object next = it.next();
                Intrinsics.checkNotNullExpressionValue(next, "next(...)");
                if (((WeakReference) next).get() == null) {
                    it.remove();
                }
            }
        }
        map2 = O2.f23923a;
        ArrayList<WeakReference> arrayList2 = (ArrayList) map2.get(config);
        if (arrayList2 != null) {
            for (WeakReference weakReference : arrayList2) {
                N2 n22 = (N2) weakReference.get();
                if (n22 != null) {
                    Intrinsics.checkNotNullExpressionValue(O2.f(), "access$getTAG$cp(...)");
                    n22.getClass().toString();
                    n22.a(config);
                }
            }
        }
    }

    public static Config a(String accountId, String type) {
        ms.i iVar;
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullExpressionValue(O2.f(), "access$getTAG$cp(...)");
        ConcurrentHashMap concurrentHashMap = O2.f23927e;
        Intrinsics.checkNotNullParameter(type, "<this>");
        Config config = (Config) concurrentHashMap.get(D3.b(accountId, type));
        Config config2 = null;
        if (config != null) {
            Intrinsics.checkNotNullExpressionValue(O2.f(), "access$getTAG$cp(...)");
            config.getLastUpdateTimeStamp();
        } else {
            config = null;
        }
        if (config == null) {
            iVar = O2.f23928f;
            Q2 q22 = (Q2) iVar.getValue();
            q22.getClass();
            Intrinsics.checkNotNullParameter(type, "type");
            Config config3 = (Config) q22.b("account_id=? AND config_type=?", new String[]{accountId, type});
            if (config3 != null) {
                Intrinsics.checkNotNullExpressionValue(O2.f(), "access$getTAG$cp(...)");
                config3.toString();
                if (B2.a(config3.getAccountId$media_release()) && config3.getType().length() > 0) {
                    Intrinsics.checkNotNullExpressionValue(O2.f(), "access$getTAG$cp(...)");
                    Intrinsics.checkNotNullParameter(config3, "<this>");
                    concurrentHashMap.put(D3.b(config3.getAccountId$media_release(), config3.getType()), config3);
                    b(config3);
                }
                config2 = config3;
            }
            Intrinsics.checkNotNullExpressionValue(O2.f(), "access$getTAG$cp(...)");
            if (config2 != null) {
                config2.getLastUpdateTimeStamp();
            }
            return config2;
        }
        return config;
    }

    public static Config a(String accountId) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter("root", "type");
        Intrinsics.checkNotNullExpressionValue(O2.f(), "access$getTAG$cp(...)");
        Config a10 = a(accountId, "root");
        return a10 == null ? D3.a(accountId, "root") : a10;
    }

    public static void a(Config config) {
        Intrinsics.checkNotNullExpressionValue(O2.f(), "access$getTAG$cp(...)");
        Message obtainMessage = ((I2) O2.f23924b.getValue()).obtainMessage();
        Intrinsics.checkNotNullExpressionValue(obtainMessage, "obtainMessage(...)");
        obtainMessage.what = 1;
        obtainMessage.obj = config;
        ((I2) O2.f23924b.getValue()).sendMessage(obtainMessage);
    }
}
