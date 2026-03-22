package com.huawei.hms.support.api.entity.core;

import com.huawei.hms.core.aidl.e;
import java.util.Arrays;
import java.util.List;
import wa.a;
/* loaded from: classes5.dex */
public class ConnectResp implements e {
    @a
    public List<Integer> protocolVersion = Arrays.asList(1, 2);
    @a
    public String sessionId;

    public String toString() {
        StringBuilder sb2 = new StringBuilder("protocol version:");
        for (Integer num : this.protocolVersion) {
            sb2.append(num);
            sb2.append(',');
        }
        return sb2.toString();
    }
}
