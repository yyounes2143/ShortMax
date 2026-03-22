package com.inmobi.media;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.s4  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3156s4 {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList f25264a;

    /* renamed from: b  reason: collision with root package name */
    public final String f25265b;

    public C3156s4(ArrayList eventIDs, String payload) {
        Intrinsics.checkNotNullParameter(eventIDs, "eventIDs");
        Intrinsics.checkNotNullParameter(payload, "payload");
        this.f25264a = eventIDs;
        this.f25265b = payload;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3156s4)) {
            return false;
        }
        C3156s4 c3156s4 = (C3156s4) obj;
        if (Intrinsics.areEqual(this.f25264a, c3156s4.f25264a) && Intrinsics.areEqual(this.f25265b, c3156s4.f25265b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (this.f25265b.hashCode() + (this.f25264a.hashCode() * 31)) * 31;
    }

    public final String toString() {
        return "EventPayload(eventIDs=" + this.f25264a + ", payload=" + this.f25265b + ", shouldFlushOnFailure=false)";
    }
}
