package com.bytedance.sdk.openadsdk.core.model;

import androidx.annotation.NonNull;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes3.dex */
public class ex {
    @NonNull
    private com.bytedance.sdk.openadsdk.core.dLZ.ex oJ = new com.bytedance.sdk.openadsdk.core.dLZ.ex();
    private Set<com.bytedance.sdk.openadsdk.core.dLZ.kkU> ZYk = new HashSet();

    public Set<com.bytedance.sdk.openadsdk.core.dLZ.kkU> ZYk() {
        return this.ZYk;
    }

    @NonNull
    public com.bytedance.sdk.openadsdk.core.dLZ.ex oJ() {
        return this.oJ;
    }

    public void ZYk(Set<com.bytedance.sdk.openadsdk.core.dLZ.kkU> set) {
        if (set == null || set.isEmpty()) {
            return;
        }
        this.ZYk.addAll(set);
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.dLZ.ex exVar) {
        if (exVar == null) {
            exVar = new com.bytedance.sdk.openadsdk.core.dLZ.ex();
        }
        this.oJ = exVar;
    }

    public void oJ(Set<com.bytedance.sdk.openadsdk.core.dLZ.kkU> set) {
        this.ZYk = set;
    }

    public void oJ(cY cYVar) {
        com.bytedance.sdk.openadsdk.core.dLZ.ex exVar = this.oJ;
        if (exVar != null) {
            exVar.oJ(cYVar);
        }
    }
}
