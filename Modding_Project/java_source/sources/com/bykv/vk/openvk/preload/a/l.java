package com.bykv.vk.openvk.preload.a;

import java.util.Map;
import java.util.Set;
/* compiled from: JsonObject.java */
/* loaded from: classes3.dex */
public final class l extends i {

    /* renamed from: a  reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.b.g<String, i> f11247a = new com.bykv.vk.openvk.preload.a.b.g<>();

    public final void a(String str, i iVar) {
        com.bykv.vk.openvk.preload.a.b.g<String, i> gVar = this.f11247a;
        if (iVar == null) {
            iVar = k.f11246a;
        }
        gVar.put(str, iVar);
    }

    public final Set<Map.Entry<String, i>> d() {
        return this.f11247a.entrySet();
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (!(obj instanceof l) || !((l) obj).f11247a.equals(this.f11247a)) {
                return false;
            }
            return true;
        }
        return true;
    }

    public final int hashCode() {
        return this.f11247a.hashCode();
    }
}
