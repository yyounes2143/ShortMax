package com.inmobi.media;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.r4  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC3140r4 extends T1 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC3140r4(String tableName, String tableSchema) {
        super(tableName, tableSchema);
        Intrinsics.checkNotNullParameter(tableName, "tableName");
        Intrinsics.checkNotNullParameter(tableSchema, "tableSchema");
    }

    public final void a(ArrayList eventIdList) {
        Intrinsics.checkNotNullParameter(eventIdList, "eventIdList");
        if (eventIdList.isEmpty()) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        int size = eventIdList.size() - 1;
        for (int i10 = 0; i10 < size; i10++) {
            sb2.append(eventIdList.get(i10));
            sb2.append(",");
        }
        sb2.append(eventIdList.get(eventIdList.size() - 1));
        a("id IN (" + ((Object) sb2) + ')', null);
        Intrinsics.checkNotNullExpressionValue("r4", "TAG");
    }

    public final ArrayList b(int i10) {
        Intrinsics.checkNotNullExpressionValue("r4", "TAG");
        ArrayList<U1> a10 = T1.a(this, null, null, null, null, "ts ASC", Integer.valueOf(i10), 15);
        ArrayList arrayList = new ArrayList();
        for (U1 u12 : a10) {
            if (u12 != null) {
                arrayList.add(u12);
            }
        }
        return arrayList;
    }

    public final void a(long j10) {
        Context d10 = Uc.d();
        if (d10 != null) {
            ConcurrentHashMap concurrentHashMap = C6.f23529b;
            C6.a(B6.a(d10, "batch_processing_info"), this.f24167a.concat("_last_batch_process"), j10, false, 4, (Object) null);
        }
    }

    public final void a(int i10) {
        ArrayList<U1> a10 = T1.a(this, null, null, null, null, "ts ASC", Integer.valueOf(i10), 15);
        ArrayList arrayList = new ArrayList();
        for (U1 u12 : a10) {
            Intrinsics.checkNotNullExpressionValue("r4", "TAG");
            arrayList.add(u12 != null ? Integer.valueOf(u12.f24240c) : null);
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            if (num != null) {
                arrayList2.add(num);
            }
        }
        a(arrayList2);
    }
}
