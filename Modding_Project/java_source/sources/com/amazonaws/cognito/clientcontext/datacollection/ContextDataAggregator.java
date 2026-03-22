package com.amazonaws.cognito.clientcontext.datacollection;

import android.content.Context;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class ContextDataAggregator {

    /* renamed from: a  reason: collision with root package name */
    private final List<DataCollector> f4967a;

    /* loaded from: classes2.dex */
    private static class InstanceHolder {

        /* renamed from: a  reason: collision with root package name */
        private static final ContextDataAggregator f4968a = new ContextDataAggregator();
    }

    private List<DataCollector> b() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ApplicationDataCollector());
        arrayList.add(new BuildDataCollector());
        arrayList.add(new DeviceDataCollector());
        return arrayList;
    }

    public static ContextDataAggregator c() {
        return InstanceHolder.f4968a;
    }

    private void d(Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (entry.getValue() == null) {
                map.remove(entry.getKey());
            }
        }
    }

    public Map<String, String> a(Context context) {
        HashMap hashMap = new HashMap();
        for (DataCollector dataCollector : this.f4967a) {
            hashMap.putAll(dataCollector.a(context));
        }
        d(hashMap);
        return hashMap;
    }

    private ContextDataAggregator() {
        this.f4967a = b();
    }
}
