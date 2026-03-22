package com.huawei.hms.framework.common.hianalytics;

import com.mbridge.msdk.MBridgeConstans;
import java.util.LinkedHashMap;
/* loaded from: classes5.dex */
public class LinkedHashMapPack {

    /* renamed from: a  reason: collision with root package name */
    private LinkedHashMap<String, String> f22167a = new LinkedHashMap<>();

    public LinkedHashMap<String, String> getAll() {
        return this.f22167a;
    }

    public LinkedHashMapPack put(String str, String str2) {
        if (str != null && str2 != null) {
            this.f22167a.put(str, str2);
        }
        return this;
    }

    public LinkedHashMapPack putIfNotDefault(String str, long j10, long j11) {
        if (j10 == j11) {
            return this;
        }
        return put(str, j10);
    }

    public LinkedHashMapPack put(String str, boolean z10) {
        if (str != null) {
            if (z10) {
                this.f22167a.put(str, "1");
            } else {
                this.f22167a.put(str, MBridgeConstans.ENDCARD_URL_TYPE_PL);
            }
        }
        return this;
    }

    public LinkedHashMapPack put(String str, long j10) {
        if (str != null) {
            LinkedHashMap<String, String> linkedHashMap = this.f22167a;
            linkedHashMap.put(str, "" + j10);
        }
        return this;
    }
}
