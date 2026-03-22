package com.inmobi.media;

import java.util.ArrayList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
public final class X5 extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ArrayList f24361a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public X5(Y5 y52, ArrayList arrayList) {
        super(1);
        this.f24361a = arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0086  */
    @Override // kotlin.jvm.functions.Function1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(java.lang.Object r5) {
        /*
            r4 = this;
            com.inmobi.media.Y6 r5 = (com.inmobi.media.Y6) r5
            java.lang.String r0 = "dbData"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.util.concurrent.CopyOnWriteArrayList r0 = com.inmobi.media.AbstractC3016j7.f24898a
            java.lang.String r0 = r5.f24396a
            java.lang.String r1 = "fileName"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
            r1 = 0
            java.util.concurrent.CopyOnWriteArrayList r2 = com.inmobi.media.AbstractC3016j7.f24898a     // Catch: java.lang.Exception -> L2e
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Exception -> L2e
        L17:
            boolean r3 = r2.hasNext()     // Catch: java.lang.Exception -> L2e
            if (r3 == 0) goto L45
            java.lang.Object r3 = r2.next()     // Catch: java.lang.Exception -> L2e
            java.lang.ref.WeakReference r3 = (java.lang.ref.WeakReference) r3     // Catch: java.lang.Exception -> L2e
            java.lang.Object r3 = r3.get()     // Catch: java.lang.Exception -> L2e
            com.inmobi.media.Ab r3 = (com.inmobi.media.Ab) r3     // Catch: java.lang.Exception -> L2e
            if (r3 == 0) goto L30
            java.lang.String r3 = r3.f23483j     // Catch: java.lang.Exception -> L2e
            goto L31
        L2e:
            r0 = move-exception
            goto L38
        L30:
            r3 = r1
        L31:
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r0)     // Catch: java.lang.Exception -> L2e
            if (r3 == 0) goto L17
            goto L8b
        L38:
            com.inmobi.media.S5 r2 = com.inmobi.media.S5.f24132a
            java.lang.String r2 = "event"
            com.inmobi.media.f2 r0 = com.inmobi.media.AbstractC3221w5.a(r0, r2)
            com.inmobi.media.E6 r2 = com.inmobi.media.S5.f24135d
            r2.a(r0)
        L45:
            java.lang.String r0 = r5.f24396a
            java.lang.String r2 = "filePath"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r2)
            java.io.File r2 = new java.io.File
            r2.<init>(r0)
            boolean r0 = r2.exists()
            if (r0 == 0) goto L64
            boolean r0 = r2.isFile()
            if (r0 != 0) goto L5e
            goto L64
        L5e:
            r0 = 1
            java.lang.String r0 = ws.f.m(r2, r1, r0, r1)     // Catch: java.lang.Exception -> L64
            goto L65
        L64:
            r0 = r1
        L65:
            if (r0 == 0) goto L84
            org.json.JSONObject r1 = new org.json.JSONObject
            r1.<init>(r0)
            java.lang.String r0 = "vitals"
            org.json.JSONObject r0 = r1.getJSONObject(r0)
            java.lang.String r2 = "log"
            org.json.JSONArray r1 = r1.getJSONArray(r2)
            com.inmobi.media.Z5 r2 = new com.inmobi.media.Z5
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            r2.<init>(r0, r1, r5)
            r1 = r2
        L84:
            if (r1 == 0) goto L8b
            java.util.ArrayList r5 = r4.f24361a
            r5.add(r1)
        L8b:
            kotlin.Unit r5 = kotlin.Unit.f60915a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.X5.invoke(java.lang.Object):java.lang.Object");
    }
}
