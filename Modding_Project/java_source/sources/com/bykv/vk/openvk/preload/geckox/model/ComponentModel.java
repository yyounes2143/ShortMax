package com.bykv.vk.openvk.preload.geckox.model;

import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class ComponentModel {
    @com.bykv.vk.openvk.preload.a.a.b(a = "packages")
    private Map<String, List<UpdatePackage>> packages;
    @com.bykv.vk.openvk.preload.a.a.b(a = "universal_strategies")
    private Map<String, b> universalStrategies;

    /* loaded from: classes3.dex */
    public static class a {
        @com.bykv.vk.openvk.preload.a.a.b(a = "c")

        /* renamed from: a  reason: collision with root package name */
        public String f11430a;
    }

    /* loaded from: classes3.dex */
    public static class b {
        @com.bykv.vk.openvk.preload.a.a.b(a = "specified_clean")

        /* renamed from: a  reason: collision with root package name */
        public List<a> f11431a;
    }

    public Map<String, List<UpdatePackage>> getPackages() {
        return this.packages;
    }

    public Map<String, b> getUniversalStrategies() {
        return this.universalStrategies;
    }
}
